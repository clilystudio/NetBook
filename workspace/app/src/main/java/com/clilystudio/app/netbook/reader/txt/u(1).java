package com.clilystudio.app.netbook.reader.txt;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.txt.u
 * JD-Core Version:    0.6.2
 */