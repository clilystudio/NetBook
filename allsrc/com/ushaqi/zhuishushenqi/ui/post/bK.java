package com.ushaqi.zhuishushenqi.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.ui.user.AuthLoginActivity;

final class bK
  implements View.OnClickListener
{
  bK(MyTweetFragment paramMyTweetFragment)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.startActivity(AuthLoginActivity.a(this.a.getActivity()));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bK
 * JD-Core Version:    0.6.0
 */