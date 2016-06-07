package com.clilystudio.netbook.ui.home;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.adapter.HomeShelfAdapter;

final class z
  implements View.OnClickListener
{
  z(HomeShelfFragment paramHomeShelfFragment)
  {
  }

  public final void onClick(View paramView)
  {
    if (HomeShelfFragment.a(this.a) != null)
      HomeShelfFragment.a(this.a).d();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.home.z
 * JD-Core Version:    0.6.0
 */