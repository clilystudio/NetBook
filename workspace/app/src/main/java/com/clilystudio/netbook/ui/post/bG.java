package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class bG
  implements View.OnClickListener
{
  bG(GirlTopicListActivity paramGirlTopicListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    GirlTopicListActivity.b(this.b, true);
    GirlTopicListActivity.k(this.b).setText("精品");
    GirlTopicListActivity.a(this.b, "all");
    GirlTopicListActivity.l(this.b).setRefreshing();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.bG
 * JD-Core Version:    0.6.0
 */