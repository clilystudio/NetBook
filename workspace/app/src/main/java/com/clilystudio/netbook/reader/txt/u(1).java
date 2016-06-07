package com.clilystudio.netbook.reader.txt;

import android.view.View.OnSystemUiVisibilityChangeListener;

final class u
  implements View.OnSystemUiVisibilityChangeListener
{
  u(ReaderTxtActivity paramReaderTxtActivity)
  {
  }

  public final void onSystemUiVisibilityChange(int paramInt)
  {
    ReaderTxtActivity localReaderTxtActivity = this.a;
    if ((paramInt & 0x1) == 0);
    for (boolean bool = true; ; bool = false)
    {
      ReaderTxtActivity.d(localReaderTxtActivity, bool);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.txt.u
 * JD-Core Version:    0.6.0
 */