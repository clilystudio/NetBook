package com.ushaqi.zhuishushenqi.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class dm
  implements View.OnClickListener
{
  dm(ReviewListActivity paramReviewListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    ReviewListActivity.m(this.b).setText("全部");
    ReviewListActivity.a(this.b, "all");
    ReviewListActivity.a(this.b, false);
    ReviewListActivity.n(this.b).setRefreshing();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dm
 * JD-Core Version:    0.6.0
 */