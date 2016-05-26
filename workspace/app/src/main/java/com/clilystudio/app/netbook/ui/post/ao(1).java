package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;

final class ao
  implements Runnable
{
  ao(an paraman)
  {
  }

  public final void run()
  {
    if (!am_CommonUtils.a_isTaskStoped(BookHelpListActivity.e(this.a.a)))
      BookHelpListActivity.e(this.a.a).cancel(true);
    BookHelpListActivity.a(this.a.a, new av(this.a.a, (byte)0));
    av localav = BookHelpListActivity.h(this.a.a);
    String[] arrayOfString = new String[2];
    arrayOfString[0] = BookHelpListActivity.f(this.a.a);
    arrayOfString[1] = BookHelpListActivity.g(this.a.a);
    localav.b(arrayOfString);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.ao
 * JD-Core Version:    0.6.2
 */