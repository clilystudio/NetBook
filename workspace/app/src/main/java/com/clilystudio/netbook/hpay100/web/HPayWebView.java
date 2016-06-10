package com.clilystudio.netbook.hpay100.web;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.clilystudio.netbook.hpay100.config.HPaySMS;
import com.clilystudio.netbook.hpay100.y;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.URL;

public class HPayWebView extends WebView
{
  public static int a = 0;
  private boolean b;
  private int c;
  private HPaySMS d = null;
  private m e;
  private Activity f;

  public HPayWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private void a(String paramString)
  {
    monitorenter;
    try
    {
      String str = b(paramString);
      com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "jsdata:" + str);
      if ((!TextUtils.isEmpty(str)) && (this.f != null))
        this.f.runOnUiThread(new l(this, str));
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }

  private static String b(String paramString)
  {
    ByteArrayOutputStream localByteArrayOutputStream;
    try
    {
      InputStream localInputStream = new URL(paramString).openStream();
      byte[] arrayOfByte = new byte[1024];
      localByteArrayOutputStream = new ByteArrayOutputStream();
      while (true)
      {
        int i = localInputStream.read(arrayOfByte);
        if (i <= 0)
          break;
        localByteArrayOutputStream.write(arrayOfByte, 0, i);
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return "";
    }
    String str = localByteArrayOutputStream.toString();
    return str;
  }

  public final void a(Activity paramActivity, Handler paramHandler, HPaySMS paramHPaySMS, String paramString, y paramy, m paramm)
  {
    this.e = paramm;
    this.b = false;
    this.f = paramActivity;
    this.d = paramHPaySMS;
    this.c = 0;
    WebSettings localWebSettings = getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setSupportZoom(false);
    localWebSettings.setCacheMode(2);
    localWebSettings.setSavePassword(false);
    localWebSettings.setSaveFormData(false);
    localWebSettings.setJavaScriptCanOpenWindowsAutomatically(true);
    localWebSettings.setBuiltInZoomControls(false);
    addJavascriptInterface(new a(paramActivity, this, paramHandler, paramy, paramHPaySMS, paramString), "HPayJS");
    setScrollBarStyle(0);
    setVerticalScrollBarEnabled(true);
    setHorizontalScrollBarEnabled(false);
    setHorizontalFadingEdgeEnabled(true);
    setWebViewClient(new i(this));
    setWebChromeClient(new j(this));
  }

  public void loadUrl(String paramString)
  {
    com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "loadurl url:" + paramString);
    super.loadUrl(paramString);
    this.b = false;
  }

  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void postUrl(String paramString, byte[] paramArrayOfByte)
  {
    com.clilystudio.netbook.hpay100.a_Pack.a.b("dalongTest", "postUrl url:" + paramString);
    super.postUrl(paramString, paramArrayOfByte);
    this.b = false;
  }

  public void reload()
  {
    super.reload();
    this.b = false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.hpay100.web.HPayWebView
 * JD-Core Version:    0.6.0
 */