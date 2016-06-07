package com.xiaomi.mistatistic.sdk;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.xiaomi.mistatistic.sdk.a.o;
import com.xiaomi.mistatistic.sdk.b.a;
import java.util.HashMap;
import java.util.Map;

final class e extends WebViewClient
{
  private WebViewClient a;
  private Map b = new HashMap();

  public e(MIWebView paramMIWebView, WebViewClient paramWebViewClient)
  {
    this.a = paramWebViewClient;
  }

  public final void doUpdateVisitedHistory(WebView paramWebView, String paramString, boolean paramBoolean)
  {
    if (this.a != null)
    {
      this.a.doUpdateVisitedHistory(paramWebView, paramString, paramBoolean);
      return;
    }
    super.doUpdateVisitedHistory(paramWebView, paramString, paramBoolean);
  }

  public final void onFormResubmission(WebView paramWebView, Message paramMessage1, Message paramMessage2)
  {
    if (this.a != null)
    {
      this.a.onFormResubmission(paramWebView, paramMessage1, paramMessage2);
      return;
    }
    super.onFormResubmission(paramWebView, paramMessage1, paramMessage2);
  }

  public final void onLoadResource(WebView paramWebView, String paramString)
  {
    if (this.a != null)
    {
      this.a.onLoadResource(paramWebView, paramString);
      return;
    }
    super.onLoadResource(paramWebView, paramString);
  }

  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    if (this.a != null)
      this.a.onPageFinished(paramWebView, paramString);
    while (true)
    {
      Long localLong = (Long)this.b.get(paramString);
      if (localLong != null)
        o.a().a(new a(paramString, System.currentTimeMillis() - localLong.longValue()));
      return;
      super.onPageFinished(paramWebView, paramString);
    }
  }

  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    if (this.a != null)
      this.a.onPageStarted(paramWebView, paramString, paramBitmap);
    while (true)
    {
      this.b.put(paramString, Long.valueOf(System.currentTimeMillis()));
      return;
      super.onPageStarted(paramWebView, paramString, paramBitmap);
    }
  }

  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    if (this.a != null)
      this.a.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    while (true)
    {
      Long localLong = (Long)this.b.get(paramString2);
      if (localLong != null)
        o.a().a(new a(paramString2, System.currentTimeMillis() - localLong.longValue(), paramInt));
      return;
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    }
  }

  public final void onReceivedHttpAuthRequest(WebView paramWebView, HttpAuthHandler paramHttpAuthHandler, String paramString1, String paramString2)
  {
    if (this.a != null)
    {
      this.a.onReceivedHttpAuthRequest(paramWebView, paramHttpAuthHandler, paramString1, paramString2);
      return;
    }
    super.onReceivedHttpAuthRequest(paramWebView, paramHttpAuthHandler, paramString1, paramString2);
  }

  public final void onReceivedLoginRequest(WebView paramWebView, String paramString1, String paramString2, String paramString3)
  {
    if (this.a != null)
    {
      this.a.onReceivedLoginRequest(paramWebView, paramString1, paramString2, paramString3);
      return;
    }
    super.onReceivedLoginRequest(paramWebView, paramString1, paramString2, paramString3);
  }

  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    if (this.a != null)
    {
      this.a.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
      return;
    }
    super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
  }

  public final void onScaleChanged(WebView paramWebView, float paramFloat1, float paramFloat2)
  {
    if (this.a != null)
    {
      this.a.onScaleChanged(paramWebView, paramFloat1, paramFloat2);
      return;
    }
    super.onScaleChanged(paramWebView, paramFloat1, paramFloat2);
  }

  public final void onTooManyRedirects(WebView paramWebView, Message paramMessage1, Message paramMessage2)
  {
    if (this.a != null)
    {
      this.a.onTooManyRedirects(paramWebView, paramMessage1, paramMessage2);
      return;
    }
    super.onTooManyRedirects(paramWebView, paramMessage1, paramMessage2);
  }

  public final void onUnhandledKeyEvent(WebView paramWebView, KeyEvent paramKeyEvent)
  {
    if (this.a != null)
    {
      this.a.onUnhandledKeyEvent(paramWebView, paramKeyEvent);
      return;
    }
    super.onUnhandledKeyEvent(paramWebView, paramKeyEvent);
  }

  public final WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    if (this.a != null)
      return this.a.shouldInterceptRequest(paramWebView, paramString);
    return super.shouldInterceptRequest(paramWebView, paramString);
  }

  public final boolean shouldOverrideKeyEvent(WebView paramWebView, KeyEvent paramKeyEvent)
  {
    if (this.a != null)
      return this.a.shouldOverrideKeyEvent(paramWebView, paramKeyEvent);
    return super.shouldOverrideKeyEvent(paramWebView, paramKeyEvent);
  }

  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (this.a != null)
      return this.a.shouldOverrideUrlLoading(paramWebView, paramString);
    return super.shouldOverrideUrlLoading(paramWebView, paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.xiaomi.mistatistic.sdk.e
 * JD-Core Version:    0.6.0
 */