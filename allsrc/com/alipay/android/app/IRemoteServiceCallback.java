package com.alipay.android.app;

import android.os.Bundle;
import android.os.IInterface;

public abstract interface IRemoteServiceCallback extends IInterface
{
  public abstract boolean isHideLoadingScreen();

  public abstract void payEnd(boolean paramBoolean, String paramString);

  public abstract void startActivity(String paramString1, String paramString2, int paramInt, Bundle paramBundle);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.IRemoteServiceCallback
 * JD-Core Version:    0.6.0
 */