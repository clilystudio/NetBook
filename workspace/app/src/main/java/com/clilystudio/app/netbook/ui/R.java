package com.clilystudio.app.netbook.ui;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.R
 * JD-Core Version:    0.6.2
 */