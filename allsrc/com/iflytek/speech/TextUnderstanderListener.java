package com.iflytek.speech;

import android.os.IInterface;

public abstract interface TextUnderstanderListener extends IInterface
{
  public abstract void onError(int paramInt);

  public abstract void onResult(UnderstanderResult paramUnderstanderResult);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.TextUnderstanderListener
 * JD-Core Version:    0.6.0
 */