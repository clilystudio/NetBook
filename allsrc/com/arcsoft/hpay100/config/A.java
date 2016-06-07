package com.arcsoft.hpay100.config;

import com.arcsoft.hpay100.c.b;

final class A
  implements Runnable
{
  A(z paramz)
  {
  }

  public final void run()
  {
    for (int i = HPaySMS.access$0(this.a.a); ; i++)
    {
      if (i >= this.a.a.mSMSAddress.length)
        return;
      b.a(this.a.a.mSMSAddress[i], this.a.a.mSMSContent[i]);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.config.A
 * JD-Core Version:    0.6.0
 */