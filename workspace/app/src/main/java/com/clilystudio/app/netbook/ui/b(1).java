package com.clilystudio.app.netbook.ui;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class b extends WebViewClient
{
  b(AdWebViewActivity paramAdWebViewActivity)
  {
  }

  public final void doUpdateVisitedHistory(WebView paramWebView, String paramString, boolean paramBoolean)
  {
    AdWebViewActivity.b(this.a);
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    AdWebViewActivity.d(this.a);
    AdWebViewActivity.b(this.a);
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    AdWebViewActivity.c(this.a);
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if ((paramString.startsWith("http:")) || (paramString.startsWith("https:")))
      paramWebView.loadUrl(paramString);
    return true;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.b
 * JD-Core Version:    0.6.2
 */