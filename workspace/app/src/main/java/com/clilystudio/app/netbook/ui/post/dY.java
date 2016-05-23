package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.am_CommonUtils;

final class dY
  implements Runnable
{
  dY(dX paramdX)
  {
  }

  public final void run()
  {
    if (!am_CommonUtils.a_isTaskStoped(TweetTimelineFragment.b(this.a.a)))
      TweetTimelineFragment.b(this.a.a).cancel(true);
    TweetTimelineFragment.c(this.a.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dY
 * JD-Core Version:    0.6.2
 */