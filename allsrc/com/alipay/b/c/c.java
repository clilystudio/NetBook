package com.alipay.b.c;

import com.alipay.security.mobile.module.a.a;

final class c
  implements Runnable
{
  c(b paramb)
  {
  }

  public final void run()
  {
    try
    {
      b.a(this.a);
      return;
    }
    catch (Throwable localThrowable)
    {
      a.a(localThrowable);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.b.c.c
 * JD-Core Version:    0.6.0
 */