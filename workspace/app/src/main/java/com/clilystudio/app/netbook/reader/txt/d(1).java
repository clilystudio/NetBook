package com.clilystudio.app.netbook.reader.txt;

import android.os.Bundle;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SynthesizerListener;
import java.util.LinkedList;

final class d
  implements SynthesizerListener
{
  d(ReaderTxtActivity paramReaderTxtActivity)
  {
  }

  public final void onBufferProgress(int paramInt1, int paramInt2, int paramInt3, String paramString)
  {
  }

  public final void onCompleted(SpeechError paramSpeechError)
  {
    if (ReaderTxtActivity.w(this.a) < -1 + ReaderTxtActivity.x(this.a).length)
    {
      ReaderTxtActivity.A(this.a);
      ReaderTxtActivity.c(this.a, false);
      return;
    }
    ReaderTxtActivity.z(this.a);
  }

  public final void onEvent(int paramInt1, int paramInt2, int paramInt3, Bundle paramBundle)
  {
  }

  public final void onSpeakBegin()
  {
  }

  public final void onSpeakPaused()
  {
  }

  public final void onSpeakProgress(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((ReaderTxtActivity.w(this.a) == -1 + ReaderTxtActivity.x(this.a).length) && (paramInt1 >= -1 + ((Integer)ReaderTxtActivity.y(this.a).get(0)).intValue()) && (((Integer)ReaderTxtActivity.y(this.a).get(0)).intValue() < 100))
      ReaderTxtActivity.z(this.a);
  }

  public final void onSpeakResumed()
  {
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.d
 * JD-Core Version:    0.6.2
 */