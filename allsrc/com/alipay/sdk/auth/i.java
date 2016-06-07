package com.alipay.sdk.auth;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.SslErrorHandler;

final class i
  implements DialogInterface.OnClickListener
{
  i(g paramg)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a.cancel();
    AuthActivity.a(this.a.b.a, false);
    String str = AuthActivity.c(this.a.b.a) + "?resultCode=150";
    j.a(this.a.b.a, str);
    this.a.b.a.finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.auth.i
 * JD-Core Version:    0.6.0
 */