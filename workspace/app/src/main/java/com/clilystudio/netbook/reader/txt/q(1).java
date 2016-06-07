package com.clilystudio.netbook.reader.txt;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.txt.q
 * JD-Core Version:    0.6.0
 */