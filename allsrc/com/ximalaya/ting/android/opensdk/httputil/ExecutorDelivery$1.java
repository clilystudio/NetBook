package com.ximalaya.ting.android.opensdk.httputil;

import android.os.Handler;
import java.util.concurrent.Executor;

class ExecutorDelivery$1
  implements Executor
{
  public void execute(Runnable paramRunnable)
  {
    this.val$handler.post(paramRunnable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.httputil.ExecutorDelivery.1
 * JD-Core Version:    0.6.0
 */