package com.arcsoft.hpay100.config;

import android.content.Context;
import android.os.Handler;
import com.arcsoft.hpay100.y;

final class z
  implements f
{
  z(HPaySMS paramHPaySMS, y paramy, Context paramContext, int paramInt, Handler paramHandler)
  {
  }

  public final void a(int paramInt)
  {
    if (paramInt == 1)
    {
      com.arcsoft.hpay100.a.a.b("dalongTest", "sms send success");
      if (this.b != null)
      {
        com.arcsoft.hpay100.z localz3 = a.a(this.a);
        this.b.a(localz3);
      }
      a.c(this.c, this.a.mOrderidAPP, this.a.mOrderidHR, this.a.mScheme, this.a.mPayId, this.a.mChType, this.a.mChID, this.a.mAmount, "1", "", this.d);
      com.arcsoft.hpay100.a.a.b("dalongTest", "mSendIndex:" + HPaySMS.access$0(this.a));
      com.arcsoft.hpay100.a.a.b("dalongTest", "mSMSAddress.length:" + this.a.mSMSAddress.length);
      try
      {
        if ((HPaySMS.access$0(this.a) < this.a.mSMSAddress.length) && (this.e != null))
          this.e.postDelayed(new A(this), 1000 * this.a.mIntervalTimes);
        l.c(this.c.getApplicationContext());
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
    com.arcsoft.hpay100.a.a.b("dalongTest", "sms send failed");
    if (paramInt == 2)
    {
      com.arcsoft.hpay100.z localz2 = a.a(this.a, 6104, "短信发送超时");
      if (this.b != null)
        this.b.a(localz2);
      a.c(this.c, this.a.mOrderidAPP, this.a.mOrderidHR, this.a.mScheme, this.a.mPayId, this.a.mChType, this.a.mChID, this.a.mAmount, "2", "6104", this.d);
    }
    while (true)
    {
      l.a(this.c.getApplicationContext(), 1);
      return;
      com.arcsoft.hpay100.z localz1 = a.a(this.a, 6101, "短信发送失败");
      if (this.b != null)
        this.b.a(localz1);
      a.c(this.c, this.a.mOrderidAPP, this.a.mOrderidHR, this.a.mScheme, this.a.mPayId, this.a.mChType, this.a.mChID, this.a.mAmount, "2", "6101", this.d);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.config.z
 * JD-Core Version:    0.6.0
 */