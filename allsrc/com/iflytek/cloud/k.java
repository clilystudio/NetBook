package com.iflytek.cloud;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.iflytek.speech.SpeechUnderstanderListener.Stub;

class k extends SpeechUnderstanderListener.Stub
{
  k(SpeechUnderstander.a parama, SpeechUnderstander paramSpeechUnderstander)
  {
  }

  public void onBeginOfSpeech()
  {
    Message localMessage = SpeechUnderstander.a.b(this.b).obtainMessage(2);
    SpeechUnderstander.a.b(this.b).sendMessage(localMessage);
  }

  public void onEndOfSpeech()
  {
    Message localMessage = SpeechUnderstander.a.b(this.b).obtainMessage(3);
    SpeechUnderstander.a.b(this.b).sendMessage(localMessage);
  }

  public void onError(int paramInt)
  {
    Message localMessage = SpeechUnderstander.a.b(this.b).obtainMessage(0, new SpeechError(paramInt));
    SpeechUnderstander.a.b(this.b).sendMessage(localMessage);
  }

  public void onEvent(int paramInt1, int paramInt2, int paramInt3, Bundle paramBundle)
  {
    Message localMessage1 = new Message();
    localMessage1.what = paramInt1;
    localMessage1.arg1 = paramInt2;
    localMessage1.arg2 = paramInt3;
    localMessage1.obj = paramBundle;
    Message localMessage2 = SpeechUnderstander.a.b(this.b).obtainMessage(6, 0, 0, localMessage1);
    SpeechUnderstander.a.b(this.b).sendMessage(localMessage2);
  }

  public void onResult(com.iflytek.speech.UnderstanderResult paramUnderstanderResult)
  {
    Message localMessage = SpeechUnderstander.a.b(this.b).obtainMessage(4, new UnderstanderResult(paramUnderstanderResult.getResultString()));
    SpeechUnderstander.a.b(this.b).sendMessage(localMessage);
  }

  public void onVolumeChanged(int paramInt, byte[] paramArrayOfByte)
  {
    Message localMessage = SpeechUnderstander.a.b(this.b).obtainMessage(1, paramInt, 0, paramArrayOfByte);
    SpeechUnderstander.a.b(this.b).sendMessage(localMessage);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.k
 * JD-Core Version:    0.6.0
 */