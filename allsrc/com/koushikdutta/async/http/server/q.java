package com.koushikdutta.async.http.server;

import com.koushikdutta.async.C;
import com.koushikdutta.async.v;
import com.koushikdutta.async.y;
import java.nio.ByteBuffer;

public class q extends C
{
  private byte[] a;
  private int b = 2;

  static
  {
    if (!q.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      c = bool;
      return;
    }
  }

  public final void a(y paramy, v paramv)
  {
    if (this.b > 0)
    {
      ByteBuffer localByteBuffer4 = v.b(this.a.length);
      localByteBuffer4.put(this.a, 0, this.b);
      localByteBuffer4.flip();
      paramv.b(localByteBuffer4);
      this.b = 0;
    }
    byte[] arrayOfByte = new byte[paramv.c()];
    paramv.a(arrayOfByte);
    int i = 0;
    int j = 0;
    if (i < arrayOfByte.length)
    {
      if (this.b >= 0)
        if (arrayOfByte[i] == this.a[this.b])
        {
          this.b = (1 + this.b);
          if (this.b == this.a.length)
            this.b = -1;
        }
      while (true)
      {
        i++;
        break;
        if (this.b <= 0)
          continue;
        i -= this.b;
        this.b = 0;
        continue;
        if (this.b != -1)
          break label283;
        if (arrayOfByte[i] == 13)
        {
          this.b = -4;
          int m = i - j - this.a.length;
          if ((j != 0) || (m != 0))
          {
            ByteBuffer localByteBuffer3 = v.b(m).put(arrayOfByte, j, m);
            localByteBuffer3.flip();
            v localv3 = new v();
            localv3.a(localByteBuffer3);
            super.a(this, localv3);
          }
          l();
          continue;
        }
        if (arrayOfByte[i] != 45)
          break label269;
        this.b = -2;
      }
      label269: a_(new MimeEncodingException("Invalid multipart/form-data. Expected \r or -"));
    }
    label283: 
    do
    {
      return;
      if (this.b == -2)
      {
        if (arrayOfByte[i] == 45)
        {
          this.b = -3;
          break;
        }
        a_(new MimeEncodingException("Invalid multipart/form-data. Expected -"));
        return;
      }
      if (this.b == -3)
      {
        if (arrayOfByte[i] == 13)
        {
          this.b = -4;
          ByteBuffer localByteBuffer2 = v.b(-2 + (i - j - this.a.length)).put(arrayOfByte, j, -2 + (i - j - this.a.length));
          localByteBuffer2.flip();
          v localv2 = new v();
          localv2.a(localByteBuffer2);
          super.a(this, localv2);
          k();
          break;
        }
        a_(new MimeEncodingException("Invalid multipart/form-data. Expected \r"));
        return;
      }
      if (this.b == -4)
      {
        if (arrayOfByte[i] == 10)
        {
          j = i + 1;
          this.b = 0;
          break;
        }
        a_(new MimeEncodingException("Invalid multipart/form-data. Expected \n"));
        break;
      }
      if (!c)
        throw new AssertionError();
      a_(new MimeEncodingException("Invalid multipart/form-data. Unknown state?"));
      break;
    }
    while (j >= arrayOfByte.length);
    int k = Math.max(this.b, 0);
    ByteBuffer localByteBuffer1 = v.b(arrayOfByte.length - j - k).put(arrayOfByte, j, arrayOfByte.length - j - k);
    localByteBuffer1.flip();
    v localv1 = new v();
    localv1.a(localByteBuffer1);
    super.a(this, localv1);
  }

  public final void a(String paramString)
  {
    this.a = ("\r\n--" + paramString).getBytes();
  }

  protected void k()
  {
  }

  protected void l()
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.server.q
 * JD-Core Version:    0.6.0
 */