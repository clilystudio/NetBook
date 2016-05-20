package com.clilystudio.app.netbook.reader.random;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class m
  implements DialogInterface.OnClickListener
{
  m(ReaderRandomActivity paramReaderRandomActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.random.m
 * JD-Core Version:    0.6.2
 */