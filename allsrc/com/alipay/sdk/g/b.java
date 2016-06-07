package com.alipay.sdk.g;

import android.app.ProgressDialog;

final class b
  implements Runnable
{
  b(a parama, CharSequence paramCharSequence)
  {
  }

  public final void run()
  {
    if (this.d.b == null)
      this.d.b = new ProgressDialog(this.d.a);
    this.d.b.setCancelable(false);
    this.d.b.setOnCancelListener(null);
    this.d.b.setMessage(this.c);
    try
    {
      this.d.b.show();
      return;
    }
    catch (Exception localException)
    {
      this.d.b = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.g.b
 * JD-Core Version:    0.6.0
 */