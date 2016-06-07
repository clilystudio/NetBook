package com.clilystudio.netbook.ui.post;

import android.support.design.widget.am;

final class bM
  implements Runnable
{
  bM(bL parambL)
  {
  }

  public final void run()
  {
    if (!am.a(MyTweetFragment.b(this.a.a)))
      MyTweetFragment.b(this.a.a).cancel(true);
    MyTweetFragment.c(this.a.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.bM
 * JD-Core Version:    0.6.0
 */