package com.clilystudio.netbook.ui.post;

import android.support.design.widget.am;

final class aA
  implements Runnable
{
  aA(az paramaz)
  {
  }

  public final void run()
  {
    if (!am.a(BookReviewListFragment.b(this.a.a)))
      BookReviewListFragment.b(this.a.a).cancel(true);
    BookReviewListFragment.c(this.a.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.aA
 * JD-Core Version:    0.6.0
 */