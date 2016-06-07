package android.support.v7.app;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.arcsoft.hpay100.a.a;
import com.arcsoft.hpay100.c.b;
import com.arcsoft.hpay100.c.h;
import com.arcsoft.hpay100.config.l;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.net.URLEncoder;
import java.security.Key;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESedeKeySpec;
import u.a.c;

public class f
{
  public final Context a;
  public final LayoutInflater b;
  public Drawable c;
  public CharSequence d;
  public View e;
  public CharSequence f;
  public CharSequence g;
  public DialogInterface.OnClickListener h;
  public CharSequence i;
  public DialogInterface.OnClickListener j;
  public boolean k;
  public DialogInterface.OnKeyListener l;
  public CharSequence[] m;
  public ListAdapter n;
  public DialogInterface.OnClickListener o;
  public boolean p;
  public int q = -1;
  private int r = 0;
  private int s = 0;
  private boolean t = false;

  public f(Context paramContext)
  {
    this.a = paramContext;
    this.k = true;
    this.b = ((LayoutInflater)paramContext.getSystemService("layout_inflater"));
  }

  public static String a()
  {
    return "Android " + Build.VERSION.RELEASE;
  }

  public static String a(String paramString1, String paramString2)
  {
    Key localKey = b(com.arcsoft.hpay100.c.d.a(paramString2));
    Cipher localCipher = Cipher.getInstance("DESede/ECB/PKCS5Padding");
    localCipher.init(1, localKey);
    return com.arcsoft.hpay100.c.d.a(localCipher.doFinal(paramString1.getBytes("gbk")));
  }

  public static String a(byte[] paramArrayOfByte)
  {
    try
    {
      String str1 = ((X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(paramArrayOfByte))).getPublicKey().toString();
      if (str1.indexOf("modulus") != -1)
      {
        String str2 = str1.substring(8 + str1.indexOf("modulus"), str1.lastIndexOf(",")).trim();
        return str2;
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static void a(Context paramContext, Map paramMap)
  {
    paramMap.put("v01", l.a);
    try
    {
      paramMap.put("v02", URLEncoder.encode(l.c, "utf-8"));
      paramMap.put("v03", URLEncoder.encode(l.m, "utf-8"));
      paramMap.put("v04", URLEncoder.encode(l.n, "utf-8"));
      paramMap.put("v05", URLEncoder.encode(l.o, "utf-8"));
      paramMap.put("v06", l.b(paramContext));
      paramMap.put("v07", l.k);
      paramMap.put("v08", l.b);
      paramMap.put("v09", "");
      paramMap.put("a01", h.a());
      paramMap.put("a02", h.b());
      paramMap.put("a03", "25000");
      paramMap.put("a04", "zssq01");
      paramMap.put("a05", "1");
      paramMap.put("a06", paramContext.getPackageName());
      paramMap.put("a07", k.a(paramContext));
      paramMap.put("a08", k.b(paramContext));
      paramMap.put("u01", k.d(paramContext));
      paramMap.put("u02", k.e(paramContext));
      paramMap.put("u03", k.h(paramContext));
      paramMap.put("u04", k.f(paramContext));
      paramMap.put("u05", a.i(paramContext));
      paramMap.put("u06", b.a(paramContext));
      paramMap.put("u07", k.g());
      paramMap.put("u08", k.h());
      paramMap.put("u09", k.i());
      paramMap.put("u10", k.j());
      paramMap.put("u11", k.c(paramContext));
      paramMap.put("u12", k.g(paramContext));
      paramMap.put("u13", k.f());
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static boolean a(Context paramContext)
  {
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo("com.alipay.android.app", 128);
      return localPackageInfo != null;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return false;
  }

  public static boolean a(String paramString)
  {
    return Pattern.compile("^http(s)?://([a-z0-9_\\-]+\\.)*(alipay|taobao)\\.(com|net)(:\\d+)?(/.*)?$").matcher(paramString).matches();
  }

  public static String b()
  {
    String str = d();
    int i1 = str.indexOf("-");
    if (i1 != -1)
      str = str.substring(0, i1);
    int i2 = str.indexOf("\n");
    if (i2 != -1)
      str = str.substring(0, i2);
    return "Linux " + str;
  }

  public static String b(String paramString)
  {
    try
    {
      if (c())
      {
        File localFile = new File(Environment.getExternalStorageDirectory(), paramString);
        if (localFile.exists())
        {
          String str = a.d(localFile.getAbsolutePath());
          return str;
        }
      }
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String b(String paramString1, String paramString2)
  {
    Key localKey = b(com.arcsoft.hpay100.c.d.a(paramString2));
    Cipher localCipher = Cipher.getInstance("DESede/ECB/PKCS5Padding");
    localCipher.init(2, localKey);
    return new String(localCipher.doFinal(com.arcsoft.hpay100.c.d.a(paramString1)), "gbk");
  }

  private static Key b(byte[] paramArrayOfByte)
  {
    DESedeKeySpec localDESedeKeySpec = new DESedeKeySpec(paramArrayOfByte);
    return SecretKeyFactory.getInstance("DESede").generateSecret(localDESedeKeySpec);
  }

  public static boolean b(Context paramContext)
  {
    while (true)
    {
      try
      {
        PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo("com.eg.android.AlipayGphone", 128);
        if (localPackageInfo == null)
          return false;
        String str = localPackageInfo.versionName;
        ArrayList localArrayList1 = new ArrayList();
        ArrayList localArrayList2 = new ArrayList();
        localArrayList1.addAll(Arrays.asList(str.split("\\.")));
        localArrayList2.addAll(Arrays.asList("7.0.0".split("\\.")));
        int i1 = Math.max(localArrayList1.size(), localArrayList2.size());
        if (localArrayList1.size() >= i1)
          continue;
        localArrayList1.add("0");
        continue;
        if (localArrayList2.size() < i1)
        {
          localArrayList2.add("0");
          continue;
          if (i2 >= i1)
            continue;
          if (Integer.parseInt((String)localArrayList1.get(i2)) == Integer.parseInt((String)localArrayList2.get(i2)))
            continue;
          int i3 = Integer.parseInt((String)localArrayList1.get(i2));
          int i4 = Integer.parseInt((String)localArrayList2.get(i2));
          int i5 = i3 - i4;
          if (i5 < 0)
          {
            return false;
            i2++;
            continue;
            i5 = 0;
            continue;
          }
          return true;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        return false;
      }
      int i2 = 0;
    }
  }

  public static String c(Context paramContext)
  {
    String str1 = a();
    String str2 = b();
    String str3 = d(paramContext);
    String str4 = e(paramContext);
    return " (" + str1 + ";" + str2 + ";" + str3 + ";;" + str4 + ")(sdk android)";
  }

  public static boolean c()
  {
    String str = Environment.getExternalStorageState();
    return (str != null) && (str.length() > 0) && ((str.equals("mounted")) || (str.equals("mounted_ro"))) && (Environment.getExternalStorageDirectory() != null);
  }

  private static String d()
  {
    Matcher localMatcher;
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/version"), 256);
      try
      {
        String str1 = localBufferedReader.readLine();
        localBufferedReader.close();
        localMatcher = Pattern.compile("\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)").matcher(str1);
        if (!localMatcher.matches())
          return "Unavailable";
      }
      finally
      {
        localBufferedReader.close();
      }
    }
    catch (IOException localIOException)
    {
      return "Unavailable";
    }
    if (localMatcher.groupCount() < 4)
      return "Unavailable";
    String str2 = localMatcher.group(1) + "\n" + localMatcher.group(2) + " " + localMatcher.group(3) + "\n" + localMatcher.group(4);
    return str2;
  }

  public static String d(Context paramContext)
  {
    return paramContext.getResources().getConfiguration().locale.toString();
  }

  public static String e(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(localDisplayMetrics.widthPixels);
    localStringBuilder.append("*");
    localStringBuilder.append(localDisplayMetrics.heightPixels);
    return localStringBuilder.toString();
  }

  public static String f(Context paramContext)
  {
    try
    {
      Iterator localIterator = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses().iterator();
      while (localIterator.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        if (!localRunningAppProcessInfo.processName.contains("com.eg.android.AlipayGphone"))
          continue;
        String str = localRunningAppProcessInfo.processName;
        return str;
      }
      return null;
    }
    catch (Throwable localThrowable)
    {
    }
    return "error";
  }

  public static String g(Context paramContext)
  {
    List localList = paramContext.getPackageManager().getInstalledPackages(0);
    StringBuilder localStringBuilder = new StringBuilder();
    int i1 = 0;
    if (i1 < localList.size())
    {
      PackageInfo localPackageInfo = (PackageInfo)localList.get(i1);
      int i2 = localPackageInfo.applicationInfo.flags;
      int i3;
      if (((i2 & 0x1) == 0) && ((i2 & 0x80) == 0))
      {
        i3 = 1;
        label70: if (i3 != 0)
        {
          if (!localPackageInfo.packageName.equals("com.eg.android.AlipayGphone"))
            break label125;
          localStringBuilder.append(localPackageInfo.packageName).append(localPackageInfo.versionCode).append("-");
        }
      }
      while (true)
      {
        i1++;
        break;
        i3 = 0;
        break label70;
        label125: if (localPackageInfo.packageName.contains("theme"))
          continue;
        localStringBuilder.append(localPackageInfo.packageName).append("-");
      }
    }
    String str = localStringBuilder.toString();
    if ((str != null) && (str.length() > 0))
      return str.substring(0, -1 + str.length());
    return null;
  }

  public static String h(Context paramContext)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("v01=" + l.a);
    try
    {
      localStringBuilder.append("&v02=" + URLEncoder.encode(l.c, "utf-8"));
      localStringBuilder.append("&v03=" + URLEncoder.encode(l.m, "utf-8"));
      localStringBuilder.append("&v04=" + URLEncoder.encode(l.n, "utf-8"));
      localStringBuilder.append("&v05=" + URLEncoder.encode(l.o, "utf-8"));
      localStringBuilder.append("&v06=" + l.b(paramContext));
      localStringBuilder.append("&v07=" + l.k);
      localStringBuilder.append("&v08=" + l.b);
      localStringBuilder.append("&v09=");
      localStringBuilder.append("&a01=" + h.a());
      localStringBuilder.append("&a02=" + h.b());
      localStringBuilder.append("&a03=25000");
      localStringBuilder.append("&a04=zssq01");
      localStringBuilder.append("&a05=1");
      localStringBuilder.append("&a06=" + paramContext.getPackageName());
      localStringBuilder.append("&a07=" + k.a(paramContext));
      localStringBuilder.append("&a08=" + k.b(paramContext));
      localStringBuilder.append("&u01=" + k.d(paramContext));
      localStringBuilder.append("&u02=" + k.e(paramContext));
      localStringBuilder.append("&u03=" + k.h(paramContext));
      localStringBuilder.append("&u04=" + k.f(paramContext));
      localStringBuilder.append("&u05=" + a.i(paramContext));
      localStringBuilder.append("&u06=" + b.a(paramContext));
      localStringBuilder.append("&u07=" + k.g());
      localStringBuilder.append("&u08=" + k.h());
      localStringBuilder.append("&u09=" + k.i());
      localStringBuilder.append("&u10=" + k.j());
      localStringBuilder.append("&u11=" + k.c(paramContext));
      localStringBuilder.append("&u12=" + k.g(paramContext));
      localStringBuilder.append("&u13=" + k.f());
      return localStringBuilder.toString();
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static int i(Context paramContext)
  {
    return c.a(paramContext).c("umeng_common_download_notification");
  }

  public static boolean j(Context paramContext)
  {
    if (paramContext == null)
      return false;
    return paramContext.getSharedPreferences(paramContext.getPackageName() + "_preferences", 0).getBoolean("customer_night_theme", false);
  }

  public final void a(d paramd)
  {
    ListView localListView;
    int i1;
    if (this.e != null)
    {
      paramd.a(this.e);
      if (this.f != null)
        paramd.b(this.f);
      if (this.g != null)
        paramd.a(-1, this.g, this.h, null);
      if (this.i != null)
        paramd.a(-2, this.i, this.j, null);
      if ((this.m != null) || (this.n != null))
      {
        localListView = (ListView)this.b.inflate(d.i(paramd), null);
        if (!this.p)
          break label216;
        i1 = d.j(paramd);
        label115: if (this.n == null)
          break label224;
      }
    }
    label216: label224: for (Object localObject = this.n; ; localObject = new i(this.a, i1, 16908308, this.m))
    {
      d.a(paramd, (ListAdapter)localObject);
      d.a(paramd, this.q);
      if (this.o != null)
        localListView.setOnItemClickListener(new g(this, paramd));
      if (this.p)
        localListView.setChoiceMode(1);
      d.a(paramd, localListView);
      return;
      if (this.d != null)
        paramd.a(this.d);
      if (this.c == null)
        break;
      paramd.a(this.c);
      break;
      i1 = d.k(paramd);
      break label115;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.f
 * JD-Core Version:    0.6.0
 */