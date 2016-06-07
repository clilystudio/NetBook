package com.ushaqi.zhuishushenqi.ui.user;

import android.os.Handler;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class u
  implements k<ListView>
{
  u(MyFavTopicFragment paramMyFavTopicFragment)
  {
  }

  public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase)
  {
    MyFavTopicFragment.a(this.a).setVisibility(8);
    new Handler().postDelayed(new v(this), 1000L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.u
 * JD-Core Version:    0.6.0
 */