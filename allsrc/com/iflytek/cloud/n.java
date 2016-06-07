package com.iflytek.cloud;

import android.os.Handler;
import android.os.Message;
import com.iflytek.speech.TextUnderstanderListener.Stub;

class n extends TextUnderstanderListener.Stub
{
  n(TextUnderstander.a parama, TextUnderstander paramTextUnderstander)
  {
  }

  public void onError(int paramInt)
  {
    Message localMessage = TextUnderstander.a.b(this.b).obtainMessage(0, new SpeechError(paramInt));
    TextUnderstander.a.b(this.b).sendMessage(localMessage);
  }

  public void onResult(com.iflytek.speech.UnderstanderResult paramUnderstanderResult)
  {
    Message localMessage = TextUnderstander.a.b(this.b).obtainMessage(4, new UnderstanderResult(paramUnderstanderResult.getResultString()));
    TextUnderstander.a.b(this.b).sendMessage(localMessage);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.n
 * JD-Core Version:    0.6.0
 */