package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class dn
  implements View.OnClickListener
{
  dn(ReviewListActivity paramReviewListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    ReviewListActivity.a(this.b, true);
    ReviewListActivity.m(this.b).setText("精品");
    ReviewListActivity.a(this.b, "all");
    ReviewListActivity.n(this.b).setRefreshing();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.dn
 * JD-Core Version:    0.6.0
 */