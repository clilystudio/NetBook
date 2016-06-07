package com.clilystudio.netbook.ui.home;

import android.webkit.WebView;
import android.webkit.WebViewClient;

final class b extends WebViewClient
{
  b(HomeActivity paramHomeActivity)
  {
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView.loadUrl(paramString);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.home.b
 * JD-Core Version:    0.6.0
 */