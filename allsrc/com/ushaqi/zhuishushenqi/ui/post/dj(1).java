package com.ushaqi.zhuishushenqi.ui.post;

import android.support.design.widget.am;

final class dj
  implements Runnable
{
  dj(di paramdi)
  {
  }

  public final void run()
  {
    if (!am.a(ReviewListActivity.f(this.a.a)))
      ReviewListActivity.f(this.a.a).cancel(true);
    ReviewListActivity.a(this.a.a, new dp(this.a.a, 0));
    dp localdp = ReviewListActivity.j(this.a.a);
    String[] arrayOfString = new String[3];
    arrayOfString[0] = ReviewListActivity.g(this.a.a);
    arrayOfString[1] = ReviewListActivity.h(this.a.a);
    arrayOfString[2] = ReviewListActivity.i(this.a.a);
    localdp.b(arrayOfString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dj
 * JD-Core Version:    0.6.0
 */