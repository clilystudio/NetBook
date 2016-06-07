package com.clilystudio.netbook.ui.post;

import android.support.design.widget.am;

final class dY
  implements Runnable
{
  dY(dX paramdX)
  {
  }

  public final void run()
  {
    if (!am.a(TweetTimelineFragment.b(this.a.a)))
      TweetTimelineFragment.b(this.a.a).cancel(true);
    TweetTimelineFragment.c(this.a.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.dY
 * JD-Core Version:    0.6.0
 */