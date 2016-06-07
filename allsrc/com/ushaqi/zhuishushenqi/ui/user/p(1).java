package com.ushaqi.zhuishushenqi.ui.user;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.Window;

final class p
  implements View.OnFocusChangeListener
{
  p(ModifyUserInfoActivity paramModifyUserInfoActivity, AlertDialog paramAlertDialog)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (paramBoolean)
      this.a.getWindow().setSoftInputMode(5);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.p
 * JD-Core Version:    0.6.0
 */