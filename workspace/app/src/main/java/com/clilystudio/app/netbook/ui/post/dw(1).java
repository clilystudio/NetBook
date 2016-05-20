package com.clilystudio.app.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.User;

final class dw
  implements View.OnClickListener
{
  dw(TweetDetailActivity paramTweetDetailActivity, User paramUser)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = OtherUserActivity.a(this.b);
    localIntent.putExtra("USER_ID", this.a.getId());
    localIntent.putExtra("USER_NAME", this.a.getNickname());
    this.b.startActivity(localIntent);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.dw
 * JD-Core Version:    0.6.2
 */