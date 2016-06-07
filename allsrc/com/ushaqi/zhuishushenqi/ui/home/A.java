package com.ushaqi.zhuishushenqi.ui.home;

import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.adapter.HomeShelfAdapter;
import com.ushaqi.zhuishushenqi.util.e;
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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.A
 * JD-Core Version:    0.6.0
 */