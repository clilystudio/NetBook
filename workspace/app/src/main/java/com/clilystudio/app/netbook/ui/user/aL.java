package com.clilystudio.app.netbook.ui.user;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class aL
  implements View.OnClickListener
{
  aL(UserLevelActivity paramUserLevelActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a, UserTaskActivity.class);
    this.a.startActivity(localIntent);
    this.a.finish();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aL
 * JD-Core Version:    0.6.2
 */