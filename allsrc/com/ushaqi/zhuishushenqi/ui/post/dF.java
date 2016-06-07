package com.ushaqi.zhuishushenqi.ui.post;

import android.support.design.widget.am;

final class dF
  implements Runnable
{
  dF(dE paramdE)
  {
  }

  public final void run()
  {
    if (!am.a(TweetHotFragment.b(this.a.a)))
      TweetHotFragment.b(this.a.a).cancel(true);
    TweetHotFragment.c(this.a.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dF
 * JD-Core Version:    0.6.0
 */