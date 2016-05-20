package com.clilystudio.app.netbook.reader.txt;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class q
  implements DialogInterface.OnCancelListener
{
  q(ReaderTxtActivity paramReaderTxtActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.finish();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.q
 * JD-Core Version:    0.6.2
 */