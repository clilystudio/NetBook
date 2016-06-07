package com.squareup.okhttp.internal;

public abstract class c
  implements Runnable
{
  private String a;

  public c(String paramString, Object[] paramArrayOfObject)
  {
    this.a = String.format(paramString, paramArrayOfObject);
  }

  protected abstract void b();

  public final void run()
  {
    String str = Thread.currentThread().getName();
    Thread.currentThread().setName(this.a);
    try
    {
      b();
      return;
    }
    finally
    {
      Thread.currentThread().setName(str);
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.squareup.okhttp.internal.c
 * JD-Core Version:    0.6.0
 */