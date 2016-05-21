package com.clilystudio.app.netbook.ui.post;

import android.support.design.widget.am;

final class dF
  implements Runnable
{
  dF(dE paramdE)
  {
  }

  public final void run()
  {
    if (!am_CommonUtils.1TweetHotFragment.b(this.a.a)))
      TweetHotFragment.b(this.a.a).cancel(true);
    TweetHotFragment.c(this.a.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dF
 * JD-Core Version:    0.6.2
 */