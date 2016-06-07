package com.clilystudio.netbook.ui;

import android.os.Handler;
import android.widget.ListView;
import android.widget.TextView;
import com.handmark.pulltorefresh.library.PullToRefreshBase;
import com.handmark.pulltorefresh.library.k;

final class an
  implements k<ListView>
{
  an(BookCategoryFragment paramBookCategoryFragment)
  {
  }

  public final void a(PullToRefreshBase<ListView> paramPullToRefreshBase)
  {
    BookCategoryFragment.c(this.a).setVisibility(8);
    new Handler().postDelayed(new ao(this), 1000L);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.an
 * JD-Core Version:    0.6.0
 */