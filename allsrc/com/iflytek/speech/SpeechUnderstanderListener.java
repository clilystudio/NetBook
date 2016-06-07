package com.iflytek.speech;

import android.os.Bundle;
import android.os.IInterface;

public abstract interface SpeechUnderstanderListener extends IInterface
{
  public abstract void onBeginOfSpeech();

  public abstract void onEndOfSpeech();

  public abstract void onError(int paramInt);

  public abstract void onEvent(int paramInt1, int paramInt2, int paramInt3, Bundle paramBundle);

  public abstract void onResult(UnderstanderResult paramUnderstanderResult);

  public abstract void onVolumeChanged(int paramInt, byte[] paramArrayOfByte);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.SpeechUnderstanderListener
 * JD-Core Version:    0.6.0
 */