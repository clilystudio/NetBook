package com.sina.sso;

import android.os.IInterface;

public abstract interface RemoteSSO extends IInterface
{
  public abstract String getActivityName();

  public abstract String getPackageName();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.sina.sso.RemoteSSO
 * JD-Core Version:    0.6.0
 */