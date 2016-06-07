package com.qq.e.ads.banner;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import com.qq.e.ads.cfg.BannerRollAnimation;
import com.qq.e.ads.cfg.DownAPPConfirmPolicy;
import com.qq.e.comm.a;
import com.qq.e.comm.managers.GDTADManager;
import com.qq.e.comm.pi.BVI;
import com.qq.e.comm.util.GDTLogger;
import com.qq.e.comm.util.StringUtil;
import java.util.concurrent.ExecutorService;

@SuppressLint({"ViewConstructor"})
public class BannerView extends FrameLayout
{
  private BVI a;
  private BannerADListener b;
  private boolean c = false;
  private boolean d = false;
  private boolean e = false;
  private Integer f;
  private BannerRollAnimation g;
  private DownAPPConfirmPolicy h;
  private Boolean i;
  private volatile int j = 0;

  public BannerView(Activity paramActivity, ADSize paramADSize, String paramString1, String paramString2)
  {
    super(paramActivity);
    if ((StringUtil.isEmpty(paramString1)) || (StringUtil.isEmpty(paramString2)) || (paramActivity == null))
    {
      GDTLogger.e(String.format("Banner ADView Contructor paras error,appid=%s,posId=%s,context=%s", new Object[] { paramString1, paramString2, paramActivity }));
      return;
    }
    this.c = true;
    if (!a.a(paramActivity))
    {
      GDTLogger.e("Required Activity/Service/Permission Not Declared in AndroidManifest.xml");
      return;
    }
    this.d = true;
    setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
    GDTADManager.INIT_EXECUTOR.execute(new BannerView.1(this, paramActivity, paramString1, paramADSize, paramString2));
  }

  public void destroy()
  {
    if (this.a != null)
      this.a.destroy();
  }

  public void loadAD()
  {
    if ((!this.c) || (!this.d))
    {
      GDTLogger.e("Banner init Paras OR Context error,See More logs while new BannerView");
      return;
    }
    if (!this.e)
    {
      this.j = (1 + this.j);
      return;
    }
    if (this.a != null)
    {
      this.a.fetchAd();
      return;
    }
    GDTLogger.e("Banner Init error,See More Logs");
  }

  public void setADListener(BannerADListener paramBannerADListener)
  {
    this.b = paramBannerADListener;
  }

  public void setDownConfirmPilicy(DownAPPConfirmPolicy paramDownAPPConfirmPolicy)
  {
    this.h = paramDownAPPConfirmPolicy;
    if ((paramDownAPPConfirmPolicy != null) && (this.a != null))
      this.a.setDownAPPConfirmPolicy(paramDownAPPConfirmPolicy.value());
  }

  public void setRefresh(int paramInt)
  {
    this.f = Integer.valueOf(paramInt);
    if ((paramInt < 30) && (paramInt != 0))
      paramInt = 30;
    while (true)
    {
      if (this.a != null)
        this.a.setRefresh(paramInt);
      return;
      if (paramInt <= 120)
        continue;
      paramInt = 120;
    }
  }

  public void setRollAnimation(BannerRollAnimation paramBannerRollAnimation)
  {
    this.g = paramBannerRollAnimation;
    if ((paramBannerRollAnimation != null) && (this.a != null))
      this.a.setRollAnimation(paramBannerRollAnimation.value());
  }

  public void setShowClose(boolean paramBoolean)
  {
    this.i = Boolean.valueOf(paramBoolean);
    if (this.a != null)
      this.a.setShowCloseButton(paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.banner.BannerView
 * JD-Core Version:    0.6.0
 */