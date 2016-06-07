package android.support.v4.speech.tts;

import android.speech.tts.UtteranceProgressListener;

final class TextToSpeechICSMR1$1 extends UtteranceProgressListener
{
  public final void onDone(String paramString)
  {
    this.val$listener.onDone(paramString);
  }

  public final void onError(String paramString)
  {
    this.val$listener.onError(paramString);
  }

  public final void onStart(String paramString)
  {
    this.val$listener.onStart(paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.speech.tts.TextToSpeechICSMR1.1
 * JD-Core Version:    0.6.0
 */