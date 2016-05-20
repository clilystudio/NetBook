package com.clilystudio.app.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.squareup.a.b;
import com.clilystudio.app.netbook.event.d;
import com.clilystudio.app.netbook.event.i;

final class bd
  implements DialogInterface.OnClickListener
{
  bd(ReaderActivity paramReaderActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    i.a().c(new d(ReaderActivity.M(this.a), 3));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.bd
 * JD-Core Version:    0.6.2
 */