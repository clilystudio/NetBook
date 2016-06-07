package com.iflytek.cloud;

import com.iflytek.speech.LexiconListener.Stub;

class d extends LexiconListener.Stub
{
  d(SpeechRecognizer paramSpeechRecognizer, LexiconListener paramLexiconListener)
  {
  }

  public void onLexiconUpdated(String paramString, int paramInt)
  {
    LexiconListener localLexiconListener;
    if (this.a != null)
    {
      localLexiconListener = this.a;
      if (paramInt != 0)
        break label29;
    }
    label29: for (SpeechError localSpeechError = null; ; localSpeechError = new SpeechError(paramInt))
    {
      localLexiconListener.onLexiconUpdated(paramString, localSpeechError);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.d
 * JD-Core Version:    0.6.0
 */