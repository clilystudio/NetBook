package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.ui.user.ModifyUserInfoActivity;

final class bO
  implements View.OnClickListener
{
  bO(MyTweetFragment paramMyTweetFragment)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.startActivity(ModifyUserInfoActivity.a(this.a.getActivity(), -1L));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.bO
 * JD-Core Version:    0.6.0
 */