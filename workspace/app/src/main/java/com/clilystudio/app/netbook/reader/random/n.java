package com.clilystudio.app.netbook.reader.random;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class n
  implements DialogInterface.OnClickListener
{
  n(ReaderRandomActivity paramReaderRandomActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ReaderRandomActivity.t(this.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.random.n
 * JD-Core Version:    0.6.2
 */