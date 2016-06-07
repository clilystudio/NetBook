package com.clilystudio.netbook.ui.home;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.CheckBox;
import com.clilystudio.netbook.model.BookShelf;

final class s
  implements DialogInterface.OnClickListener
{
  s(HomeShelfFragment paramHomeShelfFragment, BookShelf paramBookShelf, CheckBox paramCheckBox)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    HomeShelfFragment.a(this.c, this.a, this.b.isChecked());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.home.s
 * JD-Core Version:    0.6.0
 */