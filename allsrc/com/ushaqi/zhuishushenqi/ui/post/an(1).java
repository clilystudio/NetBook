package com.ushaqi.zhuishushenqi.ui.post;

import android.os.Handler;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class an
  implements k<ListView>
{
  an(BookHelpListActivity paramBookHelpListActivity)
  {
  }

  public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase)
  {
    BookHelpListActivity.d(this.a).setVisibility(8);
    new Handler().postDelayed(new ao(this), 1000L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.an
 * JD-Core Version:    0.6.0
 */