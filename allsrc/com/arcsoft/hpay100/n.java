package com.arcsoft.hpay100;

import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import com.arcsoft.hpay100.config.HPaySMS;
import com.arcsoft.hpay100.config.l;

final class n
  implements View.OnClickListener
{
  n(HPaySdkActivity paramHPaySdkActivity)
  {
  }

  public final void onClick(View paramView)
  {
    String str = HPaySdkActivity.n(this.a).getText().toString();
    if (TextUtils.isEmpty(str))
    {
      HPaySdkActivity.k(this.a).setText("验证码不能为空");
      return;
    }
    HPaySdkActivity.a(this.a, "支付进行中，请您耐心等待");
    l.a(this.a, HPaySdkActivity.h(this.a).mOrderidHR, str, new w(this.a, 4));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.n
 * JD-Core Version:    0.6.0
 */