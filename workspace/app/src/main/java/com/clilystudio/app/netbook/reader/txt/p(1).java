package com.clilystudio.app.netbook.reader.txt;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class p
  implements DialogInterface.OnClickListener
{
  p(ReaderTxtActivity paramReaderTxtActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ReaderTxtActivity.J(this.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.p
 * JD-Core Version:    0.6.2
 */