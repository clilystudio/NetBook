package com.clilystudio.app.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class aP
  implements DialogInterface.OnCancelListener
{
  aP(ReaderActivity paramReaderActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if ((ReaderActivity.O(this.a)) && (!ReaderActivity.ac(this.a)))
      this.a.finish();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.aP
 * JD-Core Version:    0.6.2
 */