package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.squareup.a.b;
import com.clilystudio.netbook.event.d;
import com.clilystudio.netbook.event.i;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.bd
 * JD-Core Version:    0.6.0
 */