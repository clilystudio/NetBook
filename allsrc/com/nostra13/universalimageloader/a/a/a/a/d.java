package com.nostra13.universalimageloader.a.a.a.a;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;

public final class d
{
  private final f a;
  private final boolean[] b;
  private boolean c;

  private d(a parama, f paramf)
  {
    this.a = paramf;
    if (f.d(paramf));
    for (boolean[] arrayOfBoolean = null; ; arrayOfBoolean = new boolean[a.f(parama)])
    {
      this.b = arrayOfBoolean;
      return;
    }
  }

  public final OutputStream a(int paramInt)
  {
    synchronized (this.d)
    {
      if (f.a(this.a) != this)
        throw new IllegalStateException();
    }
    if (!f.d(this.a))
      this.b[0] = true;
    File localFile = this.a.b(0);
    OutputStream localOutputStream;
    try
    {
      FileOutputStream localFileOutputStream1 = new FileOutputStream(localFile);
      localObject2 = localFileOutputStream1;
      e locale = new e(this, (OutputStream)localObject2, 0);
      monitorexit;
      return locale;
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      while (true)
      {
        Object localObject2;
        a.g(this.d).mkdirs();
        try
        {
          FileOutputStream localFileOutputStream2 = new FileOutputStream(localFile);
          localObject2 = localFileOutputStream2;
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          localOutputStream = a.a();
          monitorexit;
        }
      }
    }
    return (OutputStream)localOutputStream;
  }

  public final void a()
  {
    if (this.c)
    {
      a.a(this.d, this, false);
      this.d.c(f.c(this.a));
      return;
    }
    a.a(this.d, this, true);
  }

  public final void b()
  {
    a.a(this.d, this, false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.a.a.a.a.d
 * JD-Core Version:    0.6.0
 */