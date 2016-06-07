package android.support.v7.widget;

import java.util.ArrayList;

final class ag
  implements o
{
  ag(RecyclerView paramRecyclerView)
  {
  }

  private void c(p paramp)
  {
    switch (paramp.a)
    {
    default:
      return;
    case 0:
      RecyclerView.d(this.a).a(paramp.b, paramp.c);
      return;
    case 1:
      RecyclerView.d(this.a).b(paramp.b, paramp.c);
      return;
    case 2:
      RecyclerView.d(this.a).c(paramp.b, paramp.c);
      return;
    case 3:
    }
    RecyclerView.d(this.a).d(paramp.b, paramp.c);
  }

  public final ay a(int paramInt)
  {
    RecyclerView localRecyclerView = this.a;
    int i = localRecyclerView.c.b();
    int j = 0;
    ay localay;
    if (j < i)
    {
      localay = RecyclerView.b(localRecyclerView.c.c(j));
      if ((localay != null) && (!localay.m()) && (localay.b == paramInt))
        label58: if (localay != null)
          break label77;
    }
    label77: 
    do
    {
      return null;
      j++;
      break;
      localay = null;
      break label58;
    }
    while (this.a.c.a(localay.a));
    return localay;
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.a.a(paramInt1, paramInt2, true);
    this.a.f = true;
    aw.a(this.a.e, paramInt2);
  }

  public final void a(p paramp)
  {
    c(paramp);
  }

  public final void b(int paramInt1, int paramInt2)
  {
    this.a.a(paramInt1, paramInt2, false);
    this.a.f = true;
  }

  public final void b(p paramp)
  {
    c(paramp);
  }

  public final void c(int paramInt1, int paramInt2)
  {
    this.a.b(paramInt1, paramInt2);
    this.a.g = true;
  }

  public final void d(int paramInt1, int paramInt2)
  {
    RecyclerView localRecyclerView = this.a;
    int i = localRecyclerView.c.b();
    for (int j = 0; j < i; j++)
    {
      ay localay2 = RecyclerView.b(localRecyclerView.c.c(j));
      if ((localay2 == null) || (localay2.b()) || (localay2.b < paramInt1))
        continue;
      localay2.a(paramInt2, false);
      aw.a(localRecyclerView.e, true);
    }
    ar localar = localRecyclerView.a;
    int k = localar.b.size();
    for (int m = 0; m < k; m++)
    {
      ay localay1 = (ay)localar.b.get(m);
      if ((localay1 == null) || (localay1.c() < paramInt1))
        continue;
      localay1.a(paramInt2, true);
    }
    localRecyclerView.requestLayout();
    this.a.f = true;
  }

  public final void e(int paramInt1, int paramInt2)
  {
    int i = -1;
    RecyclerView localRecyclerView = this.a;
    int j = localRecyclerView.c.b();
    int k;
    int m;
    int n;
    int i1;
    label35: ay localay2;
    if (paramInt1 < paramInt2)
    {
      k = i;
      m = paramInt2;
      n = paramInt1;
      i1 = 0;
      if (i1 >= j)
        break label139;
      localay2 = RecyclerView.b(localRecyclerView.c.c(i1));
      if ((localay2 != null) && (localay2.b >= n) && (localay2.b <= m))
      {
        if (localay2.b != paramInt1)
          break label128;
        localay2.a(paramInt2 - paramInt1, false);
      }
    }
    while (true)
    {
      aw.a(localRecyclerView.e, true);
      i1++;
      break label35;
      k = 1;
      m = paramInt1;
      n = paramInt2;
      break;
      label128: localay2.a(k, false);
    }
    label139: ar localar = localRecyclerView.a;
    int i2;
    int i3;
    int i5;
    label170: ay localay1;
    if (paramInt1 < paramInt2)
    {
      i2 = paramInt2;
      i3 = paramInt1;
      int i4 = localar.b.size();
      i5 = 0;
      if (i5 >= i4)
        break label262;
      localay1 = (ay)localar.b.get(i5);
      if ((localay1 != null) && (localay1.b >= i3) && (localay1.b <= i2))
      {
        if (localay1.b != paramInt1)
          break label252;
        localay1.a(paramInt2 - paramInt1, false);
      }
    }
    while (true)
    {
      i5++;
      break label170;
      i = 1;
      i2 = paramInt1;
      i3 = paramInt2;
      break;
      label252: localay1.a(i, false);
    }
    label262: localRecyclerView.requestLayout();
    this.a.f = true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ag
 * JD-Core Version:    0.6.0
 */