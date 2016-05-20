package com.clilystudio.app.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class aX
  implements DialogInterface.OnClickListener
{
  aX(ReaderActivity paramReaderActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ReaderActivity.ad(this.a);
    this.a.finish();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.aX
 * JD-Core Version:    0.6.2
 */