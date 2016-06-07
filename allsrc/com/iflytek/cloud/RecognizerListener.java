package com.iflytek.cloud;

import android.os.Bundle;

public abstract interface RecognizerListener
{
  public abstract void onBeginOfSpeech();

  public abstract void onEndOfSpeech();

  public abstract void onError(SpeechError paramSpeechError);

  public abstract void onEvent(int paramInt1, int paramInt2, int paramInt3, Bundle paramBundle);

  public abstract void onResult(RecognizerResult paramRecognizerResult, boolean paramBoolean);

  public abstract void onVolumeChanged(int paramInt, byte[] paramArrayOfByte);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.RecognizerListener
 * JD-Core Version:    0.6.0
 */