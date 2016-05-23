package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.am_CommonUtils;

final class aL
  implements Runnable
{
  aL(aK paramaK)
  {
  }

  public final void run()
  {
    if (!am_CommonUtils.a_isTaskStoped(BookTopicListFragment.b(this.a.a)))
      BookTopicListFragment.b(this.a.a).cancel(true);
    BookTopicListFragment.c(this.a.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.aL
 * JD-Core Version:    0.6.2
 */