package android.support.v7.widget;

import android.support.v4.os.TraceCompat;

final class ac
  implements Runnable
{
  ac(RecyclerView paramRecyclerView)
  {
  }

  public final void run()
  {
    if (!RecyclerView.a(this.a));
    do
    {
      return;
      if (!RecyclerView.b(this.a))
        continue;
      TraceCompat.beginSection("RV FullInvalidate");
      this.a.e();
      TraceCompat.endSection();
      return;
    }
    while (!this.a.b.d());
    TraceCompat.beginSection("RV PartialInvalidate");
    this.a.c();
    this.a.b.b();
    if (!RecyclerView.c(this.a))
      this.a.f();
    this.a.a(true);
    TraceCompat.endSection();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ac
 * JD-Core Version:    0.6.0
 */