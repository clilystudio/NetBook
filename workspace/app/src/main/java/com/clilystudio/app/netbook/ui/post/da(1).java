package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class da
  implements View.OnClickListener
{
  da(ReviewListActivity paramReviewListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    ReviewListActivity.o(this.b).setText(2131034433);
    ReviewListActivity.b(this.b, "updated");
    ReviewListActivity.n(this.b).setRefreshing();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.da
 * JD-Core Version:    0.6.2
 */