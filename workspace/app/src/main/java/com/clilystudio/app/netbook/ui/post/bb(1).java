package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;

final class bb
  implements Runnable
{
  bb(ba paramba)
  {
  }

  public final void run()
  {
    if (!am_CommonUtils.a_isTaskStoped(CommonPostListActivity.c(this.a.a)))
      CommonPostListActivity.c(this.a.a).cancel(true);
    CommonPostListActivity.a(this.a.a, new bi(this.a.a, (byte)0));
    bi localbi = CommonPostListActivity.f(this.a.a);
    String[] arrayOfString = new String[2];
    arrayOfString[0] = CommonPostListActivity.d(this.a.a);
    arrayOfString[1] = CommonPostListActivity.e(this.a.a);
    localbi.b(arrayOfString);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bb
 * JD-Core Version:    0.6.2
 */