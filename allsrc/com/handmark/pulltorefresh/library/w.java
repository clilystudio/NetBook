package com.handmark.pulltorefresh.library;

import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class w extends WebChromeClient
{
  w(PullToRefreshWebView paramPullToRefreshWebView)
  {
  }

  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if (paramInt == 100)
      this.a.n();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.handmark.pulltorefresh.library.w
 * JD-Core Version:    0.6.0
 */