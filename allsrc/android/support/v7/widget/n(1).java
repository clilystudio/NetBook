package android.support.v7.widget;

import android.support.v4.util.Pools.Pool;
import android.support.v4.util.Pools.SimplePool;
import java.util.ArrayList;
import java.util.List;

final class n
  implements Y
{
  private Pools.Pool<p> a = new Pools.SimplePool(30);
  private ArrayList<p> b = new ArrayList();
  private ArrayList<p> c = new ArrayList();
  private o d;
  private boolean e;
  private X f;

  n(o paramo)
  {
    this(paramo, false);
  }

  private n(o paramo, boolean paramBoolean)
  {
    this.d = paramo;
    this.e = false;
    this.f = new X(this);
  }

  private void a(p paramp, int paramInt)
  {
    this.d.a(paramp);
    switch (paramp.a)
    {
    default:
      throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
    case 1:
      this.d.a(paramInt, paramp.c);
      return;
    case 2:
    }
    this.d.c(paramInt, paramp.c);
  }

  private void a(List<p> paramList)
  {
    int i = paramList.size();
    for (int j = 0; j < i; j++)
      a((p)paramList.get(j));
    paramList.clear();
  }

  private void b(p paramp)
  {
    if ((paramp.a == 0) || (paramp.a == 3))
      throw new IllegalArgumentException("should not dispatch add or move for pre layout");
    int i = d(paramp.b, paramp.a);
    int j = paramp.b;
    int k;
    int m;
    int n;
    int i1;
    int i2;
    label107: int i3;
    int i4;
    switch (paramp.a)
    {
    default:
      throw new IllegalArgumentException("op should be remove or update." + paramp);
    case 2:
      k = 1;
      m = 1;
      n = i;
      i1 = j;
      i2 = 1;
      if (i2 >= paramp.c)
        break label280;
      i3 = d(paramp.b + k * i2, paramp.a);
      switch (paramp.a)
      {
      default:
        i4 = 0;
        label167: if (i4 != 0)
          m++;
      case 2:
      case 1:
      }
    case 1:
    }
    while (true)
    {
      i2++;
      break label107;
      k = 0;
      break;
      if (i3 == n + 1)
      {
        i4 = 1;
        break label167;
      }
      i4 = 0;
      break label167;
      if (i3 == n)
      {
        i4 = 1;
        break label167;
      }
      i4 = 0;
      break label167;
      p localp2 = a(paramp.a, n, m);
      a(localp2, i1);
      a(localp2);
      if (paramp.a == 2)
        i1 += m;
      m = 1;
      n = i3;
    }
    label280: a(paramp);
    if (m > 0)
    {
      p localp1 = a(paramp.a, n, m);
      a(localp1, i1);
      a(localp1);
    }
  }

  private boolean b(int paramInt)
  {
    int i = this.c.size();
    for (int j = 0; j < i; j++)
    {
      p localp = (p)this.c.get(j);
      if (localp.a == 3)
      {
        if (a(localp.c, j + 1) == paramInt)
          return true;
      }
      else
      {
        if (localp.a != 0)
          continue;
        int k = localp.b + localp.c;
        for (int m = localp.b; m < k; m++)
          if (a(m, j + 1) == paramInt)
            return true;
      }
    }
    return false;
  }

  private void c(p paramp)
  {
    this.c.add(paramp);
    switch (paramp.a)
    {
    default:
      throw new IllegalArgumentException("Unknown update op type for " + paramp);
    case 0:
      this.d.d(paramp.b, paramp.c);
      return;
    case 3:
      this.d.e(paramp.b, paramp.c);
      return;
    case 1:
      this.d.b(paramp.b, paramp.c);
      return;
    case 2:
    }
    this.d.c(paramp.b, paramp.c);
  }

  private int d(int paramInt1, int paramInt2)
  {
    int i = -1 + this.c.size();
    int j = paramInt1;
    if (i >= 0)
    {
      p localp2 = (p)this.c.get(i);
      int n;
      int i1;
      label66: label106: int m;
      if (localp2.a == 3)
        if (localp2.b < localp2.c)
        {
          n = localp2.b;
          i1 = localp2.c;
          if ((j < n) || (j > i1))
            break label204;
          if (n != localp2.b)
            break label159;
          if (paramInt2 != 0)
            break label139;
          localp2.c = (1 + localp2.c);
          m = j + 1;
        }
      while (true)
      {
        i--;
        j = m;
        break;
        n = localp2.c;
        i1 = localp2.b;
        break label66;
        label139: if (paramInt2 != 1)
          break label106;
        localp2.c = (-1 + localp2.c);
        break label106;
        label159: if (paramInt2 == 0)
          localp2.b = (1 + localp2.b);
        while (true)
        {
          m = j - 1;
          break;
          if (paramInt2 != 1)
            continue;
          localp2.b = (-1 + localp2.b);
        }
        label204: if (j < localp2.b)
        {
          if (paramInt2 == 0)
          {
            localp2.b = (1 + localp2.b);
            localp2.c = (1 + localp2.c);
            m = j;
            continue;
          }
          if (paramInt2 == 1)
          {
            localp2.b = (-1 + localp2.b);
            localp2.c = (-1 + localp2.c);
          }
        }
        m = j;
        continue;
        if (localp2.b <= j)
        {
          if (localp2.a == 0)
          {
            m = j - localp2.c;
            continue;
          }
          if (localp2.a == 1)
          {
            m = j + localp2.c;
            continue;
          }
        }
        else
        {
          if (paramInt2 == 0)
          {
            localp2.b = (1 + localp2.b);
            m = j;
            continue;
          }
          if (paramInt2 == 1)
            localp2.b = (-1 + localp2.b);
        }
        m = j;
      }
    }
    int k = -1 + this.c.size();
    if (k >= 0)
    {
      p localp1 = (p)this.c.get(k);
      if (localp1.a == 3)
        if ((localp1.c == localp1.b) || (localp1.c < 0))
        {
          this.c.remove(k);
          a(localp1);
        }
      while (true)
      {
        k--;
        break;
        if (localp1.c > 0)
          continue;
        this.c.remove(k);
        a(localp1);
      }
    }
    return j;
  }

  final int a(int paramInt)
  {
    return a(paramInt, 0);
  }

  final int a(int paramInt1, int paramInt2)
  {
    int i = this.c.size();
    int j = paramInt1;
    p localp;
    if (paramInt2 < i)
    {
      localp = (p)this.c.get(paramInt2);
      if (localp.a == 3)
        if (localp.b == j)
          j = localp.c;
    }
    while (true)
    {
      paramInt2++;
      break;
      if (localp.b < j)
        j--;
      if (localp.c > j)
        continue;
      j++;
      continue;
      if (localp.b > j)
        continue;
      if (localp.a == 1)
      {
        if (j < localp.b + localp.c)
        {
          j = -1;
          return j;
        }
        j -= localp.c;
        continue;
      }
      if (localp.a != 0)
        continue;
      j += localp.c;
    }
  }

  public final p a(int paramInt1, int paramInt2, int paramInt3)
  {
    p localp = (p)this.a.acquire();
    if (localp == null)
      return new p(paramInt1, paramInt2, paramInt3);
    localp.a = paramInt1;
    localp.b = paramInt2;
    localp.c = paramInt3;
    return localp;
  }

  final void a()
  {
    a(this.b);
    a(this.c);
  }

  public final void a(p paramp)
  {
    if (!this.e)
      this.a.release(paramp);
  }

  final void b()
  {
    this.f.a(this.b);
    int i = this.b.size();
    int j = 0;
    p localp;
    int i8;
    int i9;
    int i10;
    int i11;
    int i12;
    if (j < i)
    {
      localp = (p)this.b.get(j);
      switch (localp.a)
      {
      default:
      case 0:
        while (true)
        {
          j++;
          break;
          c(localp);
        }
      case 1:
        i8 = localp.b;
        i9 = localp.b + localp.c;
        i10 = localp.b;
        i11 = -1;
        i12 = 0;
        label115: if (i10 < i9)
        {
          if ((this.d.a(i10) == null) && (!b(i10)))
            break;
          if (i11 != 0)
            break label540;
          b(a(1, i8, i12));
        }
      case 2:
      case 3:
      }
    }
    label534: label540: for (int i13 = 1; ; i13 = 0)
    {
      i11 = 1;
      label169: int i18;
      int i16;
      int i17;
      if (i13 != 0)
      {
        i18 = i10 - i12;
        i16 = i9 - i12;
        i17 = 1;
        label191: int i19 = i18 + 1;
        i12 = i17;
        i9 = i16;
        i10 = i19;
        break label115;
        if (i11 != 1)
          break label534;
        c(a(1, i8, i12));
      }
      for (i13 = 1; ; i13 = 0)
      {
        i11 = 0;
        break label169;
        int i14 = i12 + 1;
        int i15 = i10;
        i16 = i9;
        i17 = i14;
        i18 = i15;
        break label191;
        if (i12 != localp.c)
        {
          a(localp);
          localp = a(1, i8, i12);
        }
        if (i11 == 0)
        {
          b(localp);
          break;
        }
        c(localp);
        break;
        int k = localp.b;
        int m = localp.b + localp.c;
        int n = localp.b;
        int i1 = -1;
        int i2 = 0;
        if (n < m)
        {
          int i3;
          int i4;
          if ((this.d.a(n) != null) || (b(n)))
          {
            if (i1 == 0)
            {
              b(a(2, k, i2));
              i2 = 0;
              k = n;
            }
            i3 = k;
            i4 = i2;
          }
          for (int i5 = 1; ; i5 = 0)
          {
            int i6 = i4 + 1;
            n++;
            int i7 = i5;
            i2 = i6;
            k = i3;
            i1 = i7;
            break;
            if (i1 == 1)
            {
              c(a(2, k, i2));
              i2 = 0;
              k = n;
            }
            i3 = k;
            i4 = i2;
          }
        }
        if (i2 != localp.c)
        {
          a(localp);
          localp = a(2, k, i2);
        }
        if (i1 == 0)
        {
          b(localp);
          break;
        }
        c(localp);
        break;
        c(localp);
        break;
        this.b.clear();
        return;
      }
    }
  }

  final boolean b(int paramInt1, int paramInt2)
  {
    this.b.add(a(0, paramInt1, paramInt2));
    return this.b.size() == 1;
  }

  final void c()
  {
    int i = this.c.size();
    for (int j = 0; j < i; j++)
      this.d.b((p)this.c.get(j));
    a(this.c);
  }

  final boolean c(int paramInt1, int paramInt2)
  {
    this.b.add(a(1, paramInt1, paramInt2));
    return this.b.size() == 1;
  }

  final boolean d()
  {
    return this.b.size() > 0;
  }

  final void e()
  {
    c();
    int i = this.b.size();
    int j = 0;
    if (j < i)
    {
      p localp = (p)this.b.get(j);
      switch (localp.a)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        j++;
        break;
        this.d.b(localp);
        this.d.d(localp.b, localp.c);
        continue;
        this.d.b(localp);
        this.d.a(localp.b, localp.c);
        continue;
        this.d.b(localp);
        this.d.c(localp.b, localp.c);
        continue;
        this.d.b(localp);
        this.d.e(localp.b, localp.c);
      }
    }
    a(this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.n
 * JD-Core Version:    0.6.0
 */