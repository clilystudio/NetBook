package com.ushaqi.zhuishushenqi;

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
import com.ushaqi.zhuishushenqi.db.BookReadRecord;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.BookInfo;
import com.ushaqi.zhuishushenqi.model.ChapterLink;
import com.ushaqi.zhuishushenqi.model.UGCNewCollection;
import com.ushaqi.zhuishushenqi.reader.Reader;
import com.ushaqi.zhuishushenqi.util.V;
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
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: aload_2
    //   4: iconst_0
    //   5: invokevirtual 121	com/ushaqi/zhuishushenqi/MyApplication:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   8: astore 13
    //   10: aload 13
    //   12: astore 6
    //   14: new 123	java/io/ObjectOutputStream
    //   17: dup
    //   18: aload 6
    //   20: invokespecial 126	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   23: astore 5
    //   25: aload 5
    //   27: aload_1
    //   28: invokevirtual 130	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   31: aload 5
    //   33: invokevirtual 133	java/io/ObjectOutputStream:flush	()V
    //   36: aload 5
    //   38: invokevirtual 136	java/io/ObjectOutputStream:close	()V
    //   41: aload 6
    //   43: ifnull +8 -> 51
    //   46: aload 6
    //   48: invokevirtual 139	java/io/FileOutputStream:close	()V
    //   51: iconst_1
    //   52: istore 10
    //   54: iload 10
    //   56: ireturn
    //   57: astore 9
    //   59: aconst_null
    //   60: astore 5
    //   62: aload 9
    //   64: invokevirtual 66	java/lang/Exception:printStackTrace	()V
    //   67: aload 5
    //   69: ifnull +8 -> 77
    //   72: aload 5
    //   74: invokevirtual 136	java/io/ObjectOutputStream:close	()V
    //   77: iconst_0
    //   78: istore 10
    //   80: aload_3
    //   81: ifnull -27 -> 54
    //   84: aload_3
    //   85: invokevirtual 139	java/io/FileOutputStream:close	()V
    //   88: iconst_0
    //   89: ireturn
    //   90: astore 11
    //   92: iconst_0
    //   93: ireturn
    //   94: astore 4
    //   96: aconst_null
    //   97: astore 5
    //   99: aconst_null
    //   100: astore 6
    //   102: aload 5
    //   104: ifnull +8 -> 112
    //   107: aload 5
    //   109: invokevirtual 136	java/io/ObjectOutputStream:close	()V
    //   112: aload 6
    //   114: ifnull +8 -> 122
    //   117: aload 6
    //   119: invokevirtual 139	java/io/FileOutputStream:close	()V
    //   122: aload 4
    //   124: athrow
    //   125: astore 14
    //   127: goto -86 -> 41
    //   130: astore 15
    //   132: goto -81 -> 51
    //   135: astore 12
    //   137: goto -60 -> 77
    //   140: astore 8
    //   142: goto -30 -> 112
    //   145: astore 7
    //   147: goto -25 -> 122
    //   150: astore 4
    //   152: aconst_null
    //   153: astore 5
    //   155: goto -53 -> 102
    //   158: astore 4
    //   160: goto -58 -> 102
    //   163: astore 4
    //   165: aload_3
    //   166: astore 6
    //   168: goto -66 -> 102
    //   171: astore 9
    //   173: aload 6
    //   175: astore_3
    //   176: aconst_null
    //   177: astore 5
    //   179: goto -117 -> 62
    //   182: astore 9
    //   184: aload 6
    //   186: astore_3
    //   187: goto -125 -> 62
    //
    // Exception table:
    //   from	to	target	type
    //   2	10	57	java/lang/Exception
    //   84	88	90	java/lang/Exception
    //   2	10	94	finally
    //   36	41	125	java/lang/Exception
    //   46	51	130	java/lang/Exception
    //   72	77	135	java/lang/Exception
    //   107	112	140	java/lang/Exception
    //   117	122	145	java/lang/Exception
    //   14	25	150	finally
    //   25	36	158	finally
    //   62	67	163	finally
    //   14	25	171	java/lang/Exception
    //   25	36	182	java/lang/Exception
  }

  public final Reader b()
  {
    return this.c;
  }

  // ERROR //
  public final java.io.Serializable b(String paramString)
  {
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
    com.ushaqi.zhuishushenqi.api.e.a("1".equals(com.umeng.a.b.b(b, "use_http_dns")));
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
      if (localObject1.equals("com.ushaqi.zhuishushenqi"))
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
 * Qualified Name:     com.ushaqi.zhuishushenqi.MyApplication
 * JD-Core Version:    0.6.0
 */