package com.xiaomi.mistatistic.sdk;

import android.webkit.WebView;
import android.webkit.WebViewClient;

public class MIWebView extends WebView
{
  public void setWebViewClient(WebViewClient paramWebViewClient)
  {
    super.setWebViewClient(new e(this, paramWebViewClient));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.MIWebView
 * JD-Core Version:    0.6.0
 */