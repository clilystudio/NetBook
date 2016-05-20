package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.ui.user.AuthLoginActivity;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bK
 * JD-Core Version:    0.6.2
 */