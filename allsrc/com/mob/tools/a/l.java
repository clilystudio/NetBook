package com.mob.tools.a;

import android.content.Context;
import android.os.Build.VERSION;
import android.support.design.widget.K;
import com.arcsoft.hpay100.a.a;
import com.mob.tools.log.d;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.FileNameMap;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;
import java.security.KeyStore;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.UUID;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.X509TrustManager;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;

public class l
{
  public static int connectionTimeout;
  public static int readTimout;

  private HttpURLConnection getConnection(String paramString, p paramp)
  {
    HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString).openConnection();
    try
    {
      Object localObject3 = com.mob.tools.b.h.a(localHttpURLConnection, "methodTokens");
      localObject1 = localObject3;
      if (localObject1 != null);
    }
    catch (Throwable localThrowable1)
    {
      while (true)
      {
        try
        {
          Object localObject2 = com.mob.tools.b.h.a("HttpURLConnection", "PERMITTED_USER_METHODS");
          Object localObject1 = localObject2;
          str = "PERMITTED_USER_METHODS";
          i = 1;
          if (localObject1 == null)
            continue;
          String[] arrayOfString1 = (String[])localObject1;
          arrayOfString2 = new String[1 + arrayOfString1.length];
          System.arraycopy(arrayOfString1, 0, arrayOfString2, 0, arrayOfString1.length);
          arrayOfString2[arrayOfString1.length] = "PATCH";
          if (i == 0)
            continue;
          com.mob.tools.b.h.a("HttpURLConnection", str, arrayOfString2);
          if (Build.VERSION.SDK_INT >= 8)
            continue;
          System.setProperty("http.keepAlive", "false");
          if (!(localHttpURLConnection instanceof HttpsURLConnection))
            continue;
          HttpsURLConnection localHttpsURLConnection = (HttpsURLConnection)localHttpURLConnection;
          SSLContext localSSLContext = SSLContext.getInstance("TLS");
          X509TrustManager[] arrayOfX509TrustManager = new X509TrustManager[1];
          arrayOfX509TrustManager[0] = new n(this);
          localSSLContext.init(null, arrayOfX509TrustManager, new SecureRandom());
          HttpsURLConnection.setDefaultSSLSocketFactory(localSSLContext.getSocketFactory());
          localHttpsURLConnection.setHostnameVerifier(new o(this));
          if (paramp != null)
            continue;
          j = connectionTimeout;
          if (j <= 0)
            continue;
          localHttpURLConnection.setConnectTimeout(j);
          if (paramp != null)
            continue;
          k = readTimout;
          if (k <= 0)
            continue;
          localHttpURLConnection.setReadTimeout(k);
          return localHttpURLConnection;
          localThrowable1 = localThrowable1;
          localObject1 = null;
        }
        catch (Throwable localThrowable2)
        {
          String[] arrayOfString2;
          str = "PERMITTED_USER_METHODS";
          i = 1;
          continue;
          com.mob.tools.b.h.a(localHttpURLConnection, str, arrayOfString2);
          continue;
          int j = paramp.b;
          continue;
          int k = paramp.a;
          continue;
        }
        String str = "methodTokens";
        int i = 0;
      }
    }
  }

  private c getFilePostHTTPPart(HttpURLConnection paramHttpURLConnection, String paramString, ArrayList<i<String>> paramArrayList1, ArrayList<i<String>> paramArrayList2)
  {
    String str1 = UUID.randomUUID().toString();
    paramHttpURLConnection.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + str1);
    j localj = new j();
    t localt1 = new t();
    if (paramArrayList1 != null)
    {
      Iterator localIterator2 = paramArrayList1.iterator();
      while (localIterator2.hasNext())
      {
        i locali2 = (i)localIterator2.next();
        localt1.a("--").a(str1).a("\r\n");
        localt1.a("Content-Disposition: form-data; name=\"").a(locali2.a).a("\"\r\n\r\n");
        localt1.a((String)locali2.b).a("\r\n");
      }
    }
    localj.a(localt1);
    Iterator localIterator1 = paramArrayList2.iterator();
    if (localIterator1.hasNext())
    {
      i locali1 = (i)localIterator1.next();
      t localt3 = new t();
      File localFile = new File((String)locali1.b);
      localt3.a("--").a(str1).a("\r\n");
      localt3.a("Content-Disposition: form-data; name=\"").a(locali1.a).a("\"; filename=\"").a(localFile.getName()).a("\"\r\n");
      String str2 = URLConnection.getFileNameMap().getContentTypeFor((String)locali1.b);
      if ((str2 == null) || (str2.length() <= 0))
      {
        if ((!((String)locali1.b).toLowerCase().endsWith("jpg")) && (!((String)locali1.b).toLowerCase().endsWith("jpeg")))
          break label414;
        str2 = "image/jpeg";
      }
      while (true)
      {
        localt3.a("Content-Type: ").a(str2).a("\r\n\r\n");
        localj.a(localt3);
        b localb = new b();
        localb.a((String)locali1.b);
        localj.a(localb);
        t localt4 = new t();
        localt4.a("\r\n");
        localj.a(localt4);
        break;
        label414: if (((String)locali1.b).toLowerCase().endsWith("png"))
        {
          str2 = "image/png";
          continue;
        }
        if (((String)locali1.b).toLowerCase().endsWith("gif"))
        {
          str2 = "image/gif";
          continue;
        }
        FileInputStream localFileInputStream = new FileInputStream((String)locali1.b);
        str2 = URLConnection.guessContentTypeFromStream(localFileInputStream);
        localFileInputStream.close();
        if ((str2 != null) && (str2.length() > 0))
          continue;
        str2 = "application/octet-stream";
      }
    }
    t localt2 = new t();
    localt2.a("--").a(str1).a("--\r\n");
    localj.a(localt2);
    return localj;
  }

  private c getTextPostHTTPPart(HttpURLConnection paramHttpURLConnection, String paramString, ArrayList<i<String>> paramArrayList)
  {
    paramHttpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
    t localt = new t();
    if (paramArrayList != null)
      localt.a(kvPairsToUrl(paramArrayList));
    return localt;
  }

  private void httpPatchImpl$105c3332(String paramString, ArrayList<i<String>> paramArrayList1, i<String> parami, long paramLong, ArrayList<i<String>> paramArrayList2, K paramK, h paramh, p paramp)
  {
    long l = System.currentTimeMillis();
    com.mob.tools.e.a().i("httpPatch: " + paramString, new Object[0]);
    if (paramArrayList1 != null)
    {
      String str = kvPairsToUrl(paramArrayList1);
      if (str.length() > 0)
        paramString = paramString + "?" + str;
    }
    g localg = new g(paramString);
    if (paramArrayList2 != null)
    {
      Iterator localIterator = paramArrayList2.iterator();
      while (localIterator.hasNext())
      {
        i locali = (i)localIterator.next();
        localg.setHeader(locali.a, (String)locali.b);
      }
    }
    b localb = new b();
    localb.a(paramK);
    localb.a((String)parami.b);
    localb.a(paramLong);
    InputStreamEntity localInputStreamEntity = new InputStreamEntity(localb.c(), localb.b() - paramLong);
    localInputStreamEntity.setContentEncoding("application/offset+octet-stream");
    localg.setEntity(localInputStreamEntity);
    BasicHttpParams localBasicHttpParams1 = new BasicHttpParams();
    int i;
    int j;
    label256: DefaultHttpClient localDefaultHttpClient;
    label417: HttpResponse localHttpResponse;
    if (paramp == null)
    {
      i = connectionTimeout;
      if (i > 0)
        HttpConnectionParams.setConnectionTimeout(localBasicHttpParams1, i);
      if (paramp != null)
        break label505;
      j = readTimout;
      if (j > 0)
        HttpConnectionParams.setSoTimeout(localBasicHttpParams1, j);
      localg.setParams(localBasicHttpParams1);
      if (!paramString.startsWith("https://"))
        break label515;
      KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
      localKeyStore.load(null, null);
      r localr = new r(localKeyStore);
      localr.setHostnameVerifier(r.ALLOW_ALL_HOSTNAME_VERIFIER);
      BasicHttpParams localBasicHttpParams2 = new BasicHttpParams();
      HttpProtocolParams.setVersion(localBasicHttpParams2, HttpVersion.HTTP_1_1);
      HttpProtocolParams.setContentCharset(localBasicHttpParams2, "UTF-8");
      SchemeRegistry localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      localSchemeRegistry.register(new Scheme("https", localr, 443));
      localDefaultHttpClient = new DefaultHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams2, localSchemeRegistry), localBasicHttpParams2);
      localHttpResponse = localDefaultHttpClient.execute(localg);
      if (paramh == null)
        break label549;
    }
    while (true)
    {
      try
      {
        paramh.a(new e(localHttpResponse));
        localDefaultHttpClient.getConnectionManager().shutdown();
        com.mob.tools.e.a().i("use time: " + (System.currentTimeMillis() - l), new Object[0]);
        return;
        i = paramp.b;
        break;
        label505: j = paramp.a;
        break label256;
        label515: localDefaultHttpClient = new DefaultHttpClient();
        break label417;
      }
      catch (Throwable localThrowable)
      {
        throw localThrowable;
      }
      finally
      {
        localDefaultHttpClient.getConnectionManager().shutdown();
      }
      label549: localDefaultHttpClient.getConnectionManager().shutdown();
    }
  }

  private String kvPairsToUrl(ArrayList<i<String>> paramArrayList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramArrayList.iterator();
    if (localIterator.hasNext())
    {
      i locali = (i)localIterator.next();
      String str1 = a.f(locali.a, "utf-8");
      if (locali.b != null);
      for (String str2 = a.f((String)locali.b, "utf-8"); ; str2 = "")
      {
        if (localStringBuilder.length() > 0)
          localStringBuilder.append('&');
        localStringBuilder.append(str1).append('=').append(str2);
        break;
      }
    }
    return localStringBuilder.toString();
  }

  public String downloadCache(Context paramContext, String paramString1, String paramString2, boolean paramBoolean, p paramp)
  {
    long l = System.currentTimeMillis();
    com.mob.tools.e.a().i("downloading: " + paramString1, new Object[0]);
    if (paramBoolean)
    {
      File localFile1 = new File(a.h(paramContext, paramString2), a.h(paramString1));
      if ((paramBoolean) && (localFile1.exists()))
      {
        com.mob.tools.e.a().i("use time: " + (System.currentTimeMillis() - l), new Object[0]);
        return localFile1.getAbsolutePath();
      }
    }
    HttpURLConnection localHttpURLConnection = getConnection(paramString1, paramp);
    localHttpURLConnection.connect();
    int i = localHttpURLConnection.getResponseCode();
    Object localObject;
    String str2;
    String str3;
    String str4;
    if (i == 200)
    {
      Map localMap = localHttpURLConnection.getHeaderFields();
      if (localMap != null)
      {
        List localList2 = (List)localMap.get("Content-Disposition");
        if ((localList2 != null) && (localList2.size() > 0))
        {
          String[] arrayOfString = ((String)localList2.get(0)).split(";");
          int n = arrayOfString.length;
          localObject = null;
          for (int i1 = 0; i1 < n; i1++)
          {
            String str7 = arrayOfString[i1];
            if (!str7.trim().startsWith("filename"))
              continue;
            localObject = str7.split("=")[1];
            if ((!((String)localObject).startsWith("\"")) || (!((String)localObject).endsWith("\"")))
              continue;
            localObject = ((String)localObject).substring(1, -1 + ((String)localObject).length());
          }
        }
      }
      localObject = null;
      if (localObject == null)
      {
        str2 = a.h(paramString1);
        if (localMap == null)
          break label930;
        List localList1 = (List)localMap.get("Content-Type");
        if ((localList1 == null) || (localList1.size() <= 0))
          break label930;
        str3 = (String)localList1.get(0);
        if (str3 != null)
          break label502;
        str4 = "";
        if (!str4.startsWith("image/"))
          break label512;
        String str6 = str4.substring(6);
        StringBuilder localStringBuilder2 = new StringBuilder().append(str2).append(".");
        if ("jpeg".equals(str6))
          str6 = "jpg";
        localObject = str6;
      }
    }
    while (true)
    {
      File localFile2 = new File(a.h(paramContext, paramString2), (String)localObject);
      if ((paramBoolean) && (localFile2.exists()))
      {
        localHttpURLConnection.disconnect();
        com.mob.tools.e.a().i("use time: " + (System.currentTimeMillis() - l), new Object[0]);
        return localFile2.getAbsolutePath();
        label502: str4 = str3.trim();
        break;
        label512: int k = paramString1.lastIndexOf('/');
        String str5 = null;
        if (k > 0)
          str5 = paramString1.substring(k + 1);
        if ((str5 != null) && (str5.length() > 0))
        {
          int m = str5.lastIndexOf('.');
          if ((m > 0) && (str5.length() - m < 10))
          {
            localObject = str2 + str5.substring(m);
            continue;
          }
        }
      }
      else
      {
        if (!localFile2.getParentFile().exists())
          localFile2.getParentFile().mkdirs();
        if (localFile2.exists())
          localFile2.delete();
        try
        {
          InputStream localInputStream = localHttpURLConnection.getInputStream();
          FileOutputStream localFileOutputStream = new FileOutputStream(localFile2);
          byte[] arrayOfByte = new byte[1024];
          for (int j = localInputStream.read(arrayOfByte); j > 0; j = localInputStream.read(arrayOfByte))
            localFileOutputStream.write(arrayOfByte, 0, j);
          localFileOutputStream.flush();
          localInputStream.close();
          localFileOutputStream.close();
          localHttpURLConnection.disconnect();
          com.mob.tools.e.a().i("use time: " + (System.currentTimeMillis() - l), new Object[0]);
          return localFile2.getAbsolutePath();
        }
        catch (Throwable localThrowable)
        {
          if (localFile2.exists())
            localFile2.delete();
          throw localThrowable;
        }
        StringBuilder localStringBuilder1 = new StringBuilder();
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localHttpURLConnection.getErrorStream(), Charset.forName("utf-8")));
        for (String str1 = localBufferedReader.readLine(); str1 != null; str1 = localBufferedReader.readLine())
        {
          if (localStringBuilder1.length() > 0)
            localStringBuilder1.append('\n');
          localStringBuilder1.append(str1);
        }
        localBufferedReader.close();
        localHttpURLConnection.disconnect();
        HashMap localHashMap = new HashMap();
        localHashMap.put("error", localStringBuilder1.toString());
        localHashMap.put("status", Integer.valueOf(i));
        throw new Throwable(new com.mob.tools.b.e().a(localHashMap));
      }
      label930: localObject = str2;
    }
  }

  public void getHttpPostResponse(String paramString, ArrayList<i<String>> paramArrayList1, i<String> parami, ArrayList<i<String>> paramArrayList2, h paramh, p paramp)
  {
    long l = System.currentTimeMillis();
    com.mob.tools.e.a().i("httpPost: " + paramString, new Object[0]);
    HttpURLConnection localHttpURLConnection = getConnection(paramString, paramp);
    localHttpURLConnection.setDoOutput(true);
    localHttpURLConnection.setChunkedStreamingMode(0);
    ArrayList localArrayList;
    if ((parami != null) && (parami.b != null) && (new File((String)parami.b).exists()))
    {
      localArrayList = new ArrayList();
      localArrayList.add(parami);
    }
    for (c localc = getFilePostHTTPPart(localHttpURLConnection, paramString, paramArrayList1, localArrayList); paramArrayList2 != null; localc = getTextPostHTTPPart(localHttpURLConnection, paramString, paramArrayList1))
    {
      Iterator localIterator = paramArrayList2.iterator();
      while (localIterator.hasNext())
      {
        i locali = (i)localIterator.next();
        localHttpURLConnection.setRequestProperty(locali.a, (String)locali.b);
      }
    }
    localHttpURLConnection.connect();
    OutputStream localOutputStream = localHttpURLConnection.getOutputStream();
    InputStream localInputStream = localc.c();
    byte[] arrayOfByte = new byte[65536];
    for (int i = localInputStream.read(arrayOfByte); i > 0; i = localInputStream.read(arrayOfByte))
      localOutputStream.write(arrayOfByte, 0, i);
    localOutputStream.flush();
    localInputStream.close();
    localOutputStream.close();
    if (paramh != null);
    while (true)
    {
      try
      {
        paramh.a(new f(localHttpURLConnection));
        localHttpURLConnection.disconnect();
        com.mob.tools.e.a().i("use time: " + (System.currentTimeMillis() - l), new Object[0]);
        return;
      }
      catch (Throwable localThrowable)
      {
        throw localThrowable;
      }
      finally
      {
        localHttpURLConnection.disconnect();
      }
      localHttpURLConnection.disconnect();
    }
  }

  public String httpGet(String paramString, ArrayList<i<String>> paramArrayList1, ArrayList<i<String>> paramArrayList2, p paramp)
  {
    long l = System.currentTimeMillis();
    com.mob.tools.e.a().i("httpGet: " + paramString, new Object[0]);
    if (paramArrayList1 != null)
    {
      String str4 = kvPairsToUrl(paramArrayList1);
      if (str4.length() > 0)
        paramString = paramString + "?" + str4;
    }
    HttpURLConnection localHttpURLConnection = getConnection(paramString, paramp);
    if (paramArrayList2 != null)
    {
      Iterator localIterator = paramArrayList2.iterator();
      while (localIterator.hasNext())
      {
        i locali = (i)localIterator.next();
        localHttpURLConnection.setRequestProperty(locali.a, (String)locali.b);
      }
    }
    localHttpURLConnection.connect();
    int i = localHttpURLConnection.getResponseCode();
    if (i == 200)
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      BufferedReader localBufferedReader1 = new BufferedReader(new InputStreamReader(localHttpURLConnection.getInputStream(), Charset.forName("utf-8")));
      for (String str1 = localBufferedReader1.readLine(); str1 != null; str1 = localBufferedReader1.readLine())
      {
        if (localStringBuilder1.length() > 0)
          localStringBuilder1.append('\n');
        localStringBuilder1.append(str1);
      }
      localBufferedReader1.close();
      localHttpURLConnection.disconnect();
      String str2 = localStringBuilder1.toString();
      com.mob.tools.e.a().i("use time: " + (System.currentTimeMillis() - l), new Object[0]);
      return str2;
    }
    StringBuilder localStringBuilder2 = new StringBuilder();
    BufferedReader localBufferedReader2 = new BufferedReader(new InputStreamReader(localHttpURLConnection.getErrorStream(), Charset.forName("utf-8")));
    for (String str3 = localBufferedReader2.readLine(); str3 != null; str3 = localBufferedReader2.readLine())
    {
      if (localStringBuilder2.length() > 0)
        localStringBuilder2.append('\n');
      localStringBuilder2.append(str3);
    }
    localBufferedReader2.close();
    localHttpURLConnection.disconnect();
    HashMap localHashMap = new HashMap();
    localHashMap.put("error", localStringBuilder2.toString());
    localHashMap.put("status", Integer.valueOf(i));
    throw new Throwable(new com.mob.tools.b.e().a(localHashMap));
  }

  public ArrayList<i<String[]>> httpHead(String paramString, ArrayList<i<String>> paramArrayList1, i<String> parami, ArrayList<i<String>> paramArrayList2, p paramp)
  {
    long l = System.currentTimeMillis();
    com.mob.tools.e.a().i("httpHead: " + paramString, new Object[0]);
    if (paramArrayList1 != null)
    {
      String str = kvPairsToUrl(paramArrayList1);
      if (str.length() > 0)
        paramString = paramString + "?" + str;
    }
    HttpURLConnection localHttpURLConnection = getConnection(paramString, paramp);
    localHttpURLConnection.setRequestMethod("HEAD");
    if (paramArrayList2 != null)
    {
      Iterator localIterator2 = paramArrayList2.iterator();
      while (localIterator2.hasNext())
      {
        i locali = (i)localIterator2.next();
        localHttpURLConnection.setRequestProperty(locali.a, (String)locali.b);
      }
    }
    localHttpURLConnection.connect();
    Map localMap = localHttpURLConnection.getHeaderFields();
    ArrayList localArrayList = new ArrayList();
    if (localMap != null)
    {
      Iterator localIterator1 = localMap.entrySet().iterator();
      while (localIterator1.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator1.next();
        List localList = (List)localEntry.getValue();
        if (localList == null)
        {
          localArrayList.add(new i((String)localEntry.getKey(), new String[0]));
          continue;
        }
        String[] arrayOfString = new String[localList.size()];
        for (int i = 0; i < arrayOfString.length; i++)
          arrayOfString[i] = ((String)localList.get(i));
        localArrayList.add(new i((String)localEntry.getKey(), arrayOfString));
      }
    }
    localHttpURLConnection.disconnect();
    com.mob.tools.e.a().i("use time: " + (System.currentTimeMillis() - l), new Object[0]);
    return localArrayList;
  }

  public void httpPatch$105c3332(String paramString, ArrayList<i<String>> paramArrayList1, i<String> parami, long paramLong, ArrayList<i<String>> paramArrayList2, K paramK, h paramh, p paramp)
  {
    if (Build.VERSION.SDK_INT >= 23)
    {
      httpPatchImpl23$105c3332(paramString, paramArrayList1, parami, paramLong, paramArrayList2, paramK, paramh, paramp);
      return;
    }
    httpPatchImpl$105c3332(paramString, paramArrayList1, parami, paramLong, paramArrayList2, paramK, paramh, paramp);
  }

  public void httpPatchImpl23$105c3332(String paramString, ArrayList<i<String>> paramArrayList1, i<String> parami, long paramLong, ArrayList<i<String>> paramArrayList2, K paramK, h paramh, p paramp)
  {
    long l = System.currentTimeMillis();
    com.mob.tools.e.a().i("httpPatch: " + paramString, new Object[0]);
    if (paramArrayList1 != null)
    {
      String str = kvPairsToUrl(paramArrayList1);
      if (str.length() > 0)
        paramString = paramString + "?" + str;
    }
    HttpURLConnection localHttpURLConnection = getConnection(paramString, paramp);
    localHttpURLConnection.setDoOutput(true);
    localHttpURLConnection.setChunkedStreamingMode(0);
    localHttpURLConnection.setRequestMethod("PATCH");
    localHttpURLConnection.setRequestProperty("Content-Type", "application/offset+octet-stream");
    if (paramArrayList2 != null)
    {
      Iterator localIterator = paramArrayList2.iterator();
      while (localIterator.hasNext())
      {
        i locali = (i)localIterator.next();
        localHttpURLConnection.setRequestProperty(locali.a, (String)locali.b);
      }
    }
    localHttpURLConnection.connect();
    OutputStream localOutputStream = localHttpURLConnection.getOutputStream();
    b localb = new b();
    localb.a(paramK);
    localb.a((String)parami.b);
    localb.a(paramLong);
    InputStream localInputStream = localb.c();
    byte[] arrayOfByte = new byte[65536];
    for (int i = localInputStream.read(arrayOfByte); i > 0; i = localInputStream.read(arrayOfByte))
      localOutputStream.write(arrayOfByte, 0, i);
    localOutputStream.flush();
    localInputStream.close();
    localOutputStream.close();
    if (paramh != null);
    while (true)
    {
      try
      {
        paramh.a(new f(localHttpURLConnection));
        localHttpURLConnection.disconnect();
        com.mob.tools.e.a().i("use time: " + (System.currentTimeMillis() - l), new Object[0]);
        return;
      }
      catch (Throwable localThrowable)
      {
        throw localThrowable;
      }
      finally
      {
        localHttpURLConnection.disconnect();
      }
      localHttpURLConnection.disconnect();
    }
  }

  public String httpPost(String paramString, ArrayList<i<String>> paramArrayList1, i<String> parami, ArrayList<i<String>> paramArrayList2, p paramp)
  {
    ArrayList localArrayList = new ArrayList();
    if ((parami != null) && (parami.b != null) && (new File((String)parami.b).exists()))
      localArrayList.add(parami);
    return httpPostFiles(paramString, paramArrayList1, localArrayList, paramArrayList2, paramp);
  }

  public void httpPost(String paramString, ArrayList<i<String>> paramArrayList1, ArrayList<i<String>> paramArrayList2, ArrayList<i<String>> paramArrayList3, h paramh, p paramp)
  {
    long l = System.currentTimeMillis();
    com.mob.tools.e.a().i("httpPost: " + paramString, new Object[0]);
    HttpURLConnection localHttpURLConnection = getConnection(paramString, paramp);
    localHttpURLConnection.setDoOutput(true);
    c localc2;
    if ((paramArrayList2 != null) && (paramArrayList2.size() > 0))
    {
      localc2 = getFilePostHTTPPart(localHttpURLConnection, paramString, paramArrayList1, paramArrayList2);
      localHttpURLConnection.setChunkedStreamingMode(0);
    }
    c localc1;
    for (Object localObject1 = localc2; paramArrayList3 != null; localObject1 = localc1)
    {
      Iterator localIterator = paramArrayList3.iterator();
      while (localIterator.hasNext())
      {
        i locali = (i)localIterator.next();
        localHttpURLConnection.setRequestProperty(locali.a, (String)locali.b);
      }
      localc1 = getTextPostHTTPPart(localHttpURLConnection, paramString, paramArrayList1);
      localHttpURLConnection.setFixedLengthStreamingMode((int)localc1.b());
    }
    localHttpURLConnection.connect();
    OutputStream localOutputStream = localHttpURLConnection.getOutputStream();
    InputStream localInputStream = ((c)localObject1).c();
    byte[] arrayOfByte = new byte[65536];
    for (int i = localInputStream.read(arrayOfByte); i > 0; i = localInputStream.read(arrayOfByte))
      localOutputStream.write(arrayOfByte, 0, i);
    localOutputStream.flush();
    localInputStream.close();
    localOutputStream.close();
    if (paramh != null);
    while (true)
    {
      try
      {
        paramh.a(new f(localHttpURLConnection));
        localHttpURLConnection.disconnect();
        com.mob.tools.e.a().i("use time: " + (System.currentTimeMillis() - l), new Object[0]);
        return;
      }
      catch (Throwable localThrowable)
      {
        throw localThrowable;
      }
      finally
      {
        localHttpURLConnection.disconnect();
      }
      localHttpURLConnection.disconnect();
    }
  }

  public String httpPostFiles(String paramString, ArrayList<i<String>> paramArrayList1, ArrayList<i<String>> paramArrayList2, ArrayList<i<String>> paramArrayList3, p paramp)
  {
    HashMap localHashMap = new HashMap();
    httpPost(paramString, paramArrayList1, paramArrayList2, paramArrayList3, new m(this, localHashMap), paramp);
    return (String)localHashMap.get("resp");
  }

  public String httpPut(String paramString, ArrayList<i<String>> paramArrayList1, i<String> parami, ArrayList<i<String>> paramArrayList2, p paramp)
  {
    long l = System.currentTimeMillis();
    com.mob.tools.e.a().i("httpPut: " + paramString, new Object[0]);
    if (paramArrayList1 != null)
    {
      String str4 = kvPairsToUrl(paramArrayList1);
      if (str4.length() > 0)
        paramString = paramString + "?" + str4;
    }
    HttpURLConnection localHttpURLConnection = getConnection(paramString, paramp);
    localHttpURLConnection.setDoOutput(true);
    localHttpURLConnection.setChunkedStreamingMode(0);
    localHttpURLConnection.setRequestMethod("PUT");
    localHttpURLConnection.setRequestProperty("Content-Type", "application/octet-stream");
    if (paramArrayList2 != null)
    {
      Iterator localIterator = paramArrayList2.iterator();
      while (localIterator.hasNext())
      {
        i locali = (i)localIterator.next();
        localHttpURLConnection.setRequestProperty(locali.a, (String)locali.b);
      }
    }
    localHttpURLConnection.connect();
    OutputStream localOutputStream = localHttpURLConnection.getOutputStream();
    b localb = new b();
    localb.a((String)parami.b);
    InputStream localInputStream = localb.c();
    byte[] arrayOfByte = new byte[65536];
    for (int i = localInputStream.read(arrayOfByte); i > 0; i = localInputStream.read(arrayOfByte))
      localOutputStream.write(arrayOfByte, 0, i);
    localOutputStream.flush();
    localInputStream.close();
    localOutputStream.close();
    int j = localHttpURLConnection.getResponseCode();
    if ((j == 200) || (j == 201))
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      BufferedReader localBufferedReader1 = new BufferedReader(new InputStreamReader(localHttpURLConnection.getInputStream(), Charset.forName("utf-8")));
      for (String str1 = localBufferedReader1.readLine(); str1 != null; str1 = localBufferedReader1.readLine())
      {
        if (localStringBuilder1.length() > 0)
          localStringBuilder1.append('\n');
        localStringBuilder1.append(str1);
      }
      localBufferedReader1.close();
      localHttpURLConnection.disconnect();
      String str2 = localStringBuilder1.toString();
      com.mob.tools.e.a().i("use time: " + (System.currentTimeMillis() - l), new Object[0]);
      return str2;
    }
    StringBuilder localStringBuilder2 = new StringBuilder();
    BufferedReader localBufferedReader2 = new BufferedReader(new InputStreamReader(localHttpURLConnection.getErrorStream(), Charset.forName("utf-8")));
    for (String str3 = localBufferedReader2.readLine(); str3 != null; str3 = localBufferedReader2.readLine())
    {
      if (localStringBuilder2.length() > 0)
        localStringBuilder2.append('\n');
      localStringBuilder2.append(str3);
    }
    localBufferedReader2.close();
    HashMap localHashMap = new HashMap();
    localHashMap.put("error", localStringBuilder2.toString());
    localHashMap.put("status", Integer.valueOf(j));
    throw new Throwable(new com.mob.tools.b.e().a(localHashMap));
  }

  public String jsonPost(String paramString, ArrayList<i<String>> paramArrayList1, ArrayList<i<String>> paramArrayList2, p paramp)
  {
    long l = System.currentTimeMillis();
    com.mob.tools.e.a().i("jsonPost: " + paramString, new Object[0]);
    HttpURLConnection localHttpURLConnection = getConnection(paramString, paramp);
    localHttpURLConnection.setDoOutput(true);
    localHttpURLConnection.setChunkedStreamingMode(0);
    localHttpURLConnection.setRequestProperty("content-type", "application/json");
    if (paramArrayList2 != null)
    {
      Iterator localIterator2 = paramArrayList2.iterator();
      while (localIterator2.hasNext())
      {
        i locali2 = (i)localIterator2.next();
        localHttpURLConnection.setRequestProperty(locali2.a, (String)locali2.b);
      }
    }
    t localt = new t();
    if (paramArrayList1 != null)
    {
      HashMap localHashMap1 = new HashMap();
      Iterator localIterator1 = paramArrayList1.iterator();
      while (localIterator1.hasNext())
      {
        i locali1 = (i)localIterator1.next();
        localHashMap1.put(locali1.a, locali1.b);
      }
      localt.a(new com.mob.tools.b.e().a(localHashMap1));
    }
    localHttpURLConnection.connect();
    OutputStream localOutputStream = localHttpURLConnection.getOutputStream();
    InputStream localInputStream = localt.c();
    byte[] arrayOfByte = new byte[65536];
    for (int i = localInputStream.read(arrayOfByte); i > 0; i = localInputStream.read(arrayOfByte))
      localOutputStream.write(arrayOfByte, 0, i);
    localOutputStream.flush();
    localInputStream.close();
    localOutputStream.close();
    int j = localHttpURLConnection.getResponseCode();
    if ((j == 200) || (j == 201))
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      BufferedReader localBufferedReader1 = new BufferedReader(new InputStreamReader(localHttpURLConnection.getInputStream(), Charset.forName("utf-8")));
      for (String str1 = localBufferedReader1.readLine(); str1 != null; str1 = localBufferedReader1.readLine())
      {
        if (localStringBuilder1.length() > 0)
          localStringBuilder1.append('\n');
        localStringBuilder1.append(str1);
      }
      localBufferedReader1.close();
      localHttpURLConnection.disconnect();
      String str2 = localStringBuilder1.toString();
      com.mob.tools.e.a().i("use time: " + (System.currentTimeMillis() - l), new Object[0]);
      return str2;
    }
    StringBuilder localStringBuilder2 = new StringBuilder();
    BufferedReader localBufferedReader2 = new BufferedReader(new InputStreamReader(localHttpURLConnection.getErrorStream(), Charset.forName("utf-8")));
    for (String str3 = localBufferedReader2.readLine(); str3 != null; str3 = localBufferedReader2.readLine())
    {
      if (localStringBuilder2.length() > 0)
        localStringBuilder2.append('\n');
      localStringBuilder2.append(str3);
    }
    localBufferedReader2.close();
    localHttpURLConnection.disconnect();
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("error", localStringBuilder2.toString());
    localHashMap2.put("status", Integer.valueOf(j));
    throw new Throwable(new com.mob.tools.b.e().a(localHashMap2));
  }

  public void rawGet(String paramString, q paramq, p paramp)
  {
    long l = System.currentTimeMillis();
    com.mob.tools.e.a().i("rawGet: " + paramString, new Object[0]);
    HttpURLConnection localHttpURLConnection = getConnection(paramString, paramp);
    localHttpURLConnection.connect();
    int i = localHttpURLConnection.getResponseCode();
    if (i == 200)
    {
      if (paramq != null)
        paramq.a(localHttpURLConnection.getInputStream());
      localHttpURLConnection.disconnect();
      com.mob.tools.e.a().i("use time: " + (System.currentTimeMillis() - l), new Object[0]);
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder();
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(localHttpURLConnection.getErrorStream(), Charset.forName("utf-8")));
    for (String str = localBufferedReader.readLine(); str != null; str = localBufferedReader.readLine())
    {
      if (localStringBuilder.length() > 0)
        localStringBuilder.append('\n');
      localStringBuilder.append(str);
    }
    localBufferedReader.close();
    localHttpURLConnection.disconnect();
    HashMap localHashMap = new HashMap();
    localHashMap.put("error", localStringBuilder.toString());
    localHashMap.put("status", Integer.valueOf(i));
    throw new Throwable(new com.mob.tools.b.e().a(localHashMap));
  }

  public void rawPost(String paramString, ArrayList<i<String>> paramArrayList, c paramc, h paramh, p paramp)
  {
    long l = System.currentTimeMillis();
    com.mob.tools.e.a().i("rawpost: " + paramString, new Object[0]);
    HttpURLConnection localHttpURLConnection = getConnection(paramString, paramp);
    localHttpURLConnection.setDoOutput(true);
    localHttpURLConnection.setChunkedStreamingMode(0);
    if (paramArrayList != null)
    {
      Iterator localIterator = paramArrayList.iterator();
      while (localIterator.hasNext())
      {
        i locali = (i)localIterator.next();
        localHttpURLConnection.setRequestProperty(locali.a, (String)locali.b);
      }
    }
    localHttpURLConnection.connect();
    OutputStream localOutputStream = localHttpURLConnection.getOutputStream();
    InputStream localInputStream = paramc.c();
    byte[] arrayOfByte = new byte[65536];
    for (int i = localInputStream.read(arrayOfByte); i > 0; i = localInputStream.read(arrayOfByte))
      localOutputStream.write(arrayOfByte, 0, i);
    localOutputStream.flush();
    localInputStream.close();
    localOutputStream.close();
    if (paramh != null);
    while (true)
    {
      try
      {
        paramh.a(new f(localHttpURLConnection));
        localHttpURLConnection.disconnect();
        com.mob.tools.e.a().i("use time: " + (System.currentTimeMillis() - l), new Object[0]);
        return;
      }
      catch (Throwable localThrowable)
      {
        throw localThrowable;
      }
      finally
      {
        localHttpURLConnection.disconnect();
      }
      localHttpURLConnection.disconnect();
    }
  }

  // ERROR //
  public void rawPost(String paramString, ArrayList<i<String>> paramArrayList, c paramc, q paramq, p paramp)
  {
    // Byte code:
    //   0: invokestatic 285	java/lang/System:currentTimeMillis	()J
    //   3: lstore 6
    //   5: invokestatic 290	com/mob/tools/e:a	()Lcom/mob/tools/log/d;
    //   8: new 145	java/lang/StringBuilder
    //   11: dup
    //   12: ldc_w 756
    //   15: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   18: aload_1
    //   19: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: invokevirtual 153	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   25: iconst_0
    //   26: anewarray 4	java/lang/Object
    //   29: invokevirtual 298	com/mob/tools/log/d:i	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   32: pop
    //   33: aload_0
    //   34: aload_1
    //   35: aload 5
    //   37: invokespecial 491	com/mob/tools/a/l:getConnection	(Ljava/lang/String;Lcom/mob/tools/a/p;)Ljava/net/HttpURLConnection;
    //   40: astore 9
    //   42: aload 9
    //   44: iconst_1
    //   45: invokevirtual 642	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   48: aload 9
    //   50: iconst_0
    //   51: invokevirtual 645	java/net/HttpURLConnection:setChunkedStreamingMode	(I)V
    //   54: aload_2
    //   55: ifnull +52 -> 107
    //   58: aload_2
    //   59: invokevirtual 169	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   62: astore 29
    //   64: aload 29
    //   66: invokeinterface 175 1 0
    //   71: ifeq +36 -> 107
    //   74: aload 29
    //   76: invokeinterface 179 1 0
    //   81: checkcast 181	com/mob/tools/a/i
    //   84: astore 30
    //   86: aload 9
    //   88: aload 30
    //   90: getfield 193	com/mob/tools/a/i:a	Ljava/lang/String;
    //   93: aload 30
    //   95: getfield 198	com/mob/tools/a/i:b	Ljava/lang/Object;
    //   98: checkcast 45	java/lang/String
    //   101: invokevirtual 157	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   104: goto -40 -> 64
    //   107: aload 9
    //   109: invokevirtual 494	java/net/HttpURLConnection:connect	()V
    //   112: aload 9
    //   114: invokevirtual 657	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   117: astore 10
    //   119: aload_3
    //   120: invokevirtual 660	com/mob/tools/a/c:c	()Ljava/io/InputStream;
    //   123: astore 11
    //   125: ldc_w 661
    //   128: newarray byte
    //   130: astore 12
    //   132: aload 11
    //   134: aload 12
    //   136: invokevirtual 578	java/io/InputStream:read	([B)I
    //   139: istore 13
    //   141: iload 13
    //   143: ifle +25 -> 168
    //   146: aload 10
    //   148: aload 12
    //   150: iconst_0
    //   151: iload 13
    //   153: invokevirtual 664	java/io/OutputStream:write	([BII)V
    //   156: aload 11
    //   158: aload 12
    //   160: invokevirtual 578	java/io/InputStream:read	([B)I
    //   163: istore 13
    //   165: goto -24 -> 141
    //   168: aload 10
    //   170: invokevirtual 665	java/io/OutputStream:flush	()V
    //   173: aload 11
    //   175: invokevirtual 586	java/io/InputStream:close	()V
    //   178: aload 10
    //   180: invokevirtual 666	java/io/OutputStream:close	()V
    //   183: aload 9
    //   185: invokevirtual 497	java/net/HttpURLConnection:getResponseCode	()I
    //   188: istore 14
    //   190: iload 14
    //   192: sipush 200
    //   195: if_icmpne +106 -> 301
    //   198: aload 4
    //   200: ifnull +93 -> 293
    //   203: aload 9
    //   205: invokevirtual 567	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   208: astore 24
    //   210: aload 4
    //   212: aload 24
    //   214: invokeinterface 752 2 0
    //   219: aload 24
    //   221: ifnull +8 -> 229
    //   224: aload 24
    //   226: invokevirtual 586	java/io/InputStream:close	()V
    //   229: aload 9
    //   231: invokevirtual 550	java/net/HttpURLConnection:disconnect	()V
    //   234: invokestatic 290	com/mob/tools/e:a	()Lcom/mob/tools/log/d;
    //   237: new 145	java/lang/StringBuilder
    //   240: dup
    //   241: ldc_w 454
    //   244: invokespecial 148	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   247: invokestatic 285	java/lang/System:currentTimeMillis	()J
    //   250: lload 6
    //   252: lsub
    //   253: invokevirtual 457	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   256: invokevirtual 153	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   259: iconst_0
    //   260: anewarray 4	java/lang/Object
    //   263: invokevirtual 298	com/mob/tools/log/d:i	(Ljava/lang/Object;[Ljava/lang/Object;)I
    //   266: pop
    //   267: return
    //   268: astore 27
    //   270: aload 27
    //   272: athrow
    //   273: astore 25
    //   275: aload 24
    //   277: ifnull +8 -> 285
    //   280: aload 24
    //   282: invokevirtual 586	java/io/InputStream:close	()V
    //   285: aload 9
    //   287: invokevirtual 550	java/net/HttpURLConnection:disconnect	()V
    //   290: aload 25
    //   292: athrow
    //   293: aload 9
    //   295: invokevirtual 550	java/net/HttpURLConnection:disconnect	()V
    //   298: goto -64 -> 234
    //   301: new 145	java/lang/StringBuilder
    //   304: dup
    //   305: invokespecial 299	java/lang/StringBuilder:<init>	()V
    //   308: astore 15
    //   310: new 589	java/io/BufferedReader
    //   313: dup
    //   314: new 591	java/io/InputStreamReader
    //   317: dup
    //   318: aload 9
    //   320: invokevirtual 594	java/net/HttpURLConnection:getErrorStream	()Ljava/io/InputStream;
    //   323: ldc_w 460
    //   326: invokestatic 600	java/nio/charset/Charset:forName	(Ljava/lang/String;)Ljava/nio/charset/Charset;
    //   329: invokespecial 603	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    //   332: invokespecial 606	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   335: astore 16
    //   337: aload 16
    //   339: invokevirtual 609	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   342: astore 17
    //   344: aload 17
    //   346: ifnull +37 -> 383
    //   349: aload 15
    //   351: invokevirtual 466	java/lang/StringBuilder:length	()I
    //   354: ifle +11 -> 365
    //   357: aload 15
    //   359: bipush 10
    //   361: invokevirtual 469	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   364: pop
    //   365: aload 15
    //   367: aload 17
    //   369: invokevirtual 152	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   372: pop
    //   373: aload 16
    //   375: invokevirtual 609	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   378: astore 17
    //   380: goto -36 -> 344
    //   383: aload 16
    //   385: invokevirtual 610	java/io/BufferedReader:close	()V
    //   388: aload 9
    //   390: invokevirtual 550	java/net/HttpURLConnection:disconnect	()V
    //   393: new 612	java/util/HashMap
    //   396: dup
    //   397: invokespecial 613	java/util/HashMap:<init>	()V
    //   400: astore 18
    //   402: aload 18
    //   404: ldc_w 615
    //   407: aload 15
    //   409: invokevirtual 153	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   412: invokevirtual 619	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   415: pop
    //   416: aload 18
    //   418: ldc_w 621
    //   421: iload 14
    //   423: invokestatic 627	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   426: invokevirtual 619	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   429: pop
    //   430: new 15	java/lang/Throwable
    //   433: dup
    //   434: new 629	com/mob/tools/b/e
    //   437: dup
    //   438: invokespecial 630	com/mob/tools/b/e:<init>	()V
    //   441: aload 18
    //   443: invokevirtual 633	com/mob/tools/b/e:a	(Ljava/util/HashMap;)Ljava/lang/String;
    //   446: invokespecial 634	java/lang/Throwable:<init>	(Ljava/lang/String;)V
    //   449: athrow
    //   450: astore 28
    //   452: goto -223 -> 229
    //   455: astore 26
    //   457: goto -172 -> 285
    //
    // Exception table:
    //   from	to	target	type
    //   210	219	268	java/lang/Throwable
    //   210	219	273	finally
    //   270	273	273	finally
    //   224	229	450	java/lang/Throwable
    //   280	285	455	java/lang/Throwable
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.a.l
 * JD-Core Version:    0.6.0
 */