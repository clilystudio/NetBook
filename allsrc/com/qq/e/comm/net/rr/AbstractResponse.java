package com.qq.e.comm.net.rr;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.util.EntityUtils;

public abstract class AbstractResponse
  implements Response
{
  private final HttpResponse a;
  private final HttpUriRequest b;

  public AbstractResponse(HttpResponse paramHttpResponse, HttpUriRequest paramHttpUriRequest)
  {
    this.a = paramHttpResponse;
    this.b = paramHttpUriRequest;
  }

  public void close()
  {
    if ((this.b != null) && (!this.b.isAborted()))
      this.b.abort();
    if (this.a != null)
      this.a.getEntity().getContent().close();
  }

  public byte[] getBytesContent()
  {
    if (200 != getStatusCode())
      return null;
    InputStream localInputStream = getStreamContent();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    byte[] arrayOfByte = new byte[1024];
    while (true)
    {
      int i = localInputStream.read(arrayOfByte);
      if (i <= 0)
        break;
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    return localByteArrayOutputStream.toByteArray();
  }

  public int getStatusCode()
  {
    return this.a.getStatusLine().getStatusCode();
  }

  public InputStream getStreamContent()
  {
    InputStream localInputStream = this.a.getEntity().getContent();
    Header localHeader = this.a.getEntity().getContentEncoding();
    if ((localHeader != null) && (localHeader.getValue().contains("gzip")))
      return new GZIPInputStream(localInputStream);
    return localInputStream;
  }

  public String getStringContent()
  {
    return getStringContent("UTF-8");
  }

  public String getStringContent(String paramString)
  {
    byte[] arrayOfByte = getBytesContent();
    if (arrayOfByte == null)
      return null;
    if (arrayOfByte.length == 0)
      return "";
    try
    {
      String str2 = EntityUtils.getContentCharSet(this.a.getEntity());
      str1 = str2;
      if (str1 == null)
        return new String(arrayOfByte, paramString);
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        String str1 = null;
        continue;
        paramString = str1;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.net.rr.AbstractResponse
 * JD-Core Version:    0.6.0
 */