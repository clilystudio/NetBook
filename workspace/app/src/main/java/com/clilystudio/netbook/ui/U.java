package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.View.OnClickListener;

final class U
  implements View.OnClickListener
{
  U(BaseActivity paramBaseActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.onBackPressed();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.U
 * JD-Core Version:    0.6.0
 */