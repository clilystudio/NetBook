package com.iflytek.cloud;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class SpeechUnderstander$a
  implements SpeechUnderstanderListener
{
  private SpeechUnderstanderListener b = null;
  private com.iflytek.speech.SpeechUnderstanderListener c = null;
  private Handler d = new l(this, Looper.getMainLooper());

  public SpeechUnderstander$a(SpeechUnderstander paramSpeechUnderstander, SpeechUnderstanderListener paramSpeechUnderstanderListener)
  {
    this.b = paramSpeechUnderstanderListener;
    this.c = new k(this, paramSpeechUnderstander);
  }

  public final void onBeginOfSpeech()
  {
    Message localMessage = this.d.obtainMessage(2, 0, 0, null);
    this.d.sendMessage(localMessage);
  }

  public final void onEndOfSpeech()
  {
    Message localMessage = this.d.obtainMessage(3, 0, 0, null);
    this.d.sendMessage(localMessage);
  }

  public final void onError(SpeechError paramSpeechError)
  {
    Message localMessage = this.d.obtainMessage(0, paramSpeechError);
    this.d.sendMessage(localMessage);
  }

  public final void onEvent(int paramInt1, int paramInt2, int paramInt3, Bundle paramBundle)
  {
    Message localMessage1 = new Message();
    localMessage1.what = paramInt1;
    localMessage1.arg1 = paramInt2;
    localMessage1.arg2 = paramInt3;
    localMessage1.obj = paramBundle;
    Message localMessage2 = this.d.obtainMessage(6, 0, 0, localMessage1);
    this.d.sendMessage(localMessage2);
  }

  public final void onResult(UnderstanderResult paramUnderstanderResult)
  {
    Message localMessage = this.d.obtainMessage(4, paramUnderstanderResult);
    this.d.sendMessage(localMessage);
  }

  public final void onVolumeChanged(int paramInt, byte[] paramArrayOfByte)
  {
    Message localMessage = this.d.obtainMessage(1, paramInt, 0, paramArrayOfByte);
    this.d.sendMessage(localMessage);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.SpeechUnderstander.a
 * JD-Core Version:    0.6.0
 */