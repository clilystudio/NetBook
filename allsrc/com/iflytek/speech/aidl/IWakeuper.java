package com.iflytek.speech.aidl;

import android.content.Intent;
import android.os.IInterface;
import com.iflytek.speech.WakeuperListener;

public abstract interface IWakeuper extends IInterface
{
  public abstract void cancel(WakeuperListener paramWakeuperListener);

  public abstract void destroy();

  public abstract boolean isListening();

  public abstract void startListening(Intent paramIntent, WakeuperListener paramWakeuperListener);

  public abstract void stopListening(WakeuperListener paramWakeuperListener);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.speech.aidl.IWakeuper
 * JD-Core Version:    0.6.0
 */