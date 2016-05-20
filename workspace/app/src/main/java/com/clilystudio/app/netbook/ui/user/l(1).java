package com.clilystudio.app.netbook.ui.user;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

final class l
  implements View.OnClickListener
{
  l(ModifyUserInfoActivity paramModifyUserInfoActivity, AlertDialog paramAlertDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    ModifyUserInfoActivity.a(this.b, false);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.l
 * JD-Core Version:    0.6.2
 */