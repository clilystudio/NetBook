package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View.OnClickListener;

final class ao
  implements View.OnClickListener
{
  ao(an paraman, ak paramak)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.j == null)
      return;
    this.a.k.a = false;
    UGCMainActivity.a(this.a.k.c, this.a.j);
    this.a.k.c(0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.ao
 * JD-Core Version:    0.6.0
 */