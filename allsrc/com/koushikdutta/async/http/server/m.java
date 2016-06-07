package com.koushikdutta.async.http.server;

import android.text.TextUtils;
import com.koushikdutta.async.A;
import com.koushikdutta.async.Y;
import com.koushikdutta.async.a.d;
import com.koushikdutta.async.http.b.e;
import com.koushikdutta.async.http.b.h;
import com.koushikdutta.async.http.filter.b;
import com.koushikdutta.async.s;
import com.koushikdutta.async.v;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;

public class m
  implements l
{
  s a;
  A b;
  private e c = new e();
  private long d = -1L;
  private h e = new h(null, this.c);
  private i f;
  private boolean g = false;
  private boolean h = false;
  private boolean i;

  static
  {
    if (!m.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      j = bool;
      return;
    }
  }

  m(s params, i parami)
  {
    this.a = params;
    this.f = parami;
    if (com.koushikdutta.async.http.a.a(parami.m().a()))
      this.c.b("Connection", "Keep-Alive");
  }

  private void d()
  {
    if (this.g)
      return;
    this.g = true;
    if ((!j) && (this.c.a() == null))
      throw new AssertionError();
    String str1 = this.c.d("Transfer-Encoding");
    if ("".equals(str1))
      this.c.c("Transfer-Encoding");
    int k;
    if ((("Chunked".equalsIgnoreCase(str1)) || (str1 == null)) && (!"close".equalsIgnoreCase(this.c.d("Connection"))))
    {
      k = 1;
      if (this.d < 0L)
      {
        String str2 = this.c.d("Content-Length");
        if (!TextUtils.isEmpty(str2))
          this.d = Long.valueOf(str2).longValue();
      }
      if ((this.d >= 0L) || (k == 0))
        break label199;
      this.c.b("Transfer-Encoding", "Chunked");
    }
    label199: for (this.b = new b(this.a); ; this.b = this.a)
    {
      if ((j) || (!this.h))
        break label210;
      throw new AssertionError();
      k = 0;
      break;
    }
    label210: this.h = true;
    Y.a(this.a, this.c.e().getBytes(), new n(this));
  }

  public final void a()
  {
    if ("Chunked".equalsIgnoreCase(this.c.d("Transfer-Encoding")))
    {
      d();
      ((b)this.b).a(2147483647);
      this.b.a(new v());
      b();
    }
    do
      return;
    while (this.g);
    if (!this.f.e.equalsIgnoreCase("HEAD"))
    {
      a("text/html", "");
      return;
    }
    d();
    b();
  }

  public final void a(int paramInt)
  {
    String str = a.b(paramInt);
    e locale = this.c;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = str;
    locale.a(String.format("HTTP/1.1 %d %s", arrayOfObject));
  }

  public final void a(com.koushikdutta.async.a.a parama)
  {
    this.b.a(parama);
  }

  public final void a(d paramd)
  {
    d();
    this.b.a(paramd);
  }

  public final void a(v paramv)
  {
    if (paramv.c() == 0)
      return;
    if ((!j) && (this.i))
      throw new AssertionError();
    if (!this.g)
    {
      d();
      return;
    }
    this.b.a(paramv);
  }

  public final void a(File paramFile)
  {
    try
    {
      if (this.c.d("Content-Type") == null)
        this.c.b("Content-Type", a.a(paramFile.getAbsolutePath()));
      a(new BufferedInputStream(new FileInputStream(paramFile), 64000), paramFile.length());
      return;
    }
    catch (Exception localException)
    {
      a(404);
      a();
    }
  }

  public final void a(InputStream paramInputStream, long paramLong)
  {
    long l1 = 0L;
    long l2 = paramLong - 1L;
    String str = this.f.m().a().d("Range");
    if (str != null)
    {
      String[] arrayOfString1 = str.split("=");
      if ((arrayOfString1.length != 2) || (!"bytes".equals(arrayOfString1[0])))
      {
        a(416);
        a();
        return;
      }
      String[] arrayOfString2 = arrayOfString1[1].split("-");
      try
      {
        if (arrayOfString2.length > 2)
          throw new MalformedRangeException();
      }
      catch (Exception localException2)
      {
        a(416);
        a();
        return;
      }
      if (!TextUtils.isEmpty(arrayOfString2[0]))
        l1 = Long.parseLong(arrayOfString2[0]);
      if ((arrayOfString2.length != 2) || (TextUtils.isEmpty(arrayOfString2[1])))
        break label256;
      l2 = Long.parseLong(arrayOfString2[1]);
    }
    while (true)
    {
      a(206);
      e locale = this.e.a();
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Long.valueOf(l1);
      arrayOfObject[1] = Long.valueOf(l2);
      arrayOfObject[2] = Long.valueOf(paramLong);
      locale.b("Content-Range", String.format("bytes %d-%d/%d", arrayOfObject));
      try
      {
        if (l1 == paramInputStream.skip(l1))
          break;
        throw new StreamSkipException("skip failed to skip requested amount");
      }
      catch (Exception localException1)
      {
        a(404);
        a();
        return;
      }
      label256: l2 = paramLong - 1L;
    }
    long l3 = 1L + (l2 - l1);
    this.d = l3;
    this.c.b("Content-Length", String.valueOf(this.d));
    this.c.b("Accept-Ranges", "bytes");
    if (this.e.a().a() == null)
      a(200);
    if (this.f.e.equals("HEAD"))
    {
      d();
      b();
      return;
    }
    Y.a(paramInputStream, this.d, this, new p(this, paramInputStream));
  }

  public final void a(Exception paramException)
  {
    a();
  }

  public final void a(String paramString)
  {
    a(200);
    String str = this.c.d("Content-Type");
    if (str == null)
      str = "text/html; charset=utf8";
    a(str, paramString);
  }

  public final void a(String paramString1, String paramString2)
  {
    try
    {
      if (this.c.a() == null)
        a(200);
      if ((!j) && (this.d >= 0L))
        throw new AssertionError();
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      if (!j)
      {
        throw new AssertionError();
        byte[] arrayOfByte = paramString2.getBytes("UTF-8");
        this.d = arrayOfByte.length;
        this.c.b("Content-Length", Integer.toString(arrayOfByte.length));
        this.c.b("Content-Type", paramString1);
        Y.a(this, paramString2.getBytes(), new o(this));
      }
    }
  }

  public final void a(ByteBuffer paramByteBuffer)
  {
    if (paramByteBuffer.remaining() == 0)
      return;
    if ((!j) && (this.i))
      throw new AssertionError();
    if (!this.g)
    {
      d();
      return;
    }
    this.b.a(paramByteBuffer);
  }

  protected void b()
  {
    this.i = true;
  }

  public final void b(String paramString)
  {
    if ((!j) && (this.h))
      throw new AssertionError();
    this.c.b("Content-Type", paramString);
  }

  public final h c()
  {
    return this.e;
  }

  public final d e()
  {
    d();
    return this.b.e();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.http.server.m
 * JD-Core Version:    0.6.0
 */