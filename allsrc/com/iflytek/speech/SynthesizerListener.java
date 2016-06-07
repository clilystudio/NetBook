package com.iflytek.speech;

import android.os.Bundle;
import android.os.IInterface;

public abstract interface SynthesizerListener extends IInterface
{
  public abstract void onBufferProgress(int paramInt1, int paramInt2, int paramInt3, String paramString);

  public abstract void onCompleted(int paramInt);

  public abstract void onEvent(int paramInt1, int paramInt2, int paramInt3, Bundle paramBundle);

  public abstract void onSpeakBegin();

  public abstract void onSpeakPaused();

  public abstract void onSpeakProgress(int paramInt1, int paramInt2, int paramInt3);

  public abstract void onSpeakResumed();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.SynthesizerListener
 * JD-Core Version:    0.6.0
 */