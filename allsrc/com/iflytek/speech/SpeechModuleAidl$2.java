package com.iflytek.speech;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.InitListener;

class SpeechModuleAidl$2 extends Handler
{
  public void handleMessage(Message paramMessage)
  {
    if (SpeechModuleAidl.access$100(this.this$0) == null)
      return;
    SpeechModuleAidl.access$100(this.this$0).onInit(paramMessage.what);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.SpeechModuleAidl.2
 * JD-Core Version:    0.6.0
 */