package com.alipay.sdk.auth;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class b extends WebViewClient
{
  private b(AuthActivity paramAuthActivity)
  {
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    AuthActivity.g(this.a);
    AuthActivity.f(this.a).removeCallbacks(AuthActivity.e(this.a));
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    AuthActivity.d(this.a);
    AuthActivity.f(this.a).postDelayed(AuthActivity.e(this.a), 30000L);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    AuthActivity.a(this.a);
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }

  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    if (AuthActivity.b(this.a))
    {
      paramSslErrorHandler.proceed();
      AuthActivity.a(this.a, false);
      return;
    }
    this.a.runOnUiThread(new g(this, paramSslErrorHandler));
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (AuthActivity.a(this.a, paramString))
    {
      paramWebView.stopLoading();
      return true;
    }
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.auth.b
 * JD-Core Version:    0.6.0
 */