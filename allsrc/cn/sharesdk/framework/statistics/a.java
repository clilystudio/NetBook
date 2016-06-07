package cn.sharesdk.framework.statistics;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.statistics.b.f;
import cn.sharesdk.framework.statistics.b.f.a;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;

public class a
{
  private static a a;
  private c b;
  private cn.sharesdk.framework.statistics.a.c c;
  private boolean d;

  private a(Context paramContext)
  {
    this.b = new c(paramContext);
    this.c = cn.sharesdk.framework.statistics.a.c.a(paramContext);
  }

  public static a a(Context paramContext)
  {
    if (a == null)
      a = new a(paramContext);
    return a;
  }

  private String a(Bitmap paramBitmap, b paramb)
  {
    File localFile = File.createTempFile("bm_tmp", ".png");
    FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
    paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localFileOutputStream);
    localFileOutputStream.flush();
    localFileOutputStream.close();
    return a(localFile.getAbsolutePath(), paramb);
  }

  private String a(String paramString, b paramb)
  {
    if ((TextUtils.isEmpty(paramString)) || (!new File(paramString).exists()))
      return null;
    Bitmap.CompressFormat localCompressFormat = com.arcsoft.hpay100.a.a.g(paramString);
    float f = 200.0F;
    if (paramb == b.b)
      f = 600.0F;
    BitmapFactory.Options localOptions1 = new BitmapFactory.Options();
    localOptions1.inJustDecodeBounds = true;
    BitmapFactory.decodeFile(paramString, localOptions1);
    localOptions1.inJustDecodeBounds = false;
    int i = localOptions1.outWidth;
    int j = localOptions1.outHeight;
    if ((i >= j) && (j > f));
    for (int k = (int)Math.ceil(localOptions1.outHeight / f); ; k = (int)Math.ceil(localOptions1.outWidth / f))
    {
      if (k <= 0)
        k = 1;
      BitmapFactory.Options localOptions2 = new BitmapFactory.Options();
      localOptions2.inSampleSize = k;
      localOptions2.inPurgeable = true;
      localOptions2.inInputShareable = true;
      Bitmap localBitmap = BitmapFactory.decodeFile(paramString, localOptions2);
      localBitmap.getHeight();
      localBitmap.getWidth();
      File localFile = File.createTempFile("bm_tmp2", "." + localCompressFormat.name().toLowerCase());
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      localBitmap.compress(localCompressFormat, 80, localFileOutputStream);
      localFileOutputStream.flush();
      localFileOutputStream.close();
      return h(localFile.getAbsolutePath());
      if ((i >= j) || (i <= f))
        break;
    }
    return h(paramString);
  }

  private String a(String paramString1, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    if (TextUtils.isEmpty(paramString1));
    Pattern localPattern;
    HashMap localHashMap1;
    do
    {
      ArrayList localArrayList1;
      do
      {
        return paramString1;
        localArrayList1 = new ArrayList();
        localPattern = Pattern.compile(paramString3);
        Matcher localMatcher1 = localPattern.matcher(paramString1);
        while (localMatcher1.find())
        {
          String str3 = localMatcher1.group();
          if ((str3 == null) || (str3.length() <= 0))
            continue;
          localArrayList1.add(str3);
        }
      }
      while (localArrayList1.size() == 0);
      localHashMap1 = this.b.a(paramString1, paramString2, localArrayList1, paramInt, paramString4);
    }
    while ((localHashMap1 == null) || (localHashMap1.size() <= 0) || (!localHashMap1.containsKey("data")));
    ArrayList localArrayList2 = (ArrayList)localHashMap1.get("data");
    HashMap localHashMap2 = new HashMap();
    Iterator localIterator = localArrayList2.iterator();
    while (localIterator.hasNext())
    {
      HashMap localHashMap3 = (HashMap)localIterator.next();
      String str2 = String.valueOf(localHashMap3.get("surl"));
      localHashMap2.put(String.valueOf(localHashMap3.get("source")), str2);
    }
    Matcher localMatcher2 = localPattern.matcher(paramString1);
    StringBuilder localStringBuilder = new StringBuilder();
    for (int i = 0; localMatcher2.find(); i = localMatcher2.end())
    {
      localStringBuilder.append(paramString1.substring(i, localMatcher2.start()));
      localStringBuilder.append((String)localHashMap2.get(localMatcher2.group()));
    }
    localStringBuilder.append(paramString1.substring(i, paramString1.length()));
    String str1 = localStringBuilder.toString();
    cn.sharesdk.framework.utils.d.a().i("> SERVER_SHORT_LINK_URL content after replace link ===  %s", new Object[] { str1 });
    return str1;
  }

  private void a(cn.sharesdk.framework.statistics.b.b paramb)
  {
    boolean bool = this.c.c();
    String str = paramb.c;
    if ((bool) && (!TextUtils.isEmpty(str)))
    {
      paramb.c = com.arcsoft.hpay100.a.a.e(str, paramb.f.substring(0, 16));
      return;
    }
    paramb.d = null;
    paramb.c = null;
  }

  private void a(f paramf)
  {
    int i = 0;
    int j = this.c.e();
    boolean bool = this.c.c();
    f.a locala = paramf.d;
    int n;
    if ((j == 1) || ((j == 0) && (this.d)))
    {
      if ((locala == null) || (locala.e == null));
      for (int k = 0; ; k = locala.e.size())
        for (int m = 0; m < k; m++)
        {
          String str2 = a((String)locala.e.get(m), b.a);
          if (TextUtils.isEmpty(str2))
            continue;
          locala.d.add(str2);
        }
      if ((locala == null) || (locala.f == null))
        n = 0;
    }
    while (i < n)
    {
      String str1 = a((Bitmap)locala.f.get(i), b.a);
      if (!TextUtils.isEmpty(str1))
        locala.d.add(str1);
      i++;
      continue;
      n = locala.f.size();
      i = 0;
      continue;
      paramf.d = null;
    }
    if (!bool)
      paramf.n = null;
  }

  private boolean a(String paramString, boolean paramBoolean)
  {
    try
    {
      this.b.a(paramString, paramBoolean);
      return true;
    }
    catch (Exception localException)
    {
      cn.sharesdk.framework.utils.d.a().w(localException);
    }
    return false;
  }

  private String h(String paramString)
  {
    HashMap localHashMap = this.b.d(paramString);
    if ((localHashMap == null) || (localHashMap.size() <= 0));
    do
      return null;
    while ((!localHashMap.containsKey("status")) || (com.arcsoft.hpay100.a.a.n(String.valueOf(localHashMap.get("status"))) != 200) || (!localHashMap.containsKey("url")));
    return (String)localHashMap.get("url");
  }

  private String i(String paramString)
  {
    ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramString.getBytes());
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
    byte[] arrayOfByte1 = new byte[1024];
    while (true)
    {
      int i = localByteArrayInputStream.read(arrayOfByte1, 0, 1024);
      if (i == -1)
        break;
      localGZIPOutputStream.write(arrayOfByte1, 0, i);
    }
    localGZIPOutputStream.flush();
    localGZIPOutputStream.close();
    byte[] arrayOfByte2 = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.flush();
    localByteArrayOutputStream.close();
    localByteArrayInputStream.close();
    return Base64.encodeToString(arrayOfByte2, 2);
  }

  public String a(Bitmap paramBitmap)
  {
    try
    {
      String str = a(paramBitmap, b.b);
      return str;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
    return null;
  }

  public String a(String paramString1, String paramString2, int paramInt, boolean paramBoolean, String paramString3)
  {
    try
    {
      if (this.c.i())
      {
        if (!this.c.d())
          return paramString1;
        if (paramBoolean)
        {
          String str1 = a(paramString1, paramString2, "<a[^>]*?href[\\s]*=[\\s]*[\"']?([^'\">]+?)['\"]?>", paramInt, paramString3);
          if ((str1 != null) && (!str1.equals(paramString1)))
            return str1;
        }
        String str2 = a(paramString1, paramString2, "(http://|https://){1}[\\w\\.\\-/:\\?&%=,;\\[\\]\\{\\}`~!@#\\$\\^\\*\\(\\)_\\+\\\\\\|]+", paramInt, paramString3);
        if (str2 != null)
        {
          boolean bool = str2.equals(paramString1);
          if (!bool)
            return str2;
        }
      }
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
    return paramString1;
  }

  public HashMap<String, Object> a(String paramString1, String paramString2)
  {
    try
    {
      HashMap localHashMap = this.b.b(paramString1, paramString2);
      return localHashMap;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
    return new HashMap();
  }

  public void a()
  {
    while (true)
    {
      int i;
      try
      {
        if (!this.c.i())
          return;
        ArrayList localArrayList = this.b.d();
        i = 0;
        if (i < localArrayList.size())
        {
          cn.sharesdk.framework.statistics.a.d locald = (cn.sharesdk.framework.statistics.a.d)localArrayList.get(i);
          if (locald.b.size() != 1)
            continue;
          boolean bool2 = a(locald.a, false);
          if (!bool2)
            break label119;
          this.b.a(locald.b);
          break label119;
          boolean bool1 = a(i(locald.a), true);
          bool2 = bool1;
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
      }
      return;
      label119: i++;
    }
  }

  public void a(cn.sharesdk.framework.statistics.b.c paramc)
  {
    while (true)
    {
      try
      {
        if (!this.c.i())
          return;
        if ((paramc instanceof cn.sharesdk.framework.statistics.b.b))
        {
          a((cn.sharesdk.framework.statistics.b.b)paramc);
          if (this.c.b())
            continue;
          paramc.m = null;
          long l = this.c.a();
          if (l != 0L)
            continue;
          l = this.b.a();
          paramc.e = (System.currentTimeMillis() - l);
          this.b.a(paramc);
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
        return;
      }
      if (!(paramc instanceof f))
        continue;
      a((f)paramc);
    }
  }

  public void a(String paramString)
  {
    while (true)
    {
      try
      {
        long l1 = this.c.j().longValue();
        long l2 = System.currentTimeMillis();
        Calendar localCalendar = Calendar.getInstance();
        localCalendar.setTimeInMillis(l1);
        int i = localCalendar.get(5);
        localCalendar.setTimeInMillis(l2);
        int j = localCalendar.get(5);
        if ((l2 - l1 < 86400000L) && (i == j))
          return;
        HashMap localHashMap = this.b.a(paramString);
        if (localHashMap.containsKey("res"))
        {
          bool = "true".equals(String.valueOf(localHashMap.get("res")));
          this.c.a(bool);
          if ((localHashMap == null) || (localHashMap.size() <= 0))
            break;
          this.c.b(System.currentTimeMillis());
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
        return;
      }
      boolean bool = true;
    }
  }

  public void a(String paramString, ArrayList<HashMap<String, String>> paramArrayList)
  {
    try
    {
      if (!this.c.i())
        return;
      this.b.a(paramString, paramArrayList);
      return;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }

  public void a(String paramString, HashMap<String, Object> paramHashMap)
  {
    try
    {
      this.b.b(paramString, paramHashMap);
      return;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }

  public void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }

  public void b(String paramString)
  {
    HashMap localHashMap1;
    try
    {
      if (!this.c.i())
        return;
      this.c.a(System.currentTimeMillis());
      localHashMap1 = this.b.b(paramString);
      if ((localHashMap1.containsKey("status")) && (com.arcsoft.hpay100.a.a.n(String.valueOf(localHashMap1.get("status"))) == -200))
      {
        cn.sharesdk.framework.utils.d.a().d((String)localHashMap1.get("error"), new Object[0]);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
      return;
    }
    if (localHashMap1.containsKey("timestamp"))
    {
      long l1 = com.arcsoft.hpay100.a.a.o(String.valueOf(localHashMap1.get("timestamp")));
      long l2 = System.currentTimeMillis() - l1;
      this.c.a("service_time", Long.valueOf(l2));
    }
    if (localHashMap1.containsKey("switchs"))
    {
      HashMap localHashMap2 = (HashMap)localHashMap1.get("switchs");
      if (localHashMap2 != null)
      {
        String str3 = String.valueOf(localHashMap2.get("device"));
        String str4 = String.valueOf(localHashMap2.get("share"));
        String str5 = String.valueOf(localHashMap2.get("auth"));
        String str6 = String.valueOf(localHashMap2.get("backflow"));
        this.c.e(str3);
        this.c.g(str4);
        this.c.f(str5);
        this.c.d(str6);
      }
    }
    if ((localHashMap1.containsKey("requesthost")) && (localHashMap1.containsKey("requestport")))
    {
      String str1 = String.valueOf(localHashMap1.get("requesthost"));
      String str2 = String.valueOf(localHashMap1.get("requestport"));
      if ((!TextUtils.isEmpty(str1)) && (!TextUtils.isEmpty(str2)))
        this.b.c("http://" + str1 + ":" + str2);
    }
  }

  public void c(String paramString)
  {
    try
    {
      if (!this.c.i())
        return;
      String str1 = this.c.f();
      HashMap localHashMap = this.b.b();
      String str2 = String.valueOf(localHashMap);
      if (!str2.equals(str1))
      {
        this.c.i(str2);
        this.b.a(paramString, localHashMap);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }

  public void d(String paramString)
  {
    try
    {
      if (!this.c.i())
        return;
      String str1 = this.c.g();
      String str2 = com.arcsoft.hpay100.a.a.e(this.b.c(), "sdk.sharesdk.sdk");
      if (!str2.equals(str1))
      {
        this.c.j(str2);
        this.b.a(paramString, str2);
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
  }

  public String e(String paramString)
  {
    try
    {
      String str = a(paramString, b.b);
      return str;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
    return null;
  }

  public HashMap<String, Object> f(String paramString)
  {
    try
    {
      HashMap localHashMap = this.b.f(paramString);
      return localHashMap;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
    return new HashMap();
  }

  public HashMap<String, Object> g(String paramString)
  {
    try
    {
      HashMap localHashMap = this.b.e(paramString);
      return localHashMap;
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
    }
    return new HashMap();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.statistics.a
 * JD-Core Version:    0.6.0
 */