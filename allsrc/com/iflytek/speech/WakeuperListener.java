package com.iflytek.speech;

import android.os.IInterface;

public abstract interface WakeuperListener extends IInterface
{
  public abstract void onBeginOfSpeech();

  public abstract void onEndOfSpeech();

  public abstract void onError(int paramInt);

  public abstract void onResult(WakeuperResult paramWakeuperResult);

  public abstract void onVolumeChanged(int paramInt);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.WakeuperListener
 * JD-Core Version:    0.6.0
 */