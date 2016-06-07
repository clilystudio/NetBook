package com.github.kevinsawicki.http;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class HttpRequest
{
  private static c a = c.a;
  private HttpURLConnection b = null;
  private URL c;
  private final String d;
  private f e;
  private boolean f;
  private boolean g;
  private boolean h = true;
  private boolean i = false;
  private int j = 8192;

  private HttpRequest(CharSequence paramCharSequence, String paramString)
  {
    try
    {
      this.c = new URL(paramCharSequence.toString());
      this.d = paramString;
      return;
    }
    catch (MalformedURLException localMalformedURLException)
    {
    }
    throw new HttpRequest.HttpRequestException(localMalformedURLException);
  }

  private HttpRequest a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    return (HttpRequest)new a(this, paramInputStream, this.h, paramInputStream, paramOutputStream).call();
  }

  public static HttpRequest a(CharSequence paramCharSequence)
  {
    return new HttpRequest(paramCharSequence, "GET");
  }

  public static HttpRequest a(CharSequence paramCharSequence, Map<?, ?> paramMap, boolean paramBoolean)
  {
    String str = paramCharSequence.toString();
    if ((paramMap == null) || (paramMap.isEmpty()));
    while (true)
    {
      return a(str);
      StringBuilder localStringBuilder = new StringBuilder(str);
      if (2 + str.indexOf(':') == str.lastIndexOf('/'))
        localStringBuilder.append('/');
      int k = str.indexOf('?');
      int m = -1 + localStringBuilder.length();
      if (k == -1)
        localStringBuilder.append('?');
      while (true)
      {
        Iterator localIterator = paramMap.entrySet().iterator();
        Map.Entry localEntry1 = (Map.Entry)localIterator.next();
        localStringBuilder.append(localEntry1.getKey().toString());
        localStringBuilder.append('=');
        Object localObject1 = localEntry1.getValue();
        if (localObject1 != null)
          localStringBuilder.append(localObject1);
        while (localIterator.hasNext())
        {
          localStringBuilder.append('&');
          Map.Entry localEntry2 = (Map.Entry)localIterator.next();
          localStringBuilder.append(localEntry2.getKey().toString());
          localStringBuilder.append('=');
          Object localObject2 = localEntry2.getValue();
          if (localObject2 == null)
            continue;
          localStringBuilder.append(localObject2);
        }
        if ((k >= m) || (str.charAt(m) == '&'))
          continue;
        localStringBuilder.append('&');
      }
      str = localStringBuilder.toString();
    }
  }

  private HttpRequest a(Object paramObject1, Object paramObject2, String paramString)
  {
    int k;
    if (!this.g)
      k = 1;
    while (true)
    {
      if (k != 0)
      {
        c("application/x-www-form-urlencoded", paramString);
        this.g = true;
      }
      String str = d(paramString);
      try
      {
        m();
        if (k == 0)
          this.e.write(38);
        this.e.a(URLEncoder.encode(paramObject1.toString(), str));
        this.e.write(61);
        if (paramObject2 != null)
          this.e.a(URLEncoder.encode(paramObject2.toString(), str));
        return this;
        k = 0;
      }
      catch (IOException localIOException)
      {
      }
    }
    throw new HttpRequest.HttpRequestException(localIOException);
  }

  private HttpRequest a(String paramString1, String paramString2, String paramString3)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("form-data; name=\"").append(paramString1);
    if (paramString2 != null)
      localStringBuilder.append("\"; filename=\"").append(paramString2);
    localStringBuilder.append('"');
    d("Content-Disposition", localStringBuilder.toString());
    if (paramString3 != null)
      d("Content-Type", paramString3);
    return e("\r\n");
  }

  private HttpRequest a(String paramString1, String paramString2, String paramString3, InputStream paramInputStream)
  {
    try
    {
      n();
      a(paramString1, paramString2, paramString3);
      a(paramInputStream, this.e);
      return this;
    }
    catch (IOException localIOException)
    {
    }
    throw new HttpRequest.HttpRequestException(localIOException);
  }

  public static HttpRequest b(CharSequence paramCharSequence)
  {
    return new HttpRequest(paramCharSequence, "POST");
  }

  private static String b(String paramString1, String paramString2)
  {
    String str;
    if ((paramString1 == null) || (paramString1.length() == 0))
    {
      str = null;
      return str;
    }
    int k = paramString1.length();
    int m = 1 + paramString1.indexOf(';');
    if ((m == 0) || (m == k))
      return null;
    int n = paramString1.indexOf(';', m);
    int i1;
    int i2;
    if (n == -1)
    {
      i1 = m;
      i2 = k;
    }
    while (true)
    {
      if (i1 < i2)
      {
        int i3 = paramString1.indexOf('=', i1);
        if ((i3 != -1) && (i3 < i2) && (paramString2.equals(paramString1.substring(i1, i3).trim())))
        {
          str = paramString1.substring(i3 + 1, i2).trim();
          int i7 = str.length();
          if (i7 != 0)
          {
            if ((i7 <= 2) || ('"' != str.charAt(0)) || ('"' != str.charAt(i7 - 1)))
              break;
            return str.substring(1, i7 - 1);
          }
        }
        int i4 = i2 + 1;
        int i5 = paramString1.indexOf(';', i4);
        if (i5 == -1)
          i5 = k;
        int i6 = i5;
        i1 = i4;
        i2 = i6;
        continue;
      }
      return null;
      i1 = m;
      i2 = n;
    }
  }

  public static HttpRequest c(CharSequence paramCharSequence)
  {
    return new HttpRequest(paramCharSequence, "PUT");
  }

  private HttpRequest c(String paramString1, String paramString2)
  {
    if ((paramString2 != null) && (paramString2.length() > 0))
      return a("Content-Type", paramString1 + "; charset=" + paramString2);
    return a("Content-Type", paramString1);
  }

  public static HttpRequest d(CharSequence paramCharSequence)
  {
    return new HttpRequest(paramCharSequence, "DELETE");
  }

  private HttpRequest d(String paramString1, String paramString2)
  {
    return e(paramString1).e(": ").e(paramString2).e("\r\n");
  }

  private static String d(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      return paramString;
    return "UTF-8";
  }

  private HttpRequest e(CharSequence paramCharSequence)
  {
    try
    {
      m();
      this.e.a(paramCharSequence.toString());
      return this;
    }
    catch (IOException localIOException)
    {
    }
    throw new HttpRequest.HttpRequestException(localIOException);
  }

  private String e(String paramString)
  {
    int k = f();
    ByteArrayOutputStream localByteArrayOutputStream;
    if (k > 0)
      localByteArrayOutputStream = new ByteArrayOutputStream(k);
    try
    {
      while (true)
      {
        a(new BufferedInputStream(i(), this.j), localByteArrayOutputStream);
        String str = localByteArrayOutputStream.toString(d(paramString));
        return str;
        localByteArrayOutputStream = new ByteArrayOutputStream();
      }
    }
    catch (IOException localIOException)
    {
    }
    throw new HttpRequest.HttpRequestException(localIOException);
  }

  private InputStreamReader f(String paramString)
  {
    try
    {
      InputStreamReader localInputStreamReader = new InputStreamReader(i(), d(paramString));
      return localInputStreamReader;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new HttpRequest.HttpRequestException(localUnsupportedEncodingException);
  }

  private String g(String paramString)
  {
    l();
    return h().getHeaderField(paramString);
  }

  private HttpURLConnection g()
  {
    try
    {
      HttpURLConnection localHttpURLConnection = a.a(this.c);
      localHttpURLConnection.setRequestMethod(this.d);
      return localHttpURLConnection;
    }
    catch (IOException localIOException)
    {
    }
    throw new HttpRequest.HttpRequestException(localIOException);
  }

  private HttpURLConnection h()
  {
    if (this.b == null)
      this.b = g();
    return this.b;
  }

  private InputStream i()
  {
    if (b() < 400);
    InputStream localInputStream1;
    do
    {
      try
      {
        InputStream localInputStream3 = h().getInputStream();
        localInputStream1 = localInputStream3;
        return localInputStream1;
      }
      catch (IOException localIOException2)
      {
        throw new HttpRequest.HttpRequestException(localIOException2);
      }
      localInputStream1 = h().getErrorStream();
    }
    while (localInputStream1 != null);
    try
    {
      InputStream localInputStream2 = h().getInputStream();
      return localInputStream2;
    }
    catch (IOException localIOException1)
    {
    }
    throw new HttpRequest.HttpRequestException(localIOException1);
  }

  private String j()
  {
    return b(g("Content-Type"), "charset");
  }

  private HttpRequest k()
  {
    if (this.e == null)
      return this;
    if (this.f)
      this.e.a("\r\n--00content0boundary00--\r\n");
    if (this.h);
    try
    {
      this.e.close();
      while (true)
      {
        label41: this.e = null;
        return this;
        this.e.close();
      }
    }
    catch (IOException localIOException)
    {
      break label41;
    }
  }

  private HttpRequest l()
  {
    try
    {
      HttpRequest localHttpRequest = k();
      return localHttpRequest;
    }
    catch (IOException localIOException)
    {
    }
    throw new HttpRequest.HttpRequestException(localIOException);
  }

  private HttpRequest m()
  {
    if (this.e != null)
      return this;
    h().setDoOutput(true);
    String str = b(h().getRequestProperty("Content-Type"), "charset");
    this.e = new f(h().getOutputStream(), str, this.j);
    return this;
  }

  private HttpRequest n()
  {
    if (!this.f)
    {
      this.f = true;
      c("multipart/form-data; boundary=00content0boundary00", null).m();
      this.e.a("--00content0boundary00\r\n");
      return this;
    }
    this.e.a("\r\n--00content0boundary00\r\n");
    return this;
  }

  public final HttpRequest a(int paramInt)
  {
    h().setReadTimeout(15000);
    return this;
  }

  public final HttpRequest a(Object paramObject1, Object paramObject2)
  {
    return a(paramObject1, paramObject2, "UTF-8");
  }

  public final HttpRequest a(String paramString)
  {
    return a("User-Agent", paramString);
  }

  public final HttpRequest a(String paramString1, String paramString2)
  {
    h().setRequestProperty(paramString1, paramString2);
    return this;
  }

  public final HttpRequest a(String paramString1, String paramString2, String paramString3, File paramFile)
  {
    try
    {
      BufferedInputStream localBufferedInputStream = new BufferedInputStream(new FileInputStream(paramFile));
      return a(paramString1, paramString2, paramString3, localBufferedInputStream);
    }
    catch (IOException localIOException)
    {
    }
    throw new HttpRequest.HttpRequestException(localIOException);
  }

  public final HttpRequest a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    try
    {
      n();
      a(paramString1, paramString2, null);
      this.e.a(paramString4);
      return this;
    }
    catch (IOException localIOException)
    {
    }
    throw new HttpRequest.HttpRequestException(localIOException);
  }

  public final HttpRequest a(Map<?, ?> paramMap)
  {
    if (!paramMap.isEmpty())
    {
      Iterator localIterator = paramMap.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        a(localEntry.getKey(), localEntry.getValue(), "UTF-8");
      }
    }
    return this;
  }

  public final URL a()
  {
    return this.c;
  }

  public final void a(URL paramURL)
  {
    this.c = paramURL;
  }

  public final int b()
  {
    try
    {
      k();
      int k = h().getResponseCode();
      return k;
    }
    catch (IOException localIOException)
    {
    }
    throw new HttpRequest.HttpRequestException(localIOException);
  }

  public final HttpRequest b(int paramInt)
  {
    h().setConnectTimeout(15000);
    return this;
  }

  public final HttpRequest b(String paramString)
  {
    return a("Referer", paramString);
  }

  public final boolean c()
  {
    return 200 == b();
  }

  public final String d()
  {
    return e(j());
  }

  public final BufferedReader e()
  {
    return new BufferedReader(f(j()), this.j);
  }

  public final int f()
  {
    l();
    return h().getHeaderFieldInt("Content-Length", -1);
  }

  public final String toString()
  {
    return h().getRequestMethod() + ' ' + h().getURL();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.github.kevinsawicki.http.HttpRequest
 * JD-Core Version:    0.6.0
 */