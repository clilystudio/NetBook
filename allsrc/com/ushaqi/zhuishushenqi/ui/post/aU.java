package com.ushaqi.zhuishushenqi.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class aU
  implements View.OnClickListener
{
  aU(CommonPostListActivity paramCommonPostListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    CommonPostListActivity.k(this.b).setText("最新发布");
    CommonPostListActivity.b(this.b, "created");
    CommonPostListActivity.j(this.b).setVisibility(0);
    CommonPostListActivity.j(this.b).setRefreshing();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.aU
 * JD-Core Version:    0.6.0
 */