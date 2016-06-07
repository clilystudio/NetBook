package com.alipay.sdk.auth;

import android.text.TextUtils;
import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;

final class a extends WebChromeClient
{
  private a(AuthActivity paramAuthActivity)
  {
  }

  public final boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
  {
    String str1 = paramConsoleMessage.message();
    if (TextUtils.isEmpty(str1))
      return super.onConsoleMessage(paramConsoleMessage);
    boolean bool = str1.startsWith("h5container.message: ");
    String str2 = null;
    if (bool)
      str2 = str1.replaceFirst("h5container.message: ", "");
    if (TextUtils.isEmpty(str2))
      return super.onConsoleMessage(paramConsoleMessage);
    AuthActivity.b(this.a, str2);
    return super.onConsoleMessage(paramConsoleMessage);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.auth.a
 * JD-Core Version:    0.6.0
 */