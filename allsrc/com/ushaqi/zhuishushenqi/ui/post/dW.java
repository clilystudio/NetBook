package com.ushaqi.zhuishushenqi.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.ui.user.AuthLoginActivity;

final class dW
  implements View.OnClickListener
{
  dW(TweetTimelineFragment paramTweetTimelineFragment)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.startActivity(AuthLoginActivity.a(this.a.getActivity()));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dW
 * JD-Core Version:    0.6.0
 */