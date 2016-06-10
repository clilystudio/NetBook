package com.clilystudio.netbook.hpay100;

import android.os.CountDownTimer;
import android.widget.Button;

final class x extends CountDownTimer
{
  public x(HPaySdkActivity paramHPaySdkActivity, long paramLong1, long paramLong2)
  {
    super(60000L, 1000L);
  }

  public final void onFinish()
  {
    HPaySdkActivity.a(this.a).setEnabled(true);
    HPaySdkActivity.a(this.a).setText("重新发送");
  }

  public final void onTick(long paramLong)
  {
    HPaySdkActivity.a(this.a).setEnabled(false);
    HPaySdkActivity.a(this.a).setText("重新发送(" + paramLong / 1000L + ")");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.x
 * JD-Core Version:    0.6.0
 */