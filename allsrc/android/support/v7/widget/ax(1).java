package android.support.v7.widget;

import android.support.v4.os.TraceCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ScrollerCompat;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;

final class ax
  implements Runnable
{
  private int a;
  private int b;
  private ScrollerCompat c;
  private Interpolator d = RecyclerView.h();
  private boolean e = false;
  private boolean f = false;

  public ax(RecyclerView paramRecyclerView)
  {
    this.c = ScrollerCompat.create(paramRecyclerView.getContext(), RecyclerView.h());
  }

  final void a()
  {
    if (this.e)
    {
      this.f = true;
      return;
    }
    this.g.removeCallbacks(this);
    ViewCompat.postOnAnimation(this.g, this);
  }

  public final void a(int paramInt1, int paramInt2)
  {
    RecyclerView.b(this.g, 2);
    this.b = 0;
    this.a = 0;
    this.c.fling(0, 0, paramInt1, paramInt2, -2147483648, 2147483647, -2147483648, 2147483647);
    a();
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = Math.abs(paramInt1);
    int j = Math.abs(paramInt2);
    int k;
    int m;
    int n;
    if (i > j)
    {
      k = 1;
      m = (int)Math.sqrt(0);
      n = (int)Math.sqrt(paramInt1 * paramInt1 + paramInt2 * paramInt2);
      if (k == 0)
        break label217;
    }
    int i4;
    label217: for (int i1 = this.g.getWidth(); ; i1 = this.g.getHeight())
    {
      int i2 = i1 / 2;
      float f1 = Math.min(1.0F, 1.0F * n / i1);
      float f2 = i2 + i2 * (float)Math.sin((float)(0.47123891676382D * (f1 - 0.5F)));
      if (m <= 0)
        break label229;
      i4 = 4 * Math.round(1000.0F * Math.abs(f2 / m));
      int i5 = Math.min(i4, 2000);
      Interpolator localInterpolator = RecyclerView.h();
      if (this.d != localInterpolator)
      {
        this.d = localInterpolator;
        this.c = ScrollerCompat.create(this.g.getContext(), localInterpolator);
      }
      RecyclerView.b(this.g, 2);
      this.b = 0;
      this.a = 0;
      this.c.startScroll(0, 0, paramInt1, paramInt2, i5);
      a();
      return;
      k = 0;
      break;
    }
    label229: if (k != 0);
    for (int i3 = i; ; i3 = j)
    {
      i4 = (int)(300.0F * (1.0F + i3 / i1));
      break;
    }
  }

  public final void b()
  {
    this.g.removeCallbacks(this);
    this.c.abortAnimation();
  }

  public final void run()
  {
    this.f = false;
    this.e = true;
    RecyclerView.e(this.g);
    ScrollerCompat localScrollerCompat = this.c;
    RecyclerView.d(this.g);
    int i;
    int j;
    int k;
    int m;
    int n;
    int i3;
    int i4;
    int i5;
    int i6;
    int i11;
    if (localScrollerCompat.computeScrollOffset())
    {
      i = localScrollerCompat.getCurrX();
      j = localScrollerCompat.getCurrY();
      k = i - this.a;
      m = j - this.b;
      this.a = i;
      this.b = j;
      ah localah = RecyclerView.f(this.g);
      n = 0;
      int i1 = 0;
      int i2 = 0;
      i3 = 0;
      if (localah != null)
      {
        this.g.c();
        RecyclerView.g(this.g);
        TraceCompat.beginSection("RV Scroll");
        i2 = 0;
        i3 = 0;
        if (k != 0)
        {
          i3 = RecyclerView.d(this.g).a(k, this.g.a, this.g.e);
          i2 = k - i3;
        }
        n = 0;
        i1 = 0;
        if (m != 0)
        {
          i1 = RecyclerView.d(this.g).b(m, this.g.a, this.g.e);
          n = m - i1;
        }
        TraceCompat.endSection();
        if (RecyclerView.h(this.g))
        {
          int i12 = this.g.c.a();
          for (int i13 = 0; i13 < i12; i13++)
          {
            View localView1 = this.g.c.b(i13);
            ay localay = this.g.a(localView1);
            if ((localay == null) || (localay.h == null))
              continue;
            View localView2 = localay.h.a;
            int i14 = localView1.getLeft();
            int i15 = localView1.getTop();
            if ((i14 == localView2.getLeft()) && (i15 == localView2.getTop()))
              continue;
            localView2.layout(i14, i15, i14 + localView2.getWidth(), i15 + localView2.getHeight());
          }
        }
        RecyclerView.i(this.g);
        this.g.a(false);
      }
      i4 = i2;
      i5 = i1;
      if (!RecyclerView.j(this.g).isEmpty())
        this.g.invalidate();
      if (ViewCompat.getOverScrollMode(this.g) != 2)
        RecyclerView.a(this.g, k, m);
      if ((i4 != 0) || (n != 0))
      {
        i6 = (int)localScrollerCompat.getCurrVelocity();
        if (i4 == i)
          break label757;
        if (i4 >= 0)
          break label697;
        i11 = -i6;
      }
    }
    label480: label609: label738: label744: label757: for (int i7 = i11; ; i7 = 0)
    {
      if (n != j)
        if (n < 0)
          i6 = -i6;
      while (true)
      {
        if (ViewCompat.getOverScrollMode(this.g) != 2)
          this.g.a(i7, i6);
        if (((i7 != 0) || (i4 == i) || (localScrollerCompat.getFinalX() == 0)) && ((i6 != 0) || (n == j) || (localScrollerCompat.getFinalY() == 0)))
          localScrollerCompat.abortAnimation();
        if ((i3 != 0) || (i5 != 0))
          this.g.c(i3, i5);
        if (!RecyclerView.k(this.g))
          this.g.invalidate();
        int i8;
        int i9;
        label637: int i10;
        if ((m != 0) && (RecyclerView.d(this.g).d()) && (i5 == m))
        {
          i8 = 1;
          if ((k == 0) || (!RecyclerView.d(this.g).c()) || (i3 != k))
            break label732;
          i9 = 1;
          if (((k != 0) || (m != 0)) && (i9 == 0) && (i8 == 0))
            break label738;
          i10 = 1;
          if ((!localScrollerCompat.isFinished()) && (i10 != 0))
            break label744;
          RecyclerView.b(this.g, 0);
        }
        while (true)
        {
          this.e = false;
          if (this.f)
            a();
          return;
          if (i4 > 0)
          {
            i11 = i6;
            break;
          }
          i11 = 0;
          break;
          if (n > 0)
            break label480;
          i6 = 0;
          break label480;
          i8 = 0;
          break label609;
          i9 = 0;
          break label637;
          i10 = 0;
          break label660;
          a();
        }
        i6 = 0;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ax
 * JD-Core Version:    0.6.0
 */