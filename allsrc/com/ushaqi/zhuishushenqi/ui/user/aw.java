package com.ushaqi.zhuishushenqi.ui.user;

import android.os.Handler;
import android.os.Message;
import java.util.TimerTask;

final class aw extends TimerTask
{
  aw(SmsVerifyActivity paramSmsVerifyActivity)
  {
  }

  public final void run()
  {
    if (SmsVerifyActivity.b(this.a) > 0)
      SmsVerifyActivity.c(this.a);
    Message localMessage = new Message();
    localMessage.what = 1;
    localMessage.arg1 = SmsVerifyActivity.b(this.a);
    this.a.a.sendMessage(localMessage);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.aw
 * JD-Core Version:    0.6.0
 */