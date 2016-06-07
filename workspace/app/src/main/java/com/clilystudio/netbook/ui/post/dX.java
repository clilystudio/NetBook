package com.clilystudio.netbook.ui.post;

import android.os.Handler;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class dX
  implements k<ListView>
{
  dX(TweetTimelineFragment paramTweetTimelineFragment)
  {
  }

  public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase)
  {
    TweetTimelineFragment.a(this.a).setVisibility(8);
    new Handler().postDelayed(new dY(this), 1000L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.dX
 * JD-Core Version:    0.6.0
 */