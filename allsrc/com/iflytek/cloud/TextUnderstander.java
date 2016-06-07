package com.iflytek.cloud;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.a.a.a.a;
import com.iflytek.speech.TextUnderstanderAidl;

public class TextUnderstander extends com.iflytek.cloud.a.a.a
{
  private static TextUnderstander c = null;
  private TextUnderstanderAidl a = null;
  private TextUnderstander.a d = null;
  private InitListener e = null;
  private Handler f = new m(this, Looper.getMainLooper());

  protected TextUnderstander(Context paramContext, InitListener paramInitListener)
  {
    this.e = paramInitListener;
    SpeechUtility localSpeechUtility = SpeechUtility.getUtility();
    if ((localSpeechUtility != null) && (localSpeechUtility.a()) && (localSpeechUtility.getEngineMode() != a.a.a))
      this.a = new TextUnderstanderAidl(paramContext.getApplicationContext(), paramInitListener);
    do
      return;
    while (paramInitListener == null);
    Message.obtain(this.f, 0, 0, 0, null).sendToTarget();
  }

  public static TextUnderstander createTextUnderstander(Context paramContext, InitListener paramInitListener)
  {
    monitorenter;
    try
    {
      if (c == null)
        c = new TextUnderstander(paramContext, paramInitListener);
      TextUnderstander localTextUnderstander = c;
      return localTextUnderstander;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static TextUnderstander getTextUnderstander()
  {
    return c;
  }

  protected void a(Context paramContext)
  {
    SpeechUtility localSpeechUtility = SpeechUtility.getUtility();
    if ((localSpeechUtility != null) && (localSpeechUtility.a()) && (localSpeechUtility.getEngineMode() != a.a.a))
    {
      if ((this.a != null) && (!this.a.isAvailable()))
      {
        this.a.destory();
        this.a = null;
      }
      this.a = new TextUnderstanderAidl(paramContext.getApplicationContext(), this.e);
    }
    do
      return;
    while ((this.e == null) || (this.a == null));
    this.a.destory();
    this.a = null;
  }

  public void cancel()
  {
    if ((this.a != null) && (this.a.isUnderstanding()))
    {
      this.a.cancel(TextUnderstander.a.a(this.d));
      return;
    }
    com.iflytek.cloud.a.b.a.a.b("SpeechUnderstander cancel failed, is not running");
  }

  public boolean destroy()
  {
    if (this.a != null)
    {
      this.a.destory();
      this.a = null;
    }
    c = null;
    return true;
  }

  public String getParameter(String paramString)
  {
    return super.getParameter(paramString);
  }

  public boolean isUnderstanding()
  {
    return (this.a != null) && (this.a.isUnderstanding());
  }

  public boolean setParameter(String paramString1, String paramString2)
  {
    return super.setParameter(paramString1, paramString2);
  }

  public int understandText(String paramString, TextUnderstanderListener paramTextUnderstanderListener)
  {
    if (this.a == null)
      return 21001;
    this.a.setParameter("params", null);
    this.a.setParameter("params", this.b.toString());
    this.d = new TextUnderstander.a(this, paramTextUnderstanderListener);
    return this.a.understandText(paramString, TextUnderstander.a.a(this.d));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.TextUnderstander
 * JD-Core Version:    0.6.0
 */