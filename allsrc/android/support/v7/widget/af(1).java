package android.support.v7.widget;

import android.view.View;
import android.view.ViewGroup.LayoutParams;

final class af
  implements s
{
  af(RecyclerView paramRecyclerView)
  {
  }

  public final int a()
  {
    return this.a.getChildCount();
  }

  public final int a(View paramView)
  {
    return this.a.indexOfChild(paramView);
  }

  public final void a(int paramInt)
  {
    View localView = this.a.getChildAt(paramInt);
    if (localView != null)
      RecyclerView.b(this.a, localView);
    this.a.removeViewAt(paramInt);
  }

  public final void a(View paramView, int paramInt)
  {
    this.a.addView(paramView, paramInt);
    RecyclerView.a(this.a, paramView);
  }

  public final void a(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    ay localay = RecyclerView.b(paramView);
    if (localay != null)
    {
      if ((!localay.n()) && (!localay.b()))
        throw new IllegalArgumentException("Called attach on a child which is not detached: " + localay);
      localay.h();
    }
    RecyclerView.a(this.a, paramView, paramInt, paramLayoutParams);
  }

  public final ay b(View paramView)
  {
    return RecyclerView.b(paramView);
  }

  public final View b(int paramInt)
  {
    return this.a.getChildAt(paramInt);
  }

  public final void b()
  {
    int i = this.a.getChildCount();
    for (int j = 0; j < i; j++)
      RecyclerView.b(this.a, b(j));
    this.a.removeAllViews();
  }

  public final void c(int paramInt)
  {
    View localView = b(paramInt);
    if (localView != null)
    {
      ay localay = RecyclerView.b(localView);
      if (localay != null)
      {
        if ((localay.n()) && (!localay.b()))
          throw new IllegalArgumentException("called detach on an already detached child " + localay);
        localay.b(256);
      }
    }
    RecyclerView.a(this.a, paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.af
 * JD-Core Version:    0.6.0
 */