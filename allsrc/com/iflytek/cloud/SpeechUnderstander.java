package com.iflytek.cloud;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.a.a.a.a;
import com.iflytek.speech.SpeechUnderstanderAidl;

public class SpeechUnderstander extends com.iflytek.cloud.a.a.a
{
  protected static SpeechUnderstander a = null;
  private SpeechUnderstanderAidl c = null;
  private SpeechUnderstander.a d = null;
  private InitListener e = null;
  private Handler f = new j(this, Looper.getMainLooper());

  protected SpeechUnderstander(Context paramContext, InitListener paramInitListener)
  {
    this.e = paramInitListener;
    SpeechUtility localSpeechUtility = SpeechUtility.getUtility();
    if ((localSpeechUtility != null) && (localSpeechUtility.a()) && (localSpeechUtility.getEngineMode() != a.a.a))
      this.c = new SpeechUnderstanderAidl(paramContext.getApplicationContext(), paramInitListener);
    do
      return;
    while (paramInitListener == null);
    Message.obtain(this.f, 0, 0, 0, null).sendToTarget();
  }

  public static SpeechUnderstander createUnderstander(Context paramContext, InitListener paramInitListener)
  {
    monitorenter;
    try
    {
      if (a == null)
        a = new SpeechUnderstander(paramContext, paramInitListener);
      SpeechUnderstander localSpeechUnderstander = a;
      return localSpeechUnderstander;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static SpeechUnderstander getUnderstander()
  {
    return a;
  }

  protected void a(Context paramContext)
  {
    SpeechUtility localSpeechUtility = SpeechUtility.getUtility();
    if ((localSpeechUtility != null) && (localSpeechUtility.a()) && (localSpeechUtility.getEngineMode() != a.a.a))
    {
      if ((this.c != null) && (!this.c.isAvailable()))
      {
        this.c.destory();
        this.c = null;
      }
      this.c = new SpeechUnderstanderAidl(paramContext.getApplicationContext(), this.e);
    }
    do
      return;
    while ((this.e == null) || (this.c == null));
    this.c.destory();
    this.c = null;
  }

  public void cancel()
  {
    if ((this.c != null) && (this.c.isUnderstanding()))
    {
      this.c.cancel(SpeechUnderstander.a.a(this.d));
      return;
    }
    com.iflytek.cloud.a.b.a.a.b("SpeechUnderstander cancel failed, is not running");
  }

  public boolean destroy()
  {
    if (this.c != null)
    {
      this.c.destory();
      this.c = null;
    }
    a = null;
    return true;
  }

  public String getParameter(String paramString)
  {
    return super.getParameter(paramString);
  }

  public boolean isUnderstanding()
  {
    return (this.c != null) && (this.c.isUnderstanding());
  }

  public boolean setParameter(String paramString1, String paramString2)
  {
    return super.setParameter(paramString1, paramString2);
  }

  public int startUnderstanding(SpeechUnderstanderListener paramSpeechUnderstanderListener)
  {
    if (this.c == null)
      return 21001;
    this.c.setParameter("params", null);
    this.c.setParameter("params", this.b.toString());
    this.d = new SpeechUnderstander.a(this, paramSpeechUnderstanderListener);
    return this.c.startUnderstanding(SpeechUnderstander.a.a(this.d));
  }

  public void stopUnderstanding()
  {
    if ((this.c != null) && (this.c.isUnderstanding()))
    {
      this.c.stopUnderstanding(SpeechUnderstander.a.a(this.d));
      return;
    }
    com.iflytek.cloud.a.b.a.a.a("SpeechUnderstander stopUnderstanding, is not understanding");
  }

  public int writeAudio(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((this.c != null) && (this.c.isUnderstanding()))
      return this.c.writeAudio(paramArrayOfByte, paramInt1, paramInt2);
    com.iflytek.cloud.a.b.a.a.a("SpeechUnderstander writeAudio, is not understanding");
    return 21004;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.SpeechUnderstander
 * JD-Core Version:    0.6.0
 */