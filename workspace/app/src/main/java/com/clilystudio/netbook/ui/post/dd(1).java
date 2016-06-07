package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class dd
  implements View.OnClickListener
{
  dd(ReviewListActivity paramReviewListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    ReviewListActivity.o(this.b).setText(2131034434);
    ReviewListActivity.b(this.b, "comment-count");
    ReviewListActivity.n(this.b).setRefreshing();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.dd
 * JD-Core Version:    0.6.0
 */