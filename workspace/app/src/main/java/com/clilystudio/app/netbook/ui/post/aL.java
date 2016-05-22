package com.clilystudio.app.netbook.ui.post;

import android.support.design.widget.am;

final class aL
  implements Runnable
{
  aL(aK paramaK)
  {
  }

  public final void run()
  {
    if (!am.a(BookTopicListFragment.b(this.a.a)))
      BookTopicListFragment.b(this.a.a).cancel(true);
    BookTopicListFragment.c(this.a.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.aL
 * JD-Core Version:    0.6.2
 */