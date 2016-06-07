package com.clilystudio.netbook;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Process;
import android.support.design.widget.am;

import com.activeandroid.ActiveAndroid;
import com.activeandroid.query.Select;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.reader.Reader;
import com.clilystudio.netbook.util.V;
import com.iflytek.cloud.SpeechUtility;
import com.nostra13.universalimageloader.core.g;
import com.nostra13.universalimageloader.core.i;

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
import java.util.Iterator;
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

    private void a(Properties paramProperties) {
        b.a(this).a(paramProperties);
    }

    public final String a(String paramString) {
        return b.a(this).a().getProperty(paramString);
    }

    public final void a(int paramInt) {
        this.e = paramInt;
    }

    public final void a(Account paramAccount) {
        a(new MyApplication .3 (this, paramAccount));
        a(new MyApplication .4 (this, paramAccount.getUser()));
    }

    public final void a(BookInfo paramBookInfo) {
        this.d = paramBookInfo;
    }

    public final void a(Reader paramReader) {
        this.c = paramReader;
    }

    public final void a(String paramString1, String paramString2) {
        b.a(this).a(paramString1, paramString2);
    }

    public final void a(String[] paramArrayOfString) {
        b.a(this).a(paramArrayOfString);
    }

    public final boolean a(java.io.Serializable paramSerializable, String paramString) {
        FileOutputStream fos = null;
        ObjectOutputStream oos = null;
        try {
            fos = openFileOutput(paramString, Context.MODE_PRIVATE);
            oos = new ObjectOutputStream(fos);
            oos.writeObject(paramSerializable);
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

    public final java.io.Serializable b(String paramString) {
        File file = getFileStreamPath(paramString);
        if (file.exists()) {
            FileInputStream fis = null;
            ObjectInputStream ois = null;
            try {
                fis = openFileInput(paramString);
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

    public final List<String> f() {
        if (this.g == null)
            this.g = new ArrayList();
        return this.g;
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
        b = this;
        com.clilystudio.netbook.api.e.a("1".equals(com.umeng.a.b.b(b, "use_http_dns")));
        a.q(this);
        ActiveAndroid.initialize(this);
        Object localObject1 = null;
        int m = Process.myPid();
        Iterator localIterator1 = ((ActivityManager) getSystemService("activity")).getRunningAppProcesses().iterator();
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo2;
        if (localIterator1.hasNext()) {
            localRunningAppProcessInfo2 = (ActivityManager.RunningAppProcessInfo) localIterator1.next();
            if (localRunningAppProcessInfo2.pid != m)
                break label419;
        }
        label397:
        label403:
        label419:
        for (Object localObject2 = localRunningAppProcessInfo2.processName; ; localObject2 = localObject1) {
            localObject1 = localObject2;
            break;
            if (localObject1.equals("com.clilystudio.netbook"))
                new e(this).start();
            com.umeng.a.b.c(this);
            com.umeng.a.b.a(new f(this));
            int i2;
            if (a.l(this, "update_notice_key")) {
                List localList = ((ActivityManager) getSystemService("activity")).getRunningAppProcesses();
                String str = getPackageName();
                int i1 = Process.myPid();
                Iterator localIterator2 = localList.iterator();
                ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo1;
                do {
                    if (!localIterator2.hasNext())
                        break;
                    localRunningAppProcessInfo1 = (ActivityManager.RunningAppProcessInfo) localIterator2.next();
                }
                while ((localRunningAppProcessInfo1.pid != i1) || (!str.equals(localRunningAppProcessInfo1.processName)));
                i2 = 1;
                if (i2 != 0)
                    d.a(this, "2882303761517133731", "5941713373731");
            }
            com.xiaomi.mistatistic.sdk.b.a(this, "2882303761517133731", "5941713373731", am.n(this));
            g localg = new i(this).a();
            com.nostra13.universalimageloader.core.f.a().a(localg);
            int n;
            if (a.c(this, "PREF_FIRST_LAUNCH_TIME", 0L) == 0L) {
                if (new Select().from(BookReadRecord.class).execute().isEmpty())
                    break label397;
                n = 1;
                label316:
                if (n == 0)
                    break label403;
                Calendar localCalendar = Calendar.getInstance();
                localCalendar.set(1, 2000);
                a.b(this, "PREF_FIRST_LAUNCH_TIME", localCalendar.getTimeInMillis());
            }
            while (true) {
                V localV = new V(this);
                if (localV.a() == 0L)
                    localV.a(Calendar.getInstance().getTimeInMillis());
                am.s(this);
                SpeechUtility.createUtility(this, "appid=56655269");
                return;
                i2 = 0;
                break;
                n = 0;
                break label316;
                a.b(this, "PREF_FIRST_LAUNCH_TIME", Calendar.getInstance().getTimeInMillis());
            }
        }
    }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.MyApplication
 * JD-Core Version:    0.6.0
 */