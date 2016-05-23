package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.am_CommonUtils;

final class bC
  implements Runnable
{
  bC(bB parambB)
  {
  }

  public final void run()
  {
    if (!am_CommonUtils.a_isTaskStoped(GirlTopicListActivity.e(this.a.a)))
      GirlTopicListActivity.e(this.a.a).cancel(true);
    GirlTopicListActivity.a(this.a.a, new bJ(this.a.a, (byte)0));
    bJ localbJ = GirlTopicListActivity.h(this.a.a);
    String[] arrayOfString = new String[2];
    arrayOfString[0] = GirlTopicListActivity.f(this.a.a);
    arrayOfString[1] = GirlTopicListActivity.g(this.a.a);
    localbJ.b(arrayOfString);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bC
 * JD-Core Version:    0.6.2
 */