package com.koushikdutta.async.b;

public abstract class h<T, F> extends g<T>
  implements d<F>
{
  public final void a(Exception paramException, F paramF)
  {
    if (isCancelled())
      return;
    if (paramException != null)
    {
      b(paramException, null);
      return;
    }
    try
    {
      a(paramF);
      return;
    }
    catch (Exception localException)
    {
      b(localException, null);
    }
  }

  protected abstract void a(F paramF);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.b.h
 * JD-Core Version:    0.6.0
 */