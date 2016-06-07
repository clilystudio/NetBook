package com.ushaqi.zhuishushenqi.reader.random;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.random.r
 * JD-Core Version:    0.6.0
 */