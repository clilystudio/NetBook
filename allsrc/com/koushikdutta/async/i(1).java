package com.koushikdutta.async;

import android.util.Log;

final class i
  implements Runnable
{
  i(V paramV)
  {
  }

  public final void run()
  {
    try
    {
      this.a.g();
      return;
    }
    catch (Exception localException)
    {
      Log.i("NIO", "Selector Exception? L Preview?");
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.koushikdutta.async.i
 * JD-Core Version:    0.6.0
 */