package com.ushaqi.zhuishushenqi.ui.post;

import android.os.Handler;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class dJ
  implements k<ListView>
{
  dJ(TweetListFragment paramTweetListFragment)
  {
  }

  public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase)
  {
    TweetListFragment.a(this.a).setVisibility(8);
    new Handler().postDelayed(new dK(this), 1000L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.dJ
 * JD-Core Version:    0.6.0
 */