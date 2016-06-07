package com.ushaqi.zhuishushenqi.ui.post;

import android.support.design.widget.FloatingActionButton;
import android.view.View;
import android.view.View.OnClickListener;

final class dP
  implements View.OnClickListener
{
  dP(TweetTabActivity paramTweetTabActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (TweetTabActivity.c(this.a))
    {
      TweetTabActivity.a(this.a, false);
      TweetTabActivity.d(this.a);
      TweetTabActivity.e(this.a).setContentDescription("关闭选项");
      return;
    }
    TweetTabActivity.f(this.a);
    TweetTabActivity.a(this.a, true);
    TweetTabActivity.g(this.a);
    TweetTabActivity.e(this.a).setContentDescription("展开选项");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dP
 * JD-Core Version:    0.6.0
 */