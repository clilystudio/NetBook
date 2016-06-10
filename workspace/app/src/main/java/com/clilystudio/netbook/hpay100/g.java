package com.clilystudio.netbook.hpay100;

import android.view.View;
import android.view.View.OnClickListener;

final class g
  implements View.OnClickListener
{
  g(HPaySdkActivity paramHPaySdkActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (HPaySdkActivity.o(this.a) != null)
    {
      HPaySdkActivity.a(this.a, "支付进行中,请您耐心等待");
      HPaySdkActivity.a(this.a, HPaySdkActivity.o(this.a), 2);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.g
 * JD-Core Version:    0.6.0
 */