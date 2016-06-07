package com.ushaqi.zhuishushenqi.ui.home;

import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.adapter.HomeShelfAdapter;

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
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.z
 * JD-Core Version:    0.6.0
 */