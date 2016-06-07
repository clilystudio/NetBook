package com.ushaqi.zhuishushenqi.ui;

import android.view.View;
import android.view.View.OnClickListener;

final class R
  implements View.OnClickListener
{
  R(BaseActivity paramBaseActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.onBackPressed();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.R
 * JD-Core Version:    0.6.0
 */