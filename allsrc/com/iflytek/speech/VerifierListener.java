package com.iflytek.speech;

import android.os.IInterface;

public abstract interface VerifierListener extends IInterface
{
  public abstract void onBeginOfSpeech();

  public abstract void onCancel();

  public abstract void onEnd(VerifierResult paramVerifierResult, int paramInt);

  public abstract void onEndOfSpeech();

  public abstract void onError(int paramInt);

  public abstract void onRegister(VerifierResult paramVerifierResult);

  public abstract void onVolumeChanged(int paramInt);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.VerifierListener
 * JD-Core Version:    0.6.0
 */