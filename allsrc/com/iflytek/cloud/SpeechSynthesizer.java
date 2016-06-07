package com.iflytek.cloud;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.iflytek.cloud.a.a.a.a;
import com.iflytek.speech.SpeechSynthesizerAidl;

public class SpeechSynthesizer extends com.iflytek.cloud.a.a.a
{
  private static SpeechSynthesizer c = null;
  InitListener a = null;
  private SpeechSynthesizerAidl d = null;
  private SpeechSynthesizer.a e = null;
  private Handler f = new g(this, Looper.getMainLooper());

  protected SpeechSynthesizer(Context paramContext, InitListener paramInitListener)
  {
    this.a = paramInitListener;
    SpeechUtility localSpeechUtility = SpeechUtility.getUtility();
    if ((localSpeechUtility != null) && (localSpeechUtility.a()) && (localSpeechUtility.getEngineMode() != a.a.a))
    {
      this.d = new SpeechSynthesizerAidl(paramContext.getApplicationContext(), paramInitListener);
      return;
    }
    Message.obtain(this.f, 0, 0, 0, null).sendToTarget();
  }

  public static SpeechSynthesizer createSynthesizer(Context paramContext, InitListener paramInitListener)
  {
    if (c == null)
      c = new SpeechSynthesizer(paramContext, paramInitListener);
    return c;
  }

  public static SpeechSynthesizer getSynthesizer()
  {
    return c;
  }

  protected void a(Context paramContext)
  {
    SpeechUtility localSpeechUtility = SpeechUtility.getUtility();
    if ((localSpeechUtility != null) && (localSpeechUtility.a()) && (localSpeechUtility.getEngineMode() != a.a.a))
    {
      if ((this.d != null) && (!this.d.isAvailable()))
      {
        this.d.destory();
        this.d = null;
      }
      this.d = new SpeechSynthesizerAidl(paramContext.getApplicationContext(), this.a);
    }
    do
      return;
    while ((this.a == null) || (this.d == null));
    this.d.destory();
    this.d = null;
  }

  public boolean destroy()
  {
    if (this.d != null)
      this.d.destory();
    c = null;
    return true;
  }

  public String getParameter(String paramString)
  {
    if (("local_speakers".equals(paramString)) && (this.d != null))
      return this.d.getParameter(paramString);
    if (("tts_play_state".equals(paramString)) && (a("tts", this.d) == a.a.b) && (this.d != null))
      return this.d.getParameter(paramString);
    return super.getParameter(paramString);
  }

  public boolean isSpeaking()
  {
    return (this.d != null) && (this.d.isSpeaking());
  }

  public void pauseSpeaking()
  {
    if ((this.d != null) && (this.d.isSpeaking()) && (this.e != null))
      this.d.pauseSpeaking(SpeechSynthesizer.a.c(this.e));
  }

  public void resumeSpeaking()
  {
    if ((this.d != null) && (this.d.isSpeaking()) && (this.e != null))
      this.d.resumeSpeaking(SpeechSynthesizer.a.c(this.e));
  }

  public boolean setParameter(String paramString1, String paramString2)
  {
    return super.setParameter(paramString1, paramString2);
  }

  public int startSpeaking(String paramString, SynthesizerListener paramSynthesizerListener)
  {
    if (this.d == null)
      return 21001;
    this.d.setParameter("params", null);
    this.d.setParameter("params", this.b.toString());
    this.b.c("next_text");
    this.e = new SpeechSynthesizer.a(this, paramSynthesizerListener);
    return this.d.startSpeaking(paramString, SpeechSynthesizer.a.c(this.e));
  }

  public void stopSpeaking()
  {
    if ((this.d != null) && (this.d.isSpeaking()) && (this.e != null))
      this.d.stopSpeaking(SpeechSynthesizer.a.c(this.e));
  }

  public int synthesizeToUri(String paramString1, String paramString2, SynthesizerListener paramSynthesizerListener)
  {
    if (this.d == null)
      return 21001;
    this.d.setParameter("params", null);
    this.d.setParameter("params", this.b.toString());
    this.d.setParameter("tts_audio_uri", paramString2);
    this.e = new SpeechSynthesizer.a(this, paramSynthesizerListener);
    return this.d.synthesizeToUrl(paramString1, SpeechSynthesizer.a.c(this.e));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.SpeechSynthesizer
 * JD-Core Version:    0.6.0
 */