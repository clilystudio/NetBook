package com.ushaqi.zhuishushenqi.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class aW
  implements DialogInterface.OnClickListener
{
  aW(ReaderActivity paramReaderActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    this.a.finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.aW
 * JD-Core Version:    0.6.0
 */