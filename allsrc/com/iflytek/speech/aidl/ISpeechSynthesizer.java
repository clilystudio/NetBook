package com.iflytek.speech.aidl;

import android.content.Intent;
import android.os.IInterface;
import com.iflytek.speech.SynthesizerListener;

public abstract interface ISpeechSynthesizer extends IInterface
{
  public abstract String getLocalSpeakerList();

  public abstract boolean isSpeaking();

  public abstract int pauseSpeaking(SynthesizerListener paramSynthesizerListener);

  public abstract int resumeSpeaking(SynthesizerListener paramSynthesizerListener);

  public abstract int startSpeaking(Intent paramIntent, SynthesizerListener paramSynthesizerListener);

  public abstract int stopSpeaking(SynthesizerListener paramSynthesizerListener);

  public abstract int synthesizeToUrl(Intent paramIntent, SynthesizerListener paramSynthesizerListener);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.aidl.ISpeechSynthesizer
 * JD-Core Version:    0.6.0
 */