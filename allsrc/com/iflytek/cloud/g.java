package com.iflytek.cloud;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class g extends Handler
{
  g(SpeechSynthesizer paramSpeechSynthesizer, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    if (this.a.a == null)
      return;
    this.a.a.onInit(0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.g
 * JD-Core Version:    0.6.0
 */