package com.ximalaya.ting.android.opensdk.player.service;

public abstract interface IXmPlayerStatusListener
{
  public abstract void onBufferProgress(int paramInt);

  public abstract void onBufferingStart();

  public abstract void onBufferingStop();

  public abstract boolean onError(XmPlayerException paramXmPlayerException);

  public abstract void onPlayPause();

  public abstract void onPlayProgress(int paramInt1, int paramInt2);

  public abstract void onPlayStart();

  public abstract void onPlayStop();

  public abstract void onSoundPlayComplete();

  public abstract void onSoundPrepared();

  public abstract void onSoundSwitch(int paramInt1, int paramInt2, int paramInt3);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.player.service.IXmPlayerStatusListener
 * JD-Core Version:    0.6.0
 */