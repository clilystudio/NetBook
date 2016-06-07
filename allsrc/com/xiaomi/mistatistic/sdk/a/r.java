package com.xiaomi.mistatistic.sdk.a;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Parcelable;
import android.support.design.widget.CoordinatorLayout;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.BaseSavedState;
import com.xiaomi.mistatistic.sdk.b.b;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import org.apache.http.NameValuePair;

public abstract class r<T, V>
{
  private static Context a;
  private static String b;
  private static String c;
  private static String d;

  // ERROR //
  public static String a(Context paramContext, String paramString, List paramList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: invokestatic 26	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   6: ifeq +13 -> 19
    //   9: new 28	java/lang/IllegalArgumentException
    //   12: dup
    //   13: ldc 30
    //   15: invokespecial 33	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   18: athrow
    //   19: new 35	java/net/URL
    //   22: dup
    //   23: aload_1
    //   24: invokespecial 36	java/net/URL:<init>	(Ljava/lang/String;)V
    //   27: astore 4
    //   29: ldc 38
    //   31: aload 4
    //   33: invokevirtual 42	java/net/URL:getProtocol	()Ljava/lang/String;
    //   36: invokevirtual 48	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   39: ifne +88 -> 127
    //   42: aload 4
    //   44: invokevirtual 52	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   47: checkcast 54	java/net/HttpURLConnection
    //   50: astore 13
    //   52: aload 13
    //   54: sipush 10000
    //   57: invokevirtual 58	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   60: aload 13
    //   62: sipush 15000
    //   65: invokevirtual 61	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   68: aload 13
    //   70: ldc 63
    //   72: invokevirtual 66	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   75: aload_2
    //   76: invokestatic 69	com/xiaomi/mistatistic/sdk/a/r:a	(Ljava/util/List;)Ljava/lang/String;
    //   79: astore 14
    //   81: aload 14
    //   83: ifnonnull +222 -> 305
    //   86: new 28	java/lang/IllegalArgumentException
    //   89: dup
    //   90: ldc 71
    //   92: invokespecial 33	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   95: athrow
    //   96: astore 9
    //   98: aconst_null
    //   99: astore 6
    //   101: aload 9
    //   103: athrow
    //   104: astore 5
    //   106: aload 6
    //   108: ifnull +8 -> 116
    //   111: aload 6
    //   113: invokevirtual 76	java/io/OutputStream:close	()V
    //   116: aload_3
    //   117: ifnull +7 -> 124
    //   120: aload_3
    //   121: invokevirtual 79	java/io/BufferedReader:close	()V
    //   124: aload 5
    //   126: athrow
    //   127: aload_0
    //   128: invokestatic 82	com/xiaomi/mistatistic/sdk/a/r:d	(Landroid/content/Context;)Z
    //   131: ifeq +37 -> 168
    //   134: aload 4
    //   136: new 84	java/net/Proxy
    //   139: dup
    //   140: getstatic 90	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   143: new 92	java/net/InetSocketAddress
    //   146: dup
    //   147: ldc 94
    //   149: bipush 80
    //   151: invokespecial 97	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   154: invokespecial 100	java/net/Proxy:<init>	(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    //   157: invokevirtual 103	java/net/URL:openConnection	(Ljava/net/Proxy;)Ljava/net/URLConnection;
    //   160: checkcast 54	java/net/HttpURLConnection
    //   163: astore 13
    //   165: goto -113 -> 52
    //   168: aload_0
    //   169: invokestatic 105	com/xiaomi/mistatistic/sdk/a/r:c	(Landroid/content/Context;)Z
    //   172: ifne +16 -> 188
    //   175: aload 4
    //   177: invokevirtual 52	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   180: checkcast 54	java/net/HttpURLConnection
    //   183: astore 13
    //   185: goto -133 -> 52
    //   188: aload 4
    //   190: invokevirtual 108	java/net/URL:getHost	()Ljava/lang/String;
    //   193: astore 10
    //   195: new 110	java/lang/StringBuilder
    //   198: dup
    //   199: invokespecial 111	java/lang/StringBuilder:<init>	()V
    //   202: astore 11
    //   204: aload 11
    //   206: aload 4
    //   208: invokevirtual 42	java/net/URL:getProtocol	()Ljava/lang/String;
    //   211: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: ldc 117
    //   216: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: aload 4
    //   221: invokevirtual 120	java/net/URL:getPath	()Ljava/lang/String;
    //   224: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: pop
    //   228: aload 4
    //   230: invokevirtual 123	java/net/URL:getQuery	()Ljava/lang/String;
    //   233: invokestatic 26	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   236: ifne +19 -> 255
    //   239: aload 11
    //   241: ldc 125
    //   243: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: aload 4
    //   248: invokevirtual 123	java/net/URL:getQuery	()Ljava/lang/String;
    //   251: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: pop
    //   255: new 35	java/net/URL
    //   258: dup
    //   259: aload 11
    //   261: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   264: invokespecial 36	java/net/URL:<init>	(Ljava/lang/String;)V
    //   267: invokevirtual 52	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   270: checkcast 54	java/net/HttpURLConnection
    //   273: astore 13
    //   275: aload 13
    //   277: ldc 130
    //   279: aload 10
    //   281: invokevirtual 134	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   284: goto -232 -> 52
    //   287: astore 8
    //   289: aconst_null
    //   290: astore 6
    //   292: new 18	java/io/IOException
    //   295: dup
    //   296: aload 8
    //   298: invokevirtual 137	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   301: invokespecial 138	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   304: athrow
    //   305: aload 13
    //   307: iconst_1
    //   308: invokevirtual 142	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   311: aload 14
    //   313: invokevirtual 146	java/lang/String:getBytes	()[B
    //   316: astore 15
    //   318: aload 13
    //   320: invokevirtual 150	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   323: astore 16
    //   325: aload 16
    //   327: astore 6
    //   329: aload 6
    //   331: aload 15
    //   333: iconst_0
    //   334: aload 15
    //   336: arraylength
    //   337: invokevirtual 154	java/io/OutputStream:write	([BII)V
    //   340: aload 6
    //   342: invokevirtual 157	java/io/OutputStream:flush	()V
    //   345: aload 6
    //   347: invokevirtual 76	java/io/OutputStream:close	()V
    //   350: aload 13
    //   352: invokevirtual 161	java/net/HttpURLConnection:getResponseCode	()I
    //   355: pop
    //   356: new 78	java/io/BufferedReader
    //   359: dup
    //   360: new 163	java/io/InputStreamReader
    //   363: dup
    //   364: new 165	com/xiaomi/mistatistic/sdk/a/v
    //   367: dup
    //   368: aload 13
    //   370: invokevirtual 169	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   373: invokespecial 172	com/xiaomi/mistatistic/sdk/a/v:<init>	(Ljava/io/InputStream;)V
    //   376: invokespecial 173	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   379: invokespecial 176	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   382: astore 18
    //   384: aload 18
    //   386: invokevirtual 179	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   389: astore 19
    //   391: new 181	java/lang/StringBuffer
    //   394: dup
    //   395: invokespecial 182	java/lang/StringBuffer:<init>	()V
    //   398: astore 20
    //   400: ldc 184
    //   402: invokestatic 190	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   405: astore 21
    //   407: aload 19
    //   409: ifnull +29 -> 438
    //   412: aload 20
    //   414: aload 19
    //   416: invokevirtual 193	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   419: pop
    //   420: aload 20
    //   422: aload 21
    //   424: invokevirtual 193	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   427: pop
    //   428: aload 18
    //   430: invokevirtual 179	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   433: astore 19
    //   435: goto -28 -> 407
    //   438: aload 20
    //   440: invokevirtual 194	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   443: astore 24
    //   445: aload 18
    //   447: invokevirtual 79	java/io/BufferedReader:close	()V
    //   450: aload 24
    //   452: areturn
    //   453: astore 7
    //   455: goto -331 -> 124
    //   458: astore 5
    //   460: aconst_null
    //   461: astore_3
    //   462: aconst_null
    //   463: astore 6
    //   465: goto -359 -> 106
    //   468: astore 5
    //   470: aload 18
    //   472: astore_3
    //   473: aconst_null
    //   474: astore 6
    //   476: goto -370 -> 106
    //   479: astore 8
    //   481: aconst_null
    //   482: astore_3
    //   483: goto -191 -> 292
    //   486: astore 8
    //   488: aload 18
    //   490: astore_3
    //   491: aconst_null
    //   492: astore 6
    //   494: goto -202 -> 292
    //   497: astore 9
    //   499: aconst_null
    //   500: astore_3
    //   501: goto -400 -> 101
    //   504: astore 9
    //   506: aload 18
    //   508: astore_3
    //   509: aconst_null
    //   510: astore 6
    //   512: goto -411 -> 101
    //
    // Exception table:
    //   from	to	target	type
    //   19	52	96	java/io/IOException
    //   52	81	96	java/io/IOException
    //   86	96	96	java/io/IOException
    //   127	165	96	java/io/IOException
    //   168	185	96	java/io/IOException
    //   188	255	96	java/io/IOException
    //   255	284	96	java/io/IOException
    //   305	325	96	java/io/IOException
    //   350	384	96	java/io/IOException
    //   101	104	104	finally
    //   292	305	104	finally
    //   329	350	104	finally
    //   19	52	287	java/lang/Throwable
    //   52	81	287	java/lang/Throwable
    //   86	96	287	java/lang/Throwable
    //   127	165	287	java/lang/Throwable
    //   168	185	287	java/lang/Throwable
    //   188	255	287	java/lang/Throwable
    //   255	284	287	java/lang/Throwable
    //   305	325	287	java/lang/Throwable
    //   350	384	287	java/lang/Throwable
    //   111	116	453	java/io/IOException
    //   120	124	453	java/io/IOException
    //   19	52	458	finally
    //   52	81	458	finally
    //   86	96	458	finally
    //   127	165	458	finally
    //   168	185	458	finally
    //   188	255	458	finally
    //   255	284	458	finally
    //   305	325	458	finally
    //   350	384	458	finally
    //   384	407	468	finally
    //   412	435	468	finally
    //   438	450	468	finally
    //   329	350	479	java/lang/Throwable
    //   384	407	486	java/lang/Throwable
    //   412	435	486	java/lang/Throwable
    //   438	450	486	java/lang/Throwable
    //   329	350	497	java/io/IOException
    //   384	407	504	java/io/IOException
    //   412	435	504	java/io/IOException
    //   438	450	504	java/io/IOException
  }

  public static String a(List paramList)
  {
    StringBuffer localStringBuffer1 = new StringBuffer();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      NameValuePair localNameValuePair = (NameValuePair)localIterator.next();
      try
      {
        if (localNameValuePair.getValue() == null)
          continue;
        localStringBuffer1.append(URLEncoder.encode(localNameValuePair.getName(), "UTF-8"));
        localStringBuffer1.append("=");
        localStringBuffer1.append(URLEncoder.encode(localNameValuePair.getValue(), "UTF-8"));
        localStringBuffer1.append("&");
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        return null;
      }
    }
    if (localStringBuffer1.length() > 0);
    for (StringBuffer localStringBuffer2 = localStringBuffer1.deleteCharAt(-1 + localStringBuffer1.length()); ; localStringBuffer2 = localStringBuffer1)
      return localStringBuffer2.toString();
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    a = paramContext.getApplicationContext();
    b = paramString1;
    c = paramString2;
    d = paramString3;
  }

  public static void a(b paramb)
  {
    g.a().a(new s(paramb));
  }

  public static boolean a(Context paramContext)
  {
    ConnectivityManager localConnectivityManager;
    try
    {
      localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager == null)
        return false;
    }
    catch (Exception localException1)
    {
      return false;
    }
    NetworkInfo localNetworkInfo;
    try
    {
      localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if (localNetworkInfo == null)
        return false;
    }
    catch (Exception localException2)
    {
      return false;
    }
    return 1 == localNetworkInfo.getType();
  }

  public static Context b()
  {
    return a;
  }

  public static String b(Context paramContext)
  {
    if (a(paramContext))
      return "WIFI";
    ConnectivityManager localConnectivityManager;
    try
    {
      localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager == null)
        return "";
    }
    catch (Exception localException1)
    {
      return "";
    }
    NetworkInfo localNetworkInfo;
    try
    {
      localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if (localNetworkInfo == null)
        return "";
    }
    catch (Exception localException2)
    {
      return "";
    }
    return (localNetworkInfo.getTypeName() + "-" + localNetworkInfo.getSubtypeName() + "-" + localNetworkInfo.getExtraInfo()).toLowerCase();
  }

  public static String c()
  {
    return b;
  }

  public static boolean c(Context paramContext)
  {
    if (!"CN".equalsIgnoreCase(((TelephonyManager)paramContext.getSystemService("phone")).getSimCountryIso()));
    while (true)
    {
      return false;
      try
      {
        ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
        if (localConnectivityManager == null)
          continue;
        try
        {
          NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
          if (localNetworkInfo == null)
            continue;
          String str = localNetworkInfo.getExtraInfo();
          if ((!TextUtils.isEmpty(str)) && (str.length() >= 3) && (!str.contains("ctwap")))
            return str.regionMatches(true, -3 + str.length(), "wap", 0, 3);
        }
        catch (Exception localException2)
        {
          return false;
        }
      }
      catch (Exception localException1)
      {
      }
    }
    return false;
  }

  public static String d()
  {
    return c;
  }

  public static boolean d(Context paramContext)
  {
    if (!"CN".equalsIgnoreCase(((TelephonyManager)paramContext.getSystemService("phone")).getSimCountryIso()))
      return false;
    ConnectivityManager localConnectivityManager;
    try
    {
      localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager == null)
        return false;
    }
    catch (Exception localException1)
    {
      return false;
    }
    NetworkInfo localNetworkInfo;
    try
    {
      localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if (localNetworkInfo == null)
        return false;
    }
    catch (Exception localException2)
    {
      return false;
    }
    String str = localNetworkInfo.getExtraInfo();
    if ((TextUtils.isEmpty(str)) || (str.length() < 3))
      return false;
    return str.contains("ctwap");
  }

  public static String e()
  {
    return d;
  }

  public static String f()
  {
    PackageManager localPackageManager = a.getPackageManager();
    try
    {
      PackageInfo localPackageInfo = localPackageManager.getPackageInfo(a.getPackageName(), 16384);
      if (localPackageInfo != null)
      {
        String str = localPackageInfo.versionName;
        return str;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return null;
  }

  public Parcelable a(CoordinatorLayout paramCoordinatorLayout, V paramV)
  {
    return View.BaseSavedState.EMPTY_STATE;
  }

  public void a(CoordinatorLayout paramCoordinatorLayout, V paramV, Parcelable paramParcelable)
  {
  }

  public void a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView)
  {
  }

  public void a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
  }

  public void a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
  }

  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, int paramInt)
  {
    return false;
  }

  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, MotionEvent paramMotionEvent)
  {
    return false;
  }

  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView, float paramFloat1, float paramFloat2, boolean paramBoolean)
  {
    return false;
  }

  public boolean a(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView1, View paramView2, int paramInt)
  {
    return false;
  }

  public boolean a(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public void b(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView)
  {
  }

  public boolean b(CoordinatorLayout paramCoordinatorLayout, V paramV)
  {
    return false;
  }

  public boolean c(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView)
  {
    return false;
  }

  public boolean d(CoordinatorLayout paramCoordinatorLayout, V paramV, View paramView)
  {
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.a.r
 * JD-Core Version:    0.6.0
 */