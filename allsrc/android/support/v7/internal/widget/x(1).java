package android.support.v7.internal.widget;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.widget.Adapter;

final class x extends DataSetObserver
{
  private Parcelable a = null;

  x(AdapterViewCompat paramAdapterViewCompat)
  {
  }

  public final void onChanged()
  {
    this.b.m = true;
    this.b.s = this.b.r;
    this.b.r = this.b.c().getCount();
    if ((this.b.c().hasStableIds()) && (this.a != null) && (this.b.s == 0) && (this.b.r > 0))
    {
      AdapterViewCompat.a(this.b, this.a);
      this.a = null;
    }
    AdapterViewCompat localAdapterViewCompat;
    while (true)
    {
      this.b.d();
      this.b.requestLayout();
      return;
      localAdapterViewCompat = this.b;
      if (localAdapterViewCompat.getChildCount() <= 0)
        continue;
      localAdapterViewCompat.i = true;
      if (localAdapterViewCompat.p < 0)
        break;
      View localView2 = localAdapterViewCompat.getChildAt(localAdapterViewCompat.p - localAdapterViewCompat.f);
      localAdapterViewCompat.h = localAdapterViewCompat.o;
      localAdapterViewCompat.g = localAdapterViewCompat.n;
      if (localView2 != null)
        localView2.getTop();
      localAdapterViewCompat.j = 0;
    }
    View localView1 = localAdapterViewCompat.getChildAt(0);
    Adapter localAdapter = localAdapterViewCompat.c();
    if ((localAdapterViewCompat.f >= 0) && (localAdapterViewCompat.f < localAdapter.getCount()));
    for (localAdapterViewCompat.h = localAdapter.getItemId(localAdapterViewCompat.f); ; localAdapterViewCompat.h = -1L)
    {
      localAdapterViewCompat.g = localAdapterViewCompat.f;
      if (localView1 != null)
        localView1.getTop();
      localAdapterViewCompat.j = 1;
      break;
    }
  }

  public final void onInvalidated()
  {
    this.b.m = true;
    if (this.b.c().hasStableIds())
      this.a = AdapterViewCompat.a(this.b);
    this.b.s = this.b.r;
    this.b.r = 0;
    this.b.p = -1;
    this.b.q = -9223372036854775808L;
    this.b.n = -1;
    this.b.o = -9223372036854775808L;
    this.b.i = false;
    this.b.d();
    this.b.requestLayout();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.x
 * JD-Core Version:    0.6.0
 */