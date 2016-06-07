package com.iflytek.cloud;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class o extends Handler
{
  o(TextUnderstander.a parama, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    if (TextUnderstander.a.c(this.a) == null)
      return;
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 4:
    }
    while (true)
    {
      super.handleMessage(paramMessage);
      return;
      TextUnderstander.a.c(this.a).onError((SpeechError)paramMessage.obj);
      continue;
      TextUnderstander.a.c(this.a).onResult((UnderstanderResult)paramMessage.obj);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.o
 * JD-Core Version:    0.6.0
 */