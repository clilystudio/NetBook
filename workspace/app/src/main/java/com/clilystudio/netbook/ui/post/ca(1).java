package com.clilystudio.netbook.ui.post;

import android.support.design.widget.am;

final class ca
  implements Runnable
{
  ca(bZ parambZ)
  {
  }

  public final void run()
  {
    if (!am.a(OtherUserActivity.b(this.a.a)))
      OtherUserActivity.b(this.a.a).cancel(true);
    OtherUserActivity.c(this.a.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.ca
 * JD-Core Version:    0.6.0
 */