package com.clilystudio.app.netbook.reader;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.ao
 * JD-Core Version:    0.6.2
 */