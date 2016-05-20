package com.clilystudio.app.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class bB
  implements k<ListView>
{
  bB(GirlTopicListActivity paramGirlTopicListActivity)
  {
  }

  public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase)
  {
    GirlTopicListActivity.d(this.a).setVisibility(8);
    new Handler().postDelayed(new bC(this), 1000L);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bB
 * JD-Core Version:    0.6.2
 */