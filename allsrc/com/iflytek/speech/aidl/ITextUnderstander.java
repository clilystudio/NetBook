package com.iflytek.speech.aidl;

import android.content.Intent;
import android.os.IInterface;
import com.iflytek.speech.TextUnderstanderListener;

public abstract interface ITextUnderstander extends IInterface
{
  public abstract void cancel(TextUnderstanderListener paramTextUnderstanderListener);

  public abstract boolean isUnderstanding();

  public abstract void understandText(Intent paramIntent, TextUnderstanderListener paramTextUnderstanderListener);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.aidl.ITextUnderstander
 * JD-Core Version:    0.6.0
 */