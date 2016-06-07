package com.clilystudio.netbook.util.adutil;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.clilystudio.netbook.widget.AdContainerLayout;

final class c
  implements DialogInterface.OnClickListener
{
  c(b paramb)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AdSplashImp.a(this.a.b, this.a.a);
    this.a.b.e();
    this.a.a.postDelayed(new d(this), 500L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.adutil.c
 * JD-Core Version:    0.6.0
 */