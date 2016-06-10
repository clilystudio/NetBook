package com.clilystudio.netbook.hpay100.web;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.clilystudio.netbook.hpay100.a_Pack.a;

final class j extends WebChromeClient
{
  j(HPayWebView paramHPayWebView)
  {
  }

  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    a.b("dalongTest", "onProgressChanged:" + paramInt);
    if (HPayWebView.a(this.a) != null)
      HPayWebView.a(this.a).a(5, Integer.valueOf(paramInt));
  }

  public final void onReceivedTitle(WebView paramWebView, String paramString)
  {
    super.onReceivedTitle(paramWebView, paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.web.j
 * JD-Core Version:    0.6.0
 */