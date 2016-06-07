package com.iflytek.cloud;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class SpeechRecognizer$a
  implements RecognizerListener
{
  private RecognizerListener b = null;
  private com.iflytek.speech.RecognizerListener c = null;
  private Handler d = new f(this, Looper.getMainLooper());

  public SpeechRecognizer$a(SpeechRecognizer paramSpeechRecognizer, RecognizerListener paramRecognizerListener)
  {
    this.b = paramRecognizerListener;
    this.c = new e(this, paramSpeechRecognizer);
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

  public final void onResult(RecognizerResult paramRecognizerResult, boolean paramBoolean)
  {
    boolean bool = true;
    Handler localHandler = this.d;
    if (paramBoolean == bool);
    while (true)
    {
      Message localMessage = localHandler.obtainMessage(4, bool, 0, paramRecognizerResult);
      this.d.sendMessage(localMessage);
      return;
      bool = false;
    }
  }

  public final void onVolumeChanged(int paramInt, byte[] paramArrayOfByte)
  {
    Message localMessage = this.d.obtainMessage(1, paramInt, 0, paramArrayOfByte);
    this.d.sendMessage(localMessage);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.SpeechRecognizer.a
 * JD-Core Version:    0.6.0
 */