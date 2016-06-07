package com.iflytek.speech.aidl;

import android.content.Intent;
import android.os.IInterface;
import com.iflytek.speech.GrammarListener;
import com.iflytek.speech.LexiconListener;
import com.iflytek.speech.RecognizerListener;

public abstract interface ISpeechRecognizer extends IInterface
{
  public abstract void buildGrammar(Intent paramIntent, GrammarListener paramGrammarListener);

  public abstract void cancel(RecognizerListener paramRecognizerListener);

  public abstract boolean isListening();

  public abstract void startListening(Intent paramIntent, RecognizerListener paramRecognizerListener);

  public abstract void stopListening(RecognizerListener paramRecognizerListener);

  public abstract void updateLexicon(Intent paramIntent, LexiconListener paramLexiconListener);

  public abstract void writeAudio(Intent paramIntent, byte[] paramArrayOfByte, int paramInt1, int paramInt2);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.aidl.ISpeechRecognizer
 * JD-Core Version:    0.6.0
 */