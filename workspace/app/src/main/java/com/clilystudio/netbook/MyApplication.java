package com.clilystudio.netbook;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import android.support.design.widget.am;
import android.support.multidex.MultiDexApplication;

import com.activeandroid.ActiveAndroid;
import com.activeandroid.query.Select;
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
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class MyApplication extends MultiDexApplication {
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
            com.integralblue.httpresponsecache.a.a(file, 209715200);
            return;
        } catch (Exception var2_2) {
            var2_2.printStackTrace();
            return;
        }
    }

    private void a(Properties properties) {
        b.a(this).a(properties);
    }

    public final String a(String string) {
        return b.a(this).a().getProperty(string);
    }

    public final void a(int n) {
        this.e = n;
    }

    public final void a(Account account) {
        this.a(new MyApplication$3(this, account));
        this.a(new MyApplication$4(this, account.getUser()));
    }

    public final void a(BookInfo bookInfo) {
        this.d = bookInfo;
    }

    public final void a(Reader reader) {
        this.c = reader;
    }

    public final void a(String string, String string2) {
        b.a(this).a(string, string2);
    }

    public final /* varargs */ void a(String... arrstring) {
        b.a(this).a(arrstring);
    }

    /*
     * Exception decompiling
     */
    public final boolean a(Serializable var1_1, String var2_2) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Started 2 blocks at once
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:371)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:449)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doClass(Main.java:46)
        // org.benf.cfr.reader.Main.main(Main.java:183)
        throw new IllegalStateException("Decompilation failed");
    }

    public final Reader b() {
        return this.c;
    }

    /*
     * Exception decompiling
     */
    public final Serializable b(String var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // org.benf.cfr.reader.util.ConfusedCFRException: Started 3 blocks at once
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.getStartingBlocks(Op04StructuredStatement.java:371)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:449)
        // org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:2869)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:817)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:220)
        // org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:165)
        // org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:91)
        // org.benf.cfr.reader.entities.Method.analyse(Method.java:354)
        // org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:751)
        // org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:683)
        // org.benf.cfr.reader.Main.doClass(Main.java:46)
        // org.benf.cfr.reader.Main.main(Main.java:183)
        throw new IllegalStateException("Decompilation failed");
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
            this.h = new HashMap<String, ChapterLink[]>();
        }
        return this.h;
    }

    public final List<String> f() {
        if (this.g == null) {
            this.g = new ArrayList<String>();
        }
        return this.g;
    }

    public final String g() {
        return this.f;
    }

    public final List<String> h() {
        if (this.i == null) {
            this.i = new ArrayList<String>();
        }
        return this.i;
    }

    public final List<String> i() {
        if (this.j == null) {
            this.j = new ArrayList<String>();
        }
        return this.j;
    }

    public final List<Long> j() {
        if (this.k == null) {
            this.k = new ArrayList<Long>();
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
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) this.getSystemService("activity")).getRunningAppProcesses()) {
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
                List<ActivityManager.RunningAppProcessInfo> list = ((ActivityManager) this.getSystemService("activity")).getRunningAppProcesses();
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
                calendar.set(1, 2000);
                a.b((Context) this, "PREF_FIRST_LAUNCH_TIME", calendar.getTimeInMillis());
            } else {
                a.b((Context) this, "PREF_FIRST_LAUNCH_TIME", Calendar.getInstance().getTimeInMillis());
            }
        }
        if ((v = new V(this)).a() == 0) {
            v.a(Calendar.getInstance().getTimeInMillis());
        }
        am.s((Context) this);
        SpeechUtility.createUtility(this, "appid=56655269");
    }
}
