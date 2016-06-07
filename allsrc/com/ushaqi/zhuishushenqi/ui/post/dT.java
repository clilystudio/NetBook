package com.ushaqi.zhuishushenqi.ui.post;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dT
 * JD-Core Version:    0.6.0
 */