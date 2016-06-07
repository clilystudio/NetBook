package com.iflytek.cloud;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class j extends Handler
{
  j(SpeechUnderstander paramSpeechUnderstander, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    if (SpeechUnderstander.a(this.a) == null)
      return;
    SpeechUnderstander.a(this.a).onInit(0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.j
 * JD-Core Version:    0.6.0
 */