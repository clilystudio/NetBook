package com.ushaqi.zhuishushenqi.reader;

import android.view.View.OnSystemUiVisibilityChangeListener;

final class aV
  implements View.OnSystemUiVisibilityChangeListener
{
  aV(ReaderActivity paramReaderActivity)
  {
  }

  public final void onSystemUiVisibilityChange(int paramInt)
  {
    ReaderActivity localReaderActivity = this.a;
    if ((paramInt & 0x1) == 0);
    for (boolean bool = true; ; bool = false)
    {
      ReaderActivity.f(localReaderActivity, bool);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.aV
 * JD-Core Version:    0.6.0
 */