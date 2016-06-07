package com.iflytek.speech;

import android.os.IInterface;

public abstract interface LexiconListener extends IInterface
{
  public abstract void onLexiconUpdated(String paramString, int paramInt);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.LexiconListener
 * JD-Core Version:    0.6.0
 */