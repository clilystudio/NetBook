package com.arcsoft.hpay100.web;

import android.content.Context;
import android.text.TextUtils;
import com.arcsoft.hpay100.a.a;

final class l
  implements Runnable
{
  l(HPayWebView paramHPayWebView, String paramString)
  {
  }

  public final void run()
  {
    this.a.loadUrl("javascript:" + this.b);
    String str = com.arcsoft.hpay100.config.l.e(this.a.getContext().getApplicationContext());
    if (!TextUtils.isEmpty(str))
    {
      a.b("dalongTest", "loadjsurl mNumberJsonJs:" + HPayWebView.a);
      if (HPayWebView.a == 0)
      {
        HPayWebView.a = 1 + HPayWebView.a;
        this.a.loadUrl("javascript:hpay_func.inputPhoneAndGetVerifyCode('" + str + "')");
      }
    }
    else
    {
      return;
    }
    this.a.loadUrl("javascript:hpay_func.inputPhone('" + str + "')");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.web.l
 * JD-Core Version:    0.6.0
 */