package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.util.am_CommonUtils;

final class ca
  implements Runnable
{
  ca(bZ parambZ)
  {
  }

  public final void run()
  {
    if (!am_CommonUtils.a_isTaskStoped(OtherUserActivity.b(this.a.a)))
      OtherUserActivity.b(this.a.a).cancel(true);
    OtherUserActivity.c(this.a.a);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.ca
 * JD-Core Version:    0.6.2
 */