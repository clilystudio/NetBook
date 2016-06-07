package com.iflytek.cloud;

public abstract interface TextUnderstanderListener
{
  public abstract void onError(SpeechError paramSpeechError);

  public abstract void onResult(UnderstanderResult paramUnderstanderResult);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.TextUnderstanderListener
 * JD-Core Version:    0.6.0
 */