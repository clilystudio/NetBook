package com.xiaomi.smack.d;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

public final class a extends Reader
{
  private Reader a = null;
  private List b = new ArrayList();

  public a(Reader paramReader)
  {
    this.a = paramReader;
  }

  public final void a(f paramf)
  {
    if (paramf == null)
      return;
    synchronized (this.b)
    {
      if (!this.b.contains(paramf))
        this.b.add(paramf);
      return;
    }
  }

  public final void b(f paramf)
  {
    synchronized (this.b)
    {
      this.b.remove(paramf);
      return;
    }
  }

  public final void close()
  {
    this.a.close();
  }

  public final void mark(int paramInt)
  {
    this.a.mark(paramInt);
  }

  public final boolean markSupported()
  {
    return this.a.markSupported();
  }

  public final int read()
  {
    return this.a.read();
  }

  public final int read(char[] paramArrayOfChar)
  {
    return this.a.read(paramArrayOfChar);
  }

  public final int read(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = this.a.read(paramArrayOfChar, paramInt1, paramInt2);
    if (i > 0)
    {
      String str = new String(paramArrayOfChar, paramInt1, i);
      synchronized (this.b)
      {
        f[] arrayOff = new f[this.b.size()];
        this.b.toArray(arrayOff);
        int j = 0;
        if (j < arrayOff.length)
        {
          arrayOff[j].a(str);
          j++;
        }
      }
    }
    return i;
  }

  public final boolean ready()
  {
    return this.a.ready();
  }

  public final void reset()
  {
    this.a.reset();
  }

  public final long skip(long paramLong)
  {
    return this.a.skip(paramLong);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.d.a
 * JD-Core Version:    0.6.0
 */