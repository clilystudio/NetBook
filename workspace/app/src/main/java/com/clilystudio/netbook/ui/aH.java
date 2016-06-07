package com.clilystudio.netbook.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;

final class aH
  implements DialogInterface.OnClickListener
{
  aH(BookInfoActivity paramBookInfoActivity, CheckBox paramCheckBox)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    BookInfoActivity.c(this.b, this.a.isChecked());
    this.b.startActivity(AuthLoginActivity.a(this.b));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.aH
 * JD-Core Version:    0.6.0
 */