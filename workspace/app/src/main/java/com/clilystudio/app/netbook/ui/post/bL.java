package com.clilystudio.app.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class bL
  implements k<ListView>
{
  bL(MyTweetFragment paramMyTweetFragment)
  {
  }

  public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase)
  {
    MyTweetFragment.a(this.a).setVisibility(8);
    new Handler().postDelayed(new bM(this), 1000L);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.bL
 * JD-Core Version:    0.6.2
 */