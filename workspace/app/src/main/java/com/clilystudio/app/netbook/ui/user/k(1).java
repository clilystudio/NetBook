package com.clilystudio.app.netbook.ui.user;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;

final class k
  implements View.OnClickListener
{
  k(ModifyUserInfoActivity paramModifyUserInfoActivity, AlertDialog paramAlertDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    ModifyUserInfoActivity.a(this.b, true);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.k
 * JD-Core Version:    0.6.2
 */