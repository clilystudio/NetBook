package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View.OnClickListener;

final class ci
  implements View.OnClickListener
{
  ci(ReaderTtsSetWidget paramReaderTtsSetWidget)
  {
  }

  public final void onClick(View paramView)
  {
    ReaderTtsSetWidget.a(this.a, ReaderTtsSetWidget.b(this.a), true);
    ReaderTtsSetWidget.a(this.a, true);
    ReaderTtsSetWidget.a(this.a, -1);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.ci
 * JD-Core Version:    0.6.0
 */