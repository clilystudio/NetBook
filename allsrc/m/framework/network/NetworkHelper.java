package m.framework.network;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.FileNameMap;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;

public class NetworkHelper
{
  public static int connectionTimeout;
  public static int readTimout;

  private HttpPost filePost(String paramString, ArrayList<KVPair<String>> paramArrayList, KVPair<String> paramKVPair)
  {
    HttpPost localHttpPost = new HttpPost(paramString);
    String str1 = UUID.randomUUID().toString();
    MultiPart localMultiPart = new MultiPart();
    StringPart localStringPart1 = new StringPart();
    Iterator localIterator;
    String str2;
    if (paramArrayList != null)
    {
      localIterator = paramArrayList.iterator();
      if (localIterator.hasNext());
    }
    else
    {
      localHttpPost.setHeader("Content-Type", "multipart/form-data; boundary=" + str1);
      localStringPart1.append("--").append(str1).append("\r\n");
      File localFile = new File((String)paramKVPair.value);
      localStringPart1.append("Content-Disposition: form-data; name=\"").append(paramKVPair.name).append("\"; filename=\"").append(localFile.getName()).append("\"\r\n");
      str2 = URLConnection.getFileNameMap().getContentTypeFor((String)paramKVPair.value);
      if ((str2 == null) || (str2.length() <= 0))
      {
        if ((!((String)paramKVPair.value).toLowerCase().endsWith("jpg")) && (!((String)paramKVPair.value).toLowerCase().endsWith("jepg")))
          break label393;
        str2 = "image/jpeg";
      }
    }
    while (true)
    {
      localStringPart1.append("Content-Type: ").append(str2).append("\r\n\r\n");
      localMultiPart.append(localStringPart1);
      FilePart localFilePart = new FilePart();
      localFilePart.setFile((String)paramKVPair.value);
      localMultiPart.append(localFilePart);
      StringPart localStringPart2 = new StringPart();
      localStringPart2.append("\r\n--").append(str1).append("--\r\n");
      localMultiPart.append(localStringPart2);
      localHttpPost.setEntity(localMultiPart.getInputStreamEntity());
      return localHttpPost;
      KVPair localKVPair = (KVPair)localIterator.next();
      localStringPart1.append("--").append(str1).append("\r\n");
      localStringPart1.append("content-disposition: form-data; name=\"").append(localKVPair.name).append("\"\r\n\r\n");
      localStringPart1.append((String)localKVPair.value).append("\r\n");
      break;
      label393: if (((String)paramKVPair.value).toLowerCase().endsWith("png"))
      {
        str2 = "image/png";
        continue;
      }
      if (((String)paramKVPair.value).toLowerCase().endsWith("gif"))
      {
        str2 = "image/gif";
        continue;
      }
      FileInputStream localFileInputStream = new FileInputStream((String)paramKVPair.value);
      str2 = URLConnection.guessContentTypeFromStream(localFileInputStream);
      localFileInputStream.close();
      if ((str2 != null) && (str2.length() > 0))
        continue;
      str2 = "application/octet-stream";
    }
  }

  private HttpClient getSSLHttpClient()
  {
    KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
    localKeyStore.load(null, null);
    SSLSocketFactoryEx localSSLSocketFactoryEx = new SSLSocketFactoryEx(localKeyStore);
    localSSLSocketFactoryEx.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    HttpProtocolParams.setContentCharset(localBasicHttpParams, "UTF-8");
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    localSchemeRegistry.register(new Scheme("https", localSSLSocketFactoryEx, 443));
    return new DefaultHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
  }

  private String kvPairsToUrl(ArrayList<KVPair<String>> paramArrayList)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramArrayList.iterator();
    if (!localIterator.hasNext())
      return localStringBuilder.toString();
    KVPair localKVPair = (KVPair)localIterator.next();
    String str1 = URLEncoder.encode(localKVPair.name, "utf-8");
    if (localKVPair.value != null);
    for (String str2 = URLEncoder.encode((String)localKVPair.value, "utf-8"); ; str2 = "")
    {
      if (localStringBuilder.length() > 0)
        localStringBuilder.append('&');
      localStringBuilder.append(str1).append('=').append(str2);
      break;
    }
  }

  private HttpPost textPost(String paramString, ArrayList<KVPair<String>> paramArrayList)
  {
    HttpPost localHttpPost = new HttpPost(paramString);
    if (paramArrayList != null)
    {
      StringPart localStringPart = new StringPart();
      localStringPart.append(kvPairsToUrl(paramArrayList));
      InputStreamEntity localInputStreamEntity = localStringPart.getInputStreamEntity();
      localInputStreamEntity.setContentType("application/x-www-form-urlencoded");
      localHttpPost.setEntity(localInputStreamEntity);
    }
    return localHttpPost;
  }

  public void download(String paramString, File paramFile)
  {
    HttpGet localHttpGet = new HttpGet(paramString);
    Object localObject;
    HttpResponse localHttpResponse;
    InputStream localInputStream;
    FileOutputStream localFileOutputStream;
    byte[] arrayOfByte;
    if (paramString.startsWith("https://"))
    {
      localObject = getSSLHttpClient();
      localHttpResponse = ((HttpClient)localObject).execute(localHttpGet);
      if (localHttpResponse.getStatusLine().getStatusCode() == 200)
      {
        localInputStream = localHttpResponse.getEntity().getContent();
        localFileOutputStream = new FileOutputStream(paramFile);
        arrayOfByte = new byte[1024];
      }
    }
    else
    {
      for (int i = localInputStream.read(arrayOfByte); ; i = localInputStream.read(arrayOfByte))
      {
        if (i <= 0)
        {
          localFileOutputStream.flush();
          localInputStream.close();
          localFileOutputStream.close();
          ((HttpClient)localObject).getConnectionManager().shutdown();
          return;
          localObject = new DefaultHttpClient();
          break;
        }
        localFileOutputStream.write(arrayOfByte, 0, i);
      }
    }
    String str = EntityUtils.toString(localHttpResponse.getEntity(), "utf-8");
    ((HttpClient)localObject).getConnectionManager().shutdown();
    throw new Throwable(str);
  }

  public void download(String paramString, ResponseCallback paramResponseCallback)
  {
    HttpGet localHttpGet = new HttpGet(paramString);
    if (paramString.startsWith("https://"));
    HttpResponse localHttpResponse;
    for (Object localObject = getSSLHttpClient(); ; localObject = new DefaultHttpClient())
    {
      localHttpResponse = ((HttpClient)localObject).execute(localHttpGet);
      if (localHttpResponse.getStatusLine().getStatusCode() != 200)
        break;
      InputStream localInputStream = localHttpResponse.getEntity().getContent();
      if (paramResponseCallback != null)
        paramResponseCallback.onResponse(localInputStream);
      localInputStream.close();
      ((HttpClient)localObject).getConnectionManager().shutdown();
      return;
    }
    String str = EntityUtils.toString(localHttpResponse.getEntity(), "utf-8");
    ((HttpClient)localObject).getConnectionManager().shutdown();
    throw new Throwable(str);
  }

  public String httpGet(String paramString, ArrayList<KVPair<String>> paramArrayList1, ArrayList<KVPair<String>> paramArrayList2)
  {
    if (paramArrayList1 != null)
    {
      String str3 = kvPairsToUrl(paramArrayList1);
      if (str3.length() > 0)
        paramString = paramString + "?" + str3;
    }
    HttpGet localHttpGet = new HttpGet(paramString);
    Iterator localIterator;
    if (paramArrayList2 != null)
    {
      localIterator = paramArrayList2.iterator();
      if (localIterator.hasNext());
    }
    else
    {
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, connectionTimeout);
      HttpConnectionParams.setSoTimeout(localBasicHttpParams, readTimout);
      localHttpGet.setParams(localBasicHttpParams);
      if (!paramString.startsWith("https://"))
        break label215;
    }
    HttpResponse localHttpResponse;
    label215: for (Object localObject = getSSLHttpClient(); ; localObject = new DefaultHttpClient())
    {
      localHttpResponse = ((HttpClient)localObject).execute(localHttpGet);
      if (localHttpResponse.getStatusLine().getStatusCode() != 200)
        break label227;
      String str2 = EntityUtils.toString(localHttpResponse.getEntity(), "utf-8");
      ((HttpClient)localObject).getConnectionManager().shutdown();
      return str2;
      KVPair localKVPair = (KVPair)localIterator.next();
      localHttpGet.setHeader(localKVPair.name, (String)localKVPair.value);
      break;
    }
    label227: String str1 = EntityUtils.toString(localHttpResponse.getEntity(), "utf-8");
    ((HttpClient)localObject).getConnectionManager().shutdown();
    throw new Throwable(str1);
  }

  public void httpGet(String paramString, ArrayList<KVPair<String>> paramArrayList1, ArrayList<KVPair<String>> paramArrayList2, ResponseCallback paramResponseCallback)
  {
    if (paramArrayList1 != null)
    {
      String str2 = kvPairsToUrl(paramArrayList1);
      if (str2.length() > 0)
        paramString = paramString + "?" + str2;
    }
    HttpGet localHttpGet = new HttpGet(paramString);
    Iterator localIterator;
    if (paramArrayList2 != null)
    {
      localIterator = paramArrayList2.iterator();
      if (localIterator.hasNext());
    }
    else
    {
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, connectionTimeout);
      HttpConnectionParams.setSoTimeout(localBasicHttpParams, readTimout);
      localHttpGet.setParams(localBasicHttpParams);
      if (!paramString.startsWith("https://"))
        break label231;
    }
    HttpResponse localHttpResponse;
    label231: for (Object localObject = getSSLHttpClient(); ; localObject = new DefaultHttpClient())
    {
      localHttpResponse = ((HttpClient)localObject).execute(localHttpGet);
      if (localHttpResponse.getStatusLine().getStatusCode() != 200)
        break label243;
      InputStream localInputStream = localHttpResponse.getEntity().getContent();
      if (paramResponseCallback != null)
        paramResponseCallback.onResponse(localInputStream);
      localInputStream.close();
      ((HttpClient)localObject).getConnectionManager().shutdown();
      return;
      KVPair localKVPair = (KVPair)localIterator.next();
      localHttpGet.setHeader(localKVPair.name, (String)localKVPair.value);
      break;
    }
    label243: String str1 = EntityUtils.toString(localHttpResponse.getEntity(), "utf-8");
    ((HttpClient)localObject).getConnectionManager().shutdown();
    throw new Throwable(str1);
  }

  public String httpPost(String paramString, ArrayList<KVPair<String>> paramArrayList1, KVPair<String> paramKVPair, ArrayList<KVPair<String>> paramArrayList2)
  {
    HttpPost localHttpPost;
    Iterator localIterator;
    if ((paramKVPair != null) && (paramKVPair.value != null) && (new File((String)paramKVPair.value).exists()))
    {
      localHttpPost = filePost(paramString, paramArrayList1, paramKVPair);
      if (paramArrayList2 != null)
      {
        localIterator = paramArrayList2.iterator();
        label52: if (localIterator.hasNext())
          break label192;
      }
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, connectionTimeout);
      HttpConnectionParams.setSoTimeout(localBasicHttpParams, readTimout);
      localHttpPost.setParams(localBasicHttpParams);
      if (!paramString.startsWith("https://"))
        break label225;
    }
    HttpResponse localHttpResponse;
    label192: label225: for (Object localObject = getSSLHttpClient(); ; localObject = new DefaultHttpClient())
    {
      localHttpResponse = ((HttpClient)localObject).execute(localHttpPost);
      int i = localHttpResponse.getStatusLine().getStatusCode();
      if ((i != 200) && (i != 201))
        break label237;
      String str1 = EntityUtils.toString(localHttpResponse.getEntity(), "utf-8");
      ((HttpClient)localObject).getConnectionManager().shutdown();
      return str1;
      localHttpPost = textPost(paramString, paramArrayList1);
      break;
      KVPair localKVPair = (KVPair)localIterator.next();
      localHttpPost.setHeader(localKVPair.name, (String)localKVPair.value);
      break label52;
    }
    label237: String str2 = EntityUtils.toString(localHttpResponse.getEntity(), "utf-8");
    ((HttpClient)localObject).getConnectionManager().shutdown();
    throw new Throwable(str2);
  }

  public void httpPost(String paramString, ArrayList<KVPair<String>> paramArrayList1, KVPair<String> paramKVPair, ArrayList<KVPair<String>> paramArrayList2, ResponseCallback paramResponseCallback)
  {
    HttpPost localHttpPost;
    Iterator localIterator;
    if ((paramKVPair != null) && (paramKVPair.value != null) && (new File((String)paramKVPair.value).exists()))
    {
      localHttpPost = filePost(paramString, paramArrayList1, paramKVPair);
      if (paramArrayList2 != null)
      {
        localIterator = paramArrayList2.iterator();
        label52: if (localIterator.hasNext())
          break label208;
      }
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, connectionTimeout);
      HttpConnectionParams.setSoTimeout(localBasicHttpParams, readTimout);
      localHttpPost.setParams(localBasicHttpParams);
      if (!paramString.startsWith("https://"))
        break label241;
    }
    HttpResponse localHttpResponse;
    label208: label241: for (Object localObject = getSSLHttpClient(); ; localObject = new DefaultHttpClient())
    {
      localHttpResponse = ((HttpClient)localObject).execute(localHttpPost);
      int i = localHttpResponse.getStatusLine().getStatusCode();
      if ((i != 200) && (i != 201))
        break label253;
      InputStream localInputStream = localHttpResponse.getEntity().getContent();
      if (paramResponseCallback != null)
        paramResponseCallback.onResponse(localInputStream);
      localInputStream.close();
      ((HttpClient)localObject).getConnectionManager().shutdown();
      return;
      localHttpPost = textPost(paramString, paramArrayList1);
      break;
      KVPair localKVPair = (KVPair)localIterator.next();
      localHttpPost.setHeader(localKVPair.name, (String)localKVPair.value);
      break label52;
    }
    label253: String str = EntityUtils.toString(localHttpResponse.getEntity(), "utf-8");
    ((HttpClient)localObject).getConnectionManager().shutdown();
    throw new Throwable(str);
  }

  public String httpPut(String paramString, ArrayList<KVPair<String>> paramArrayList1, KVPair<String> paramKVPair, ArrayList<KVPair<String>> paramArrayList2)
  {
    if (paramArrayList1 != null)
    {
      String str3 = kvPairsToUrl(paramArrayList1);
      if (str3.length() > 0)
        paramString = paramString + "?" + str3;
    }
    HttpPut localHttpPut = new HttpPut(paramString);
    Iterator localIterator;
    if (paramArrayList2 != null)
    {
      localIterator = paramArrayList2.iterator();
      if (localIterator.hasNext());
    }
    else
    {
      FilePart localFilePart = new FilePart();
      localFilePart.setFile((String)paramKVPair.value);
      InputStreamEntity localInputStreamEntity = localFilePart.getInputStreamEntity();
      localInputStreamEntity.setContentEncoding("application/octet-stream");
      localHttpPut.setEntity(localInputStreamEntity);
      BasicHttpParams localBasicHttpParams = new BasicHttpParams();
      HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, connectionTimeout);
      HttpConnectionParams.setSoTimeout(localBasicHttpParams, readTimout);
      localHttpPut.setParams(localBasicHttpParams);
      if (!paramString.startsWith("https://"))
        break label271;
    }
    HttpResponse localHttpResponse;
    label271: for (Object localObject = getSSLHttpClient(); ; localObject = new DefaultHttpClient())
    {
      localHttpResponse = ((HttpClient)localObject).execute(localHttpPut);
      int i = localHttpResponse.getStatusLine().getStatusCode();
      if ((i != 200) && (i != 201))
        break label283;
      String str1 = EntityUtils.toString(localHttpResponse.getEntity(), "utf-8");
      ((HttpClient)localObject).getConnectionManager().shutdown();
      return str1;
      KVPair localKVPair = (KVPair)localIterator.next();
      localHttpPut.setHeader(localKVPair.name, (String)localKVPair.value);
      break;
    }
    label283: String str2 = EntityUtils.toString(localHttpResponse.getEntity(), "utf-8");
    ((HttpClient)localObject).getConnectionManager().shutdown();
    throw new Throwable(str2);
  }

  public void rawPost(String paramString, ArrayList<KVPair<String>> paramArrayList, HTTPPart paramHTTPPart, ResponseCallback paramResponseCallback)
  {
    HttpPost localHttpPost = new HttpPost(paramString);
    Iterator localIterator;
    if (paramArrayList != null)
    {
      localIterator = paramArrayList.iterator();
      if (localIterator.hasNext());
    }
    else
    {
      localHttpPost.setEntity(paramHTTPPart.getInputStreamEntity());
      if (!paramString.startsWith("https://"))
        break label199;
    }
    label199: for (Object localObject = getSSLHttpClient(); ; localObject = new DefaultHttpClient())
    {
      HttpResponse localHttpResponse = ((HttpClient)localObject).execute(localHttpPost);
      if (localHttpResponse.getStatusLine().getStatusCode() == 200)
      {
        InputStream localInputStream = localHttpResponse.getEntity().getContent();
        if (paramResponseCallback != null)
          paramResponseCallback.onResponse(localInputStream);
        localInputStream.close();
        ((HttpClient)localObject).getConnectionManager().shutdown();
      }
      String str = EntityUtils.toString(localHttpResponse.getEntity(), "utf-8");
      ((HttpClient)localObject).getConnectionManager().shutdown();
      throw new Throwable(str);
      KVPair localKVPair = (KVPair)localIterator.next();
      localHttpPost.setHeader(localKVPair.name, (String)localKVPair.value);
      break;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     m.framework.network.NetworkHelper
 * JD-Core Version:    0.6.0
 */