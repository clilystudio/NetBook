package com.iflytek.speech;

import android.content.Intent;

public abstract interface ISpeechModule
{
  public abstract boolean destory();

  public abstract Intent getIntent();

  public abstract String getParameter(String paramString);

  public abstract boolean isAvailable();

  public abstract int setParameter(String paramString1, String paramString2);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.ISpeechModule
 * JD-Core Version:    0.6.0
 */