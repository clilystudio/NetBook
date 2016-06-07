package com.xiaomi.smack.d;

import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

public final class b extends Writer
{
  private Writer a = null;
  private List b = new ArrayList();

  public b(Writer paramWriter)
  {
    this.a = paramWriter;
  }

  private void a(String paramString)
  {
    synchronized (this.b)
    {
      f[] arrayOff = new f[this.b.size()];
      this.b.toArray(arrayOff);
      int i = 0;
      if (i < arrayOff.length)
      {
        arrayOff[i].a(paramString);
        i++;
      }
    }
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

  public final void flush()
  {
    this.a.flush();
  }

  public final void write(int paramInt)
  {
    this.a.write(paramInt);
  }

  public final void write(String paramString)
  {
    this.a.write(paramString);
    a(paramString);
  }

  public final void write(String paramString, int paramInt1, int paramInt2)
  {
    this.a.write(paramString, paramInt1, paramInt2);
    a(paramString.substring(paramInt1, paramInt1 + paramInt2));
  }

  public final void write(char[] paramArrayOfChar)
  {
    this.a.write(paramArrayOfChar);
    a(new String(paramArrayOfChar));
  }

  public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    this.a.write(paramArrayOfChar, paramInt1, paramInt2);
    a(new String(paramArrayOfChar, paramInt1, paramInt2));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.smack.d.b
 * JD-Core Version:    0.6.0
 */