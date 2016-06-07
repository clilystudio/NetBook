package cn.sharesdk.framework.authorize;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler.Callback;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.ScaleAnimation;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.TextView;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.TitleLayout;

public class g extends a
  implements Handler.Callback, ResizeLayout.OnResizeListener
{
  protected AuthorizeListener b;
  private AuthorizeAdapter c;
  private RegisterView d;
  private WebView e;

  private AuthorizeAdapter c()
  {
    try
    {
      ActivityInfo localActivityInfo = this.activity.getPackageManager().getActivityInfo(this.activity.getComponentName(), 128);
      if ((localActivityInfo.metaData != null) && (!localActivityInfo.metaData.isEmpty()))
      {
        String str = localActivityInfo.metaData.getString("AuthorizeAdapter");
        if ((str == null) || (str.length() <= 0))
        {
          str = localActivityInfo.metaData.getString("Adapter");
          if ((str == null) || (str.length() <= 0))
            break label135;
        }
        Object localObject = Class.forName(str).newInstance();
        if (!(localObject instanceof AuthorizeAdapter))
          return null;
        AuthorizeAdapter localAuthorizeAdapter = (AuthorizeAdapter)localObject;
        return localAuthorizeAdapter;
      }
    }
    catch (Throwable localThrowable)
    {
      cn.sharesdk.framework.utils.d.a().w(localThrowable);
      return null;
    }
    return null;
    label135: return null;
  }

  public void OnResize(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.c != null)
      this.c.onResize(paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void a(AuthorizeListener paramAuthorizeListener)
  {
    this.b = paramAuthorizeListener;
  }

  protected RegisterView b()
  {
    RegisterView localRegisterView = new RegisterView(this.activity);
    localRegisterView.a().setOnClickListener(new h(this));
    this.e = localRegisterView.b();
    WebSettings localWebSettings = this.e.getSettings();
    localWebSettings.setBuiltInZoomControls(true);
    localWebSettings.setJavaScriptEnabled(true);
    this.e.setVerticalScrollBarEnabled(false);
    this.e.setHorizontalScrollBarEnabled(false);
    b localb = this.a.getAuthorizeWebviewClient(this);
    this.e.setWebViewClient(localb);
    new j(this).start();
    return localRegisterView;
  }

  public boolean handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 2:
    }
    while (true)
    {
      return false;
      if (paramMessage.arg1 == 1)
      {
        AuthorizeListener localAuthorizeListener2 = this.a.getAuthorizeListener();
        if (localAuthorizeListener2 == null)
          continue;
        localAuthorizeListener2.onError(new Throwable("Network error (platform: " + this.a.getPlatform().getName() + ")"));
        continue;
      }
      String str = (String)paramMessage.obj;
      if (TextUtils.isEmpty(str))
      {
        finish();
        AuthorizeListener localAuthorizeListener1 = this.a.getAuthorizeListener();
        if (localAuthorizeListener1 == null)
          continue;
        localAuthorizeListener1.onError(new Throwable("Authorize URL is empty (platform: " + this.a.getPlatform().getName() + ")"));
        continue;
      }
      this.e.loadUrl(str);
    }
  }

  public void onCreate()
  {
    TitleLayout localTitleLayout;
    String str;
    if (this.d == null)
    {
      this.d = b();
      this.d.a(this);
      this.d.a(this.c.isNotitle());
      this.c.setBodyView(this.d.d());
      this.c.setWebView(this.d.b());
      localTitleLayout = this.d.c();
      this.c.setTitleView(localTitleLayout);
      str = this.a.getPlatform().getName();
      this.c.setPlatformName(this.a.getPlatform().getName());
    }
    try
    {
      int j = com.arcsoft.hpay100.a.a.e(getContext(), "ssdk_" + str.toLowerCase());
      localTitleLayout.getTvTitle().setText(j);
      this.c.onCreate();
      if ((this.c != null) && (!this.c.isPopUpAnimationDisable()))
      {
        ScaleAnimation localScaleAnimation = new ScaleAnimation(0.0F, 1.0F, 0.0F, 1.0F, 1, 0.5F, 1, 0.5F);
        localScaleAnimation.setDuration(550L);
        localScaleAnimation.setInterpolator(new g.a(null));
        this.d.setAnimation(localScaleAnimation);
      }
      this.activity.setContentView(this.d);
      return;
    }
    catch (Throwable localThrowable1)
    {
      while (true)
        try
        {
          int i = com.arcsoft.hpay100.a.a.e(getContext(), "ssdk_weibo_oauth_regiseter");
          localTitleLayout.getTvTitle().setText(i);
        }
        catch (Throwable localThrowable2)
        {
          cn.sharesdk.framework.utils.d.a().w(localThrowable1);
        }
    }
  }

  public void onDestroy()
  {
    if (this.c != null)
      this.c.onDestroy();
  }

  public boolean onFinish()
  {
    if (this.c != null)
      return this.c.onFinish();
    return super.onFinish();
  }

  public boolean onKeyEvent(int paramInt, KeyEvent paramKeyEvent)
  {
    AuthorizeAdapter localAuthorizeAdapter = this.c;
    boolean bool = false;
    if (localAuthorizeAdapter != null)
      bool = this.c.onKeyEvent(paramInt, paramKeyEvent);
    if ((!bool) && (paramInt == 4) && (paramKeyEvent.getAction() == 0))
    {
      AuthorizeListener localAuthorizeListener = this.a.getAuthorizeListener();
      if (localAuthorizeListener != null)
        localAuthorizeListener.onCancel();
    }
    if (bool)
      return true;
    return super.onKeyEvent(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    if (this.c != null)
      this.c.onPause();
  }

  public void onRestart()
  {
    if (this.c != null)
      this.c.onRestart();
  }

  public void onResume()
  {
    if (this.c != null)
      this.c.onResume();
  }

  public void onStart()
  {
    if (this.c != null)
      this.c.onStart();
  }

  public void onStop()
  {
    if (this.c != null)
      this.c.onStop();
  }

  public void setActivity(Activity paramActivity)
  {
    super.setActivity(paramActivity);
    if (this.c == null)
    {
      this.c = c();
      if (this.c == null)
        this.c = new AuthorizeAdapter();
    }
    this.c.setActivity(paramActivity);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.authorize.g
 * JD-Core Version:    0.6.0
 */