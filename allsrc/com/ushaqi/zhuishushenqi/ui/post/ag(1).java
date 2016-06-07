package com.ushaqi.zhuishushenqi.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshListView;

final class ag
  implements View.OnClickListener
{
  ag(BookHelpListActivity paramBookHelpListActivity, PopupWindow paramPopupWindow)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.dismiss();
    BookHelpListActivity.m(this.b).setText(2131034433);
    BookHelpListActivity.b(this.b, "updated");
    BookHelpListActivity.l(this.b).setRefreshing();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.ag
 * JD-Core Version:    0.6.0
 */