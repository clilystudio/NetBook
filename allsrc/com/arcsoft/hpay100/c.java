package com.arcsoft.hpay100;

import android.app.Dialog;

final class c
  implements Runnable
{
  public final void run()
  {
    try
    {
      if ((a.a() != null) && (a.a().isShowing()))
      {
        a.a().dismiss();
        a.a(null);
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.c
 * JD-Core Version:    0.6.0
 */