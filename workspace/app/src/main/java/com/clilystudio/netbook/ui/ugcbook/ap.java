package com.clilystudio.netbook.ui.ugcbook;

import android.os.Handler;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class ap
  implements k<ListView>
{
  ap(UGCMainListFragment paramUGCMainListFragment)
  {
  }

  public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase)
  {
    UGCMainListFragment.a(this.a).setVisibility(8);
    new Handler().postDelayed(new aq(this), 1000L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.ap
 * JD-Core Version:    0.6.0
 */