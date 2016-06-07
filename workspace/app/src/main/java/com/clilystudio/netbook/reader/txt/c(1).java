package com.clilystudio.netbook.reader.txt;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.arcsoft.hpay100.a.a;
import com.iflytek.cloud.SpeechUtility;

final class c
  implements DialogInterface.OnClickListener
{
  c(ReaderTxtActivity paramReaderTxtActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = SpeechUtility.getUtility().getComponentUrl();
    ReaderTxtActivity.a = str;
    a.a(str, this.a, "朗读插件");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.txt.c
 * JD-Core Version:    0.6.0
 */