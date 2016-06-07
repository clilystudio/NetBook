package com.ushaqi.zhuishushenqi.ui.user;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.k
 * JD-Core Version:    0.6.0
 */