package com.iflytek.cloud;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.iflytek.speech.SynthesizerListener.Stub;

class h extends SynthesizerListener.Stub
{
  h(SpeechSynthesizer.a parama, SpeechSynthesizer paramSpeechSynthesizer)
  {
  }

  public void onBufferProgress(int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
    if (SpeechSynthesizer.a.a(this.b) != null)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("percent", paramInt1);
      localBundle.putInt("begpos", paramInt2);
      localBundle.putInt("endpos", paramInt3);
      localBundle.putString("spellinfo", "");
      if (SpeechSynthesizer.a.a(this.b) != null)
        Message.obtain(SpeechSynthesizer.a.b(this.b), 2, localBundle).sendToTarget();
    }
  }

  public void onCompleted(int paramInt)
  {
    Handler localHandler;
    if (SpeechSynthesizer.a.a(this.b) != null)
    {
      localHandler = SpeechSynthesizer.a.b(this.b);
      if (paramInt != 0)
        break label35;
    }
    label35: for (Object localObject = null; ; localObject = new SpeechError(paramInt))
    {
      Message.obtain(localHandler, 6, localObject).sendToTarget();
      return;
    }
  }

  public void onEvent(int paramInt1, int paramInt2, int paramInt3, Bundle paramBundle)
  {
    if (SpeechSynthesizer.a.a(this.b) != null)
    {
      Message localMessage = Message.obtain();
      localMessage.what = paramInt1;
      localMessage.arg1 = 0;
      localMessage.arg2 = 0;
      localMessage.obj = paramBundle;
      Message.obtain(SpeechSynthesizer.a.b(this.b), 7, 0, 0, localMessage).sendToTarget();
    }
  }

  public void onSpeakBegin()
  {
    if (SpeechSynthesizer.a.a(this.b) != null)
      Message.obtain(SpeechSynthesizer.a.b(this.b), 1).sendToTarget();
  }

  public void onSpeakPaused()
  {
    if (SpeechSynthesizer.a.a(this.b) != null)
      Message.obtain(SpeechSynthesizer.a.b(this.b), 3).sendToTarget();
  }

  public void onSpeakProgress(int paramInt1, int paramInt2, int paramInt3)
  {
    if (SpeechSynthesizer.a.a(this.b) != null)
      Message.obtain(SpeechSynthesizer.a.b(this.b), 5, paramInt1, paramInt2, Integer.valueOf(paramInt3)).sendToTarget();
  }

  public void onSpeakResumed()
  {
    if (SpeechSynthesizer.a.a(this.b) != null)
      Message.obtain(SpeechSynthesizer.a.b(this.b), 4, 0, 0, null).sendToTarget();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.h
 * JD-Core Version:    0.6.0
 */