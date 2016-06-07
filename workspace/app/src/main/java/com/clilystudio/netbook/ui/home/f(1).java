package com.clilystudio.netbook.ui.home;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.clilystudio.netbook.util.as;
import com.clilystudio.netbook.util.e;

final class f
  implements DialogInterface.OnClickListener
{
  f(HomeActivity paramHomeActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    as.a();
    as.i();
    e.b(this.a);
    this.a.finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.home.f
 * JD-Core Version:    0.6.0
 */