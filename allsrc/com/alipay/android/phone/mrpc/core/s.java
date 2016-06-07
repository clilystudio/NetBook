package com.alipay.android.phone.mrpc.core;

import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

final class s extends FutureTask<z>
{
  s(r paramr, Callable paramCallable, w paramw)
  {
    super(paramCallable);
  }

  protected final void done()
  {
    this.a.a();
    super.done();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.mrpc.core.s
 * JD-Core Version:    0.6.0
 */