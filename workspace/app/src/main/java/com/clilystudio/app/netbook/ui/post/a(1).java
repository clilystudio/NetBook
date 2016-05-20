package com.clilystudio.app.netbook.ui.post;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.clilystudio.app.netbook.widget.ScrollLoadListView;

final class a
  implements AbsListView.OnScrollListener
{
  a(AbsPostActivity paramAbsPostActivity)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    this.a.b.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    this.a.b.onScrollStateChanged(paramAbsListView, paramInt);
    if (paramInt == 1)
      new Handler().post(new b(this));
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.a
 * JD-Core Version:    0.6.2
 */