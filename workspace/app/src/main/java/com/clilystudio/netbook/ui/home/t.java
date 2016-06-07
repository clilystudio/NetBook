package com.clilystudio.netbook.ui.home;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import java.util.List;

final class t
  implements DialogInterface.OnClickListener
{
  t(HomeShelfFragment paramHomeShelfFragment, List paramList, CheckBox paramCheckBox)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    HomeShelfFragment.a(this.c, this.a, this.b.isChecked());
    this.c.e();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.home.t
 * JD-Core Version:    0.6.0
 */