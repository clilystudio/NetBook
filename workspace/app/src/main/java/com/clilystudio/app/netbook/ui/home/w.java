package com.clilystudio.app.netbook.ui.home;

import com.clilystudio.app.netbook.am_CommonUtils;
import android.view.View;
import android.view.View.OnClickListener;
import com.umeng.a.b;
import com.clilystudio.app.netbook.model.InsideLink;
import com.clilystudio.app.netbook.model.ShelfMsg;
import com.clilystudio.app.netbook.util.InsideLinkIntent;

final class w
  implements View.OnClickListener
{
  w(HomeShelfFragment paramHomeShelfFragment, ShelfMsg paramShelfMsg, InsideLink paramInsideLink)
  {
  }

  public final void onClick(View paramView)
  {
    if ((this.a.login) && (am_CommonUtils.a(this.c.getActivity()) == null))
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.home.w
 * JD-Core Version:    0.6.2
 */