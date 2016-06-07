package com.arcsoft.hpay100;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.arcsoft.hpay100.config.l;

final class o
  implements View.OnClickListener
{
  o(HPaySdkActivity paramHPaySdkActivity)
  {
  }

  public final void onClick(View paramView)
  {
    HPaySdkActivity.a(this.a, "正在获取验证码，请稍后");
    HPaySdkActivity.k(this.a).setText("");
    l.a(this.a, HPaySdkActivity.e(this.a), HPaySdkActivity.a(), HPaySdkActivity.f(this.a), HPaySdkActivity.g(this.a), HPaySdkActivity.i(this.a), HPaySdkActivity.r(this.a), HPaySdkActivity.s(this.a), new v(this.a, 4));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.o
 * JD-Core Version:    0.6.0
 */