package com.androidquery.b;

import com.androidquery.util.a;
import java.io.Closeable;
import java.io.File;
import java.util.Date;
import org.apache.http.Header;

public class c
{
  private int a = 200;
  private String b = "OK";
  private byte[] c;
  private File d;
  private int e;
  private long f;
  private boolean g;
  private boolean h;
  private Header[] i;
  private Closeable j;

  public c()
  {
    new Date();
    this.e = 1;
    this.f = System.currentTimeMillis();
  }

  public final c a()
  {
    System.currentTimeMillis();
    this.g = true;
    this.h = false;
    return this;
  }

  protected final c a(int paramInt)
  {
    this.e = paramInt;
    return this;
  }

  protected final c a(File paramFile)
  {
    this.d = paramFile;
    return this;
  }

  public final c a(String paramString)
  {
    this.b = paramString;
    return this;
  }

  protected final c a(boolean paramBoolean)
  {
    this.h = true;
    return this;
  }

  protected final c a(byte[] paramArrayOfByte)
  {
    this.c = paramArrayOfByte;
    return this;
  }

  protected final c a(Header[] paramArrayOfHeader)
  {
    this.i = paramArrayOfHeader;
    return this;
  }

  protected final void a(Closeable paramCloseable)
  {
    this.j = paramCloseable;
  }

  protected final c b()
  {
    System.currentTimeMillis();
    this.g = false;
    c();
    return this;
  }

  public final c b(int paramInt)
  {
    this.a = paramInt;
    return this;
  }

  public final String b(String paramString)
  {
    if (this.i == null)
      return null;
    for (int k = 0; ; k++)
    {
      if (k >= this.i.length)
        return null;
      if (paramString.equalsIgnoreCase(this.i[k].getName()))
        return this.i[k].getValue();
    }
  }

  public final void c()
  {
    a.a(this.j);
    this.j = null;
  }

  protected final boolean d()
  {
    return this.g;
  }

  protected final boolean e()
  {
    return this.h;
  }

  public final int f()
  {
    return this.a;
  }

  public final String g()
  {
    return this.b;
  }

  protected final byte[] h()
  {
    return this.c;
  }

  protected final File i()
  {
    return this.d;
  }

  public final int j()
  {
    return this.e;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.androidquery.b.c
 * JD-Core Version:    0.6.0
 */