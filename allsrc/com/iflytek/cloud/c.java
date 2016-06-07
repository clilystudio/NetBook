package com.iflytek.cloud;

import com.iflytek.speech.GrammarListener.Stub;

class c extends GrammarListener.Stub
{
  c(SpeechRecognizer paramSpeechRecognizer, GrammarListener paramGrammarListener)
  {
  }

  public void onBuildFinish(String paramString, int paramInt)
  {
    GrammarListener localGrammarListener;
    if (this.a != null)
    {
      localGrammarListener = this.a;
      if (paramInt != 0)
        break label29;
    }
    label29: for (SpeechError localSpeechError = null; ; localSpeechError = new SpeechError(paramInt))
    {
      localGrammarListener.onBuildFinish(paramString, localSpeechError);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.c
 * JD-Core Version:    0.6.0
 */