package com.clilystudio.app.netbook.ui.user;

import android.os.Handler;
import android.view.View;
import android.widget.ListView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class ac
  implements k<ListView>
{
  ac(PayVoucherFragment paramPayVoucherFragment)
  {
  }

  public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase)
  {
    PayVoucherFragment.b(this.a).setVisibility(8);
    new Handler().postDelayed(new ad(this), 1000L);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.ac
 * JD-Core Version:    0.6.2
 */