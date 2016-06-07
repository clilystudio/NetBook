package com.qq.e.ads.interstitial;

import android.annotation.SuppressLint;
import android.app.Activity;
import com.qq.e.comm.a;
import com.qq.e.comm.managers.GDTADManager;
import com.qq.e.comm.pi.IADI;
import com.qq.e.comm.util.GDTLogger;
import com.qq.e.comm.util.StringUtil;
import java.util.concurrent.ExecutorService;

@SuppressLint({"ViewConstructor"})
public class InterstitialAD
{
  private IADI a;
  private InterstitialADListener b;
  private boolean c = false;
  private boolean d = false;
  private boolean e = false;
  private volatile int f = 0;

  public InterstitialAD(Activity paramActivity, String paramString1, String paramString2)
  {
    if ((StringUtil.isEmpty(paramString1)) || (StringUtil.isEmpty(paramString2)) || (paramActivity == null))
    {
      GDTLogger.e(String.format("Intersitial Contructor paras error,appid=%s,posId=%s,context=%s", new Object[] { paramString1, paramString2, paramActivity }));
      return;
    }
    this.c = true;
    if (!a.a(paramActivity))
    {
      GDTLogger.e("Required Activity/Service/Permission Not Declared in AndroidManifest.xml");
      return;
    }
    this.d = true;
    GDTADManager.INIT_EXECUTOR.execute(new InterstitialAD.1(this, paramActivity, paramString1, paramString2));
  }

  public void closePopupWindow()
  {
    if (this.a != null)
      this.a.closePopupWindow();
  }

  public void destory()
  {
    if (this.a != null)
      this.a.destory();
  }

  public void loadAD()
  {
    if ((!this.c) || (!this.d))
    {
      GDTLogger.e("InterstitialAD init Paras OR Context error,See More logs while new InterstitialAD");
      return;
    }
    if (!this.e)
    {
      this.f = (1 + this.f);
      return;
    }
    if (this.a != null)
    {
      this.a.loadAd();
      return;
    }
    GDTLogger.e("InterstitialAD Init error,See More Logs");
  }

  public void setADListener(InterstitialADListener paramInterstitialADListener)
  {
    this.b = paramInterstitialADListener;
  }

  public void show()
  {
    monitorenter;
    try
    {
      if (this.a != null)
        this.a.show();
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

  public void show(Activity paramActivity)
  {
    monitorenter;
    try
    {
      if (this.a != null)
        this.a.show(paramActivity);
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

  public void showAsPopupWindow()
  {
    monitorenter;
    try
    {
      if (this.a != null)
        this.a.showAsPopupWindown();
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

  public void showAsPopupWindow(Activity paramActivity)
  {
    monitorenter;
    try
    {
      if (this.a != null)
        this.a.showAsPopupWindown(paramActivity);
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
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.interstitial.InterstitialAD
 * JD-Core Version:    0.6.0
 */