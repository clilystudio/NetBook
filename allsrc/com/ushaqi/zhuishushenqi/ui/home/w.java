package com.ushaqi.zhuishushenqi.ui.home;

import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.model.InsideLink;
import com.ushaqi.zhuishushenqi.model.ShelfMsg;
import com.ushaqi.zhuishushenqi.util.InsideLinkIntent;

final class w
  implements View.OnClickListener
{
  w(HomeShelfFragment paramHomeShelfFragment, ShelfMsg paramShelfMsg, InsideLink paramInsideLink)
  {
  }

  public final void onClick(View paramView)
  {
    if ((this.a.login) && (am.a(this.c.getActivity()) == null))
      return;
    try
    {
      this.c.startActivity(new InsideLinkIntent(this.c.getActivity(), this.b));
      b.a(this.c.getActivity(), "shelf_msg_click", this.b.getLabel());
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.home.w
 * JD-Core Version:    0.6.0
 */