package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.f;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebSettings.TextSize;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.lang.reflect.Method;

public class H5AuthActivity extends Activity
{
  private WebView a;
  private com.alipay.sdk.g.a b;
  private Handler c;
  private boolean d;
  private boolean e;
  private Runnable f = new d(this);

  public void finish()
  {
    try
    {
      synchronized (AuthTask.a)
      {
        ???.notify();
        label10: super.finish();
        return;
      }
    }
    catch (Exception localException)
    {
      break label10;
    }
  }

  public void onBackPressed()
  {
    if (this.a.canGoBack())
    {
      if (this.e)
      {
        m localm = m.a(m.d.a());
        o.a = o.a(localm.a(), localm.b(), "");
        finish();
      }
      return;
    }
    o.a = o.a();
    finish();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    while (true)
    {
      Bundle localBundle;
      try
      {
        localBundle = getIntent().getExtras();
        if (localBundle == null)
        {
          finish();
          return;
        }
      }
      catch (Exception localException1)
      {
        finish();
        return;
      }
      String str;
      try
      {
        str = localBundle.getString("url");
        if (!f.a(str))
        {
          finish();
          return;
        }
      }
      catch (Exception localException2)
      {
        finish();
        return;
      }
      super.requestWindowFeature(1);
      this.c = new Handler(getMainLooper());
      LinearLayout localLinearLayout = new LinearLayout(getApplicationContext());
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
      localLinearLayout.setOrientation(1);
      setContentView(localLinearLayout, localLayoutParams);
      this.a = new WebView(getApplicationContext());
      localLayoutParams.weight = 1.0F;
      this.a.setVisibility(0);
      localLinearLayout.addView(this.a, localLayoutParams);
      WebSettings localWebSettings1 = this.a.getSettings();
      localWebSettings1.setUserAgentString(localWebSettings1.getUserAgentString() + f.c(getApplicationContext()));
      localWebSettings1.setRenderPriority(WebSettings.RenderPriority.HIGH);
      localWebSettings1.setSupportMultipleWindows(true);
      localWebSettings1.setJavaScriptEnabled(true);
      localWebSettings1.setSavePassword(false);
      localWebSettings1.setJavaScriptCanOpenWindowsAutomatically(true);
      localWebSettings1.setMinimumFontSize(8 + localWebSettings1.getMinimumFontSize());
      localWebSettings1.setAllowFileAccess(false);
      localWebSettings1.setTextSize(WebSettings.TextSize.NORMAL);
      this.a.setVerticalScrollbarOverlay(true);
      this.a.setWebViewClient(new a(this, 0));
      this.a.setDownloadListener(new c(this));
      this.a.loadUrl(str);
      if (Build.VERSION.SDK_INT >= 7);
      try
      {
        Class localClass = this.a.getSettings().getClass();
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = Boolean.TYPE;
        Method localMethod2 = localClass.getMethod("setDomStorageEnabled", arrayOfClass);
        if (localMethod2 != null)
        {
          WebSettings localWebSettings2 = this.a.getSettings();
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Boolean.valueOf(true);
          localMethod2.invoke(localWebSettings2, arrayOfObject);
        }
        try
        {
          label387: Method localMethod1 = this.a.getClass().getMethod("removeJavascriptInterface", new Class[0]);
          if (localMethod1 == null)
            continue;
          localMethod1.invoke(this.a, new Object[] { "searchBoxJavaBridge_" });
          return;
        }
        catch (Exception localException3)
        {
          return;
        }
      }
      catch (Exception localException4)
      {
        break label387;
      }
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.a != null)
    {
      this.a.removeAllViews();
      this.a.destroy();
      this.a = null;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.sdk.app.H5AuthActivity
 * JD-Core Version:    0.6.0
 */