package com.ushaqi.zhuishushenqi.reader.random;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.random.n
 * JD-Core Version:    0.6.0
 */