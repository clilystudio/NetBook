package com.qq.e.ads.nativ;

import android.content.Context;
import com.qq.e.ads.cfg.BrowserType;
import com.qq.e.ads.cfg.DownAPPConfirmPolicy;
import com.qq.e.comm.a;
import com.qq.e.comm.managers.GDTADManager;
import com.qq.e.comm.pi.NADI;
import com.qq.e.comm.util.GDTLogger;
import com.qq.e.comm.util.StringUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;

public class NativeAD
{
  private NADI a;
  private NativeAD.NativeAdListener b;
  private boolean c;
  private boolean d;
  private List<Integer> e = new ArrayList();
  private boolean f = false;
  private BrowserType g;
  private DownAPPConfirmPolicy h;

  public NativeAD(Context paramContext, String paramString1, String paramString2, NativeAD.NativeAdListener paramNativeAdListener)
  {
    if ((StringUtil.isEmpty(paramString1)) || (StringUtil.isEmpty(paramString2)) || (paramContext == null))
    {
      GDTLogger.e(String.format("GDTNativeAd Contructor paras error,appid=%s,posId=%s,context=%s", new Object[] { paramString1, paramString2, paramContext }));
      return;
    }
    this.c = true;
    if (!a.a(paramContext))
    {
      GDTLogger.e("Required Activity/Service/Permission Not Declared in AndroidManifest.xml");
      return;
    }
    this.d = true;
    this.b = paramNativeAdListener;
    GDTADManager.INIT_EXECUTOR.execute(new NativeAD.1(this, paramContext, paramString1, paramString2));
  }

  public void loadAD(int paramInt)
  {
    if ((!this.c) || (!this.d))
    {
      GDTLogger.e("AD init Paras OR Context error,details in logs produced while init NativeAD");
      return;
    }
    if (!this.f)
    {
      this.e.add(Integer.valueOf(paramInt));
      return;
    }
    if (this.a != null)
    {
      this.a.loadAd(paramInt);
      return;
    }
    GDTLogger.e("NativeAD Init error,See More Logs");
  }

  public void setBrowserType(BrowserType paramBrowserType)
  {
    this.g = paramBrowserType;
    if ((this.a != null) && (paramBrowserType != null))
      this.a.setBrowserType(paramBrowserType.value());
  }

  public void setDownAPPConfirmPolicy(DownAPPConfirmPolicy paramDownAPPConfirmPolicy)
  {
    this.h = paramDownAPPConfirmPolicy;
    if ((this.a != null) && (paramDownAPPConfirmPolicy != null))
      this.a.setDownAPPConfirmPolicy(paramDownAPPConfirmPolicy);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.nativ.NativeAD
 * JD-Core Version:    0.6.0
 */