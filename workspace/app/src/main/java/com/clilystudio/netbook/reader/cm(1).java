package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View.OnClickListener;

final class cm
  implements View.OnClickListener
{
  cm(ReaderTtsSetWidget paramReaderTtsSetWidget, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    if (!ReaderTtsSetWidget.a(this.b, ReaderTtsSetWidget.h(this.b)[this.a]))
      ReaderTtsSetWidget.c(this.b, this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.cm
 * JD-Core Version:    0.6.0
 */