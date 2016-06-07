package com.ushaqi.zhuishushenqi.reader.txt;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class o
  implements DialogInterface.OnClickListener
{
  o(ReaderTxtActivity paramReaderTxtActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.txt.o
 * JD-Core Version:    0.6.0
 */