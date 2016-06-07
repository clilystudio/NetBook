package android.support.v4.speech.tts;

import android.speech.tts.TextToSpeech.OnUtteranceCompletedListener;

final class TextToSpeechICSMR1$2
  implements TextToSpeech.OnUtteranceCompletedListener
{
  public final void onUtteranceCompleted(String paramString)
  {
    this.val$listener.onStart(paramString);
    this.val$listener.onDone(paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.speech.tts.TextToSpeechICSMR1.2
 * JD-Core Version:    0.6.0
 */