package com.clilystudio.app.netbook;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Process;

import com.activeandroid.ActiveAndroid;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.BookInfo;
import com.clilystudio.app.netbook.model.ChapterLink;
import com.clilystudio.app.netbook.model.UGCNewCollection;
import com.clilystudio.app.netbook.model.User;
import com.clilystudio.app.netbook.reader.Reader;
import com.integralblue.httpresponsecache.HttpResponseCache;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;

import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class MyApplication extends Application {
    private static MyApplication app = null;
    public UGCNewCollection a;
    private Reader c;
    private BookInfo d;
    private int e;
    private String f = null;
    private List<String> g_mBookIdList;
    private Map<String, ChapterLink[]> h;
    private List<String> i = null;
    private List<String> j = null;
    private List<Long> k = null;

    public static MyApplication a_getInstance() {
        return app;
    }

    private void a(Properties paramProperties) {
        AppProperties.getInstance(this).setProperties(paramProperties);
    }

    public final String a_getProperty(String name) {
        return AppProperties.getInstance(this).loadProperties().getProperty(name);
    }

    public final void a(int paramInt) {
        this.e = paramInt;
    }

    public final void a(Account paramAccount) {
        a(new TokenProperties(this, paramAccount));
        a(new UserProperties(this, paramAccount.getUser()));
    }

    public final void a(BookInfo paramBookInfo) {
        this.d = paramBookInfo;
    }

    public final void a(Reader paramReader) {
        this.c = paramReader;
    }

    public final void a(String paramString1, String paramString2) {
        AppProperties.getInstance(this).setProperties(paramString1, paramString2);
    }

    public final void a(String[] paramArrayOfString) {
        AppProperties.getInstance(this).removeProperties(paramArrayOfString);
    }

    public final boolean a(java.io.Serializable paramSerializable, String paramString) {
        ObjectOutputStream v2 = null;
        try {
            v2 = new ObjectOutputStream(this.openFileOutput(paramString, 0));
            v2.writeObject(paramSerializable);
            v2.flush();
            v2.close();
            return true;
        } catch (IOException e1) {
            e1.printStackTrace();
            return false;
        }
    }

    public final Reader b() {
        return this.c;
    }

    public final Serializable b_readSavedInfo(String name) {
        File file = getFileStreamPath(name);
        if (file.exists()) {
            ObjectInputStream ois = null;
            try {
                ois = new ObjectInputStream(openFileInput(name));
                Serializable object = (Serializable) ois.readObject();
                ois.close();
                file.delete();
                return object;
            } catch (IOException e1) {
                e1.printStackTrace();
            } catch (ClassNotFoundException e1) {
                e1.printStackTrace();
            }
        }
        return null;
    }

    public final BookInfo c() {
        return this.d;
    }

    public final void c(String paramString) {
        this.f = paramString;
    }

    public final int d() {
        return this.e;
    }

    public final Map<String, ChapterLink[]> e() {
        if (this.h == null)
            this.h = new HashMap();
        return this.h;
    }

    public final List<String> f_getBookIdList() {
        if (this.g_mBookIdList == null) {
            this.g_mBookIdList = new ArrayList<String>();
        }
        return this.g_mBookIdList;
    }

    public final String g() {
        return this.f;
    }

    public final List<String> h() {
        if (this.i == null)
            this.i = new ArrayList();
        return this.i;
    }

    public final List<String> i() {
        if (this.j == null)
            this.j = new ArrayList();
        return this.j;
    }

    public final List<Long> j() {
        if (this.k == null)
            this.k = new ArrayList();
        return this.k;
    }

    public void onCreate() {
        super.onCreate();
        app = this;
//        com.clilystudio.app.netbook.api.e.a("1".equals(com.umeng.a.b.b(app, "use_http_dns")));
        ActiveAndroid.initialize(this);
        final long httpCacheSize = 10 * 1024 * 1024; // 10 MiB
        final File httpCacheDir = new File(getCacheDir(), "http2");
        try {
            HttpResponseCache.install(httpCacheDir, httpCacheSize);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
//        com.umeng.a.b.c(this);
        // TODO set default api & reader web url
//        String str = com.umeng.a.b.b(this.a, "set_default_api");
//        if (!TextUtils.isEmpty(str))
//            ApiService.a(str);
//        ApiService.j(com.umeng.a.b.b(this.a, "reader_web_url"), 4);
//        com.clilystudio.app.netbook.event.i.a().c(new H(com.arcsoft.hpay100.a.a.x(this.a)));
//        com.umeng.a.b.a(new f(this));
        // 优易付更新？
//        if (a.l(this, "update_notice_key")) {
//            //初始化push推送服务
//            if (shouldInit()) {
//                MiPushClient.registerPush(this, "2882303761517133731", "5941713373731");
//            }
//        }
        //创建默认的ImageLoader配置参数
        ImageLoaderConfiguration configuration = ImageLoaderConfiguration.createDefault(this);
        //Initialize ImageLoader with configuration.
        ImageLoader.getInstance().init(configuration);
        //        am_CommonUtils.s(this);
//        SpeechUtility.createUtility(this, "appid=56655269");
//        return;
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

    class TokenProperties extends Properties {
        private static final long serialVersionUID = 8794384850518743201L;

        TokenProperties(MyApplication paramMyApplication, Account account) {
            setProperty("account.token", account.getToken());
        }
    }

    class UserProperties extends Properties {
        private static final long serialVersionUID = 8794384850518743201L;

        UserProperties(MyApplication paramMyApplication, User user) {
            setProperty("user.id", user.getId());
            setProperty("user.name", user.getNickname());
            setProperty("user.avatar", user.getAvatar());
            setProperty("user.lv", String.valueOf(user.getLv()));
            if (user.getGender() != null)
                setProperty("user.gender", user.getGender());
        }
    }
}
