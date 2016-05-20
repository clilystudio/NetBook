package com.clilystudio.app.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class cD
  implements DialogInterface.OnClickListener
{
  cD(ReaderWebActivity paramReaderWebActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ReaderWebActivity.c(this.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.cD
 * JD-Core Version:    0.6.2
 */