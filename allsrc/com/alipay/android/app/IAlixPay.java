package com.alipay.android.app;

import android.os.IInterface;

public abstract interface IAlixPay extends IInterface
{
  public abstract String Pay(String paramString);

  public abstract String prePay(String paramString);

  public abstract void registerCallback(IRemoteServiceCallback paramIRemoteServiceCallback);

  public abstract String test();

  public abstract void unregisterCallback(IRemoteServiceCallback paramIRemoteServiceCallback);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.IAlixPay
 * JD-Core Version:    0.6.0
 */