package com.clilystudio.netbook.ui.user;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.RelativeLayout;
import com.clilystudio.netbook.widget.ScrollLoadListView;

final class P
  implements AbsListView.OnScrollListener
{
  P(PayConsumeActivity paramPayConsumeActivity)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    PayConsumeActivity.a(this.a).onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    PayConsumeActivity.b(this.a).removeView(null);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    PayConsumeActivity.a(this.a).onScrollStateChanged(paramAbsListView, paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.P
 * JD-Core Version:    0.6.0
 */