package com.clilystudio.netbook.ui;

import android.os.Handler;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class bs
  implements k<ListView>
{
  bs(NotifFragment paramNotifFragment)
  {
  }

  public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase)
  {
    NotifFragment.a(this.a).setVisibility(8);
    NotifFragment.b(this.a).setVisibility(8);
    new Handler().postDelayed(new bt(this), 1000L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.bs
 * JD-Core Version:    0.6.0
 */