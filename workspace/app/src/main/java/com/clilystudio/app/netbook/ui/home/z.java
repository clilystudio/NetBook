package com.clilystudio.app.netbook.ui.home;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.adapter.HomeShelfAdapter;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.z
 * JD-Core Version:    0.6.2
 */