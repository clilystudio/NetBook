package com.b;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class a
{
  private final g b;
  private final boolean[] c;
  private boolean d;

  private a(c paramc, g paramg)
  {
    this.b = paramg;
    if (g.d(paramg));
    for (boolean[] arrayOfBoolean = null; ; arrayOfBoolean = new boolean[c.e(paramc)])
    {
      this.c = arrayOfBoolean;
      return;
    }
  }

  static void a(Closeable paramCloseable)
  {
    if (paramCloseable != null);
    try
    {
      paramCloseable.close();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      throw localRuntimeException;
    }
    catch (Exception localException)
    {
    }
  }

  static void a(File paramFile)
  {
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null)
      throw new IllegalArgumentException("not a directory: " + paramFile);
    int i = arrayOfFile.length;
    for (int j = 0; j < i; j++)
    {
      File localFile = arrayOfFile[j];
      if (localFile.isDirectory())
        a(localFile);
      if (localFile.delete())
        continue;
      throw new IOException("failed to delete file: " + localFile);
    }
  }

  public OutputStream a(int paramInt)
  {
    synchronized (this.a)
    {
      if (g.a(this.b) != this)
        throw new IllegalStateException();
    }
    if (!g.d(this.b))
      this.c[paramInt] = true;
    File localFile = this.b.b(paramInt);
    OutputStream localOutputStream;
    try
    {
      FileOutputStream localFileOutputStream1 = new FileOutputStream(localFile);
      localObject2 = localFileOutputStream1;
      f localf = new f(this, (OutputStream)localObject2, 0);
      monitorexit;
      return localf;
    }
    catch (FileNotFoundException localFileNotFoundException1)
    {
      while (true)
      {
        Object localObject2;
        c.f(this.a).mkdirs();
        try
        {
          FileOutputStream localFileOutputStream2 = new FileOutputStream(localFile);
          localObject2 = localFileOutputStream2;
        }
        catch (FileNotFoundException localFileNotFoundException2)
        {
          localOutputStream = c.d();
          monitorexit;
        }
      }
    }
    return (OutputStream)localOutputStream;
  }

  public void a()
  {
    if (this.d)
    {
      c.a(this.a, this, false);
      this.a.c(g.c(this.b));
      return;
    }
    c.a(this.a, this, true);
  }

  public void b()
  {
    c.a(this.a, this, false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.b.a
 * JD-Core Version:    0.6.0
 */