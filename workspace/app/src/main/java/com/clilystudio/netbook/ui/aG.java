package com.clilystudio.netbook.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;

final class aG
  implements DialogInterface.OnClickListener
{
  aG(BookInfoActivity paramBookInfoActivity, CheckBox paramCheckBox)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BookInfoActivity.c(this.b, this.a.isChecked());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.aG
 * JD-Core Version:    0.6.0
 */