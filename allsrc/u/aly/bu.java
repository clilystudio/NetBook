package u.aly;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.zip.GZIPInputStream;
import java.util.zip.InflaterInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONException;
import org.json.JSONObject;

public class bu
{
  private static final String a = bu.class.getName();

  // ERROR //
  private static String a(InputStream paramInputStream)
  {
    // Byte code:
    //   0: new 24	java/io/BufferedReader
    //   3: dup
    //   4: new 26	java/io/InputStreamReader
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 29	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   12: sipush 8192
    //   15: invokespecial 32	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   18: astore_1
    //   19: new 34	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 35	java/lang/StringBuilder:<init>	()V
    //   26: astore_2
    //   27: aload_1
    //   28: invokevirtual 38	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   31: astore 7
    //   33: aload 7
    //   35: ifnonnull +12 -> 47
    //   38: aload_0
    //   39: invokevirtual 43	java/io/InputStream:close	()V
    //   42: aload_2
    //   43: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   46: areturn
    //   47: aload_2
    //   48: new 34	java/lang/StringBuilder
    //   51: dup
    //   52: aload 7
    //   54: invokestatic 52	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   57: invokespecial 55	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   60: ldc 57
    //   62: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: invokevirtual 46	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: pop
    //   72: goto -45 -> 27
    //   75: astore 5
    //   77: getstatic 16	u/aly/bu:a	Ljava/lang/String;
    //   80: ldc 63
    //   82: aload 5
    //   84: invokestatic 69	u/aly/bt:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    //   87: aload_0
    //   88: invokevirtual 43	java/io/InputStream:close	()V
    //   91: aconst_null
    //   92: areturn
    //   93: astore 6
    //   95: getstatic 16	u/aly/bu:a	Ljava/lang/String;
    //   98: ldc 63
    //   100: aload 6
    //   102: invokestatic 69	u/aly/bt:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    //   105: aconst_null
    //   106: areturn
    //   107: astore_3
    //   108: aload_0
    //   109: invokevirtual 43	java/io/InputStream:close	()V
    //   112: aload_3
    //   113: athrow
    //   114: astore 4
    //   116: getstatic 16	u/aly/bu:a	Ljava/lang/String;
    //   119: ldc 63
    //   121: aload 4
    //   123: invokestatic 69	u/aly/bt:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    //   126: aconst_null
    //   127: areturn
    //   128: astore 9
    //   130: getstatic 16	u/aly/bu:a	Ljava/lang/String;
    //   133: ldc 63
    //   135: aload 9
    //   137: invokestatic 69	u/aly/bt:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    //   140: aconst_null
    //   141: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   27	33	75	java/io/IOException
    //   47	72	75	java/io/IOException
    //   87	91	93	java/io/IOException
    //   27	33	107	finally
    //   47	72	107	finally
    //   77	87	107	finally
    //   108	112	114	java/io/IOException
    //   38	42	128	java/io/IOException
  }

  private static HttpParams a()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 10000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 20000);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, System.getProperty("http.agent"));
    return localBasicHttpParams;
  }

  private JSONObject a(String paramString)
  {
    int i = new Random().nextInt(1000);
    while (true)
    {
      InputStream localInputStream;
      try
      {
        String str1 = System.getProperty("line.separator");
        if (paramString.length() > 1)
          continue;
        bt.b(a, i + ":\tInvalid baseUrl.");
        return null;
        bt.a(a, i + ":\tget: " + paramString);
        HttpGet localHttpGet = new HttpGet(paramString);
        localHttpResponse = new DefaultHttpClient(a()).execute(localHttpGet);
        if (localHttpResponse.getStatusLine().getStatusCode() != 200)
          continue;
        HttpEntity localHttpEntity = localHttpResponse.getEntity();
        if (localHttpEntity == null)
          break;
        localInputStream = localHttpEntity.getContent();
        Header localHeader = localHttpResponse.getFirstHeader("Content-Encoding");
        if ((localHeader == null) || (!localHeader.getValue().equalsIgnoreCase("gzip")))
          continue;
        bt.a(a, i + "  Use GZIPInputStream get data....");
        localObject = new GZIPInputStream(localInputStream);
        String str2 = a((InputStream)localObject);
        bt.a(a, i + ":\tresponse: " + str1 + str2);
        if (str2 == null)
          break;
        return new JSONObject(str2);
        if ((localHeader != null) && (localHeader.getValue().equalsIgnoreCase("deflate")))
        {
          bt.a(a, i + "  Use InflaterInputStream get data....");
          localObject = new InflaterInputStream(localInputStream);
          continue;
        }
      }
      catch (ClientProtocolException localClientProtocolException)
      {
        HttpResponse localHttpResponse;
        bt.c(a, i + ":\tClientProtocolException,Failed to send message." + paramString, localClientProtocolException);
        return null;
        bt.c(a, i + ":\tFailed to send message. StatusCode = " + localHttpResponse.getStatusLine().getStatusCode() + bx.a + paramString);
        return null;
      }
      catch (Exception localException)
      {
        bt.c(a, i + ":\tIOException,Failed to send message." + paramString, localException);
        return null;
      }
      Object localObject = localInputStream;
    }
    return (JSONObject)null;
  }

  private JSONObject a(String paramString, JSONObject paramJSONObject)
  {
    String str1 = paramJSONObject.toString();
    int i = new Random().nextInt(1000);
    bt.c(a, i + ":\trequest: " + paramString + bx.a + str1);
    HttpPost localHttpPost = new HttpPost(paramString);
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient(a());
    while (true)
    {
      InputStream localInputStream;
      try
      {
        ArrayList localArrayList = new ArrayList(1);
        localArrayList.add(new BasicNameValuePair("content", str1));
        localHttpPost.setEntity(new UrlEncodedFormEntity(localArrayList, "UTF-8"));
        HttpResponse localHttpResponse = localDefaultHttpClient.execute(localHttpPost);
        if (localHttpResponse.getStatusLine().getStatusCode() != 200)
          continue;
        HttpEntity localHttpEntity = localHttpResponse.getEntity();
        if (localHttpEntity == null)
          break;
        localInputStream = localHttpEntity.getContent();
        Header localHeader = localHttpResponse.getFirstHeader("Content-Encoding");
        if ((localHeader != null) && (localHeader.getValue().equalsIgnoreCase("deflate")))
        {
          localObject = new InflaterInputStream(localInputStream);
          String str2 = a((InputStream)localObject);
          bt.a(a, i + ":\tresponse: " + bx.a + str2);
          if (str2 == null)
            return null;
          return new JSONObject(str2);
          bt.c(a, i + ":\tFailed to send message. StatusCode = " + localHttpResponse.getStatusLine().getStatusCode() + bx.a + paramString);
          return null;
        }
      }
      catch (ClientProtocolException localClientProtocolException)
      {
        bt.c(a, i + ":\tClientProtocolException,Failed to send message." + paramString, localClientProtocolException);
        return null;
      }
      catch (IOException localIOException)
      {
        bt.c(a, i + ":\tIOException,Failed to send message." + paramString, localIOException);
        return null;
      }
      catch (JSONException localJSONException)
      {
        bt.c(a, i + ":\tIOException,Failed to send message." + paramString, localJSONException);
        return null;
      }
      Object localObject = localInputStream;
    }
    return (JSONObject)null;
  }

  public final <T extends bw> T a(bv parambv, Class<T> paramClass)
  {
    String str = bv.c().trim();
    if ((bx.c(str)) || (!(bv.b.equals(str.trim()) ^ bv.a.equals(str.trim()))))
      throw new RuntimeException("验证请求方式失败[" + str + "]");
    JSONObject localJSONObject;
    if (bv.b.equals(str))
      localJSONObject = a(parambv.b());
    while (true)
    {
      if (localJSONObject == null)
      {
        return null;
        if (bv.a.equals(str))
        {
          localJSONObject = a(parambv.c, parambv.a());
          continue;
        }
      }
      else
      {
        try
        {
          bw localbw = (bw)paramClass.getConstructor(new Class[] { JSONObject.class }).newInstance(new Object[] { localJSONObject });
          return localbw;
        }
        catch (SecurityException localSecurityException)
        {
          bt.b(a, "SecurityException", localSecurityException);
          return null;
        }
        catch (NoSuchMethodException localNoSuchMethodException)
        {
          while (true)
            bt.b(a, "NoSuchMethodException", localNoSuchMethodException);
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          while (true)
            bt.b(a, "IllegalArgumentException", localIllegalArgumentException);
        }
        catch (InstantiationException localInstantiationException)
        {
          while (true)
            bt.b(a, "InstantiationException", localInstantiationException);
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          while (true)
            bt.b(a, "IllegalAccessException", localIllegalAccessException);
        }
        catch (InvocationTargetException localInvocationTargetException)
        {
          while (true)
            bt.b(a, "InvocationTargetException", localInvocationTargetException);
        }
      }
      localJSONObject = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     u.aly.bu
 * JD-Core Version:    0.6.0
 */