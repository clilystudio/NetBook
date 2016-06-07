package com.iflytek.cloud;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.a.a.a.a;
import com.iflytek.speech.SpeechRecognizerAidl;

public final class SpeechRecognizer extends com.iflytek.cloud.a.a.a
{
  private static SpeechRecognizer a = null;
  private SpeechRecognizerAidl c = null;
  private SpeechRecognizer.a d = null;
  private InitListener e = null;
  private Handler f = new b(this, Looper.getMainLooper());

  protected SpeechRecognizer(Context paramContext, InitListener paramInitListener)
  {
    this.e = paramInitListener;
    SpeechUtility localSpeechUtility = SpeechUtility.getUtility();
    if ((localSpeechUtility != null) && (localSpeechUtility.a()) && (localSpeechUtility.getEngineMode() != a.a.a))
      this.c = new SpeechRecognizerAidl(paramContext.getApplicationContext(), paramInitListener);
    do
      return;
    while (paramInitListener == null);
    Message.obtain(this.f, 0, 0, 0, null).sendToTarget();
  }

  public static SpeechRecognizer createRecognizer(Context paramContext, InitListener paramInitListener)
  {
    monitorenter;
    try
    {
      if (a == null)
        a = new SpeechRecognizer(paramContext, paramInitListener);
      SpeechRecognizer localSpeechRecognizer = a;
      return localSpeechRecognizer;
    }
    finally
    {
      monitorexit;
    }
    throw localObject;
  }

  public static SpeechRecognizer getRecognizer()
  {
    return a;
  }

  protected final void a(Context paramContext)
  {
    SpeechUtility localSpeechUtility = SpeechUtility.getUtility();
    if ((localSpeechUtility != null) && (localSpeechUtility.a()) && (localSpeechUtility.getEngineMode() != a.a.a))
    {
      if ((this.c != null) && (!this.c.isAvailable()))
      {
        this.c.destory();
        this.c = null;
      }
      this.c = new SpeechRecognizerAidl(paramContext.getApplicationContext(), this.e);
    }
    do
      return;
    while ((this.e == null) || (this.c == null));
    this.c.destory();
    this.c = null;
  }

  public final int buildGrammar(String paramString1, String paramString2, GrammarListener paramGrammarListener)
  {
    if (this.c == null)
      return 21001;
    this.c.setParameter("params", null);
    this.c.setParameter("params", this.b.toString());
    c localc = new c(this, paramGrammarListener);
    return this.c.buildGrammar(paramString1, paramString2, localc);
  }

  public final void cancel()
  {
    if ((this.c != null) && (this.c.isListening()))
    {
      if (this.d != null)
        this.c.cancel(SpeechRecognizer.a.c(this.d));
      return;
    }
    com.iflytek.cloud.a.b.a.a.b("SpeechRecognizer cancel failed, is not running");
  }

  public final boolean destroy()
  {
    if (this.c != null)
    {
      this.c.destory();
      this.c = null;
    }
    a = null;
    return true;
  }

  public final String getParameter(String paramString)
  {
    return super.getParameter(paramString);
  }

  public final boolean isListening()
  {
    return (this.c != null) && (this.c.isListening());
  }

  public final boolean setParameter(String paramString1, String paramString2)
  {
    return super.setParameter(paramString1, paramString2);
  }

  public final int startListening(RecognizerListener paramRecognizerListener)
  {
    if (this.c == null)
      return 21001;
    this.c.setParameter("params", null);
    this.c.setParameter("params", this.b.toString());
    this.d = new SpeechRecognizer.a(this, paramRecognizerListener);
    return this.c.startListening(SpeechRecognizer.a.c(this.d));
  }

  public final void stopListening()
  {
    if ((this.c != null) && (this.c.isListening()))
    {
      if (this.d != null)
        this.c.stopListening(SpeechRecognizer.a.c(this.d));
      return;
    }
    com.iflytek.cloud.a.b.a.a.b("SpeechRecognizer stopListening failed, is not running");
  }

  public final int updateLexicon(String paramString1, String paramString2, LexiconListener paramLexiconListener)
  {
    if (this.c == null)
      return 21001;
    this.c.setParameter("params", null);
    this.c.setParameter("params", this.b.toString());
    d locald = new d(this, paramLexiconListener);
    return this.c.updateLexicon(paramString1, paramString2, locald);
  }

  public final int writeAudio(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if ((this.c != null) && (this.c.isListening()))
      return this.c.writeAudio(paramArrayOfByte, paramInt1, paramInt2);
    com.iflytek.cloud.a.b.a.a.b("SpeechRecognizer writeAudio failed, is not running");
    return 21004;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.SpeechRecognizer
 * JD-Core Version:    0.6.0
 */