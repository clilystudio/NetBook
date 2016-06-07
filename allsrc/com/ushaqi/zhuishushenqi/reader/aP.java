package com.ushaqi.zhuishushenqi.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

final class aP
  implements DialogInterface.OnCancelListener
{
  aP(ReaderActivity paramReaderActivity)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    if ((ReaderActivity.O(this.a)) && (!ReaderActivity.ac(this.a)))
      this.a.finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.aP
 * JD-Core Version:    0.6.0
 */