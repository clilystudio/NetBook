package cn.sharesdk.tencent.qzone;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.TextView;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.TitleLayout;
import cn.sharesdk.framework.authorize.RegisterView;
import com.mob.tools.b.e;
import java.io.File;
import java.util.HashMap;
import java.util.List;

public class i extends com.mob.tools.a
{
  private String a;
  private boolean b;
  private PlatformActionListener c;
  private RegisterView d;
  private WebView e;
  private String f;
  private boolean g;
  private boolean h;
  private QZoneWebShareAdapter i;

  private QZoneWebShareAdapter b()
  {
    try
    {
      String str = this.activity.getPackageManager().getActivityInfo(this.activity.getComponentName(), 128).metaData.getString("QZoneWebShareAdapter");
      if ((str != null) && (str.length() > 0))
      {
        Object localObject = Class.forName(str).newInstance();
        if (!(localObject instanceof QZoneWebShareAdapter))
          return null;
        QZoneWebShareAdapter localQZoneWebShareAdapter = (QZoneWebShareAdapter)localObject;
        return localQZoneWebShareAdapter;
      }
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
      return null;
    }
    return null;
  }

  private void b(String paramString)
  {
    if (paramString == null);
    Bundle localBundle;
    for (String str1 = ""; ; str1 = new String(paramString))
    {
      localBundle = com.arcsoft.hpay100.a.a.l(paramString);
      if (localBundle != null)
        break;
      this.h = true;
      finish();
      this.c.onError(null, 0, new Throwable("failed to parse callback uri: " + str1));
      return;
    }
    String str2 = localBundle.getString("action");
    if ((!"share".equals(str2)) && (!"shareToQzone".equals(str2)))
    {
      this.h = true;
      finish();
      this.c.onError(null, 0, new Throwable("action error: " + str1));
      return;
    }
    String str3 = localBundle.getString("result");
    if ("cancel".equals(str3))
    {
      finish();
      this.c.onCancel(null, 0);
      return;
    }
    if (!"complete".equals(str3))
    {
      this.h = true;
      finish();
      this.c.onError(null, 0, new Throwable("operation failed: " + str1));
      return;
    }
    String str4 = localBundle.getString("response");
    if (TextUtils.isEmpty(str4))
    {
      this.h = true;
      finish();
      this.c.onError(null, 0, new Throwable("response empty" + str1));
      return;
    }
    this.g = true;
    finish();
    this.c.onComplete(null, 0, new e().a(str4));
  }

  private void c()
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(this.a));
      this.activity.startActivity(localIntent);
      com.mob.tools.a.registerExecutor(this.f, this);
      finish();
      return;
    }
    catch (Throwable localThrowable)
    {
      while (this.c == null);
      this.c.onError(null, 0, localThrowable);
    }
  }

  private void c(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse(paramString));
    try
    {
      List localList2 = this.activity.getPackageManager().queryIntentActivities(localIntent, 1);
      localList1 = localList2;
      if ((localList1 != null) && (localList1.size() > 0))
        startActivity(localIntent);
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
        List localList1 = null;
      }
    }
  }

  private void d()
  {
    this.d = a();
    try
    {
      int j = com.arcsoft.hpay100.a.a.e(getContext(), "ssdk_share_to_qzone");
      if (j > 0)
        this.d.c().getTvTitle().setText(j);
      this.i.setBodyView(this.d.d());
      this.i.setWebView(this.d.b());
      this.i.setTitleView(this.d.c());
      this.i.onCreate();
      this.activity.setContentView(this.d);
      if ("none".equals(com.mob.tools.b.a.a(this.activity).i()))
      {
        this.h = true;
        finish();
        this.c.onError(null, 0, new Throwable("failed to load webpage, network disconnected."));
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        cn.sharesdk.framework.utils.d.a().w(localThrowable);
        this.d.c().setVisibility(8);
      }
      this.d.b().loadUrl(this.a);
    }
  }

  protected RegisterView a()
  {
    RegisterView localRegisterView = new RegisterView(this.activity);
    int j = localRegisterView.c().getChildCount();
    localRegisterView.c().getChildAt(j - 1).setVisibility(8);
    localRegisterView.a().setOnClickListener(new j(this));
    this.e = localRegisterView.b();
    WebSettings localWebSettings = this.e.getSettings();
    localWebSettings.setBuiltInZoomControls(true);
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setCacheMode(1);
    localWebSettings.setDomStorageEnabled(true);
    localWebSettings.setDatabaseEnabled(true);
    localWebSettings.setDatabasePath(this.activity.getDir("database", 0).getPath());
    this.e.setVerticalScrollBarEnabled(false);
    this.e.setHorizontalScrollBarEnabled(false);
    this.e.setWebViewClient(new l(this));
    return localRegisterView;
  }

  public void a(PlatformActionListener paramPlatformActionListener)
  {
    this.c = paramPlatformActionListener;
  }

  public void a(String paramString)
  {
    this.f = ("tencent" + paramString);
  }

  public void a(String paramString, boolean paramBoolean)
  {
    this.a = paramString;
    this.b = paramBoolean;
  }

  public void onCreate()
  {
    Intent localIntent = this.activity.getIntent();
    String str1 = localIntent.getScheme();
    if ((str1 != null) && (str1.startsWith(this.f)))
    {
      finish();
      Bundle localBundle = com.arcsoft.hpay100.a.a.l(localIntent.getDataString());
      String str2 = String.valueOf(localBundle.get("result"));
      String str3 = String.valueOf(localBundle.get("action"));
      if (("shareToQQ".equals(str3)) || ("shareToQzone".equals(str3)))
      {
        if (!"complete".equals(str2))
          break label140;
        if (this.c != null)
        {
          String str4 = String.valueOf(localBundle.get("response"));
          HashMap localHashMap = new e().a(str4);
          this.c.onComplete(null, 9, localHashMap);
        }
      }
      label140: 
      do
        while (true)
        {
          return;
          if (!"error".equals(str2))
            break;
          if (this.c == null)
            continue;
          Throwable localThrowable = new Throwable(String.valueOf(localBundle.get("response")));
          this.c.onError(null, 9, localThrowable);
          return;
        }
      while (this.c == null);
      this.c.onCancel(null, 9);
      return;
    }
    if (this.b)
    {
      c();
      return;
    }
    d();
  }

  public void onDestroy()
  {
    if ((!this.b) && (!this.h) && (!this.g))
      this.c.onCancel(null, 0);
    if (this.i != null)
      this.i.onDestroy();
  }

  public boolean onFinish()
  {
    if (this.i != null)
      return this.i.onFinish();
    return super.onFinish();
  }

  public void onPause()
  {
    if (this.i != null)
      this.i.onPause();
  }

  public void onRestart()
  {
    if (this.i != null)
      this.i.onRestart();
  }

  public void onResume()
  {
    if (this.i != null)
      this.i.onResume();
  }

  public void onStart()
  {
    if (this.i != null)
      this.i.onStart();
  }

  public void onStop()
  {
    if (this.i != null)
      this.i.onStop();
  }

  public void setActivity(Activity paramActivity)
  {
    super.setActivity(paramActivity);
    if (this.i == null)
    {
      this.i = b();
      if (this.i == null)
        this.i = new QZoneWebShareAdapter();
    }
    this.i.setActivity(paramActivity);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.tencent.qzone.i
 * JD-Core Version:    0.6.0
 */