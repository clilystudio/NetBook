package com.ushaqi.zhuishushenqi.ui.user;

import android.os.Handler;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class B
  implements k<ListView>
{
  B(MyTopicFragment paramMyTopicFragment)
  {
  }

  public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase)
  {
    MyTopicFragment.a(this.a).setVisibility(8);
    new Handler().postDelayed(new C(this), 1000L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.B
 * JD-Core Version:    0.6.0
 */