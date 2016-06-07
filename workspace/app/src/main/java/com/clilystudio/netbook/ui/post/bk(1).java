package com.clilystudio.netbook.ui.post;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.model.Follower;

final class bk
  implements View.OnClickListener
{
  bk(bj parambj, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    Follower localFollower = (Follower)this.b.getItem(this.a);
    Intent localIntent = OtherUserActivity.a(this.b.a);
    localIntent.putExtra("USER_ID", localFollower.get_id());
    localIntent.putExtra("USER_NAME", localFollower.getNickname());
    this.b.a.startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.bk
 * JD-Core Version:    0.6.0
 */