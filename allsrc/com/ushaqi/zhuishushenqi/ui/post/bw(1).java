package com.ushaqi.zhuishushenqi.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class bw
  implements View.OnClickListener
{
  bw(GirlTopicListActivity paramGirlTopicListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    GirlTopicListActivity.m(this.b).setText(2131034434);
    GirlTopicListActivity.b(this.b, "comment-count");
    GirlTopicListActivity.l(this.b).setRefreshing();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bw
 * JD-Core Version:    0.6.0
 */