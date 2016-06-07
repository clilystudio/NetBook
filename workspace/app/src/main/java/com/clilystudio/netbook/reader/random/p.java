package com.clilystudio.netbook.reader.random;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class p
  implements DialogInterface.OnCancelListener
{
  p(ReaderRandomActivity paramReaderRandomActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    this.a.finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.random.p
 * JD-Core Version:    0.6.0
 */