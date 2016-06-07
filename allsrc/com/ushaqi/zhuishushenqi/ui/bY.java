package com.ushaqi.zhuishushenqi.ui;

import android.app.AlertDialog;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;

final class bY
  implements View.OnClickListener
{
  bY(SettingsActivity paramSettingsActivity, AlertDialog paramAlertDialog, int paramInt, int[] paramArrayOfInt)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    SettingsActivity.a(this.d, this.b, this.d.getResources().getString(this.c[this.b]));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bY
 * JD-Core Version:    0.6.0
 */