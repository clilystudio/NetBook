package com.mob.tools;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.SslErrorHandler;

final class h
  implements DialogInterface.OnClickListener
{
  h(g paramg, SslErrorHandler paramSslErrorHandler)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this.a.proceed();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.h
 * JD-Core Version:    0.6.0
 */