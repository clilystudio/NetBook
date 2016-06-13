package com.clilystudio.netbook;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Process;
import android.support.design.widget.am;

import com.activeandroid.ActiveAndroid;
import com.activeandroid.query.Select;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.reader.Reader;
import com.clilystudio.netbook.util.V;

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
    private static MyApplication b = null;
    public UGCNewCollection a;
    private Reader c;
    private BookInfo d;
    private int e;
    private String f = null;
    private List<String> g;
    private Map<String, ChapterLink[]> h;
    private List<String> i = null;
    private List<String> j = null;
    private List<Long> k = null;

    public static MyApplication a() {
        return b;
    }

    static /* synthetic */ void a(MyApplication myApplication) {
        File file = new File(myApplication.getCacheDir(), "http2");
        try {
            com.integralblue.httpresponsecache.HttpResponseCache.install(file, 209715200);
        } catch (Exception var2_2) {
            var2_2.printStackTrace();
        }
    }

    private void a(Properties properties) {
        com.clilystudio.netbook.b.a(this).a(properties);
    }

    public final String a(String string) {
        return com.clilystudio.netbook.b.a(this).a().getProperty(string);
    }

    public final void a(int n) {
        this.e = n;
    }

    public final void a(Account account) {
        Properties tokenProperties = new Properties();
        tokenProperties.setProperty("account.token", account.getToken());
        this.a(tokenProperties);
        Properties userProperties = new Properties();
        User user = account.getUser();
        userProperties.setProperty("user.id", user.getId());
        userProperties.setProperty("user.name", user.getNickname());
        userProperties.setProperty("user.avatar", user.getAvatar());
        userProperties.setProperty("user.lv", String.valueOf(user.getLv()));
        if (user.getGender() != null) {
            userProperties.setProperty("user.gender", user.getGender());
        }
        this.a(userProperties);
    }

    public final void a(BookInfo bookInfo) {
        this.d = bookInfo;
    }

    public final void a(Reader reader) {
        this.c = reader;
    }

    public final void a(String string, String string2) {
        com.clilystudio.netbook.b.a(this).a(string, string2);
    }

    public final /* varargs */ void a(String... arrstring) {
        com.clilystudio.netbook.b.a(this).a(arrstring);
    }

    public final boolean a(Serializable var1_1, String var2_2) {
        FileOutputStream fos = null;
        ObjectOutputStream oos = null;
        try {
            fos = openFileOutput(var2_2, Context.MODE_PRIVATE);
            oos = new ObjectOutputStream(fos);
            oos.writeObject(var1_1);
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

    public final Reader b() {
        return this.c;
    }

    public final Serializable b(String var1_1) {
        File file = getFileStreamPath(var1_1);
        if (file.exists()) {
            FileInputStream fis = null;
            ObjectInputStream ois = null;
            try {
                fis = openFileInput(var1_1);
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

    public final BookInfo c() {
        return this.d;
    }

    public final void c(String string) {
        this.f = string;
    }

    public final int d() {
        return this.e;
    }

    public final Map<String, ChapterLink[]> e() {
        if (this.h == null) {
            this.h = new HashMap<>();
        }
        return this.h;
    }

    public final List<String> f() {
        if (this.g == null) {
            this.g = new ArrayList<>();
        }
        return this.g;
    }

    public final String g() {
        return this.f;
    }

    public final List<String> h() {
        if (this.i == null) {
            this.i = new ArrayList<>();
        }
        return this.i;
    }

    public final List<String> i() {
        if (this.j == null) {
            this.j = new ArrayList<>();
        }
        return this.j;
    }

    public final List<Long> j() {
        if (this.k == null) {
            this.k = new ArrayList<>();
        }
        return this.k;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void onCreate() {
        V v;
        super.onCreate();
        b = this;
        e.a("1".equals(com.umeng.a.b.b(b, "use_http_dns")));
        a.q(this);
        ActiveAndroid.initialize(this);
        String string = null;
        int n = Process.myPid();
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) this.getSystemService(Context.ACTIVITY_SERVICE)).getRunningAppProcesses()) {
            String string2 = runningAppProcessInfo.pid == n ? runningAppProcessInfo.processName : string;
            string = string2;
        }
        if (string.equals("com.clilystudio.netbook")) {
            new com.clilystudio.netbook.e(this).start();
        }
        com.umeng.a.b.c(this);
        com.umeng.a.b.a(new f(this));
        if (a.l(this, "update_notice_key")) {
            boolean bl;
            block9:
            {
                List<ActivityManager.RunningAppProcessInfo> list = ((ActivityManager) this.getSystemService(Context.ACTIVITY_SERVICE)).getRunningAppProcesses();
                String string3 = this.getPackageName();
                int n2 = Process.myPid();
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo2 : list) {
                    if (runningAppProcessInfo2.pid != n2 || !string3.equals(runningAppProcessInfo2.processName)) continue;
                    bl = true;
                    break block9;
                }
                bl = false;
            }
            if (bl) {
                d.a(this, "2882303761517133731", "5941713373731");
            }
        }
        com.xiaomi.mistatistic.sdk.b.a(this, "2882303761517133731", "5941713373731", am.n((Context) this));
        g g2 = new i(this).a();
        com.nostra13.universalimageloader.core.f.a().a(g2);
        if (a.c((Context) this, "PREF_FIRST_LAUNCH_TIME", 0) == 0) {
            boolean bl = !new Select().from(BookReadRecord.class).execute().isEmpty();
            if (bl) {
                Calendar calendar = Calendar.getInstance();
                calendar.set(Calendar.YEAR, 2000);
                a.b((Context) this, "PREF_FIRST_LAUNCH_TIME", calendar.getTimeInMillis());
            } else {
                a.b((Context) this, "PREF_FIRST_LAUNCH_TIME", Calendar.getInstance().getTimeInMillis());
            }
        }
        if ((v = new V(this)).a() == 0) {
            v.a(Calendar.getInstance().getTimeInMillis());
        }
        am.s((Context) this);
//        SpeechUtility.createUtility(this, "appid=56655269");
    }
}
