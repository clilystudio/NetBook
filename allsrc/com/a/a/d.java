package com.a.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.security.MessageDigest;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class d extends HandlerThread
  implements Handler.Callback
{
  private static long a = new Date().getTime();
  private static long b;
  private Handler c;
  private final Lock d = new ReentrantLock();
  private final Condition e = this.d.newCondition();
  private boolean f = false;
  private HttpClient g = null;
  private String h;
  private String i;
  private String j;
  private String k = null;
  private AtomicLong l = new AtomicLong(9223372036854775807L);
  private long m = 0L;
  private boolean n = true;
  private JSONArray o = new JSONArray();

  public d()
  {
    this("BfdHandlerThread");
  }

  private d(String paramString)
  {
    super(paramString);
    new HashMap();
    new HashMap();
  }

  private static long a(HttpResponse paramHttpResponse)
  {
    b = SystemClock.elapsedRealtime();
    Header[] arrayOfHeader = paramHttpResponse.getAllHeaders();
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= arrayOfHeader.length)
        return new Date().getTime();
      if (!arrayOfHeader[i1].getName().equals("Date"))
        continue;
      String str = arrayOfHeader[i1].getValue();
      new Date();
      long l1 = Date.parse(str);
      Log.i("ResponseTime...", String.valueOf(l1));
      return l1;
    }
  }

  public static d a()
  {
    d locald = new d();
    locald.start();
    locald.d.lock();
    try
    {
      while (true)
      {
        boolean bool = locald.f;
        if (bool)
          return locald;
        locald.e.await();
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      return locald;
    }
    finally
    {
      locald.d.unlock();
    }
    throw localObject;
  }

  private static String a(String paramString)
  {
    byte[] arrayOfByte = paramString.getBytes();
    MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
    localMessageDigest.update(arrayOfByte);
    return a(localMessageDigest.digest());
  }

  // ERROR //
  private String a(org.apache.http.client.methods.HttpPost paramHttpPost, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +326 -> 327
    //   4: ldc 186
    //   6: invokevirtual 162	java/lang/String:getBytes	()[B
    //   9: astore 35
    //   11: ldc 188
    //   13: invokevirtual 162	java/lang/String:getBytes	()[B
    //   16: astore 36
    //   18: ldc 164
    //   20: invokestatic 170	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   23: astore 37
    //   25: aload 37
    //   27: aload_2
    //   28: invokevirtual 174	java/security/MessageDigest:update	([B)V
    //   31: aload 37
    //   33: aload 35
    //   35: invokevirtual 174	java/security/MessageDigest:update	([B)V
    //   38: aload 37
    //   40: aload 36
    //   42: invokevirtual 174	java/security/MessageDigest:update	([B)V
    //   45: aload 37
    //   47: invokevirtual 177	java/security/MessageDigest:digest	()[B
    //   50: invokestatic 180	com/a/a/d:a	([B)Ljava/lang/String;
    //   53: astore 22
    //   55: aload_1
    //   56: new 190	org/apache/http/entity/ByteArrayEntity
    //   59: dup
    //   60: aload_2
    //   61: invokespecial 192	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   64: invokevirtual 198	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   67: aload_0
    //   68: getfield 66	com/a/a/d:g	Lorg/apache/http/client/HttpClient;
    //   71: ifnonnull +10 -> 81
    //   74: aload_0
    //   75: invokestatic 201	com/a/a/d:d	()Lorg/apache/http/client/HttpClient;
    //   78: putfield 66	com/a/a/d:g	Lorg/apache/http/client/HttpClient;
    //   81: aload_1
    //   82: ldc 203
    //   84: ldc 205
    //   86: invokevirtual 209	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   89: aload_1
    //   90: ldc 211
    //   92: ldc 205
    //   94: invokevirtual 209	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   97: aload_1
    //   98: ldc 213
    //   100: aload 22
    //   102: invokevirtual 209	org/apache/http/client/methods/HttpPost:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   105: aload_0
    //   106: getfield 66	com/a/a/d:g	Lorg/apache/http/client/HttpClient;
    //   109: aload_1
    //   110: invokeinterface 219 2 0
    //   115: astore 23
    //   117: aload_1
    //   118: invokevirtual 223	org/apache/http/client/methods/HttpPost:getURI	()Ljava/net/URI;
    //   121: invokestatic 226	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   124: ldc 228
    //   126: invokevirtual 117	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   129: ifeq +11 -> 140
    //   132: aload 23
    //   134: invokestatic 230	com/a/a/d:a	(Lorg/apache/http/HttpResponse;)J
    //   137: putstatic 43	com/a/a/d:a	J
    //   140: aload 23
    //   142: invokeinterface 234 1 0
    //   147: invokeinterface 240 1 0
    //   152: astore 24
    //   154: aload 24
    //   156: astore 7
    //   158: new 242	java/io/ByteArrayOutputStream
    //   161: dup
    //   162: sipush 4096
    //   165: invokespecial 245	java/io/ByteArrayOutputStream:<init>	(I)V
    //   168: astore 6
    //   170: sipush 1024
    //   173: newarray byte
    //   175: astore 27
    //   177: aload 7
    //   179: aload 27
    //   181: invokevirtual 251	java/io/InputStream:read	([B)I
    //   184: istore 28
    //   186: iload 28
    //   188: iconst_m1
    //   189: if_icmpeq +160 -> 349
    //   192: aload 6
    //   194: aload 27
    //   196: iconst_0
    //   197: iload 28
    //   199: invokevirtual 255	java/io/ByteArrayOutputStream:write	([BII)V
    //   202: goto -32 -> 170
    //   205: astore 32
    //   207: aload 32
    //   209: invokevirtual 258	java/lang/Exception:printStackTrace	()V
    //   212: goto -42 -> 170
    //   215: astore 26
    //   217: aconst_null
    //   218: astore 5
    //   220: aload 26
    //   222: astore 4
    //   224: ldc_w 260
    //   227: new 262	java/lang/StringBuilder
    //   230: dup
    //   231: ldc_w 264
    //   234: invokespecial 265	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   237: aload 4
    //   239: invokevirtual 268	java/io/IOException:getMessage	()Ljava/lang/String;
    //   242: invokevirtual 272	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: invokevirtual 275	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   248: invokestatic 277	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   251: pop
    //   252: ldc_w 260
    //   255: new 262	java/lang/StringBuilder
    //   258: dup
    //   259: ldc_w 264
    //   262: invokespecial 265	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   265: aload 4
    //   267: invokevirtual 281	java/io/IOException:fillInStackTrace	()Ljava/lang/Throwable;
    //   270: invokevirtual 284	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   273: invokevirtual 275	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   276: invokestatic 277	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   279: pop
    //   280: aload_0
    //   281: invokestatic 201	com/a/a/d:d	()Lorg/apache/http/client/HttpClient;
    //   284: putfield 66	com/a/a/d:g	Lorg/apache/http/client/HttpClient;
    //   287: invokestatic 289	com/a/a/q:a	()Lcom/a/a/q;
    //   290: invokevirtual 292	com/a/a/q:e	()I
    //   293: iconst_1
    //   294: if_icmpeq +10 -> 304
    //   297: invokestatic 289	com/a/a/q:a	()Lcom/a/a/q;
    //   300: iconst_1
    //   301: invokevirtual 294	com/a/a/q:b	(I)V
    //   304: aload 7
    //   306: ifnull +8 -> 314
    //   309: aload 7
    //   311: invokevirtual 297	java/io/InputStream:close	()V
    //   314: aload 6
    //   316: ifnull +8 -> 324
    //   319: aload 6
    //   321: invokevirtual 298	java/io/ByteArrayOutputStream:close	()V
    //   324: aload 5
    //   326: areturn
    //   327: ldc 186
    //   329: invokevirtual 162	java/lang/String:getBytes	()[B
    //   332: ldc 188
    //   334: invokevirtual 162	java/lang/String:getBytes	()[B
    //   337: invokestatic 301	com/a/a/d:a	([B[B)Ljava/lang/String;
    //   340: astore 21
    //   342: aload 21
    //   344: astore 22
    //   346: goto -279 -> 67
    //   349: new 113	java/lang/String
    //   352: dup
    //   353: aload 6
    //   355: invokevirtual 304	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   358: invokespecial 305	java/lang/String:<init>	([B)V
    //   361: astore 5
    //   363: invokestatic 289	com/a/a/q:a	()Lcom/a/a/q;
    //   366: invokevirtual 308	com/a/a/q:b	()Z
    //   369: ifeq +28 -> 397
    //   372: ldc_w 260
    //   375: new 262	java/lang/StringBuilder
    //   378: dup
    //   379: ldc_w 310
    //   382: invokespecial 265	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   385: aload 5
    //   387: invokevirtual 272	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   390: invokevirtual 275	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   393: invokestatic 312	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   396: pop
    //   397: aload 7
    //   399: ifnull +8 -> 407
    //   402: aload 7
    //   404: invokevirtual 297	java/io/InputStream:close	()V
    //   407: aload 6
    //   409: invokevirtual 298	java/io/ByteArrayOutputStream:close	()V
    //   412: aload 5
    //   414: areturn
    //   415: astore 29
    //   417: aload 29
    //   419: invokevirtual 313	java/io/IOException:printStackTrace	()V
    //   422: aload 5
    //   424: areturn
    //   425: astore 14
    //   427: aload 14
    //   429: invokevirtual 313	java/io/IOException:printStackTrace	()V
    //   432: goto -118 -> 314
    //   435: astore 13
    //   437: aload 13
    //   439: invokevirtual 313	java/io/IOException:printStackTrace	()V
    //   442: aload 5
    //   444: areturn
    //   445: astore 15
    //   447: aconst_null
    //   448: astore 6
    //   450: aconst_null
    //   451: astore 7
    //   453: aconst_null
    //   454: astore 5
    //   456: aload 15
    //   458: astore 16
    //   460: ldc_w 260
    //   463: new 262	java/lang/StringBuilder
    //   466: dup
    //   467: ldc_w 264
    //   470: invokespecial 265	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   473: aload 16
    //   475: invokevirtual 314	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   478: invokevirtual 272	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   481: invokevirtual 275	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   484: invokestatic 277	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   487: pop
    //   488: ldc_w 260
    //   491: new 262	java/lang/StringBuilder
    //   494: dup
    //   495: ldc_w 264
    //   498: invokespecial 265	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   501: aload 16
    //   503: invokevirtual 315	java/lang/Exception:fillInStackTrace	()Ljava/lang/Throwable;
    //   506: invokevirtual 284	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   509: invokevirtual 275	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   512: invokestatic 277	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   515: pop
    //   516: aload 7
    //   518: ifnull +8 -> 526
    //   521: aload 7
    //   523: invokevirtual 297	java/io/InputStream:close	()V
    //   526: aload 6
    //   528: ifnull -204 -> 324
    //   531: aload 6
    //   533: invokevirtual 298	java/io/ByteArrayOutputStream:close	()V
    //   536: aload 5
    //   538: areturn
    //   539: astore 19
    //   541: aload 19
    //   543: invokevirtual 313	java/io/IOException:printStackTrace	()V
    //   546: aload 5
    //   548: areturn
    //   549: astore 20
    //   551: aload 20
    //   553: invokevirtual 313	java/io/IOException:printStackTrace	()V
    //   556: goto -30 -> 526
    //   559: astore 8
    //   561: aconst_null
    //   562: astore 6
    //   564: aconst_null
    //   565: astore 7
    //   567: aload 7
    //   569: ifnull +8 -> 577
    //   572: aload 7
    //   574: invokevirtual 297	java/io/InputStream:close	()V
    //   577: aload 6
    //   579: ifnull +8 -> 587
    //   582: aload 6
    //   584: invokevirtual 298	java/io/ByteArrayOutputStream:close	()V
    //   587: aload 8
    //   589: athrow
    //   590: astore 10
    //   592: aload 10
    //   594: invokevirtual 313	java/io/IOException:printStackTrace	()V
    //   597: goto -20 -> 577
    //   600: astore 9
    //   602: aload 9
    //   604: invokevirtual 313	java/io/IOException:printStackTrace	()V
    //   607: goto -20 -> 587
    //   610: astore 30
    //   612: aload 30
    //   614: invokevirtual 313	java/io/IOException:printStackTrace	()V
    //   617: goto -210 -> 407
    //   620: astore 8
    //   622: aconst_null
    //   623: astore 6
    //   625: goto -58 -> 567
    //   628: astore 8
    //   630: goto -63 -> 567
    //   633: astore 34
    //   635: aload 34
    //   637: astore 16
    //   639: aconst_null
    //   640: astore 5
    //   642: aconst_null
    //   643: astore 6
    //   645: goto -185 -> 460
    //   648: astore 25
    //   650: aload 25
    //   652: astore 16
    //   654: aconst_null
    //   655: astore 5
    //   657: goto -197 -> 460
    //   660: astore 16
    //   662: goto -202 -> 460
    //   665: astore_3
    //   666: aload_3
    //   667: astore 4
    //   669: aconst_null
    //   670: astore 5
    //   672: aconst_null
    //   673: astore 6
    //   675: aconst_null
    //   676: astore 7
    //   678: goto -454 -> 224
    //   681: astore 33
    //   683: aload 33
    //   685: astore 4
    //   687: aconst_null
    //   688: astore 5
    //   690: aconst_null
    //   691: astore 6
    //   693: goto -469 -> 224
    //   696: astore 4
    //   698: goto -474 -> 224
    //
    // Exception table:
    //   from	to	target	type
    //   192	202	205	java/lang/Exception
    //   170	186	215	java/io/IOException
    //   192	202	215	java/io/IOException
    //   207	212	215	java/io/IOException
    //   349	363	215	java/io/IOException
    //   407	412	415	java/io/IOException
    //   309	314	425	java/io/IOException
    //   319	324	435	java/io/IOException
    //   4	67	445	java/lang/Exception
    //   67	81	445	java/lang/Exception
    //   81	140	445	java/lang/Exception
    //   140	154	445	java/lang/Exception
    //   327	342	445	java/lang/Exception
    //   531	536	539	java/io/IOException
    //   521	526	549	java/io/IOException
    //   4	67	559	finally
    //   67	81	559	finally
    //   81	140	559	finally
    //   140	154	559	finally
    //   327	342	559	finally
    //   572	577	590	java/io/IOException
    //   582	587	600	java/io/IOException
    //   402	407	610	java/io/IOException
    //   158	170	620	finally
    //   170	186	628	finally
    //   192	202	628	finally
    //   207	212	628	finally
    //   224	304	628	finally
    //   349	363	628	finally
    //   363	397	628	finally
    //   460	516	628	finally
    //   158	170	633	java/lang/Exception
    //   170	186	648	java/lang/Exception
    //   207	212	648	java/lang/Exception
    //   349	363	648	java/lang/Exception
    //   363	397	660	java/lang/Exception
    //   4	67	665	java/io/IOException
    //   67	81	665	java/io/IOException
    //   81	140	665	java/io/IOException
    //   140	154	665	java/io/IOException
    //   327	342	665	java/io/IOException
    //   158	170	681	java/io/IOException
    //   363	397	696	java/io/IOException
  }

  private static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return "";
    StringBuilder localStringBuilder = new StringBuilder();
    int i1 = paramArrayOfByte.length;
    for (int i2 = 0; ; i2++)
    {
      if (i2 >= i1)
        return localStringBuilder.toString();
      localStringBuilder.append(Integer.toHexString(256 + (0xFF & paramArrayOfByte[i2])).substring(1));
    }
  }

  private static String a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
    localMessageDigest.update(paramArrayOfByte1);
    localMessageDigest.update(paramArrayOfByte2);
    return a(localMessageDigest.digest());
  }

  private void a(Context paramContext, JSONObject paramJSONObject)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Double.valueOf(e() / 1000.0D);
    paramJSONObject.put("timestamp", String.format("%.3f", arrayOfObject));
    paramJSONObject.put("sid", this.j);
    if (this.o.length() >= q.a().g())
      this.o = new JSONArray();
    this.o.put(paramJSONObject);
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo != null)
    {
      if (localNetworkInfo.getType() != 1)
        break label146;
      q.a().b(3);
    }
    while (true)
    {
      if (q.a().e() == 3)
        this.c.post(new p(this, paramContext));
      return;
      label146: q.a().d();
    }
  }

  private static boolean a(Context paramContext, String paramString)
  {
    boolean bool = false;
    if (paramString != null)
    {
      SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("bfd", 0).edit();
      localEditor.putString("bfd_gid", paramString);
      bool = localEditor.commit();
    }
    return bool;
  }

  private static String c()
  {
    UUID localUUID = UUID.randomUUID();
    long l1 = e();
    if (localUUID != null);
    try
    {
      if (localUUID.toString() != null)
        return a(localUUID.toString() + String.valueOf(l1));
      String str = String.valueOf(l1);
      return str;
    }
    catch (Exception localException)
    {
    }
    return String.valueOf(l1);
  }

  private static JSONArray c(Context paramContext)
  {
    try
    {
      FileInputStream localFileInputStream = paramContext.openFileInput("bfd_cached_" + paramContext.getPackageName());
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localFileInputStream));
      StringBuilder localStringBuilder = new StringBuilder();
      while (true)
      {
        String str = localBufferedReader.readLine();
        if (str == null)
          localFileInputStream.close();
        try
        {
          JSONArray localJSONArray1 = new JSONArray(localStringBuilder.toString());
          return localJSONArray1;
          localStringBuilder.append(str);
        }
        catch (JSONException localJSONException)
        {
          JSONArray localJSONArray2 = new JSONArray();
          return localJSONArray2;
        }
      }
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
      return null;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
    }
    return null;
  }

  private static HttpClient d()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 10000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 10000);
    return new DefaultHttpClient(localBasicHttpParams);
  }

  private void d(Context paramContext)
  {
    long l1 = e();
    if ((this.m > 0L) && (l1 - this.m <= q.a().c()))
      return;
    this.m = l1;
    this.j = c();
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("method", "MSession");
    try
    {
      PackageManager localPackageManager2 = paramContext.getPackageManager();
      if (localPackageManager2 != null)
      {
        PackageInfo localPackageInfo = localPackageManager2.getPackageInfo(paramContext.getPackageName(), 0);
        if (localPackageInfo != null)
          localJSONObject.put("appversion", localPackageInfo.versionName);
      }
      try
      {
        label106: PackageManager localPackageManager1 = paramContext.getPackageManager();
        if (localPackageManager1 != null)
        {
          ApplicationInfo localApplicationInfo = localPackageManager1.getApplicationInfo(paramContext.getPackageName(), 128);
          if ((localApplicationInfo != null) && (localApplicationInfo.metaData != null))
          {
            String str2 = localApplicationInfo.metaData.getString("BFD_CHANNEL");
            if (str2 != null)
              localJSONObject.put("channel", str2);
          }
        }
        label173: NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        String str1;
        if (localNetworkInfo != null)
          if (localNetworkInfo.getType() == 1)
          {
            q.a().b(3);
            str1 = "wifi";
          }
        while (true)
        {
          if (str1 != null)
            localJSONObject.put("network", str1);
          a(paramContext, localJSONObject);
          return;
          q.a().d();
          str1 = localNetworkInfo.getSubtypeName();
          continue;
          str1 = null;
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException2)
      {
        break label173;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException1)
    {
      break label106;
    }
  }

  private static long e()
  {
    return SystemClock.elapsedRealtime() - b + a;
  }

  // ERROR //
  private void e(Context paramContext)
  {
    // Byte code:
    //   0: new 350	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 734	org/json/JSONObject:<init>	()V
    //   7: astore_2
    //   8: aload_2
    //   9: ldc_w 736
    //   12: ldc_w 760
    //   15: invokevirtual 354	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   18: pop
    //   19: aload_2
    //   20: ldc_w 762
    //   23: new 262	java/lang/StringBuilder
    //   26: dup
    //   27: getstatic 767	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   30: invokestatic 226	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   33: invokespecial 265	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   36: ldc_w 769
    //   39: invokevirtual 272	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: getstatic 772	android/os/Build:MODEL	Ljava/lang/String;
    //   45: invokevirtual 272	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: invokevirtual 275	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   51: invokevirtual 354	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   54: pop
    //   55: aload_2
    //   56: ldc_w 774
    //   59: ldc_w 776
    //   62: invokevirtual 354	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   65: pop
    //   66: aload_2
    //   67: ldc_w 778
    //   70: getstatic 781	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   73: invokevirtual 354	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   76: pop
    //   77: new 783	android/util/DisplayMetrics
    //   80: dup
    //   81: invokespecial 784	android/util/DisplayMetrics:<init>	()V
    //   84: astore 7
    //   86: aload_1
    //   87: ldc_w 786
    //   90: invokevirtual 374	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   93: checkcast 788	android/view/WindowManager
    //   96: invokeinterface 792 1 0
    //   101: aload 7
    //   103: invokevirtual 798	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   106: getstatic 804	java/util/Locale:US	Ljava/util/Locale;
    //   109: astore 8
    //   111: iconst_2
    //   112: anewarray 331	java/lang/Object
    //   115: astore 9
    //   117: aload 9
    //   119: iconst_0
    //   120: aload 7
    //   122: getfield 807	android/util/DisplayMetrics:widthPixels	I
    //   125: invokestatic 810	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   128: aastore
    //   129: aload 9
    //   131: iconst_1
    //   132: aload 7
    //   134: getfield 813	android/util/DisplayMetrics:heightPixels	I
    //   137: invokestatic 810	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   140: aastore
    //   141: aload_2
    //   142: ldc_w 815
    //   145: aload 8
    //   147: ldc_w 817
    //   150: aload 9
    //   152: invokestatic 820	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   155: invokevirtual 354	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   158: pop
    //   159: aload_1
    //   160: ldc_w 521
    //   163: invokevirtual 374	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   166: checkcast 523	android/telephony/TelephonyManager
    //   169: invokevirtual 823	android/telephony/TelephonyManager:getNetworkOperatorName	()Ljava/lang/String;
    //   172: astore 11
    //   174: aload 11
    //   176: ifnull +13 -> 189
    //   179: aload_2
    //   180: ldc_w 825
    //   183: aload 11
    //   185: invokevirtual 354	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   188: pop
    //   189: aload_2
    //   190: invokevirtual 558	org/json/JSONObject:toString	()Ljava/lang/String;
    //   193: astore 12
    //   195: aload_1
    //   196: ldc_w 827
    //   199: invokevirtual 695	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   202: astore 19
    //   204: new 697	java/io/BufferedReader
    //   207: dup
    //   208: new 699	java/io/InputStreamReader
    //   211: dup
    //   212: aload 19
    //   214: invokespecial 702	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   217: invokespecial 705	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   220: astore 20
    //   222: new 262	java/lang/StringBuilder
    //   225: dup
    //   226: invokespecial 318	java/lang/StringBuilder:<init>	()V
    //   229: astore 21
    //   231: aload 20
    //   233: invokevirtual 708	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   236: astore 22
    //   238: aload 22
    //   240: ifnonnull +61 -> 301
    //   243: aload 19
    //   245: invokevirtual 711	java/io/FileInputStream:close	()V
    //   248: aload 21
    //   250: invokevirtual 275	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   253: aload 12
    //   255: invokevirtual 117	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   258: istore 23
    //   260: iload 23
    //   262: istore 14
    //   264: iload 14
    //   266: ifne +34 -> 300
    //   269: aload_1
    //   270: ldc_w 827
    //   273: iconst_0
    //   274: invokevirtual 411	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   277: astore 17
    //   279: aload 17
    //   281: aload 12
    //   283: invokevirtual 162	java/lang/String:getBytes	()[B
    //   286: invokevirtual 416	java/io/FileOutputStream:write	([B)V
    //   289: aload 17
    //   291: invokevirtual 417	java/io/FileOutputStream:close	()V
    //   294: aload_0
    //   295: aload_1
    //   296: aload_2
    //   297: invokespecial 420	com/a/a/d:a	(Landroid/content/Context;Lorg/json/JSONObject;)V
    //   300: return
    //   301: aload 21
    //   303: aload 22
    //   305: invokevirtual 272	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   308: pop
    //   309: goto -78 -> 231
    //   312: astore 18
    //   314: iconst_0
    //   315: istore 14
    //   317: goto -53 -> 264
    //   320: astore 13
    //   322: aload 13
    //   324: invokevirtual 313	java/io/IOException:printStackTrace	()V
    //   327: iconst_0
    //   328: istore 14
    //   330: goto -66 -> 264
    //   333: astore 16
    //   335: aload 16
    //   337: invokevirtual 313	java/io/IOException:printStackTrace	()V
    //   340: return
    //   341: astore 15
    //   343: return
    //
    // Exception table:
    //   from	to	target	type
    //   195	231	312	java/io/FileNotFoundException
    //   231	238	312	java/io/FileNotFoundException
    //   243	260	312	java/io/FileNotFoundException
    //   301	309	312	java/io/FileNotFoundException
    //   195	231	320	java/io/IOException
    //   231	238	320	java/io/IOException
    //   243	260	320	java/io/IOException
    //   301	309	320	java/io/IOException
    //   269	300	333	java/io/IOException
    //   269	300	341	java/io/FileNotFoundException
  }

  private static String f(Context paramContext)
  {
    return paramContext.getSharedPreferences("bfd", 0).getString("bfd_gid", null);
  }

  private static boolean f()
  {
    String[] arrayOfString = System.getenv("PATH").split(":");
    for (int i1 = -1 + arrayOfString.length; ; i1--)
    {
      if (i1 < 0)
      {
        if (!new File("/system/su-backup").exists())
          break;
        Log.d("Detecting root", "hidden su found at /system/su-backup");
        return false;
      }
      if (!new File(arrayOfString[i1] + "/su").exists())
        continue;
      Log.d("Detecting root", "su found at " + arrayOfString[i1] + "/su");
      return false;
    }
    if (new File("/system/.tmpsu").exists())
    {
      Log.d("Detecting root", "hidden su found at /system/.tmpsu");
      return false;
    }
    if (new File("/system/.bash/.ssu").exists())
    {
      Log.d("Detecting root", "hidden su found at /system/.bash/.ssu");
      return false;
    }
    return true;
  }

  public final void a(Context paramContext)
  {
    this.c.post(new e(this, paramContext));
  }

  public final void a(Context paramContext, String paramString, double paramDouble, int paramInt, Map<String, String> paramMap)
  {
    this.c.post(new l(this, paramContext, paramMap, paramString, paramDouble, paramInt));
  }

  public final void a(Context paramContext, String paramString1, String paramString2, Map<String, String> paramMap)
  {
    this.c.post(new f(this, paramContext, paramMap, paramString1, paramString2));
  }

  public final void a(Context paramContext, String paramString, Map<String, String> paramMap)
  {
    this.c.post(new k(this, paramContext, paramMap, paramString));
  }

  public final void a(Context paramContext, String paramString, Map<String, String> paramMap, Handler paramHandler)
  {
    this.c.post(new j(this, paramContext, paramMap, paramString, paramHandler));
  }

  public final void b(Context paramContext)
  {
    this.l.set(e());
    this.c.post(new i(this, paramContext));
  }

  public final void b(Context paramContext, String paramString, Map<String, String> paramMap)
  {
    this.c.post(new m(this, paramContext, paramMap, paramString));
  }

  public final void c(Context paramContext, String paramString, Map<String, String> paramMap)
  {
    this.c.post(new n(this, paramContext, paramMap, paramString));
  }

  public final void d(Context paramContext, String paramString, Map<String, Object> paramMap)
  {
    this.c.post(new g(this, paramContext, paramMap, paramString));
  }

  public final void e(Context paramContext, String paramString, Map<String, Object> paramMap)
  {
    this.c.post(new h(this, paramContext, paramMap, paramString));
  }

  public final boolean handleMessage(Message paramMessage)
  {
    return false;
  }

  protected final void onLooperPrepared()
  {
    super.onLooperPrepared();
    this.c = new Handler(getLooper(), this);
    this.d.lock();
    this.f = true;
    this.e.signal();
    this.d.unlock();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.a.a.d
 * JD-Core Version:    0.6.0
 */