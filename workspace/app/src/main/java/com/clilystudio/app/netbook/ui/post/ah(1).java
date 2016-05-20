package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class ah
  implements View.OnClickListener
{
  ah(BookHelpListActivity paramBookHelpListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    BookHelpListActivity.m(this.b).setText(2131034432);
    BookHelpListActivity.b(this.b, "created");
    BookHelpListActivity.l(this.b).setRefreshing();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.ah
 * JD-Core Version:    0.6.2
 */