package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;

final class aQ
  implements DialogInterface.OnDismissListener
{
  aQ(ReaderActivity paramReaderActivity)
  {
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    ReaderActivity.e(this.a, false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.aQ
 * JD-Core Version:    0.6.0
 */