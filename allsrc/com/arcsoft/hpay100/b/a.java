package com.arcsoft.hpay100.b;

import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.entity.HttpEntityWrapper;

abstract class a extends HttpEntityWrapper
{
  private InputStream a;

  public a(HttpEntity paramHttpEntity)
  {
    super(paramHttpEntity);
  }

  abstract InputStream a(InputStream paramInputStream);

  public InputStream getContent()
  {
    if (this.wrappedEntity.isStreaming())
    {
      if (this.a == null)
        this.a = a(this.wrappedEntity.getContent());
      return this.a;
    }
    return a(this.wrappedEntity.getContent());
  }

  public void writeTo(OutputStream paramOutputStream)
  {
    if (paramOutputStream == null)
      throw new IllegalArgumentException("Output stream may not be null");
    InputStream localInputStream = getContent();
    try
    {
      arrayOfByte = new byte[2048];
      i = localInputStream.read(arrayOfByte);
      if (i == -1)
        if (localInputStream == null);
    }
    finally
    {
      try
      {
        while (true)
        {
          byte[] arrayOfByte;
          int i;
          localInputStream.close();
          return;
          paramOutputStream.write(arrayOfByte, 0, i);
        }
        localObject = finally;
        if (localInputStream != null);
        try
        {
          localInputStream.close();
          throw localObject;
        }
        catch (Exception localException1)
        {
          while (true)
            localException1.printStackTrace();
        }
      }
      catch (Exception localException2)
      {
        localException2.printStackTrace();
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.b.a
 * JD-Core Version:    0.6.0
 */