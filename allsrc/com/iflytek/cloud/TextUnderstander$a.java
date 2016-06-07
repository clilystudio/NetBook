package com.iflytek.cloud;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class TextUnderstander$a
  implements TextUnderstanderListener
{
  private TextUnderstanderListener b = null;
  private com.iflytek.speech.TextUnderstanderListener c = null;
  private Handler d = new o(this, Looper.getMainLooper());

  public TextUnderstander$a(TextUnderstander paramTextUnderstander, TextUnderstanderListener paramTextUnderstanderListener)
  {
    this.b = paramTextUnderstanderListener;
    this.c = new n(this, paramTextUnderstander);
  }

  public final void onError(SpeechError paramSpeechError)
  {
    Message localMessage = this.d.obtainMessage(0, paramSpeechError);
    this.d.sendMessage(localMessage);
  }

  public final void onResult(UnderstanderResult paramUnderstanderResult)
  {
    Message localMessage = this.d.obtainMessage(4, paramUnderstanderResult);
    this.d.sendMessage(localMessage);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.TextUnderstander.a
 * JD-Core Version:    0.6.0
 */