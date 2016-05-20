package com.clilystudio.app.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class aW
  implements DialogInterface.OnClickListener
{
  aW(ReaderActivity paramReaderActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.aW
 * JD-Core Version:    0.6.2
 */