package com.ushaqi.zhuishushenqi.ui;

import android.os.CountDownTimer;
import android.widget.TextView;
import java.util.Date;

final class bo extends CountDownTimer
{
  bo(MysteryActivity paramMysteryActivity, long paramLong1, long paramLong2, long paramLong3)
  {
    super(paramLong1, 1000L);
  }

  public final void onFinish()
  {
    MysteryActivity.c(this.b);
  }

  public final void onTick(long paramLong)
  {
    MysteryActivity.a(this.b, new Date().getTime());
    long l = paramLong - this.a;
    if (l > 0L)
    {
      MysteryActivity.b(this.b).setText(String.valueOf(l / 1000L));
      return;
    }
    MysteryActivity.c(this.b);
    MysteryActivity.d(this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bo
 * JD-Core Version:    0.6.0
 */