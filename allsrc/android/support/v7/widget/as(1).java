package android.support.v7.widget;

import android.support.v4.view.ViewCompat;

final class as extends aj
{
  private as(RecyclerView paramRecyclerView)
  {
  }

  private void b()
  {
    if ((RecyclerView.m(this.a)) && (RecyclerView.n(this.a)) && (RecyclerView.o(this.a)))
    {
      ViewCompat.postOnAnimation(this.a, RecyclerView.p(this.a));
      return;
    }
    RecyclerView.b(this.a, true);
    this.a.requestLayout();
  }

  public final void a()
  {
    this.a.a(null);
    RecyclerView.f(this.a);
    aw.a(this.a.e, true);
    RecyclerView.l(this.a);
    if (!this.a.b.d())
      this.a.requestLayout();
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.a.a(null);
    if (this.a.b.b(paramInt1, paramInt2))
      b();
  }

  public final void b(int paramInt1, int paramInt2)
  {
    this.a.a(null);
    if (this.a.b.c(paramInt1, paramInt2))
      b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.as
 * JD-Core Version:    0.6.0
 */