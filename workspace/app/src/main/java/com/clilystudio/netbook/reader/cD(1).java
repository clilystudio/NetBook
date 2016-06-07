package com.clilystudio.netbook.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class cD
  implements DialogInterface.OnClickListener
{
  cD(ReaderWebActivity paramReaderWebActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ReaderWebActivity.c(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.cD
 * JD-Core Version:    0.6.0
 */