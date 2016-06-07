package com.iflytek.cloud;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class b extends Handler
{
  b(SpeechRecognizer paramSpeechRecognizer, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    if (SpeechRecognizer.a(this.a) == null)
      return;
    SpeechRecognizer.a(this.a).onInit(0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.b
 * JD-Core Version:    0.6.0
 */