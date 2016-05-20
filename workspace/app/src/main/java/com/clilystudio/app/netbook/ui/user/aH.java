package com.clilystudio.app.netbook.ui.user;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class aH
  implements View.OnClickListener
{
  aH(UserInfoActivity paramUserInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a, UserTaskActivity.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aH
 * JD-Core Version:    0.6.2
 */