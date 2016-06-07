package com.ushaqi.zhuishushenqi.util.adutil;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;

final class j
  implements DialogInterface.OnClickListener
{
  j(BaseShelfAd paramBaseShelfAd, View paramView, Context paramContext)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.c.onAdClick(this.a);
    this.c.recordDownload(this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.adutil.j
 * JD-Core Version:    0.6.0
 */