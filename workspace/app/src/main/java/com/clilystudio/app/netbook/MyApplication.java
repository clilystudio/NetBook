package com.clilystudio.app.netbook;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Process;
import android.support.multidex.MultiDexApplication;

import com.activeandroid.ActiveAndroid;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.model.User;
import com.iflytek.cloud.SpeechUtility;
import com.integralblue.httpresponsecache.HttpResponseCache;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.g;
import com.nostra13.universalimageloader.core.i;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.BookInfo;
import com.clilystudio.app.netbook.model.ChapterLink;
import com.clilystudio.app.netbook.model.UGCNewCollection;
import com.clilystudio.app.netbook.reader.Reader;

import java.io.File;
import java.io.IOException;
import java.io.ObjectOutputStream;
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

    // ERROR //
    public final java.io.Serializable b(String paramString) {
        return null;
        // Byte code:
        //   0: aload_0
        //   1: aload_1
        //   2: invokevirtual 147	com/ushaqi/zhuishushenqi/MyApplication:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
        //   5: invokevirtual 151	java/io/File:exists	()Z
        //   8: istore_2
        //   9: iconst_0
        //   10: istore_3
        //   11: iload_2
        //   12: ifeq +5 -> 17
        //   15: iconst_1
        //   16: istore_3
        //   17: iload_3
        //   18: ifne +9 -> 27
        //   21: aconst_null
        //   22: astore 20
        //   24: aload 20
        //   26: areturn
        //   27: aload_0
        //   28: aload_1
        //   29: invokevirtual 155	com/ushaqi/zhuishushenqi/MyApplication:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
        //   32: astore 18
        //   34: aload 18
        //   36: astore 6
        //   38: new 157	java/io/ObjectInputStream
        //   41: dup
        //   42: aload 6
        //   44: invokespecial 160	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
        //   47: astore 5
        //   49: aload 5
        //   51: invokevirtual 164	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
        //   54: checkcast 166	java/io/Serializable
        //   57: astore 20
        //   59: aload 5
        //   61: invokevirtual 167	java/io/ObjectInputStream:close	()V
        //   64: aload 6
        //   66: ifnull -42 -> 24
        //   69: aload 6
        //   71: invokevirtual 170	java/io/FileInputStream:close	()V
        //   74: aload 20
        //   76: areturn
        //   77: astore 22
        //   79: aload 20
        //   81: areturn
        //   82: astore 13
        //   84: aconst_null
        //   85: astore 14
        //   87: aconst_null
        //   88: astore 15
        //   90: aload 14
        //   92: ifnull +8 -> 100
        //   95: aload 14
        //   97: invokevirtual 167	java/io/ObjectInputStream:close	()V
        //   100: aload 15
        //   102: ifnull +8 -> 110
        //   105: aload 15
        //   107: invokevirtual 170	java/io/FileInputStream:close	()V
        //   110: aconst_null
        //   111: areturn
        //   112: astore 9
        //   114: aconst_null
        //   115: astore 5
        //   117: aconst_null
        //   118: astore 6
        //   120: aload 9
        //   122: invokevirtual 66	java/lang/Exception:printStackTrace	()V
        //   125: aload 9
        //   127: instanceof 172
        //   130: ifeq +12 -> 142
        //   133: aload_0
        //   134: aload_1
        //   135: invokevirtual 147	com/ushaqi/zhuishushenqi/MyApplication:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
        //   138: invokevirtual 175	java/io/File:delete	()Z
        //   141: pop
        //   142: aload 5
        //   144: ifnull +8 -> 152
        //   147: aload 5
        //   149: invokevirtual 167	java/io/ObjectInputStream:close	()V
        //   152: aload 6
        //   154: ifnull -44 -> 110
        //   157: aload 6
        //   159: invokevirtual 170	java/io/FileInputStream:close	()V
        //   162: goto -52 -> 110
        //   165: astore 10
        //   167: goto -57 -> 110
        //   170: astore 4
        //   172: aconst_null
        //   173: astore 5
        //   175: aconst_null
        //   176: astore 6
        //   178: aload 5
        //   180: ifnull +8 -> 188
        //   183: aload 5
        //   185: invokevirtual 167	java/io/ObjectInputStream:close	()V
        //   188: aload 6
        //   190: ifnull +8 -> 198
        //   193: aload 6
        //   195: invokevirtual 170	java/io/FileInputStream:close	()V
        //   198: aload 4
        //   200: athrow
        //   201: astore 21
        //   203: goto -139 -> 64
        //   206: astore 17
        //   208: goto -108 -> 100
        //   211: astore 16
        //   213: goto -103 -> 110
        //   216: astore 11
        //   218: goto -66 -> 152
        //   221: astore 8
        //   223: goto -35 -> 188
        //   226: astore 7
        //   228: goto -30 -> 198
        //   231: astore 4
        //   233: aconst_null
        //   234: astore 5
        //   236: goto -58 -> 178
        //   239: astore 4
        //   241: goto -63 -> 178
        //   244: astore 9
        //   246: aconst_null
        //   247: astore 5
        //   249: goto -129 -> 120
        //   252: astore 9
        //   254: goto -134 -> 120
        //   257: astore 23
        //   259: aload 6
        //   261: astore 15
        //   263: aconst_null
        //   264: astore 14
        //   266: goto -176 -> 90
        //   269: astore 19
        //   271: aload 5
        //   273: astore 14
        //   275: aload 6
        //   277: astore 15
        //   279: goto -189 -> 90
        //
        // Exception table:
        //   from	to	target	type
        //   69	74	77	java/lang/Exception
        //   27	34	82	java/io/FileNotFoundException
        //   27	34	112	java/lang/Exception
        //   157	162	165	java/lang/Exception
        //   27	34	170	finally
        //   59	64	201	java/lang/Exception
        //   95	100	206	java/lang/Exception
        //   105	110	211	java/lang/Exception
        //   147	152	216	java/lang/Exception
        //   183	188	221	java/lang/Exception
        //   193	198	226	java/lang/Exception
        //   38	49	231	finally
        //   49	59	239	finally
        //   120	142	239	finally
        //   38	49	244	java/lang/Exception
        //   49	59	252	java/lang/Exception
        //   38	49	257	java/io/FileNotFoundException
        //   49	59	269	java/io/FileNotFoundException
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
        com.clilystudio.app.netbook.api.e.a("1".equals(com.umeng.a.b.b(app, "use_http_dns")));
        ActiveAndroid.initialize(this);
        final long httpCacheSize = 10 * 1024 * 1024; // 10 MiB
        final File httpCacheDir = new File(getCacheDir(), "http2");
        try {
            HttpResponseCache.install(httpCacheDir, httpCacheSize);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        com.umeng.a.b.c(this);
        com.umeng.a.b.a(new f(this));
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
