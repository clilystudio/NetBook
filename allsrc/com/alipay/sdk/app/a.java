package com.alipay.sdk.app;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.URLDecoder;

final class a extends WebViewClient
{
  private a(H5AuthActivity paramH5AuthActivity)
  {
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    H5AuthActivity.f(this.a);
    H5AuthActivity.e(this.a).removeCallbacks(H5AuthActivity.d(this.a));
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    H5AuthActivity.c(this.a);
    H5AuthActivity.e(this.a).postDelayed(H5AuthActivity.d(this.a), 30000L);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    H5AuthActivity.a(this.a);
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }

  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    if (H5AuthActivity.b(this.a))
    {
      paramSslErrorHandler.proceed();
      H5AuthActivity.a(this.a, false);
      return;
    }
    this.a.runOnUiThread(new e(this, paramSslErrorHandler));
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if ((TextUtils.equals(paramString, "sdklite://h5quit")) || (TextUtils.equals(paramString, "http://m.alipay.com/?action=h5quit")))
    {
      o.a = o.a();
      this.a.finish();
      return true;
    }
    if (paramString.startsWith("sdklite://h5quit?result="))
      try
      {
        String str1 = paramString.substring(24 + paramString.indexOf("sdklite://h5quit?result="));
        int i = Integer.parseInt(str1.substring(10 + str1.lastIndexOf("&end_code=")));
        if (i == m.a.a())
        {
          String str2 = URLDecoder.decode(paramString);
          String str3 = str2.substring(24 + str2.indexOf("sdklite://h5quit?result="), str2.lastIndexOf("&end_code="));
          m localm2 = m.a(i);
          o.a = o.a(localm2.a(), localm2.b(), str3);
        }
        while (true)
        {
          h localh = new h(this);
          this.a.runOnUiThread(localh);
          return true;
          m localm1 = m.a(m.b.a());
          o.a = o.a(localm1.a(), localm1.b(), "");
        }
      }
      catch (Exception localException)
      {
        while (true)
          o.a = o.b();
      }
    paramWebView.loadUrl(paramString);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.app.a
 * JD-Core Version:    0.6.0
 */