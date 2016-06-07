package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;

final class dR
  implements View.OnClickListener
{
  dR(TweetTabActivity paramTweetTabActivity)
  {
  }

  public final void onClick(View paramView)
  {
    TweetTabActivity.d(this.a);
    TweetTabActivity.i(this.a);
    TweetTabActivity.a(this.a, false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.dR
 * JD-Core Version:    0.6.0
 */