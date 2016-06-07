package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class db
  implements View.OnClickListener
{
  db(ReviewListActivity paramReviewListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    ReviewListActivity.o(this.b).setText(2131034432);
    ReviewListActivity.b(this.b, "created");
    ReviewListActivity.n(this.b).setRefreshing();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.db
 * JD-Core Version:    0.6.0
 */