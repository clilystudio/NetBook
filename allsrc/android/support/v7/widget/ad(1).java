package android.support.v7.widget;

final class ad
  implements Runnable
{
  ad(RecyclerView paramRecyclerView)
  {
  }

  public final void run()
  {
    if (this.a.d != null)
      this.a.d.a();
    RecyclerView.a(this.a, false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ad
 * JD-Core Version:    0.6.0
 */