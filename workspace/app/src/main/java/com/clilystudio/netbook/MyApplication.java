package com.clilystudio.netbook;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.os.Process;
import android.support.design.widget.am;
import android.support.multidex.MultiDexApplication;
import com.activeandroid.ActiveAndroid;
import com.activeandroid.query.From;
import com.activeandroid.query.Select;
import com.arcsoft.hpay100.a.a;
import com.iflytek.cloud.SpeechUtility;
import com.nostra13.universalimageloader.core.g;
import com.nostra13.universalimageloader.core.i;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.reader.Reader;
import com.clilystudio.netbook.util.V;
import com.xiaomi.mipush.sdk.d;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class MyApplication extends MultiDexApplication
{
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

  public static MyApplication a()
  {
    return b;
  }

  private void a(Properties paramProperties)
  {
    b.a(this).a(paramProperties);
  }

  public final String a(String paramString)
  {
    return b.a(this).a().getProperty(paramString);
  }

  public final void a(int paramInt)
  {
    this.e = paramInt;
  }

  public final void a(Account paramAccount)
  {
    a(new MyApplication.3(this, paramAccount));
    a(new MyApplication.4(this, paramAccount.getUser()));
  }

  public final void a(BookInfo paramBookInfo)
  {
    this.d = paramBookInfo;
  }

  public final void a(Reader paramReader)
  {
    this.c = paramReader;
  }

  public final void a(String paramString1, String paramString2)
  {
    b.a(this).a(paramString1, paramString2);
  }

  public final void a(String[] paramArrayOfString)
  {
    b.a(this).a(paramArrayOfString);
  }

  // ERROR //
  public final boolean a(java.io.Serializable paramSerializable, String paramString)
  {
     v3 = 0x0;
    v0 = 0x0;
    v1 = 0x0;
    :try_start_0
    p0.openFileOutput(p2, v1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v4
    :try_start_1
    v2 = new ObjectOutputStream();
    v2.<init>(v4);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    :try_start_2
    v2.writeObject(p1);
    v2.flush();
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    :try_start_3
    v2.close();
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    :goto_0
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    :try_start_4
    v4.close();
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    :cond_0
    :goto_1
    v0 = 0x1;
    :cond_1
    :goto_2
    return v0
    :catch_0
    move-exception v1
    v2 = v3;
    :goto_3
    :try_start_5
    v1.printStackTrace();
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    :try_start_6
    v2.close();
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    :cond_2
    :goto_4
    if (v3 == 0) {
//       if-eqz v3, :cond_1
    }
    :try_start_7
    v3.close();
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    goto :goto_2
    :catch_1
    move-exception v1
    goto :goto_2
    :catchall_0
    move-exception v0
    v2 = v3;
    v4 = v3;
    :goto_5
    if (v2 == 0) {
//       if-eqz v2, :cond_3
    }
    :try_start_8
    v2.close();
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    :cond_3
    :goto_6
    if (v4 == 0) {
//       if-eqz v4, :cond_4
    }
    :try_start_9
    v4.close();
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    :cond_4
    :goto_7
    throw v0
    :catch_2
    move-exception v0
    goto :goto_0
    :catch_3
    move-exception v0
    goto :goto_1
    :catch_4
    move-exception v1
    goto :goto_4
    :catch_5
    move-exception v1
    goto :goto_6
    :catch_6
    move-exception v1
    goto :goto_7
    :catchall_1
    move-exception v0
    v2 = v3;
    goto :goto_5
    :catchall_2
    move-exception v0
    goto :goto_5
    :catchall_3
    move-exception v0
    v4 = v3;
    goto :goto_5
    :catch_7
    move-exception v1
    v2 = v3;
    v3 = v4;
    goto :goto_3
    :catch_8
    move-exception v1
    v3 = v4;
    goto :goto_3
  }

  public final Reader b()
  {
    return this.c;
  }

  // ERROR //
  public final java.io.Serializable b(String paramString)
  {
     v1 = 0x0;
    v0 = 0x0;
    v2 = p0.getFileStreamPath(p1);
    v2 = v2.exists();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v0 = 0x1;
    :cond_0
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = v1;
    :cond_1
    :goto_0
    return v0;
    :cond_2
    :try_start_0
    p0.openFileInput(p1);
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v3
    :try_start_1
    v2 = new ObjectInputStream();
    v2.<init>(v3);
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    :try_start_2
    v0 = v2.readObject();
    check-cast v0, Ljava/io/Serializable;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    :try_start_3
    v2.close();
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    :goto_1
    if (v3 == 0) {
//       if-eqz v3, :cond_1
    }
    :try_start_4
    v3.close();
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    goto :goto_0
    :catch_0
    move-exception v1
    goto :goto_0
    :catch_1
    move-exception v0
    v0 = v1;
    v2 = v1;
    :goto_2
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    :try_start_5
    v0.close();
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    :cond_3
    :goto_3
    if (v2 == 0) {
//       if-eqz v2, :cond_4
    }
    :try_start_6
    v2.close();
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    :cond_4
    :goto_4
    v0 = v1;
    goto :goto_0
    :catch_2
    move-exception v0
    v2 = v1;
    v3 = v1;
    :goto_5
    :try_start_7
    v0.printStackTrace();
    instance-of v0, v0, Ljava/io/InvalidClassException;
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.getFileStreamPath(p1);
    v0.delete();
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    :cond_5
    if (v2 == 0) {
//       if-eqz v2, :cond_6
    }
    :try_start_8
    v2.close();
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    :cond_6
    :goto_6
    if (v3 == 0) {
//       if-eqz v3, :cond_4
    }
    :try_start_9
    v3.close();
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    goto :goto_4
    :catch_3
    move-exception v0
    goto :goto_4
    :catchall_0
    move-exception v0
    v2 = v1;
    v3 = v1;
    :goto_7
    if (v2 == 0) {
//       if-eqz v2, :cond_7
    }
    :try_start_a
    v2.close();
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    :cond_7
    :goto_8
    if (v3 == 0) {
//       if-eqz v3, :cond_8
    }
    :try_start_b
    v3.close();
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    :cond_8
    :goto_9
    throw v0
    :catch_4
    move-exception v1
    goto :goto_1
    :catch_5
    move-exception v0
    goto :goto_3
    :catch_6
    move-exception v0
    goto :goto_4
    :catch_7
    move-exception v0
    goto :goto_6
    :catch_8
    move-exception v1
    goto :goto_8
    :catch_9
    move-exception v1
    goto :goto_9
    :catchall_1
    move-exception v0
    v2 = v1;
    goto :goto_7
    :catchall_2
    move-exception v0
    goto :goto_7
    :catch_a
    move-exception v0
    v2 = v1;
    goto :goto_5
    :catch_b
    move-exception v0
    goto :goto_5
    :catch_c
    move-exception v0
    v0 = v1;
    v2 = v3;
    goto :goto_2
    :catch_d
    move-exception v0
    v0 = v2;
    v2 = v3;
    goto :goto_2
  }

  public final BookInfo c()
  {
    return this.d;
  }

  public final void c(String paramString)
  {
    this.f = paramString;
  }

  public final int d()
  {
    return this.e;
  }

  public final Map<String, ChapterLink[]> e()
  {
    if (this.h == null)
      this.h = new HashMap();
    return this.h;
  }

  public final List<String> f()
  {
    if (this.g == null)
      this.g = new ArrayList();
    return this.g;
  }

  public final String g()
  {
    return this.f;
  }

  public final List<String> h()
  {
    if (this.i == null)
      this.i = new ArrayList();
    return this.i;
  }

  public final List<String> i()
  {
    if (this.j == null)
      this.j = new ArrayList();
    return this.j;
  }

  public final List<Long> j()
  {
    if (this.k == null)
      this.k = new ArrayList();
    return this.k;
  }

  public void onCreate()
  {
    super.onCreate();
    b = this;
    com.clilystudio.netbook.api.e.a("1".equals(com.umeng.a.b.b(b, "use_http_dns")));
    a.q(this);
    ActiveAndroid.initialize(this);
    Object localObject1 = null;
    int m = Process.myPid();
    Iterator localIterator1 = ((ActivityManager)getSystemService("activity")).getRunningAppProcesses().iterator();
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo2;
    if (localIterator1.hasNext())
    {
      localRunningAppProcessInfo2 = (ActivityManager.RunningAppProcessInfo)localIterator1.next();
      if (localRunningAppProcessInfo2.pid != m)
        break label419;
    }
    label397: label403: label419: for (Object localObject2 = localRunningAppProcessInfo2.processName; ; localObject2 = localObject1)
    {
      localObject1 = localObject2;
      break;
      if (localObject1.equals("com.clilystudio.netbook"))
        new e(this).start();
      com.umeng.a.b.c(this);
      com.umeng.a.b.a(new f(this));
      int i2;
      if (a.l(this, "update_notice_key"))
      {
        List localList = ((ActivityManager)getSystemService("activity")).getRunningAppProcesses();
        String str = getPackageName();
        int i1 = Process.myPid();
        Iterator localIterator2 = localList.iterator();
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo1;
        do
        {
          if (!localIterator2.hasNext())
            break;
          localRunningAppProcessInfo1 = (ActivityManager.RunningAppProcessInfo)localIterator2.next();
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
      if (a.c(this, "PREF_FIRST_LAUNCH_TIME", 0L) == 0L)
      {
        if (new Select().from(BookReadRecord.class).execute().isEmpty())
          break label397;
        n = 1;
        label316: if (n == 0)
          break label403;
        Calendar localCalendar = Calendar.getInstance();
        localCalendar.set(1, 2000);
        a.b(this, "PREF_FIRST_LAUNCH_TIME", localCalendar.getTimeInMillis());
      }
      while (true)
      {
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