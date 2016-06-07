package com.clilystudio.netbook.reader;

import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

final class c
  implements Animation.AnimationListener
{
  c(AutoReaderTextView paramAutoReaderTextView)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    if ((AutoReaderTextView.d(this.a) != null) && (this.a.getMeasuredHeight() <= 5))
    {
      AutoReaderTextView.a(this.a, true);
      AutoReaderTextView.d(this.a).d();
    }
  }

  public final void onAnimationRepeat(Animation paramAnimation)
  {
  }

  public final void onAnimationStart(Animation paramAnimation)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.c
 * JD-Core Version:    0.6.0
 */