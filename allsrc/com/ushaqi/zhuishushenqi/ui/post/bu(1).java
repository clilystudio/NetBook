package com.ushaqi.zhuishushenqi.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class bu
  implements View.OnClickListener
{
  bu(GirlTopicListActivity paramGirlTopicListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    GirlTopicListActivity.m(this.b).setText(2131034433);
    GirlTopicListActivity.b(this.b, "updated");
    GirlTopicListActivity.l(this.b).setRefreshing();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bu
 * JD-Core Version:    0.6.0
 */