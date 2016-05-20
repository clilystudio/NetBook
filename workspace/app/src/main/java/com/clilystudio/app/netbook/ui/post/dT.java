package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;

final class dT
  implements View.OnClickListener
{
  dT(TweetTabActivity paramTweetTabActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (TweetTabActivity.c(this.a))
    {
      TweetTabActivity.d(this.a);
      TweetTabActivity.a(this.a, false);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dT
 * JD-Core Version:    0.6.2
 */