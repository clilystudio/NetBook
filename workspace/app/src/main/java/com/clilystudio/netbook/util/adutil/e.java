package com.clilystudio.netbook.util.adutil;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.clilystudio.netbook.ui.SplashActivity;

final class e
  implements DialogInterface.OnClickListener
{
  e(b paramb)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    AdSplashImp.a(this.a.b).d();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.adutil.e
 * JD-Core Version:    0.6.0
 */