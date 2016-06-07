package com.iflytek.cloud;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class f extends Handler
{
  f(SpeechRecognizer.a parama, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    int i = 1;
    if (SpeechRecognizer.a.b(this.a) == null)
      return;
    switch (paramMessage.what)
    {
    case 5:
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    }
    while (true)
    {
      super.handleMessage(paramMessage);
      return;
      SpeechRecognizer.a.b(this.a).onError((SpeechError)paramMessage.obj);
      continue;
      SpeechRecognizer.a.b(this.a).onVolumeChanged(paramMessage.arg1, (byte[])paramMessage.obj);
      continue;
      SpeechRecognizer.a.b(this.a).onBeginOfSpeech();
      continue;
      SpeechRecognizer.a.b(this.a).onEndOfSpeech();
      continue;
      RecognizerListener localRecognizerListener = SpeechRecognizer.a.b(this.a);
      RecognizerResult localRecognizerResult = (RecognizerResult)paramMessage.obj;
      if (paramMessage.arg1 == i);
      while (true)
      {
        localRecognizerListener.onResult(localRecognizerResult, i);
        break;
        int j = 0;
      }
      Message localMessage = (Message)paramMessage.obj;
      SpeechRecognizer.a.b(this.a).onEvent(localMessage.what, localMessage.arg1, localMessage.arg2, (Bundle)localMessage.obj);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.f
 * JD-Core Version:    0.6.0
 */