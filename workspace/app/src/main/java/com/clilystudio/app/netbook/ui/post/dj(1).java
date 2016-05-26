package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;

final class dj
  implements Runnable
{
  dj(di paramdi)
  {
  }

  public final void run()
  {
    if (!am_CommonUtils.a_isTaskStoped(ReviewListActivity.f(this.a.a)))
      ReviewListActivity.f(this.a.a).cancel(true);
    ReviewListActivity.a(this.a.a, new dp(this.a.a, (byte)0));
    dp localdp = ReviewListActivity.j(this.a.a);
    String[] arrayOfString = new String[3];
    arrayOfString[0] = ReviewListActivity.g(this.a.a);
    arrayOfString[1] = ReviewListActivity.h(this.a.a);
    arrayOfString[2] = ReviewListActivity.i(this.a.a);
    localdp.b(arrayOfString);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dj
 * JD-Core Version:    0.6.2
 */