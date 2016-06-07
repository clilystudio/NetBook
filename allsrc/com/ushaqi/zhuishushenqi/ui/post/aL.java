package com.ushaqi.zhuishushenqi.ui.post;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.aL
 * JD-Core Version:    0.6.0
 */