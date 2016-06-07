package com.mob.tools;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mob.tools.b.a;
import java.util.Locale;

public class g extends WebViewClient
{
  public static final int ERROR_AUTHENTICATION = -4;
  public static final int ERROR_BAD_URL = -12;
  public static final int ERROR_CONNECT = -6;
  public static final int ERROR_FAILED_SSL_HANDSHAKE = -11;
  public static final int ERROR_FILE = -13;
  public static final int ERROR_FILE_NOT_FOUND = -14;
  public static final int ERROR_HOST_LOOKUP = -2;
  public static final int ERROR_IO = -7;
  public static final int ERROR_PROXY_AUTHENTICATION = -5;
  public static final int ERROR_REDIRECT_LOOP = -9;
  public static final int ERROR_TIMEOUT = -8;
  public static final int ERROR_TOO_MANY_REQUESTS = -15;
  public static final int ERROR_UNKNOWN = -1;
  public static final int ERROR_UNSUPPORTED_AUTH_SCHEME = -3;
  public static final int ERROR_UNSUPPORTED_SCHEME = -10;

  public void doUpdateVisitedHistory(WebView paramWebView, String paramString, boolean paramBoolean)
  {
  }

  public void onFormResubmission(WebView paramWebView, Message paramMessage1, Message paramMessage2)
  {
    paramMessage1.sendToTarget();
  }

  public void onLoadResource(WebView paramWebView, String paramString)
  {
  }

  public void onPageFinished(WebView paramWebView, String paramString)
  {
  }

  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
  }

  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
  }

  public void onReceivedHttpAuthRequest(WebView paramWebView, HttpAuthHandler paramHttpAuthHandler, String paramString1, String paramString2)
  {
    paramHttpAuthHandler.cancel();
  }

  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    if ((paramWebView.getContext() instanceof Activity))
    {
      Activity localActivity = (Activity)paramWebView.getContext();
      a.a(localActivity);
      String[] arrayOfString;
      String str1;
      String str2;
      String str3;
      AlertDialog.Builder localBuilder;
      if ("zh".equals(Locale.getDefault().getLanguage()))
      {
        arrayOfString = new String[5];
        arrayOfString[0] = String.valueOf(new char[] { 19981, 21463, 20449, 20219, 30340, -29759, 20070, 12290, 20320, -30335, 32487, 32493, 21527, -225 });
        arrayOfString[1] = String.valueOf(new char[] { -29759, 20070, 24050, -28729, 26399, 12290, 20320, -30335, 32487, 32493, 21527, -225 });
        arrayOfString[2] = String.valueOf(new char[] { -29759, 20070, 73, 68, 19981, 21305, -28339, 12290, 20320, -30335, 32487, 32493, 21527, -225 });
        arrayOfString[3] = String.valueOf(new char[] { -29759, 20070, 23578, 26410, 29983, 25928, 12290, 20320, -30335, 32487, 32493, 21527, -225 });
        arrayOfString[4] = String.valueOf(new char[] { -29759, 20070, -27367, -29713, 12290, 20320, -30335, 32487, 32493, 21527, -225 });
        str1 = String.valueOf(new char[] { -29759, 20070, -27367, -29713 });
        str2 = String.valueOf(new char[] { 32487, 32493 });
        str3 = String.valueOf(new char[] { 20572, 27490 });
        localBuilder = new AlertDialog.Builder(localActivity);
        localBuilder.setTitle(str1);
        switch (paramSslError.getPrimaryError())
        {
        default:
          localBuilder.setMessage(arrayOfString[4]);
        case 3:
        case 1:
        case 2:
        case 0:
        }
      }
      while (true)
      {
        localBuilder.setCancelable(false);
        localBuilder.setPositiveButton(str2, new h(this, paramSslErrorHandler));
        localBuilder.setNegativeButton(str3, new i(this, paramSslErrorHandler));
        localBuilder.create().show();
        return;
        arrayOfString = new String[] { "Certificate is untrusted. Do you want to continue anyway?", "Certificate has expired. Do you want to continue anyway?", "Certificate ID is mismatched. Do you want to continue anyway?", "Certificate is not yet valid. Do you want to continue anyway?", "Certificate error. Do you want to continue anyway?" };
        str1 = "SSL Certificate Error";
        str2 = "Yes";
        str3 = "No";
        break;
        localBuilder.setMessage(arrayOfString[0]);
        continue;
        localBuilder.setMessage(arrayOfString[1]);
        continue;
        localBuilder.setMessage(arrayOfString[2]);
        continue;
        localBuilder.setMessage(arrayOfString[3]);
      }
    }
    paramSslErrorHandler.cancel();
  }

  public void onScaleChanged(WebView paramWebView, float paramFloat1, float paramFloat2)
  {
  }

  public void onTooManyRedirects(WebView paramWebView, Message paramMessage1, Message paramMessage2)
  {
    paramMessage1.sendToTarget();
  }

  public void onUnhandledKeyEvent(WebView paramWebView, KeyEvent paramKeyEvent)
  {
  }

  public boolean shouldOverrideKeyEvent(WebView paramWebView, KeyEvent paramKeyEvent)
  {
    return false;
  }

  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.g
 * JD-Core Version:    0.6.0
 */