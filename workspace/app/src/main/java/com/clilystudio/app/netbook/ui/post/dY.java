package com.clilystudio.app.netbook.ui.post;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dY
 * JD-Core Version:    0.6.2
 */