package com.ushaqi.zhuishushenqi.reader;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.arcsoft.hpay100.a.a;
import com.iflytek.cloud.SpeechUtility;

final class ao
  implements DialogInterface.OnClickListener
{
  ao(ReaderActivity paramReaderActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = SpeechUtility.getUtility().getComponentUrl();
    ReaderActivity.a = str;
    a.a(str, this.a, "朗读插件");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.ao
 * JD-Core Version:    0.6.0
 */