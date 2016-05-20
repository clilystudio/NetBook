package com.clilystudio.app.netbook.ui.user;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class aC
  implements View.OnClickListener
{
  aC(UserInfoActivity paramUserInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a, MyMessageActivity.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aC
 * JD-Core Version:    0.6.2
 */