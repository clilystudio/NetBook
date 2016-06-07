package com.iflytek.cloud;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class i extends Handler
{
  i(SpeechSynthesizer.a parama, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    if (SpeechSynthesizer.a.a(this.a) == null);
    Message localMessage;
    do
    {
      return;
      switch (paramMessage.what)
      {
      default:
        return;
      case 1:
        SpeechSynthesizer.a.a(this.a).onSpeakBegin();
        return;
      case 2:
        Bundle localBundle = (Bundle)paramMessage.obj;
        int j = localBundle.getInt("percent");
        int k = localBundle.getInt("begpos");
        int m = localBundle.getInt("endpos");
        String str = localBundle.getString("spellinfo");
        SpeechSynthesizer.a.a(this.a).onBufferProgress(j, k, m, str);
        return;
      case 3:
        SpeechSynthesizer.a.a(this.a).onSpeakPaused();
        return;
      case 4:
        SpeechSynthesizer.a.a(this.a).onSpeakResumed();
        return;
      case 5:
        int i = ((Integer)paramMessage.obj).intValue();
        SpeechSynthesizer.a.a(this.a).onSpeakProgress(paramMessage.arg1, paramMessage.arg2, i);
        return;
      case 6:
        SpeechSynthesizer.a.a(this.a).onCompleted((SpeechError)paramMessage.obj);
        return;
      case 7:
      }
      localMessage = (Message)paramMessage.obj;
    }
    while (localMessage == null);
    SpeechSynthesizer.a.a(this.a).onEvent(localMessage.what, localMessage.arg1, localMessage.arg2, (Bundle)localMessage.obj);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.i
 * JD-Core Version:    0.6.0
 */