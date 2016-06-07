package com.clilystudio.netbook.ui.user;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.ac
 * JD-Core Version:    0.6.0
 */