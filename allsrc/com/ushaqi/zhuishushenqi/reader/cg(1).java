package com.ushaqi.zhuishushenqi.reader;

import android.view.View;
import android.view.View.OnClickListener;
import com.iflytek.cloud.SpeechUtility;

final class cg
  implements View.OnClickListener
{
  cg(ReaderTtsSetWidget paramReaderTtsSetWidget)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.setVisibility(8);
    ReaderTtsSetWidget.a(this.a).b();
    SpeechUtility.getUtility().openEngineSettings("tts");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.cg
 * JD-Core Version:    0.6.0
 */