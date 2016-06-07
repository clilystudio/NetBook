package com.iflytek.cloud;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class l extends Handler
{
  l(SpeechUnderstander.a parama, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    if (SpeechUnderstander.a.c(this.a) == null)
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
      SpeechUnderstander.a.c(this.a).onError((SpeechError)paramMessage.obj);
      continue;
      SpeechUnderstander.a.c(this.a).onVolumeChanged(paramMessage.arg1, (byte[])paramMessage.obj);
      continue;
      SpeechUnderstander.a.c(this.a).onBeginOfSpeech();
      continue;
      SpeechUnderstander.a.c(this.a).onEndOfSpeech();
      continue;
      SpeechUnderstander.a.c(this.a).onResult((UnderstanderResult)paramMessage.obj);
      continue;
      Message localMessage = (Message)paramMessage.obj;
      SpeechUnderstander.a.c(this.a).onEvent(localMessage.what, localMessage.arg1, localMessage.arg2, (Bundle)localMessage.obj);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.l
 * JD-Core Version:    0.6.0
 */