package com.qq.e.ads.cfg;

public enum DownAPPConfirmPolicy
{
  private final int a;

  static
  {
    DownAPPConfirmPolicy[] arrayOfDownAPPConfirmPolicy = new DownAPPConfirmPolicy[2];
    arrayOfDownAPPConfirmPolicy[0] = Default;
    arrayOfDownAPPConfirmPolicy[1] = NOConfirm;
    b = arrayOfDownAPPConfirmPolicy;
  }

  private DownAPPConfirmPolicy(int paramInt)
  {
    this.a = paramInt;
  }

  public final int value()
  {
    return this.a;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.qq.e.ads.cfg.DownAPPConfirmPolicy
 * JD-Core Version:    0.6.0
 */