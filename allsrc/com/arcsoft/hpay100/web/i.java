package com.arcsoft.hpay100.web;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.arcsoft.hpay100.a.a;

final class i extends WebViewClient
{
  i(HPayWebView paramHPayWebView)
  {
  }

  public final void onFormResubmission(WebView paramWebView, Message paramMessage1, Message paramMessage2)
  {
    paramMessage2.sendToTarget();
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    String str = paramWebView.getTitle();
    a.b("dalongTest", "onPageFinished:" + str);
    if ((!TextUtils.isEmpty(str)) && (str.startsWith("wap.dm.10086.cn")))
      str = "充值";
    a.b("dalongTest", "onPageFinished url:" + paramString);
    HPayWebView localHPayWebView = this.a;
    HPayWebView.a(localHPayWebView, -1 + HPayWebView.b(localHPayWebView));
    if (HPayWebView.a(this.a) != null)
      HPayWebView.a(this.a).a(4, str);
    if (!HPayWebView.c(this.a))
      HPayWebView.a(this.a).a(6, paramString);
    if ((HPayWebView.c(this.a)) && (HPayWebView.b(this.a) == 0))
    {
      HPayWebView.a(this.a).a(0, Integer.valueOf(-1));
      HPayWebView.a(this.a, false);
    }
    HPayWebView.a(this.a).a(3, paramString);
    super.onPageFinished(paramWebView, paramString);
    try
    {
      HPayWebView.a(this.a, paramString);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    a.b("dalongTest", "onPageStarted:" + paramString);
    if (HPayWebView.b(this.a) < 0)
      HPayWebView.a(this.a, 0);
    HPayWebView localHPayWebView = this.a;
    HPayWebView.a(localHPayWebView, 1 + HPayWebView.b(localHPayWebView));
    if (HPayWebView.a(this.a) != null)
      HPayWebView.a(this.a).a(1, paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    a.b("dalongTest", "onReceivedError:");
    HPayWebView.a(this.a, true);
    paramWebView.stopLoading();
    paramWebView.clearView();
    if ((Integer.valueOf(Build.VERSION.SDK).intValue() < 14) && (HPayWebView.b(this.a) == 0))
      HPayWebView.a(this.a, 2);
    if ((Integer.valueOf(Build.VERSION.SDK).intValue() < 14) && (HPayWebView.b(this.a) > 0))
    {
      HPayWebView localHPayWebView = this.a;
      HPayWebView.a(localHPayWebView, -1 + HPayWebView.b(localHPayWebView));
    }
  }

  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramSslErrorHandler.proceed();
    a.b("dalongTest", "onReceivedSslError:");
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    a.b("dalongTest", "shouldOverrideUrlLoading:" + paramString);
    paramWebView.loadUrl(paramString);
    if (HPayWebView.a(this.a) != null)
      HPayWebView.a(this.a).a(8, paramString);
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.web.i
 * JD-Core Version:    0.6.0
 */