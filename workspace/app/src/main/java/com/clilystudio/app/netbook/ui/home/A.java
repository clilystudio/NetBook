package com.clilystudio.app.netbook.ui.home;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.adapter.HomeShelfAdapter;
import com.clilystudio.app.netbook.util.e;
import java.util.List;

final class A
  implements View.OnClickListener
{
  A(HomeShelfFragment paramHomeShelfFragment)
  {
  }

  public final void onClick(View paramView)
  {
    List localList;
    if (HomeShelfFragment.a(this.a) != null)
    {
      localList = HomeShelfFragment.a(this.a).e();
      if ((localList == null) || (localList.size() == 0))
        e.a(this.a.getActivity(), "你没有选择要删除的书哦");
    }
    else
    {
      return;
    }
    HomeShelfFragment.a(this.a, localList);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.A
 * JD-Core Version:    0.6.2
 */