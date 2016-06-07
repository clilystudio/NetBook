package com.alipay.sdk.app;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.SslErrorHandler;

final class g
  implements DialogInterface.OnClickListener
{
  g(e parame)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a.cancel();
    H5AuthActivity.a(this.a.b.a, false);
    o.a = o.a();
    this.a.b.a.finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.app.g
 * JD-Core Version:    0.6.0
 */