package com.iflytek.speech.aidl;

import android.os.IInterface;
import com.iflytek.speech.VerifierListener;

public abstract interface ISpeakerVerifier extends IInterface
{
  public abstract void endSpeak();

  public abstract String getParameter(String paramString);

  public abstract int register(String paramString1, String paramString2, VerifierListener paramVerifierListener);

  public abstract int setParameter(String paramString1, String paramString2);

  public abstract void stopSpeak();

  public abstract int verify(String paramString1, String paramString2, VerifierListener paramVerifierListener);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.aidl.ISpeakerVerifier
 * JD-Core Version:    0.6.0
 */