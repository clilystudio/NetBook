package com.alipay.sdk.auth;

import android.webkit.WebView;

final class e
  implements Runnable
{
  e(AuthActivity paramAuthActivity, String paramString)
  {
  }

  public final void run()
  {
    try
    {
      AuthActivity.h(this.b).loadUrl("javascript:" + this.a);
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.auth.e
 * JD-Core Version:    0.6.0
 */