package com.iflytek.cloud;

import android.os.Bundle;

public abstract interface SynthesizerListener
{
  public abstract void onBufferProgress(int paramInt1, int paramInt2, int paramInt3, String paramString);

  public abstract void onCompleted(SpeechError paramSpeechError);

  public abstract void onEvent(int paramInt1, int paramInt2, int paramInt3, Bundle paramBundle);

  public abstract void onSpeakBegin();

  public abstract void onSpeakPaused();

  public abstract void onSpeakProgress(int paramInt1, int paramInt2, int paramInt3);

  public abstract void onSpeakResumed();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.SynthesizerListener
 * JD-Core Version:    0.6.0
 */