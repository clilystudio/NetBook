package com.clilystudio.netbook;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Process;
import android.preference.PreferenceManager;
import android.util.Log;

import com.activeandroid.ActiveAndroid;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.DnsManager;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.reader.Reader;
import com.clilystudio.netbook.util.a;
import com.integralblue.httpresponsecache.HttpResponseCache;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.xiaomi.channel.commonutils.logger.LoggerInterface;
import com.xiaomi.mipush.sdk.Logger;
import com.xiaomi.mipush.sdk.MiPushClient;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class MyApplication extends Application {
    public static final String TAG = "QuiteBook";
    private static final String MIPUSH_APP_ID = "2882303761517133731";
    private static final String MIPUSH_APP_KEY = "5941713373731";
    private static final String DEFUALT_API_URL = "zhuishushenqi.com";
    private static final String READER_WEB_URL = "5941713373731";
    private static MyApplication mApp = null;
    public UGCNewCollection mUGCNewCollection;
    private Reader mReader;
    private BookInfo mBookInfo;
    private int mReadMode;
    private String mBookId = null;
    private List<String> mBookCacheList;
    private Map<String, ChapterLink[]> mChapterCacheMap;

    public static MyApplication getInstance() {
        return mApp;
    }

    public final String getProperty(String name) {
        Properties properties = AppPropsManager.getInstance(this).load();
        if (properties != null) {
            return properties.getProperty(name);
        } else {
            return null;
        }
    }

    public final UGCNewCollection getUGCNewCollection() {
        if (this.mUGCNewCollection == null) {
            this.mUGCNewCollection = new UGCNewCollection();
        }
        return this.mUGCNewCollection;
    }

    public final int getReadMode() {
        return this.mReadMode;
    }

    public final void setReadMode(int readMode) {
        this.mReadMode = readMode;
    }

    public final void saveAccoutInfo(Account account) {
        Properties tokenProperties = new Properties();
        tokenProperties.setProperty("account.token", account.getToken());
        AppPropsManager.getInstance(this).put(tokenProperties);
        Properties userProperties = new Properties();
        User user = account.getUser();
        userProperties.setProperty("user.id", user.getId());
        userProperties.setProperty("user.name", user.getNickname());
        userProperties.setProperty("user.avatar", user.getAvatar());
        userProperties.setProperty("user.lv", String.valueOf(user.getLv()));
        if (user.getGender() != null) {
            userProperties.setProperty("user.gender", user.getGender());
        }
        AppPropsManager.getInstance(this).put(userProperties);
    }

    public final BookInfo getBookInfo() {
        return this.mBookInfo;
    }

    public final void setBookInfo(BookInfo bookInfo) {
        this.mBookInfo = bookInfo;
    }

    public final Reader getReader() {
        return this.mReader;
    }

    public final void setReader(Reader reader) {
        this.mReader = reader;
    }

    public final void removeProperties(String... keys) {
        AppPropsManager.getInstance(this).remove(keys);
    }

    public final boolean saveObject(Serializable object, String name) {
        FileOutputStream fos = null;
        ObjectOutputStream oos = null;
        try {
            fos = openFileOutput(name, Context.MODE_PRIVATE);
            oos = new ObjectOutputStream(fos);
            oos.writeObject(object);
            oos.flush();
            return true;
        } catch (IOException e1) {
            e1.printStackTrace();
        } finally {
            if (oos != null) {
                try {
                    oos.close();
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            }
            if (fos != null) {
                try {
                    fos.close();
                } catch (IOException e1) {
                    e1.printStackTrace();
                }
            }
        }
        return false;
    }

    public final Serializable loadObject(String name) {
        File file = getFileStreamPath(name);
        if (file.exists()) {
            FileInputStream fis = null;
            ObjectInputStream ois = null;
            try {
                fis = openFileInput(name);
                ois = new ObjectInputStream(fis);
                return (Serializable) ois.readObject();
            } catch (ClassNotFoundException | IOException e1) {
                e1.printStackTrace();
            } finally {
                if (fis != null) {
                    try {
                        fis.close();
                    } catch (IOException e1) {
                        e1.printStackTrace();
                    }
                }
                if (ois != null) {
                    try {
                        ois.close();
                    } catch (IOException e1) {
                        e1.printStackTrace();
                    }
                }
            }
        }
        return null;
    }

    public final String getBookId() {
        return this.mBookId;
    }

    public final void setBookId(String bookId) {
        this.mBookId = bookId;
    }

    public final Map<String, ChapterLink[]> getChapterCacheMap() {
        if (this.mChapterCacheMap == null) {
            this.mChapterCacheMap = new HashMap<>();
        }
        return this.mChapterCacheMap;
    }

    public final List<String> getBookCacheList() {
        if (this.mBookCacheList == null) {
            this.mBookCacheList = new ArrayList<>();
        }
        return this.mBookCacheList;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        mApp = this;
        ActiveAndroid.initialize(this);
        DnsManager.setUseDns(true);
        ApiService.a(DEFUALT_API_URL);
        a.initCipherInfo(this);
        new Thread() {
            @Override
            public void run() {
                File file = new File(getCacheDir(), "http2");
                try {
                    HttpResponseCache.install(file, 200 * 1024 * 1024);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }.start();
        if (shouldInit()) {
            MiPushClient.registerPush(this, MIPUSH_APP_ID, MIPUSH_APP_KEY);
            LoggerInterface newLogger = new LoggerInterface() {

                @Override
                public void setTag(String tag) {
                    // ignore
                }

                @Override
                public void log(String content, Throwable t) {
                    Log.d(TAG, content, t);
                }

                @Override
                public void log(String content) {
                    Log.d(TAG, content);
                }
            };
            Logger.setLogger(this, newLogger);
        }
        ImageLoaderConfiguration configuration = ImageLoaderConfiguration.createDefault(this);
        ImageLoader.getInstance().init(configuration);
        if (PreferenceManager.getDefaultSharedPreferences(this).getLong("PREF_FIRST_LAUNCH_TIME", 0L) == 0L) {
            a.b(this, "PREF_FIRST_LAUNCH_TIME", Calendar.getInstance().getTimeInMillis());
        }
    }

    @Override
    public void onTerminate() {
        super.onTerminate();
        ActiveAndroid.dispose();
    }

    private boolean shouldInit() {
        ActivityManager am = ((ActivityManager) getSystemService(Context.ACTIVITY_SERVICE));
        List<ActivityManager.RunningAppProcessInfo> processInfos = am.getRunningAppProcesses();
        String mainProcessName = getPackageName();
        int myPid = Process.myPid();
        for (ActivityManager.RunningAppProcessInfo info : processInfos) {
            if (info.pid == myPid && mainProcessName.equals(info.processName)) {
                return true;
            }
        }
        return false;
    }
}
