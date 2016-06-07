package com.ximalaya.ting.android.opensdk.player.service;

public abstract interface MiniPlayer$PlayerStatusListener
{
  public abstract void onComplete();

  public abstract boolean onError(Exception paramException, int paramInt1, int paramInt2);

  public abstract void onPause();

  public abstract void onStart();

  public abstract void onStop();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.MiniPlayer.PlayerStatusListener
 * JD-Core Version:    0.6.0
 */