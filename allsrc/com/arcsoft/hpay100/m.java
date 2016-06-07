package com.arcsoft.hpay100;

import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.arcsoft.hpay100.c.b;
import com.arcsoft.hpay100.config.l;

final class m
  implements View.OnClickListener
{
  m(HPaySdkActivity paramHPaySdkActivity)
  {
  }

  public final void onClick(View paramView)
  {
    String str = HPaySdkActivity.p(this.a).getText().toString();
    com.arcsoft.hpay100.a.a.b("dalongTest", "input:" + str);
    if (TextUtils.isEmpty(str))
    {
      HPaySdkActivity.a(this.a, HPaySdkActivity.d(this.a), false);
      HPaySdkActivity.c(this.a).setText("您输入的手机号有误，请核对后再试");
      HPaySdkActivity.q(this.a).setEnabled(false);
      return;
    }
    if (!b.a(str))
    {
      HPaySdkActivity.a(this.a, HPaySdkActivity.d(this.a), false);
      HPaySdkActivity.c(this.a).setText("您输入的手机号有误，请核对后再试");
      HPaySdkActivity.q(this.a).setEnabled(false);
      return;
    }
    HPaySdkActivity.c(this.a).setText("");
    HPaySdkActivity.a(this.a, HPaySdkActivity.d(this.a), true);
    HPaySdkActivity.b(this.a, str);
    HPaySdkActivity.a(this.a, "正在获取验证码，请稍后");
    l.a(this.a, HPaySdkActivity.e(this.a), HPaySdkActivity.a(), HPaySdkActivity.f(this.a), HPaySdkActivity.g(this.a), HPaySdkActivity.i(this.a), HPaySdkActivity.r(this.a), HPaySdkActivity.s(this.a), new u(this.a, 3));
    com.arcsoft.hpay100.config.a.a(this.a.getApplicationContext(), HPaySdkActivity.e(this.a), HPaySdkActivity.a(), HPaySdkActivity.f(this.a), HPaySdkActivity.g(this.a), "1", "", 3);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.m
 * JD-Core Version:    0.6.0
 */