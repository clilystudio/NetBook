package com.qq.e.comm.pi;

import com.qq.e.ads.cfg.DownAPPConfirmPolicy;

public abstract interface AWI
{
  public abstract void prepare();

  public abstract void setDownAPPConfirmPolicy(DownAPPConfirmPolicy paramDownAPPConfirmPolicy);

  public abstract void setScreenOrientation(int paramInt);

  public abstract void showAppWall();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.comm.pi.AWI
 * JD-Core Version:    0.6.0
 */