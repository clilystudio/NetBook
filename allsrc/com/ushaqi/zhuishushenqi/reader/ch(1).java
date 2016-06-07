package com.ushaqi.zhuishushenqi.reader;

import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

final class ch
  implements SeekBar.OnSeekBarChangeListener
{
  ch(ReaderTtsSetWidget paramReaderTtsSetWidget)
  {
  }

  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
  }

  public final void onStartTrackingTouch(SeekBar paramSeekBar)
  {
  }

  public final void onStopTrackingTouch(SeekBar paramSeekBar)
  {
    ReaderTtsSetWidget.a(this.a, false);
    ReaderTtsSetWidget.a(this.a).a(false);
    ReaderTtsSetWidget.a(this.a).a(paramSeekBar.getProgress());
    ReaderTtsSetWidget.a(this.a).a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.ch
 * JD-Core Version:    0.6.0
 */