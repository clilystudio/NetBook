package com.clilystudio.app.netbook.reader.random;

import android.view.View.OnSystemUiVisibilityChangeListener;

final class r
  implements View.OnSystemUiVisibilityChangeListener
{
  r(ReaderRandomActivity paramReaderRandomActivity)
  {
  }

  public final void onSystemUiVisibilityChange(int paramInt)
  {
    ReaderRandomActivity localReaderRandomActivity = this.a;
    if ((paramInt & 0x1) == 0);
    for (boolean bool = true; ; bool = false)
    {
      ReaderRandomActivity.b(localReaderRandomActivity, bool);
      return;
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.random.r
 * JD-Core Version:    0.6.2
 */