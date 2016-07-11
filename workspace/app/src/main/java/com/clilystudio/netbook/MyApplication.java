package com.clilystudio.netbook;

import android.app.Application;
import android.content.Context;
import android.preference.PreferenceManager;
import android.text.TextUtils;

import com.activeandroid.ActiveAndroid;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.DnsManager;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.reader.Reader;
import com.integralblue.httpresponsecache.HttpResponseCache;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.umeng.onlineconfig.OnlineConfigAgent;
import com.umeng.onlineconfig.UmengOnlineConfigureListener;
import com.xiaomi.mipush.sdk.MiPushClient;

import org.json.JSONObject;

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
        String useHttpDns = OnlineConfigAgent.getInstance().getConfigParams(mApp, "use_http_dns");
        DnsManager.setUseDns("1".equals(useHttpDns));
        com.clilystudio.netbook.hpay100.a.a.q(this);
        ActiveAndroid.initialize(this);
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
        OnlineConfigAgent.getInstance().setOnlineConfigListener(new UmengOnlineConfigureListener() {
            @Override
            public void onDataReceived(JSONObject jsonObject) {
                String string = OnlineConfigAgent.getInstance().getConfigParams(mApp, "set_default_api");
                if (!TextUtils.isEmpty(string)) {
                    ApiService.a(string);
                }
                ApiService.j(OnlineConfigAgent.getInstance().getConfigParams(mApp, "reader_web_url"), 4);
            }
        });
        if (com.clilystudio.netbook.hpay100.a.a.l(this, "update_notice_key")) {
            MiPushClient.registerPush(this, "2882303761517133731", "5941713373731");
        }
        ImageLoaderConfiguration configuration = ImageLoaderConfiguration.createDefault(this);
        ImageLoader.getInstance().init(configuration);
        if (PreferenceManager.getDefaultSharedPreferences(this).getLong("PREF_FIRST_LAUNCH_TIME", 0L) == 0L) {
            com.clilystudio.netbook.hpay100.a.a.b(this, "PREF_FIRST_LAUNCH_TIME", Calendar.getInstance().getTimeInMillis());
        }
    }

    @Override
    public void onTerminate() {
        super.onTerminate();
        ActiveAndroid.dispose();
    }
}
