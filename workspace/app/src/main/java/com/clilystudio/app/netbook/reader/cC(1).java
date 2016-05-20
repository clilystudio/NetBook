package com.clilystudio.app.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.CheckBox;

final class cC
  implements DialogInterface.OnClickListener
{
  cC(ReaderWebActivity paramReaderWebActivity, View paramView)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (((CheckBox)this.a.findViewById(2131493415)).isChecked())
    {
      ReaderWebActivity.b(this.b);
      return;
    }
    ReaderWebActivity.c(this.b);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.cC
 * JD-Core Version:    0.6.2
 */