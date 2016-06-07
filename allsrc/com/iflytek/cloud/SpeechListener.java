package com.iflytek.cloud;

import android.os.Bundle;

public abstract interface SpeechListener
{
  public abstract void onBufferReceived(byte[] paramArrayOfByte);

  public abstract void onCompleted(SpeechError paramSpeechError);

  public abstract void onEvent(int paramInt, Bundle paramBundle);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.SpeechListener
 * JD-Core Version:    0.6.0
 */