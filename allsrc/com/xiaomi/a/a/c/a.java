package com.xiaomi.a.a.c;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
import org.apache.http.NameValuePair;

public final class a
{
  static
  {
    Pattern.compile("([^\\s;]+)(.*)");
    Pattern.compile("(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);
    Pattern.compile("(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);
  }

  public static String a(Context paramContext, String paramString, List<NameValuePair> paramList)
  {
    return a(paramContext, paramString, paramList, null, null, null);
  }

  // ERROR //
  private static String a(Context paramContext, String paramString1, List<NameValuePair> paramList, c paramc, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_1
    //   4: invokestatic 36	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   7: ifeq +13 -> 20
    //   10: new 38	java/lang/IllegalArgumentException
    //   13: dup
    //   14: ldc 40
    //   16: invokespecial 44	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   19: athrow
    //   20: new 46	java/net/URL
    //   23: dup
    //   24: aload_1
    //   25: invokespecial 47	java/net/URL:<init>	(Ljava/lang/String;)V
    //   28: astore 7
    //   30: aload_0
    //   31: invokestatic 51	com/xiaomi/a/a/c/a:e	(Landroid/content/Context;)Z
    //   34: ifeq +126 -> 160
    //   37: aload 7
    //   39: new 53	java/net/Proxy
    //   42: dup
    //   43: getstatic 59	java/net/Proxy$Type:HTTP	Ljava/net/Proxy$Type;
    //   46: new 61	java/net/InetSocketAddress
    //   49: dup
    //   50: ldc 63
    //   52: bipush 80
    //   54: invokespecial 66	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   57: invokespecial 69	java/net/Proxy:<init>	(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    //   60: invokevirtual 73	java/net/URL:openConnection	(Ljava/net/Proxy;)Ljava/net/URLConnection;
    //   63: checkcast 75	java/net/HttpURLConnection
    //   66: astore 15
    //   68: aload 15
    //   70: sipush 10000
    //   73: invokevirtual 79	java/net/HttpURLConnection:setConnectTimeout	(I)V
    //   76: aload 15
    //   78: sipush 15000
    //   81: invokevirtual 82	java/net/HttpURLConnection:setReadTimeout	(I)V
    //   84: aload 15
    //   86: ldc 84
    //   88: invokevirtual 87	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   91: aconst_null
    //   92: invokestatic 36	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   95: ifne +11 -> 106
    //   98: aload 15
    //   100: ldc 89
    //   102: aconst_null
    //   103: invokevirtual 93	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   106: aload_2
    //   107: invokestatic 96	com/xiaomi/a/a/c/a:a	(Ljava/util/List;)Ljava/lang/String;
    //   110: astore 16
    //   112: aload 16
    //   114: ifnonnull +120 -> 234
    //   117: new 38	java/lang/IllegalArgumentException
    //   120: dup
    //   121: ldc 98
    //   123: invokespecial 44	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   126: athrow
    //   127: astore 13
    //   129: aconst_null
    //   130: astore 9
    //   132: aload 13
    //   134: athrow
    //   135: astore 8
    //   137: aload 9
    //   139: ifnull +8 -> 147
    //   142: aload 9
    //   144: invokevirtual 103	java/io/OutputStream:close	()V
    //   147: aload 6
    //   149: ifnull +8 -> 157
    //   152: aload 6
    //   154: invokevirtual 106	java/io/BufferedReader:close	()V
    //   157: aload 8
    //   159: athrow
    //   160: aload_0
    //   161: invokestatic 108	com/xiaomi/a/a/c/a:a	(Landroid/content/Context;)Z
    //   164: ifne +16 -> 180
    //   167: aload 7
    //   169: invokevirtual 111	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   172: checkcast 75	java/net/HttpURLConnection
    //   175: astore 15
    //   177: goto -109 -> 68
    //   180: aload 7
    //   182: invokevirtual 115	java/net/URL:getHost	()Ljava/lang/String;
    //   185: astore 14
    //   187: new 46	java/net/URL
    //   190: dup
    //   191: aload 7
    //   193: invokestatic 118	com/xiaomi/a/a/c/a:a	(Ljava/net/URL;)Ljava/lang/String;
    //   196: invokespecial 47	java/net/URL:<init>	(Ljava/lang/String;)V
    //   199: invokevirtual 111	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   202: checkcast 75	java/net/HttpURLConnection
    //   205: astore 15
    //   207: aload 15
    //   209: ldc 120
    //   211: aload 14
    //   213: invokevirtual 123	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   216: goto -148 -> 68
    //   219: astore 12
    //   221: aconst_null
    //   222: astore 9
    //   224: new 28	java/io/IOException
    //   227: dup
    //   228: aload 12
    //   230: invokespecial 126	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   233: athrow
    //   234: aload 15
    //   236: iconst_1
    //   237: invokevirtual 130	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   240: aload 16
    //   242: invokevirtual 136	java/lang/String:getBytes	()[B
    //   245: astore 17
    //   247: aload 15
    //   249: invokevirtual 140	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   252: astore 18
    //   254: aload 18
    //   256: astore 9
    //   258: aload 9
    //   260: aload 17
    //   262: iconst_0
    //   263: aload 17
    //   265: arraylength
    //   266: invokevirtual 144	java/io/OutputStream:write	([BII)V
    //   269: aload 9
    //   271: invokevirtual 147	java/io/OutputStream:flush	()V
    //   274: aload 9
    //   276: invokevirtual 103	java/io/OutputStream:close	()V
    //   279: aload 15
    //   281: invokevirtual 151	java/net/HttpURLConnection:getResponseCode	()I
    //   284: istore 19
    //   286: ldc 153
    //   288: new 155	java/lang/StringBuilder
    //   291: dup
    //   292: ldc 157
    //   294: invokespecial 158	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   297: iload 19
    //   299: invokevirtual 162	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   302: invokevirtual 165	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   305: invokestatic 171	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   308: pop
    //   309: new 105	java/io/BufferedReader
    //   312: dup
    //   313: new 173	java/io/InputStreamReader
    //   316: dup
    //   317: new 175	com/xiaomi/a/a/c/b
    //   320: dup
    //   321: aload 15
    //   323: invokevirtual 179	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   326: invokespecial 182	com/xiaomi/a/a/c/b:<init>	(Ljava/io/InputStream;)V
    //   329: invokespecial 183	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   332: invokespecial 186	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   335: astore 21
    //   337: aload 21
    //   339: invokevirtual 189	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   342: astore 22
    //   344: new 191	java/lang/StringBuffer
    //   347: dup
    //   348: invokespecial 193	java/lang/StringBuffer:<init>	()V
    //   351: astore 23
    //   353: ldc 195
    //   355: invokestatic 201	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   358: astore 24
    //   360: aload 22
    //   362: ifnull +29 -> 391
    //   365: aload 23
    //   367: aload 22
    //   369: invokevirtual 204	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   372: pop
    //   373: aload 23
    //   375: aload 24
    //   377: invokevirtual 204	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   380: pop
    //   381: aload 21
    //   383: invokevirtual 189	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   386: astore 22
    //   388: goto -28 -> 360
    //   391: aload 23
    //   393: invokevirtual 205	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   396: astore 27
    //   398: aload 21
    //   400: invokevirtual 106	java/io/BufferedReader:close	()V
    //   403: aload 27
    //   405: areturn
    //   406: astore 10
    //   408: ldc 153
    //   410: ldc 207
    //   412: aload 10
    //   414: invokestatic 210	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   417: pop
    //   418: goto -261 -> 157
    //   421: astore 8
    //   423: aconst_null
    //   424: astore 6
    //   426: aconst_null
    //   427: astore 9
    //   429: goto -292 -> 137
    //   432: astore 8
    //   434: aload 21
    //   436: astore 6
    //   438: aconst_null
    //   439: astore 9
    //   441: goto -304 -> 137
    //   444: astore 12
    //   446: aconst_null
    //   447: astore 6
    //   449: goto -225 -> 224
    //   452: astore 12
    //   454: aload 21
    //   456: astore 6
    //   458: aconst_null
    //   459: astore 9
    //   461: goto -237 -> 224
    //   464: astore 13
    //   466: aconst_null
    //   467: astore 6
    //   469: goto -337 -> 132
    //   472: astore 13
    //   474: aload 21
    //   476: astore 6
    //   478: aconst_null
    //   479: astore 9
    //   481: goto -349 -> 132
    //
    // Exception table:
    //   from	to	target	type
    //   20	68	127	java/io/IOException
    //   68	106	127	java/io/IOException
    //   106	112	127	java/io/IOException
    //   117	127	127	java/io/IOException
    //   160	177	127	java/io/IOException
    //   180	216	127	java/io/IOException
    //   234	254	127	java/io/IOException
    //   279	337	127	java/io/IOException
    //   132	135	135	finally
    //   224	234	135	finally
    //   258	279	135	finally
    //   20	68	219	java/lang/Throwable
    //   68	106	219	java/lang/Throwable
    //   106	112	219	java/lang/Throwable
    //   117	127	219	java/lang/Throwable
    //   160	177	219	java/lang/Throwable
    //   180	216	219	java/lang/Throwable
    //   234	254	219	java/lang/Throwable
    //   279	337	219	java/lang/Throwable
    //   142	147	406	java/io/IOException
    //   152	157	406	java/io/IOException
    //   20	68	421	finally
    //   68	106	421	finally
    //   106	112	421	finally
    //   117	127	421	finally
    //   160	177	421	finally
    //   180	216	421	finally
    //   234	254	421	finally
    //   279	337	421	finally
    //   337	360	432	finally
    //   365	388	432	finally
    //   391	403	432	finally
    //   258	279	444	java/lang/Throwable
    //   337	360	452	java/lang/Throwable
    //   365	388	452	java/lang/Throwable
    //   391	403	452	java/lang/Throwable
    //   258	279	464	java/io/IOException
    //   337	360	472	java/io/IOException
    //   365	388	472	java/io/IOException
    //   391	403	472	java/io/IOException
  }

  public static String a(URL paramURL)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramURL.getProtocol()).append("://10.0.0.172").append(paramURL.getPath());
    if (!TextUtils.isEmpty(paramURL.getQuery()))
      localStringBuilder.append("?").append(paramURL.getQuery());
    return localStringBuilder.toString();
  }

  private static String a(List<NameValuePair> paramList)
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
        Log.d("com.xiaomi.common.Network", "Failed to convert from param list to string: " + localUnsupportedEncodingException.toString());
        Log.d("com.xiaomi.common.Network", "pair: " + localNameValuePair.toString());
        return null;
      }
    }
    if (localStringBuffer1.length() > 0);
    for (StringBuffer localStringBuffer2 = localStringBuffer1.deleteCharAt(-1 + localStringBuffer1.length()); ; localStringBuffer2 = localStringBuffer1)
      return localStringBuffer2.toString();
  }

  public static boolean a(Context paramContext)
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

  public static boolean b(Context paramContext)
  {
    return d(paramContext) >= 0;
  }

  public static String c(Context paramContext)
  {
    if (f(paramContext))
      return "wifi";
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

  private static int d(Context paramContext)
  {
    ConnectivityManager localConnectivityManager;
    try
    {
      localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager == null)
        return -1;
    }
    catch (Exception localException1)
    {
      return -1;
    }
    NetworkInfo localNetworkInfo;
    try
    {
      localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
      if (localNetworkInfo == null)
        return -1;
    }
    catch (Exception localException2)
    {
      return -1;
    }
    return localNetworkInfo.getType();
  }

  private static boolean e(Context paramContext)
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

  private static boolean f(Context paramContext)
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
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.a.a.c.a
 * JD-Core Version:    0.6.0
 */