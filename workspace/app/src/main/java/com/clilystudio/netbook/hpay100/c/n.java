package com.clilystudio.netbook.hpay100.c;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class n
  implements DialogInterface.OnClickListener
{
  n(DialogInterface.OnClickListener paramOnClickListener)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (this.a != null)
    {
      paramDialogInterface.dismiss();
      this.a.onClick(paramDialogInterface, paramInt);
      return;
    }
    paramDialogInterface.dismiss();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.c.n
 * JD-Core Version:    0.6.0
 */