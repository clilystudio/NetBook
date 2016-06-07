package com.maxthon.main;

import android.content.Context;

public abstract interface UICallback
{
  public abstract Context getContext();

  public abstract boolean isRequestDependence();

  public abstract void onFailure(int paramInt);

  public abstract void onProgressUpdate(int paramInt);

  public abstract void onSuccess();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.main.UICallback
 * JD-Core Version:    0.6.0
 */