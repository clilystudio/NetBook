package com.ushaqi.zhuishushenqi.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class ai
  implements View.OnClickListener
{
  ai(BookHelpListActivity paramBookHelpListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    BookHelpListActivity.m(this.b).setText(2131034434);
    BookHelpListActivity.b(this.b, "comment-count");
    BookHelpListActivity.l(this.b).setRefreshing();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.ai
 * JD-Core Version:    0.6.0
 */