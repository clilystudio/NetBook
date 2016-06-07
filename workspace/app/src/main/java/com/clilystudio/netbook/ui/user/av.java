package com.clilystudio.netbook.ui.user;

import android.os.Handler;
import android.os.Message;

final class av extends Handler
{
  av(SmsVerifyActivity paramSmsVerifyActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 1:
    }
    SmsVerifyActivity.a(this.a, paramMessage.arg1);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.av
 * JD-Core Version:    0.6.0
 */