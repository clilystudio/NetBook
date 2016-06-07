package com.ushaqi.zhuishushenqi.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class aO
  implements DialogInterface.OnClickListener
{
  aO(ReaderActivity paramReaderActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ReaderActivity.h(this.a, paramInt);
    ReaderActivity.ab(this.a).dismiss();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.aO
 * JD-Core Version:    0.6.0
 */