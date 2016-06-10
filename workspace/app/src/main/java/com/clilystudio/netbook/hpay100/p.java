package com.clilystudio.netbook.hpay100;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.clilystudio.netbook.hpay100.config.b;

final class p
  implements View.OnClickListener
{
  p(HPaySdkActivity paramHPaySdkActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (HPaySdkActivity.m(this.a))
    {
      HPaySdkActivity.b(this.a, 5);
      return;
    }
    b.a(null);
    HPaySdkActivity.a(this.a, true);
    HPaySdkActivity.t(this.a);
    HPaySdkActivity.p(this.a).setEnabled(true);
    HPaySdkActivity.u(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.p
 * JD-Core Version:    0.6.0
 */