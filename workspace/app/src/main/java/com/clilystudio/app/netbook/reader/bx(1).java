package com.clilystudio.app.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class bx
  implements DialogInterface.OnClickListener
{
  bx(bw parambw)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ReaderMenuFragment.a(this.a.c, this.a.a, this.a.b);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bx
 * JD-Core Version:    0.6.2
 */