package com.clilystudio.netbook.ui.post;

import android.support.design.widget.am;

final class dK
  implements Runnable
{
  dK(dJ paramdJ)
  {
  }

  public final void run()
  {
    if (!am.a(TweetListFragment.b(this.a.a)))
      TweetListFragment.b(this.a.a).cancel(true);
    TweetListFragment.c(this.a.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.dK
 * JD-Core Version:    0.6.0
 */