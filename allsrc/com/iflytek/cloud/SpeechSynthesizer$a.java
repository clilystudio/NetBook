package com.iflytek.cloud;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class SpeechSynthesizer$a
  implements SynthesizerListener
{
  private SynthesizerListener b = null;
  private com.iflytek.speech.SynthesizerListener c = null;
  private Handler d = new i(this, Looper.getMainLooper());

  public SpeechSynthesizer$a(SpeechSynthesizer paramSpeechSynthesizer, SynthesizerListener paramSynthesizerListener)
  {
    this.b = paramSynthesizerListener;
    this.c = new h(this, paramSpeechSynthesizer);
  }

  public final void onBufferProgress(int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    if (this.b != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("percent", paramInt1);
      localBundle.putInt("begpos", paramInt2);
      localBundle.putInt("endpos", paramInt3);
      localBundle.putString("spellinfo", paramString);
      if (this.b != null)
        Message.obtain(this.d, 2, localBundle).sendToTarget();
    }
  }

  public final void onCompleted(SpeechError paramSpeechError)
  {
    if (this.b != null)
      Message.obtain(this.d, 6, paramSpeechError).sendToTarget();
  }

  public final void onEvent(int paramInt1, int paramInt2, int paramInt3, Bundle paramBundle)
  {
    if (this.b != null)
    {
      Message localMessage = Message.obtain();
      localMessage.what = paramInt1;
      localMessage.arg1 = 0;
      localMessage.arg2 = 0;
      localMessage.obj = paramBundle;
      Message.obtain(this.d, 7, 0, 0, localMessage).sendToTarget();
    }
  }

  public final void onSpeakBegin()
  {
    if (this.b != null)
      Message.obtain(this.d, 1).sendToTarget();
  }

  public final void onSpeakPaused()
  {
    if (this.b != null)
      Message.obtain(this.d, 3).sendToTarget();
  }

  public final void onSpeakProgress(int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.b != null)
      Message.obtain(this.d, 5, paramInt1, paramInt2, Integer.valueOf(paramInt3)).sendToTarget();
  }

  public final void onSpeakResumed()
  {
    if (this.b != null)
      Message.obtain(this.d, 4).sendToTarget();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.SpeechSynthesizer.a
 * JD-Core Version:    0.6.0
 */