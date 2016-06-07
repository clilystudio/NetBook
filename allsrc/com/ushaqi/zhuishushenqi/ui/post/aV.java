package com.ushaqi.zhuishushenqi.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class aV
  implements View.OnClickListener
{
  aV(CommonPostListActivity paramCommonPostListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    CommonPostListActivity.k(this.b).setText("最多评论");
    CommonPostListActivity.b(this.b, "comment-count");
    CommonPostListActivity.j(this.b).setVisibility(0);
    CommonPostListActivity.j(this.b).setRefreshing();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.aV
 * JD-Core Version:    0.6.0
 */