package android.support.v7.widget;

final class am
  implements al
{
  private am(RecyclerView paramRecyclerView)
  {
  }

  public final void a(ay paramay)
  {
    paramay.a(true);
    if ((!RecyclerView.c(this.a, paramay.a)) && (paramay.n()))
      this.a.removeDetachedView(paramay.a, false);
  }

  public final void b(ay paramay)
  {
    paramay.a(true);
    if (!ay.b(paramay))
      RecyclerView.c(this.a, paramay.a);
  }

  public final void c(ay paramay)
  {
    paramay.a(true);
    if (!ay.b(paramay))
      RecyclerView.c(this.a, paramay.a);
  }

  public final void d(ay paramay)
  {
    paramay.a(true);
    if ((paramay.g != null) && (paramay.h == null))
    {
      paramay.g = null;
      paramay.a(-65, ay.c(paramay));
    }
    paramay.h = null;
    if (!ay.b(paramay))
      RecyclerView.c(this.a, paramay.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.am
 * JD-Core Version:    0.6.0
 */