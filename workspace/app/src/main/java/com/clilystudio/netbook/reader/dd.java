package com.clilystudio.netbook.reader;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class dd extends WebViewClient
{
  dd(WebPageFragment paramWebPageFragment)
  {
  }

  public final void doUpdateVisitedHistory(WebView paramWebView, String paramString, boolean paramBoolean)
  {
    WebPageFragment.a(this.a);
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    WebPageFragment.c(this.a);
    WebPageFragment.a(this.a);
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    WebPageFragment.b(this.a);
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (!"semob://hidetypesetView".equals(paramString))
      paramWebView.loadUrl(paramString);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.dd
 * JD-Core Version:    0.6.0
 */