package com.iflytek.cloud;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.iflytek.speech.RecognizerListener.Stub;

class e extends RecognizerListener.Stub
{
  e(SpeechRecognizer.a parama, SpeechRecognizer paramSpeechRecognizer)
  {
  }

  public void onBeginOfSpeech()
  {
    Message localMessage = SpeechRecognizer.a.a(this.b).obtainMessage(2);
    SpeechRecognizer.a.a(this.b).sendMessage(localMessage);
  }

  public void onEndOfSpeech()
  {
    Message localMessage = SpeechRecognizer.a.a(this.b).obtainMessage(3);
    SpeechRecognizer.a.a(this.b).sendMessage(localMessage);
  }

  public void onError(int paramInt)
  {
    Message localMessage = SpeechRecognizer.a.a(this.b).obtainMessage(0, new SpeechError(paramInt));
    SpeechRecognizer.a.a(this.b).sendMessage(localMessage);
  }

  public void onEvent(int paramInt1, int paramInt2, int paramInt3, Bundle paramBundle)
  {
    Message localMessage1 = new Message();
    localMessage1.what = paramInt1;
    localMessage1.arg1 = paramInt2;
    localMessage1.arg2 = paramInt3;
    localMessage1.obj = paramBundle;
    Message localMessage2 = SpeechRecognizer.a.a(this.b).obtainMessage(6, 0, 0, localMessage1);
    SpeechRecognizer.a.a(this.b).sendMessage(localMessage2);
  }

  public void onResult(com.iflytek.speech.RecognizerResult paramRecognizerResult, boolean paramBoolean)
  {
    boolean bool = true;
    Handler localHandler = SpeechRecognizer.a.a(this.b);
    if (paramBoolean == bool);
    while (true)
    {
      Message localMessage = localHandler.obtainMessage(4, bool, 0, new RecognizerResult(paramRecognizerResult.getResultString()));
      SpeechRecognizer.a.a(this.b).sendMessage(localMessage);
      return;
      bool = false;
    }
  }

  public void onVolumeChanged(int paramInt, byte[] paramArrayOfByte)
  {
    Message localMessage = SpeechRecognizer.a.a(this.b).obtainMessage(1, paramInt, 0, paramArrayOfByte);
    SpeechRecognizer.a.a(this.b).sendMessage(localMessage);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.e
 * JD-Core Version:    0.6.0
 */