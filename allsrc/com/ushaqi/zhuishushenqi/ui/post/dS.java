package com.ushaqi.zhuishushenqi.ui.post;

import android.view.View;
import android.view.View.OnClickListener;

final class dS
  implements View.OnClickListener
{
  dS(TweetTabActivity paramTweetTabActivity)
  {
  }

  public final void onClick(View paramView)
  {
    TweetTabActivity.d(this.a);
    TweetTabActivity.j(this.a);
    TweetTabActivity.a(this.a, false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dS
 * JD-Core Version:    0.6.0
 */