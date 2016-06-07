package com.xiaomi.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.v7.widget.av;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import org.apache.http.NameValuePair;

public final class g
{
  static
  {
    Pattern.compile("([^\\s;]+)(.*)");
    Pattern.compile("(.*?charset\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);
    Pattern.compile("(\\<\\?xml\\s+.*?encoding\\s*=[^a-zA-Z0-9]*)([-a-zA-Z0-9]+)(.*)", 2);
  }

  private static InputStream a(Context paramContext, URL paramURL, String paramString1, String paramString2, Map<String, String> paramMap, av paramav)
  {
    if (paramContext == null)
      throw new IllegalArgumentException("context");
    if (paramURL == null)
      throw new IllegalArgumentException("url");
    try
    {
      HttpURLConnection.setFollowRedirects(true);
      HttpURLConnection localHttpURLConnection = b(paramContext, paramURL);
      localHttpURLConnection.setConnectTimeout(10000);
      localHttpURLConnection.setReadTimeout(15000);
      if (!TextUtils.isEmpty(paramString1))
        localHttpURLConnection.setRequestProperty("User-Agent", paramString1);
      if (paramString2 != null)
        localHttpURLConnection.setRequestProperty("Cookie", paramString2);
      h localh = new h(localHttpURLConnection.getInputStream());
      return localh;
    }
    catch (IOException localIOException)
    {
      throw localIOException;
    }
    catch (Throwable localThrowable)
    {
    }
    throw new IOException(localThrowable);
  }

  public static String a(Context paramContext, String paramString, List<NameValuePair> paramList)
  {
    return a(paramContext, paramString, paramList, null, null, null);
  }

  private static String a(Context paramContext, String paramString1, List<NameValuePair> paramList, Map<String, String> paramMap, String paramString2, String paramString3)
  {
    if (TextUtils.isEmpty(paramString1))
      throw new IllegalArgumentException("url");
    try
    {
      localHttpURLConnection = b(paramContext, new URL(paramString1));
      localHttpURLConnection.setConnectTimeout(10000);
      localHttpURLConnection.setReadTimeout(15000);
      localHttpURLConnection.setRequestMethod("POST");
      if (!TextUtils.isEmpty(null))
        localHttpURLConnection.setRequestProperty("User-Agent", null);
      str1 = a(paramList);
      if (str1 == null)
        throw new IllegalArgumentException("nameValuePairs");
    }
    catch (IOException localIOException)
    {
      HttpURLConnection localHttpURLConnection;
      String str1;
      throw localIOException;
      localHttpURLConnection.setDoOutput(true);
      byte[] arrayOfByte = str1.getBytes();
      localHttpURLConnection.getOutputStream().write(arrayOfByte, 0, arrayOfByte.length);
      localHttpURLConnection.getOutputStream().flush();
      localHttpURLConnection.getOutputStream().close();
      int i = localHttpURLConnection.getResponseCode();
      Log.d("com.xiaomi.common.Network", "Http POST Response Code: " + i);
      BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(new h(localHttpURLConnection.getInputStream())));
      String str2 = localBufferedReader.readLine();
      StringBuffer localStringBuffer = new StringBuffer();
      String str3 = System.getProperty("line.separator");
      while (str2 != null)
      {
        localStringBuffer.append(str2);
        localStringBuffer.append(str3);
        str2 = localBufferedReader.readLine();
      }
      String str4 = localStringBuffer.toString();
      localBufferedReader.close();
      return str4;
    }
    catch (Throwable localThrowable)
    {
    }
    throw new IOException(localThrowable);
  }

  public static String a(Context paramContext, URL paramURL)
  {
    return a(paramContext, paramURL, null, "UTF-8", null);
  }

  // ERROR //
  private static String a(Context paramContext, URL paramURL, String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: new 130	java/lang/StringBuilder
    //   3: dup
    //   4: sipush 1024
    //   7: invokespecial 183	java/lang/StringBuilder:<init>	(I)V
    //   10: astore 5
    //   12: aload_0
    //   13: aload_1
    //   14: aconst_null
    //   15: aconst_null
    //   16: aconst_null
    //   17: aconst_null
    //   18: invokestatic 185	com/xiaomi/network/g:a	(Landroid/content/Context;Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/support/v7/widget/av;)Ljava/io/InputStream;
    //   21: astore 12
    //   23: aload 12
    //   25: astore 7
    //   27: new 149	java/io/BufferedReader
    //   30: dup
    //   31: new 151	java/io/InputStreamReader
    //   34: dup
    //   35: aload 7
    //   37: aload_3
    //   38: invokespecial 188	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   41: sipush 1024
    //   44: invokespecial 191	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   47: astore 13
    //   49: aload 13
    //   51: invokevirtual 158	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   54: astore 14
    //   56: aload 14
    //   58: ifnull +42 -> 100
    //   61: aload 5
    //   63: aload 14
    //   65: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: pop
    //   69: aload 5
    //   71: ldc 196
    //   73: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: pop
    //   77: goto -28 -> 49
    //   80: astore 6
    //   82: aload 6
    //   84: athrow
    //   85: astore 8
    //   87: aload 7
    //   89: ifnull +8 -> 97
    //   92: aload 7
    //   94: invokevirtual 199	java/io/InputStream:close	()V
    //   97: aload 8
    //   99: athrow
    //   100: aload 7
    //   102: ifnull +8 -> 110
    //   105: aload 7
    //   107: invokevirtual 199	java/io/InputStream:close	()V
    //   110: aload 5
    //   112: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   115: areturn
    //   116: astore 17
    //   118: ldc 128
    //   120: new 130	java/lang/StringBuilder
    //   123: dup
    //   124: ldc 201
    //   126: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   129: aload 17
    //   131: invokevirtual 202	java/io/IOException:toString	()Ljava/lang/String;
    //   134: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: invokestatic 205	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   143: pop
    //   144: goto -34 -> 110
    //   147: astore 11
    //   149: aconst_null
    //   150: astore 7
    //   152: new 25	java/io/IOException
    //   155: dup
    //   156: aload 11
    //   158: invokespecial 80	java/io/IOException:<init>	(Ljava/lang/Throwable;)V
    //   161: athrow
    //   162: astore 9
    //   164: ldc 128
    //   166: new 130	java/lang/StringBuilder
    //   169: dup
    //   170: ldc 201
    //   172: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   175: aload 9
    //   177: invokevirtual 202	java/io/IOException:toString	()Ljava/lang/String;
    //   180: invokevirtual 194	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   186: invokestatic 205	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   189: pop
    //   190: goto -93 -> 97
    //   193: astore 8
    //   195: aconst_null
    //   196: astore 7
    //   198: goto -111 -> 87
    //   201: astore 11
    //   203: goto -51 -> 152
    //   206: astore 6
    //   208: aconst_null
    //   209: astore 7
    //   211: goto -129 -> 82
    //
    // Exception table:
    //   from	to	target	type
    //   27	49	80	java/io/IOException
    //   49	56	80	java/io/IOException
    //   61	77	80	java/io/IOException
    //   27	49	85	finally
    //   49	56	85	finally
    //   61	77	85	finally
    //   82	85	85	finally
    //   152	162	85	finally
    //   105	110	116	java/io/IOException
    //   0	23	147	java/lang/Throwable
    //   92	97	162	java/io/IOException
    //   0	23	193	finally
    //   27	49	201	java/lang/Throwable
    //   49	56	201	java/lang/Throwable
    //   61	77	201	java/lang/Throwable
    //   0	23	206	java/io/IOException
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

  private static boolean a(Context paramContext)
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

  private static HttpURLConnection b(Context paramContext, URL paramURL)
  {
    if (b(paramContext))
      return (HttpURLConnection)paramURL.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress("10.0.0.200", 80)));
    if (!a(paramContext))
      return (HttpURLConnection)paramURL.openConnection();
    String str = paramURL.getHost();
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramURL.getProtocol()).append("://10.0.0.172").append(paramURL.getPath());
    if (!TextUtils.isEmpty(paramURL.getQuery()))
      localStringBuilder.append("?").append(paramURL.getQuery());
    HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(localStringBuilder.toString()).openConnection();
    localHttpURLConnection.addRequestProperty("X-Online-Host", str);
    return localHttpURLConnection;
  }

  private static boolean b(Context paramContext)
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
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.network.g
 * JD-Core Version:    0.6.0
 */