package com.ushaqi.zhuishushenqi.ui.post;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.User;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dw
 * JD-Core Version:    0.6.0
 */