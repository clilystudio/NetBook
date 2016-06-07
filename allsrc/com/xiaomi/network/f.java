package com.xiaomi.network;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.Uri.Builder;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Process;
import android.support.design.widget.K;
import android.text.TextUtils;
import com.xiaomi.common.logger.thrift.mfs.b;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class f
{
  private static Map<String, ArrayList<String>> b = new HashMap();
  private static f i;
  private static String j;
  private static String k;
  private static boolean l = false;
  private Map<String, d> a = new HashMap();
  private Context c;
  private e d;
  private K e;
  private String f = "0";
  private long g = 0L;
  private long h = 0L;

  private f(Context paramContext, e parame, K paramK, String paramString1, String paramString2, String paramString3)
  {
    this.c = paramContext.getApplicationContext();
    if (this.c == null)
      this.c = paramContext;
    this.e = paramK;
    if (parame == null)
    {
      this.d = new l(this);
      this.f = paramString1;
      if (paramString2 == null)
        break label107;
      label83: j = paramString2;
      if (paramString3 == null)
        break label116;
    }
    while (true)
    {
      k = paramString3;
      return;
      this.d = parame;
      break;
      label107: paramString2 = paramContext.getPackageName();
      break label83;
      label116: paramString3 = j();
    }
  }

  public static f a()
  {
    monitorenter;
    try
    {
      if (i == null)
        throw new IllegalStateException("the host manager is not initialized yet.");
    }
    finally
    {
      monitorexit;
    }
    f localf = i;
    monitorexit;
    return localf;
  }

  private String a(ArrayList<String> paramArrayList, String paramString)
  {
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    localArrayList2.add(new BasicNameValuePair("type", paramString));
    localArrayList2.add(new BasicNameValuePair("uuid", this.f));
    localArrayList2.add(new BasicNameValuePair("list", a(paramArrayList, ",")));
    c localc = b("resolver.gslb.mi-idc.com");
    String str = String.format("http://%1$s/gslb/gslb/getbucket.asp?ver=3.0", new Object[] { "resolver.gslb.mi-idc.com" });
    if (localc == null)
      localArrayList1.add(str);
    while (true)
    {
      Iterator localIterator1 = localArrayList1.iterator();
      if (!localIterator1.hasNext())
        break;
      Uri.Builder localBuilder = Uri.parse((String)localIterator1.next()).buildUpon();
      Iterator localIterator2 = localArrayList2.iterator();
      while (true)
        if (localIterator2.hasNext())
        {
          NameValuePair localNameValuePair = (NameValuePair)localIterator2.next();
          localBuilder.appendQueryParameter(localNameValuePair.getName(), localNameValuePair.getValue());
          continue;
          localArrayList1 = localc.a(str);
          break;
        }
      if (this.e == null)
        return g.a(this.c, new URL(localBuilder.toString()));
      K localK = this.e;
      localBuilder.toString();
      return localK.p();
    }
    return null;
  }

  private static <T> String a(Collection<T> paramCollection, String paramString)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty()))
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramCollection.iterator();
    while (localIterator.hasNext())
    {
      localStringBuilder.append(localIterator.next());
      if (!localIterator.hasNext())
        continue;
      localStringBuilder.append(paramString);
    }
    return localStringBuilder.toString();
  }

  public static String a(String[] paramArrayOfString, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramArrayOfString[0]);
    for (int m = 1; m < 5; m++)
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append(paramArrayOfString[m]);
    }
    return localStringBuilder.toString();
  }

  private ArrayList<c> a(ArrayList<String> paramArrayList)
  {
    k();
    synchronized (this.a)
    {
      h();
      Iterator localIterator1 = this.a.keySet().iterator();
      while (localIterator1.hasNext())
      {
        String str11 = (String)localIterator1.next();
        if (paramArrayList.contains(str11))
          continue;
        paramArrayList.add(str11);
      }
    }
    monitorexit;
    synchronized (b)
    {
      Iterator localIterator2 = b.keySet().iterator();
      while (localIterator2.hasNext())
      {
        String str10 = (String)localIterator2.next();
        if (paramArrayList.contains(str10))
          continue;
        paramArrayList.add(str10);
      }
    }
    monitorexit;
    if (!paramArrayList.contains("resolver.gslb.mi-idc.com"))
      paramArrayList.add("resolver.gslb.mi-idc.com");
    ArrayList localArrayList = new ArrayList(paramArrayList.size());
    for (int m = 0; m < paramArrayList.size(); m++)
      localArrayList.add(null);
    try
    {
      if (c())
      {
        str1 = "wifi";
        String str2 = a(paramArrayList, str1);
        if (!TextUtils.isEmpty(str2))
        {
          JSONObject localJSONObject1 = new JSONObject(str2);
          if ("OK".equalsIgnoreCase(localJSONObject1.getString("S")))
          {
            JSONObject localJSONObject2 = localJSONObject1.getJSONObject("R");
            String str3 = localJSONObject2.getString("province");
            String str4 = localJSONObject2.getString("city");
            String str5 = localJSONObject2.getString("isp");
            String str6 = localJSONObject2.getString("ip");
            String str7 = localJSONObject2.getString("country");
            JSONObject localJSONObject3 = localJSONObject2.getJSONObject(str1);
            for (int i1 = 0; i1 < paramArrayList.size(); i1++)
            {
              String str8 = (String)paramArrayList.get(i1);
              JSONArray localJSONArray = localJSONObject3.getJSONArray(str8);
              c localc2 = new c(str8);
              i2 = 0;
              if (i2 < localJSONArray.length())
              {
                String str9 = localJSONArray.getString(i2);
                if (TextUtils.isEmpty(str9))
                  break label629;
                localc2.a(new k(str9, localJSONArray.length() - i2));
                break label629;
              }
              localArrayList.set(i1, localc2);
              localc2.g = str7;
              localc2.c = str3;
              localc2.e = str5;
              localc2.f = str6;
              localc2.d = str4;
              if (localJSONObject2.has("stat-percent"))
                localc2.a(localJSONObject2.getDouble("stat-percent"));
              if (localJSONObject2.has("stat-domain"))
                localJSONObject2.getString("stat-domain");
              if (localJSONObject2.has("ttl"))
                localc2.a(1000L * localJSONObject2.getInt("ttl"));
              localc2.c();
            }
          }
        }
      }
    }
    catch (Exception localException)
    {
      for (int n = 0; n < paramArrayList.size(); n++)
      {
        c localc1 = (c)localArrayList.get(n);
        if (localc1 == null)
          continue;
        a((String)paramArrayList.get(n), localc1);
      }
      e();
      return localArrayList;
    }
    catch (IOException localIOException)
    {
      break label562;
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        int i2;
        label562: continue;
        label629: i2++;
        continue;
        String str1 = "wap";
      }
    }
  }

  public static void a(Context paramContext, e parame, K paramK, String paramString1, String paramString2, String paramString3)
  {
    monitorenter;
    try
    {
      if (i == null)
      {
        f localf = new f(paramContext, null, null, paramString1, paramString2, paramString3);
        i = localf;
        if (localf != null)
        {
          if (i.a() == null)
            i.a(paramContext);
          i.a().a(new j());
        }
      }
      return;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private void a(String paramString, c paramc)
  {
    if ((TextUtils.isEmpty(paramString)) || (paramc == null))
      throw new IllegalArgumentException("the argument is invalid " + paramString + ", " + paramc);
    synchronized (this.a)
    {
      h();
      if (this.a.containsKey(paramString))
      {
        ((d)this.a.get(paramString)).a(paramc);
        return;
      }
      d locald = new d(paramString);
      locald.a(paramc);
      this.a.put(paramString, locald);
    }
  }

  public static void a(String paramString1, String paramString2)
  {
    ArrayList localArrayList1 = (ArrayList)b.get(paramString1);
    Map localMap = b;
    monitorenter;
    if (localArrayList1 == null);
    try
    {
      ArrayList localArrayList2 = new ArrayList();
      localArrayList2.add(paramString2);
      b.put(paramString1, localArrayList2);
      while (true)
      {
        return;
        if (localArrayList1.contains(paramString2))
          continue;
        localArrayList1.add(paramString2);
      }
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  private c b(String paramString)
  {
    synchronized (this.a)
    {
      h();
      d locald = (d)this.a.get(paramString);
      if (locald != null)
      {
        c localc = locald.a();
        if (localc != null)
          return localc;
      }
    }
    return null;
  }

  private void c(String paramString)
  {
    synchronized (this.a)
    {
      this.a.clear();
      JSONArray localJSONArray = new JSONArray(paramString);
      for (int m = 0; m < localJSONArray.length(); m++)
      {
        d locald = new d().a(localJSONArray.getJSONObject(m));
        this.a.put(locald.d(), locald);
      }
      return;
    }
  }

  // ERROR //
  private boolean h()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 41	com/xiaomi/network/f:a	Ljava/util/Map;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: getstatic 37	com/xiaomi/network/f:l	Z
    //   10: ifne +232 -> 242
    //   13: iconst_1
    //   14: putstatic 37	com/xiaomi/network/f:l	Z
    //   17: aload_0
    //   18: getfield 41	com/xiaomi/network/f:a	Ljava/util/Map;
    //   21: invokeinterface 396 1 0
    //   26: aconst_null
    //   27: astore_3
    //   28: new 410	java/io/File
    //   31: dup
    //   32: aload_0
    //   33: getfield 57	com/xiaomi/network/f:c	Landroid/content/Context;
    //   36: invokevirtual 414	android/content/Context:getFilesDir	()Ljava/io/File;
    //   39: aload_0
    //   40: invokespecial 416	com/xiaomi/network/f:i	()Ljava/lang/String;
    //   43: invokespecial 419	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   46: astore 4
    //   48: aload 4
    //   50: invokevirtual 422	java/io/File:isFile	()Z
    //   53: istore 12
    //   55: aconst_null
    //   56: astore_3
    //   57: iload 12
    //   59: ifeq +126 -> 185
    //   62: new 424	java/io/BufferedReader
    //   65: dup
    //   66: new 426	java/io/InputStreamReader
    //   69: dup
    //   70: new 428	java/io/FileInputStream
    //   73: dup
    //   74: aload 4
    //   76: invokespecial 431	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   79: invokespecial 434	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   82: invokespecial 437	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   85: astore 6
    //   87: new 195	java/lang/StringBuilder
    //   90: dup
    //   91: invokespecial 196	java/lang/StringBuilder:<init>	()V
    //   94: astore 13
    //   96: aload 6
    //   98: invokevirtual 440	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   101: astore 14
    //   103: aload 14
    //   105: ifnull +35 -> 140
    //   108: aload 13
    //   110: aload 14
    //   112: invokevirtual 204	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: pop
    //   116: goto -20 -> 96
    //   119: astore 5
    //   121: aload 5
    //   123: invokevirtual 443	java/io/IOException:printStackTrace	()V
    //   126: aload 6
    //   128: ifnull +8 -> 136
    //   131: aload 6
    //   133: invokevirtual 446	java/io/BufferedReader:close	()V
    //   136: aload_1
    //   137: monitorexit
    //   138: iconst_0
    //   139: ireturn
    //   140: aload 13
    //   142: invokevirtual 205	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   145: astore 16
    //   147: aload 16
    //   149: invokestatic 247	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   152: ifne +36 -> 188
    //   155: aload_0
    //   156: aload 16
    //   158: invokespecial 448	com/xiaomi/network/f:c	(Ljava/lang/String;)V
    //   161: ldc_w 450
    //   164: ldc_w 452
    //   167: invokestatic 458	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   170: pop
    //   171: aload 6
    //   173: invokevirtual 446	java/io/BufferedReader:close	()V
    //   176: aload_1
    //   177: monitorexit
    //   178: iconst_1
    //   179: ireturn
    //   180: astore_2
    //   181: aload_1
    //   182: monitorexit
    //   183: aload_2
    //   184: athrow
    //   185: aconst_null
    //   186: astore 6
    //   188: aload 6
    //   190: ifnull -54 -> 136
    //   193: aload 6
    //   195: invokevirtual 446	java/io/BufferedReader:close	()V
    //   198: goto -62 -> 136
    //   201: astore 17
    //   203: goto -67 -> 136
    //   206: astore 10
    //   208: aload 10
    //   210: invokevirtual 459	java/lang/Throwable:printStackTrace	()V
    //   213: aload_3
    //   214: ifnull -78 -> 136
    //   217: aload_3
    //   218: invokevirtual 446	java/io/BufferedReader:close	()V
    //   221: goto -85 -> 136
    //   224: astore 11
    //   226: goto -90 -> 136
    //   229: astore 7
    //   231: aload_3
    //   232: ifnull +7 -> 239
    //   235: aload_3
    //   236: invokevirtual 446	java/io/BufferedReader:close	()V
    //   239: aload 7
    //   241: athrow
    //   242: aload_1
    //   243: monitorexit
    //   244: iconst_1
    //   245: ireturn
    //   246: astore 19
    //   248: goto -72 -> 176
    //   251: astore 9
    //   253: goto -117 -> 136
    //   256: astore 8
    //   258: goto -19 -> 239
    //   261: astore 7
    //   263: aload 6
    //   265: astore_3
    //   266: goto -35 -> 231
    //   269: astore 10
    //   271: aload 6
    //   273: astore_3
    //   274: goto -66 -> 208
    //   277: astore 5
    //   279: aconst_null
    //   280: astore 6
    //   282: goto -161 -> 121
    //
    // Exception table:
    //   from	to	target	type
    //   87	96	119	java/io/IOException
    //   96	103	119	java/io/IOException
    //   108	116	119	java/io/IOException
    //   140	171	119	java/io/IOException
    //   7	26	180	finally
    //   131	136	180	finally
    //   136	138	180	finally
    //   171	176	180	finally
    //   176	178	180	finally
    //   181	183	180	finally
    //   193	198	180	finally
    //   217	221	180	finally
    //   235	239	180	finally
    //   239	242	180	finally
    //   242	244	180	finally
    //   193	198	201	java/io/IOException
    //   28	55	206	java/lang/Throwable
    //   62	87	206	java/lang/Throwable
    //   217	221	224	java/io/IOException
    //   28	55	229	finally
    //   62	87	229	finally
    //   208	213	229	finally
    //   171	176	246	java/io/IOException
    //   131	136	251	java/io/IOException
    //   235	239	256	java/io/IOException
    //   87	96	261	finally
    //   96	103	261	finally
    //   108	116	261	finally
    //   121	126	261	finally
    //   140	171	261	finally
    //   87	96	269	java/lang/Throwable
    //   96	103	269	java/lang/Throwable
    //   108	116	269	java/lang/Throwable
    //   140	171	269	java/lang/Throwable
    //   28	55	277	java/io/IOException
    //   62	87	277	java/io/IOException
  }

  private String i()
  {
    List localList = ((ActivityManager)this.c.getSystemService("activity")).getRunningAppProcesses();
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        if (localRunningAppProcessInfo.pid == Process.myPid())
          return localRunningAppProcessInfo.processName;
      }
    }
    return "com.xiaomi";
  }

  private String j()
  {
    try
    {
      PackageInfo localPackageInfo = this.c.getPackageManager().getPackageInfo(this.c.getPackageName(), 16384);
      if (localPackageInfo != null)
      {
        String str = localPackageInfo.versionName;
        return str;
      }
    }
    catch (Exception localException)
    {
    }
    return "0";
  }

  private void k()
  {
    synchronized (this.a)
    {
      Iterator localIterator1 = this.a.values().iterator();
      if (localIterator1.hasNext())
        ((d)localIterator1.next()).c();
    }
    int m = 0;
    while (true)
    {
      if (m == 0)
      {
        Iterator localIterator2 = this.a.keySet().iterator();
        String str;
        do
        {
          if (!localIterator2.hasNext())
            break;
          str = (String)localIterator2.next();
        }
        while (!((d)this.a.get(str)).b().isEmpty());
        this.a.remove(str);
        m = 0;
        continue;
      }
      monitorexit;
      return;
      m = 1;
    }
  }

  private JSONArray l()
  {
    JSONArray localJSONArray;
    synchronized (this.a)
    {
      localJSONArray = new JSONArray();
      Iterator localIterator = this.a.values().iterator();
      if (localIterator.hasNext())
        localJSONArray.put(((d)localIterator.next()).e());
    }
    monitorexit;
    return localJSONArray;
  }

  public final c a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      throw new IllegalArgumentException("the host is empty");
    c localc1 = b(paramString);
    if (localc1 != null)
      return localc1;
    if (System.currentTimeMillis() - this.h > 1000L * (60L * this.g))
    {
      this.h = System.currentTimeMillis();
      ArrayList localArrayList2 = new ArrayList();
      localArrayList2.add(paramString);
      c localc3 = (c)a(localArrayList2).get(0);
      if (localc3 != null)
      {
        this.g = 0L;
        return localc3;
      }
      if (this.g < 15L)
        this.g = (1L + this.g);
    }
    ArrayList localArrayList1 = (ArrayList)b.get(paramString);
    Map localMap = b;
    monitorenter;
    if (localArrayList1 != null)
    {
      c localc2;
      try
      {
        localc2 = new c(paramString);
        Iterator localIterator = localArrayList1.iterator();
        while (localIterator.hasNext())
          localc2.b((String)localIterator.next());
      }
      finally
      {
        monitorexit;
      }
      monitorexit;
      return localc2;
    }
    monitorexit;
    return null;
  }

  public final String b()
  {
    if (this.c == null)
      return "unknown";
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)this.c.getSystemService("connectivity");
      if (localConnectivityManager == null)
        return "unknown";
      NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if (localNetworkInfo == null)
        return "unknown";
      if (localNetworkInfo.getType() == 1)
      {
        WifiManager localWifiManager = (WifiManager)this.c.getSystemService("wifi");
        if ((localWifiManager != null) && (localWifiManager.getConnectionInfo() != null))
          return "WIFI-" + localWifiManager.getConnectionInfo().getSSID();
      }
      else
      {
        String str = localNetworkInfo.getTypeName() + "-" + localNetworkInfo.getSubtypeName();
        return str;
      }
    }
    catch (Exception localException)
    {
    }
    return "unknown";
  }

  public final boolean c()
  {
    NetworkInfo localNetworkInfo;
    try
    {
      ConnectivityManager localConnectivityManager = (ConnectivityManager)this.c.getSystemService("connectivity");
      if (localConnectivityManager == null)
        return false;
      localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if (localNetworkInfo == null)
        return false;
    }
    catch (Exception localException)
    {
      return false;
    }
    return 1 == localNetworkInfo.getType();
  }

  public final void d()
  {
    while (true)
    {
      int m;
      synchronized (this.a)
      {
        h();
        ArrayList localArrayList1 = new ArrayList(this.a.keySet());
        m = -1 + localArrayList1.size();
        if (m < 0)
          continue;
        d locald = (d)this.a.get(localArrayList1.get(m));
        if ((locald == null) || (locald.a() == null))
          break label158;
        localArrayList1.remove(m);
        break label158;
        ArrayList localArrayList2 = a(localArrayList1);
        int n = 0;
        if (n < localArrayList1.size())
        {
          if (localArrayList2.get(n) == null)
            continue;
          a((String)localArrayList1.get(n), (c)localArrayList2.get(n));
          n++;
        }
      }
      return;
      label158: m--;
    }
  }

  public final void e()
  {
    k();
    try
    {
      synchronized (this.a)
      {
        try
        {
          BufferedWriter localBufferedWriter = new BufferedWriter(new OutputStreamWriter(this.c.openFileOutput(i(), 0)));
          String str = l().toString();
          if (!TextUtils.isEmpty(str))
            localBufferedWriter.write(str);
          localBufferedWriter.close();
          return;
        }
        catch (IOException localIOException)
        {
          while (true)
            localIOException.printStackTrace();
        }
      }
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localJSONException.printStackTrace();
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final ArrayList<b> f()
  {
    while (true)
    {
      HashMap localHashMap1;
      b localb2;
      com.xiaomi.common.logger.thrift.mfs.a locala;
      ArrayList localArrayList2;
      int n;
      synchronized (this.a)
      {
        localHashMap1 = new HashMap();
        Iterator localIterator1 = this.a.keySet().iterator();
        if (!localIterator1.hasNext())
          break label665;
        String str1 = (String)localIterator1.next();
        d locald = (d)this.a.get(str1);
        if (locald == null)
          continue;
        Iterator localIterator3 = locald.b().iterator();
        if (!localIterator3.hasNext())
          continue;
        c localc = (c)localIterator3.next();
        localb2 = (b)localHashMap1.get(localc.c());
        if (localb2 != null)
          break label733;
        b localb3 = new b();
        localb3.a("httpapi");
        localb3.e(localc.f);
        String str2 = localc.a;
        if (!TextUtils.isEmpty(str2))
          continue;
        str2 = "unknown";
        localb3.d(str2);
        localb3.b(this.f);
        localb3.c(k);
        localb3.f(j);
        localb3.g(this.c.getPackageName());
        localb3.h(j());
        com.xiaomi.common.logger.thrift.mfs.e locale = new com.xiaomi.common.logger.thrift.mfs.e();
        locale.c(localc.d);
        locale.a(localc.g);
        locale.b(localc.c);
        locale.d(localc.e);
        localb3.a(locale);
        localHashMap1.put(localc.c(), localb3);
        localb4 = localb3;
        locala = new com.xiaomi.common.logger.thrift.mfs.a();
        locala.a(localc.b);
        localArrayList2 = new ArrayList();
        Iterator localIterator4 = localc.d().iterator();
        if (localIterator4.hasNext())
        {
          k localk = (k)localIterator4.next();
          ArrayList localArrayList3 = localk.a();
          if (localArrayList3.isEmpty())
            continue;
          com.xiaomi.common.logger.thrift.mfs.d locald1 = new com.xiaomi.common.logger.thrift.mfs.d();
          locald1.a(localk.a);
          HashMap localHashMap2 = new HashMap();
          Iterator localIterator5 = localArrayList3.iterator();
          int m = 0;
          n = 0;
          long l1 = 0L;
          int i1 = 0;
          if (!localIterator5.hasNext())
            continue;
          a locala1 = (a)localIterator5.next();
          if (locala1.a() < 0)
            continue;
          m++;
          l1 += locala1.b();
          i1 = (int)(i1 + locala1.d());
          continue;
          if (!str2.startsWith("WIFI"))
            continue;
          str2 = "WIFI";
          continue;
          String str3 = locala1.e();
          if (TextUtils.isEmpty(str3))
            break label740;
          if (!localHashMap2.containsKey(str3))
            break label746;
          i2 = 1 + ((Integer)localHashMap2.get(str3)).intValue();
          localHashMap2.put(str3, Integer.valueOf(i2));
          break label740;
          locald1.a(localHashMap2);
          locald1.b(m);
          locald1.a(n);
          locald1.a(l1);
          locald1.c(i1);
          localArrayList2.add(locald1);
        }
      }
      if (localArrayList2.isEmpty())
        continue;
      locala.a(localArrayList2);
      localb4.a(locala);
      continue;
      label665: ArrayList localArrayList1 = new ArrayList();
      Iterator localIterator2 = localHashMap1.values().iterator();
      while (localIterator2.hasNext())
      {
        b localb1 = (b)localIterator2.next();
        if (localb1.g() <= 0)
          continue;
        localArrayList1.add(localb1);
      }
      monitorexit;
      return localArrayList1;
      label733: b localb4 = localb2;
      continue;
      label740: n++;
      continue;
      label746: int i2 = 1;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.network.f
 * JD-Core Version:    0.6.0
 */