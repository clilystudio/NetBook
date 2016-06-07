package com.arcsoft.hpay100.web;

import android.text.TextUtils;
import com.arcsoft.hpay100.a.a;
import com.arcsoft.hpay100.c.b;
import com.arcsoft.hpay100.config.HPaySMS;
import com.arcsoft.hpay100.config.j;

final class h
  implements j
{
  h(HPayWebActivity paramHPayWebActivity)
  {
  }

  public final void a()
  {
    String str1 = "";
    try
    {
      if (HPayWebActivity.f(this.a) != null)
        str1 = HPayWebActivity.f(this.a).mYzmRegx;
      String str2 = b.a(this.a.getApplicationContext(), str1);
      if ((!TextUtils.isEmpty(str2)) && (HPayWebActivity.e(this.a) != null))
      {
        a.b("dalongTest", "change yzm11:" + str2);
        HPayWebActivity.e(this.a).loadUrl("javascript:hpay_func.inputVerifyCode('" + str2 + "')");
        a.b("dalongTest", "change yzm22:" + str2);
        HPayWebActivity.e(this.a).loadUrl("javascript:IYUE.returVerifyCode('" + str2 + "')");
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.web.h
 * JD-Core Version:    0.6.0
 */