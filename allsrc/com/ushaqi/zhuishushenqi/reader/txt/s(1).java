package com.ushaqi.zhuishushenqi.reader.txt;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ushaqi.zhuishushenqi.reader.ReaderTocDialog;

final class s
  implements DialogInterface.OnClickListener
{
  s(ReaderTxtActivity paramReaderTxtActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ReaderTxtActivity.e(this.a, paramInt);
    ReaderTxtActivity.K(this.a).dismiss();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.txt.s
 * JD-Core Version:    0.6.0
 */