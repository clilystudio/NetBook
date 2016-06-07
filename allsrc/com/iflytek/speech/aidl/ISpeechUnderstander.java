package com.iflytek.speech.aidl;

import android.content.Intent;
import android.os.IInterface;
import com.iflytek.speech.SpeechUnderstanderListener;

public abstract interface ISpeechUnderstander extends IInterface
{
  public abstract void cancel(SpeechUnderstanderListener paramSpeechUnderstanderListener);

  public abstract boolean isUnderstanding();

  public abstract void startUnderstanding(Intent paramIntent, SpeechUnderstanderListener paramSpeechUnderstanderListener);

  public abstract void stopUnderstanding(SpeechUnderstanderListener paramSpeechUnderstanderListener);

  public abstract void writeAudio(Intent paramIntent, byte[] paramArrayOfByte, int paramInt1, int paramInt2);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.aidl.ISpeechUnderstander
 * JD-Core Version:    0.6.0
 */