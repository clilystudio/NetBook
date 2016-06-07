package com.iflytek.cloud;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class m extends Handler
{
  m(TextUnderstander paramTextUnderstander, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    if (TextUnderstander.a(this.a) == null)
      return;
    TextUnderstander.a(this.a).onInit(0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.m
 * JD-Core Version:    0.6.0
 */