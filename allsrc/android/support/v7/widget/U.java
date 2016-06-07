package android.support.v7.widget;

import android.os.Handler;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.PopupWindow;

final class U
  implements AbsListView.OnScrollListener
{
  private U(L paramL)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if ((paramInt == 1) && (!this.a.f()) && (L.b(this.a).getContentView() != null))
    {
      L.d(this.a).removeCallbacks(L.c(this.a));
      L.c(this.a).run();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.U
 * JD-Core Version:    0.6.0
 */