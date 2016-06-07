package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

public class LinearLayoutManager extends ao
{
  Z a;
  private int d;
  private J e;
  private boolean f;
  private boolean g = false;
  private boolean h = false;
  private boolean i = false;
  private boolean j = true;
  private int k = -1;
  private int l = -2147483648;
  private LinearLayoutManager.SavedState m = null;
  private H n = new H(this);

  private LinearLayoutManager(int paramInt, boolean paramBoolean)
  {
    a(null);
    if (1 != this.d)
    {
      this.d = 1;
      this.a = null;
      g();
    }
    a(null);
    if (this.g)
    {
      this.g = false;
      g();
    }
  }

  public LinearLayoutManager(Context paramContext)
  {
    this(1, false);
  }

  private int a(int paramInt, ar paramar, aw paramaw, boolean paramBoolean)
  {
    int i1 = this.a.d() - paramInt;
    if (i1 > 0)
    {
      int i2 = -d(-i1, paramar, paramaw);
      int i3 = paramInt + i2;
      if (paramBoolean)
      {
        int i4 = this.a.d() - i3;
        if (i4 > 0)
        {
          this.a.a(i4);
          i2 += i4;
        }
      }
      return i2;
    }
    return 0;
  }

  private int a(ar paramar, J paramJ, aw paramaw, boolean paramBoolean)
  {
    int i1 = paramJ.c;
    if (paramJ.g != -2147483648)
    {
      if (paramJ.c < 0)
        paramJ.g += paramJ.c;
      a(paramar, paramJ);
    }
    int i2 = paramJ.c + paramJ.h;
    I localI = new I();
    int i3 = i2;
    int i4;
    label91: View localView;
    if (i3 > 0)
    {
      if ((paramJ.d < 0) || (paramJ.d >= paramaw.d()))
        break label284;
      i4 = 1;
      if (i4 != 0)
      {
        localI.a = 0;
        localI.b = false;
        localI.c = false;
        localI.d = false;
        localView = paramJ.a(paramar);
        if (localView != null)
          break label290;
        localI.b = true;
        if (!localI.b)
        {
          paramJ.b += localI.a * paramJ.f;
          if ((localI.c) && (this.e.j == null) && (paramaw.a()))
            break label834;
          paramJ.c -= localI.a;
        }
      }
    }
    label284: label290: label695: label705: label834: for (int i11 = i3 - localI.a; ; i11 = i3)
    {
      if (paramJ.g != -2147483648)
      {
        paramJ.g += localI.a;
        if (paramJ.c < 0)
          paramJ.g += paramJ.c;
        a(paramar, paramJ);
      }
      if ((paramBoolean) && (localI.d))
      {
        return i1 - paramJ.c;
        i4 = 0;
        break label91;
        ap localap1 = (ap)localView.getLayoutParams();
        boolean bool4;
        label324: label337: int i10;
        int i12;
        int i8;
        int i9;
        int i7;
        if (paramJ.j == null)
        {
          boolean bool3 = this.h;
          if (paramJ.f == -1)
          {
            bool4 = true;
            if (bool3 != bool4)
              break label645;
            a(localView);
            ap localap2 = (ap)localView.getLayoutParams();
            Rect localRect = this.c.c(localView);
            int i5 = 0 + (localRect.left + localRect.right);
            int i6 = 0 + (localRect.top + localRect.bottom);
            localView.measure(ao.a(i(), i5 + (k() + m() + localap2.leftMargin + localap2.rightMargin), localap2.width, c()), ao.a(j(), i6 + (l() + n() + localap2.topMargin + localap2.bottomMargin), localap2.height, d()));
            localI.a = this.a.c(localView);
            if (this.d != 1)
              break label757;
            if (!r())
              break label705;
            i10 = i() - m();
            i12 = i10 - this.a.d(localView);
            if (paramJ.f != -1)
              break label728;
            i8 = paramJ.b;
            int i14 = paramJ.b - localI.a;
            i9 = i12;
            i7 = i14;
          }
        }
        while (true)
        {
          a(localView, i9 + localap1.leftMargin, i7 + localap1.topMargin, i10 - localap1.rightMargin, i8 - localap1.bottomMargin);
          if ((localap1.a.m()) || (localap1.a.k()))
            localI.c = true;
          localI.d = localView.isFocusable();
          break;
          bool4 = false;
          break label324;
          b(localView, 0);
          break label337;
          boolean bool1 = this.h;
          if (paramJ.f == -1);
          for (boolean bool2 = true; ; bool2 = false)
          {
            if (bool1 != bool2)
              break label695;
            a(localView, -1);
            break;
          }
          a(localView, 0);
          break label337;
          i12 = k();
          i10 = i12 + this.a.d(localView);
          break label527;
          label728: int i13 = paramJ.b;
          i8 = paramJ.b + localI.a;
          i9 = i12;
          i7 = i13;
          continue;
          label757: i7 = l();
          i8 = i7 + this.a.d(localView);
          if (paramJ.f == -1)
          {
            i10 = paramJ.b;
            i9 = paramJ.b - localI.a;
            continue;
          }
          i9 = paramJ.b;
          i10 = paramJ.b + localI.a;
        }
      }
      i3 = i11;
      break;
    }
  }

  private View a(int paramInt1, int paramInt2, int paramInt3)
  {
    Object localObject1 = null;
    s();
    int i1 = this.a.c();
    int i2 = this.a.d();
    int i3;
    Object localObject2;
    label36: Object localObject3;
    Object localObject4;
    if (paramInt2 > paramInt1)
    {
      i3 = 1;
      localObject2 = null;
      if (paramInt1 == paramInt2)
        break label158;
      localObject3 = b(paramInt1);
      int i4 = b((View)localObject3);
      if ((i4 < 0) || (i4 >= paramInt3))
        break label173;
      if (!((ap)((View)localObject3).getLayoutParams()).a.m())
        break label114;
      if (localObject2 != null)
        break label173;
      localObject4 = localObject1;
    }
    while (true)
    {
      paramInt1 += i3;
      localObject1 = localObject4;
      localObject2 = localObject3;
      break label36;
      i3 = -1;
      break;
      label114: if ((this.a.a((View)localObject3) >= i2) || (this.a.b((View)localObject3) < i1))
      {
        if (localObject1 != null)
          break label173;
        localObject4 = localObject3;
        localObject3 = localObject2;
        continue;
        if (localObject1 != null)
          localObject3 = localObject1;
      }
      else
      {
        return localObject3;
      }
      label158: return localObject2;
      label173: localObject4 = localObject1;
      localObject3 = localObject2;
    }
  }

  private View a(int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    s();
    int i1 = this.a.c();
    int i2 = this.a.d();
    int i3;
    if (paramInt2 > paramInt1)
      i3 = 1;
    Object localObject1;
    Object localObject2;
    while (true)
    {
      localObject1 = null;
      if (paramInt1 == paramInt2)
        break;
      localObject2 = b(paramInt1);
      int i4 = this.a.a((View)localObject2);
      int i5 = this.a.b((View)localObject2);
      if ((i4 >= i2) || (i5 <= i1))
        break label133;
      if ((!paramBoolean1) || ((i4 >= i1) && (i5 <= i2)))
      {
        return localObject2;
        i3 = -1;
        continue;
      }
      if ((!paramBoolean2) || (localObject1 != null))
        break label133;
    }
    while (true)
    {
      paramInt1 += i3;
      localObject1 = localObject2;
      break;
      return localObject1;
      label133: localObject2 = localObject1;
    }
  }

  private View a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.h)
      return a(-1 + h(), -1, paramBoolean1, true);
    return a(0, h(), paramBoolean1, true);
  }

  private void a(int paramInt1, int paramInt2, boolean paramBoolean, aw paramaw)
  {
    int i1 = -1;
    int i2 = 1;
    this.e.h = g(paramaw);
    this.e.f = paramInt1;
    int i3;
    if (paramInt1 == i2)
    {
      J localJ4 = this.e;
      localJ4.h += this.a.g();
      View localView2 = u();
      J localJ5 = this.e;
      if (this.h);
      while (true)
      {
        localJ5.e = i1;
        this.e.d = (b(localView2) + this.e.e);
        this.e.b = this.a.b(localView2);
        i3 = this.a.b(localView2) - this.a.d();
        this.e.c = paramInt2;
        if (paramBoolean)
        {
          J localJ3 = this.e;
          localJ3.c -= i3;
        }
        this.e.g = i3;
        return;
        i1 = i2;
      }
    }
    View localView1 = t();
    J localJ1 = this.e;
    localJ1.h += this.a.c();
    J localJ2 = this.e;
    if (this.h);
    while (true)
    {
      localJ2.e = i2;
      this.e.d = (b(localView1) + this.e.e);
      this.e.b = this.a.a(localView1);
      i3 = -this.a.a(localView1) + this.a.c();
      break;
      i2 = i1;
    }
  }

  private void a(H paramH)
  {
    f(paramH.a, paramH.b);
  }

  private void a(ar paramar, J paramJ)
  {
    if (!paramJ.a);
    while (true)
    {
      return;
      if (paramJ.f == -1)
      {
        int i5 = paramJ.g;
        int i6 = h();
        if (i5 < 0)
          continue;
        int i7 = this.a.e() - i5;
        if (this.h)
        {
          for (int i9 = 0; i9 < i6; i9++)
          {
            View localView4 = b(i9);
            if (this.a.a(localView4) >= i7)
              continue;
            b(paramar, 0, i9);
            return;
          }
          continue;
        }
        for (int i8 = i6 - 1; i8 >= 0; i8--)
        {
          View localView3 = b(i8);
          if (this.a.a(localView3) >= i7)
            continue;
          b(paramar, i6 - 1, i8);
          return;
        }
        continue;
      }
      int i1 = paramJ.g;
      if (i1 < 0)
        continue;
      int i2 = h();
      if (this.h)
      {
        for (int i4 = i2 - 1; i4 >= 0; i4--)
        {
          View localView2 = b(i4);
          if (this.a.b(localView2) <= i1)
            continue;
          b(paramar, i2 - 1, i4);
          return;
        }
        continue;
      }
      for (int i3 = 0; i3 < i2; i3++)
      {
        View localView1 = b(i3);
        if (this.a.b(localView1) <= i1)
          continue;
        b(paramar, 0, i3);
        return;
      }
    }
  }

  private int b(int paramInt, ar paramar, aw paramaw, boolean paramBoolean)
  {
    int i1 = paramInt - this.a.c();
    if (i1 > 0)
    {
      int i2 = -d(i1, paramar, paramaw);
      int i3 = paramInt + i2;
      if (paramBoolean)
      {
        int i4 = i3 - this.a.c();
        if (i4 > 0)
        {
          this.a.a(-i4);
          i2 -= i4;
        }
      }
      return i2;
    }
    return 0;
  }

  private View b(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (this.h)
      return a(0, h(), paramBoolean1, true);
    return a(-1 + h(), -1, paramBoolean1, true);
  }

  private void b(H paramH)
  {
    g(paramH.a, paramH.b);
  }

  private void b(ar paramar, int paramInt1, int paramInt2)
  {
    if (paramInt1 == paramInt2);
    while (true)
    {
      return;
      if (paramInt2 > paramInt1)
      {
        for (int i1 = paramInt2 - 1; i1 >= paramInt1; i1--)
          a(i1, paramar);
        continue;
      }
      while (paramInt1 > paramInt2)
      {
        a(paramInt1, paramar);
        paramInt1--;
      }
    }
  }

  private int d(int paramInt, ar paramar, aw paramaw)
  {
    if ((h() == 0) || (paramInt == 0))
      return 0;
    this.e.a = true;
    s();
    if (paramInt > 0);
    int i2;
    int i3;
    for (int i1 = 1; ; i1 = -1)
    {
      i2 = Math.abs(paramInt);
      a(i1, i2, true, paramaw);
      i3 = this.e.g + a(paramar, this.e, paramaw, false);
      if (i3 >= 0)
        break;
      return 0;
    }
    if (i2 > i3)
      paramInt = i1 * i3;
    this.a.a(-paramInt);
    this.e.i = paramInt;
    return paramInt;
  }

  private View d(ar paramar, aw paramaw)
  {
    if (this.h)
      return f(paramar, paramaw);
    return g(paramar, paramaw);
  }

  private View e(ar paramar, aw paramaw)
  {
    if (this.h)
      return g(paramar, paramaw);
    return f(paramar, paramaw);
  }

  private View f(ar paramar, aw paramaw)
  {
    return a(0, h(), paramaw.d());
  }

  private void f(int paramInt1, int paramInt2)
  {
    this.e.c = (this.a.d() - paramInt2);
    J localJ = this.e;
    if (this.h);
    for (int i1 = -1; ; i1 = 1)
    {
      localJ.e = i1;
      this.e.d = paramInt1;
      this.e.f = 1;
      this.e.b = paramInt2;
      this.e.g = -2147483648;
      return;
    }
  }

  private int g(aw paramaw)
  {
    if (paramaw.c())
      return this.a.f();
    return 0;
  }

  private View g(ar paramar, aw paramaw)
  {
    return a(-1 + h(), -1, paramaw.d());
  }

  private void g(int paramInt1, int paramInt2)
  {
    this.e.c = (paramInt2 - this.a.c());
    this.e.d = paramInt1;
    J localJ = this.e;
    if (this.h);
    for (int i1 = 1; ; i1 = -1)
    {
      localJ.e = i1;
      this.e.f = -1;
      this.e.b = paramInt2;
      this.e.g = -2147483648;
      return;
    }
  }

  private int h(aw paramaw)
  {
    if (h() == 0)
      return 0;
    s();
    Z localZ = this.a;
    if (!this.j);
    for (boolean bool1 = true; ; bool1 = false)
    {
      View localView = a(bool1, true);
      boolean bool2 = this.j;
      boolean bool3 = false;
      if (!bool2)
        bool3 = true;
      return a.a(paramaw, localZ, localView, b(bool3, true), this, this.j, this.h);
    }
  }

  private int i(aw paramaw)
  {
    if (h() == 0)
      return 0;
    s();
    Z localZ = this.a;
    if (!this.j);
    for (boolean bool1 = true; ; bool1 = false)
    {
      View localView = a(bool1, true);
      boolean bool2 = this.j;
      boolean bool3 = false;
      if (!bool2)
        bool3 = true;
      return a.a(paramaw, localZ, localView, b(bool3, true), this, this.j);
    }
  }

  private int j(aw paramaw)
  {
    if (h() == 0)
      return 0;
    s();
    Z localZ = this.a;
    if (!this.j);
    for (boolean bool1 = true; ; bool1 = false)
    {
      View localView = a(bool1, true);
      boolean bool2 = this.j;
      boolean bool3 = false;
      if (!bool2)
        bool3 = true;
      return a.b(paramaw, localZ, localView, b(bool3, true), this, this.j);
    }
  }

  private void q()
  {
    int i1 = 1;
    boolean bool;
    if ((this.d == i1) || (!r()))
      bool = this.g;
    while (true)
    {
      this.h = bool;
      return;
      if (!this.g)
        continue;
      bool = false;
    }
  }

  private boolean r()
  {
    return ViewCompat.getLayoutDirection(this.c) == 1;
  }

  private void s()
  {
    if (this.e == null)
      this.e = new J();
    if (this.a == null)
      this.a = Z.a(this, this.d);
  }

  private View t()
  {
    if (this.h);
    for (int i1 = -1 + h(); ; i1 = 0)
      return b(i1);
  }

  private View u()
  {
    if (this.h);
    for (int i1 = 0; ; i1 = -1 + h())
      return b(i1);
  }

  public final int a(int paramInt, ar paramar, aw paramaw)
  {
    if (this.d == 1)
      return 0;
    return d(paramInt, paramar, paramaw);
  }

  public final int a(aw paramaw)
  {
    return h(paramaw);
  }

  public final ap a()
  {
    return new ap(-2, -2);
  }

  public final View a(int paramInt)
  {
    int i1 = h();
    View localView;
    if (i1 == 0)
      localView = null;
    do
    {
      return localView;
      int i2 = paramInt - b(b(0));
      if ((i2 < 0) || (i2 >= i1))
        break;
      localView = b(i2);
    }
    while (b(localView) == paramInt);
    return super.a(paramInt);
  }

  public final void a(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof LinearLayoutManager.SavedState))
    {
      this.m = ((LinearLayoutManager.SavedState)paramParcelable);
      g();
    }
  }

  public final void a(RecyclerView paramRecyclerView, ar paramar)
  {
    super.a(paramRecyclerView, paramar);
  }

  public final void a(ar paramar, aw paramaw)
  {
    if ((this.m != null) && (this.m.a()))
      this.k = this.m.a;
    s();
    this.e.a = false;
    q();
    H localH1 = this.n;
    localH1.a = -1;
    localH1.b = -2147483648;
    localH1.c = false;
    this.n.c = this.h;
    H localH2 = this.n;
    int i1;
    View localView2;
    label122: int i43;
    label163: int i40;
    label166: int i2;
    int i3;
    label202: int i4;
    int i5;
    View localView1;
    int i39;
    label296: label308: int i33;
    int i35;
    if ((paramaw.a()) || (this.k == -1))
    {
      i1 = 0;
      if (i1 == 0)
      {
        if (h() == 0)
          break label1444;
        if (this.c != null)
          break label1099;
        localView2 = null;
        if ((localView2 == null) || (!H.a(localH2, localView2, paramaw)))
          break label1437;
        i43 = localH2.d.a.b();
        if (i43 < 0)
          break label1131;
        localH2.a(localView2);
        i40 = 1;
        if (i40 == 0)
        {
          localH2.a();
          localH2.a = 0;
        }
      }
      i2 = g(paramaw);
      if (this.e.i < 0)
        break label1597;
      i3 = 0;
      i4 = i3 + this.a.c();
      i5 = i2 + this.a.g();
      if ((paramaw.a()) && (this.k != -1) && (this.l != -2147483648))
      {
        localView1 = a(this.k);
        if (localView1 != null)
        {
          if (!this.h)
            break label1607;
          i39 = this.a.d() - this.a.b(localView1) - this.l;
          if (i39 <= 0)
            break label1638;
          i4 += i39;
        }
      }
      a(paramar);
      if (!this.n.c)
        break label1648;
      b(this.n);
      this.e.h = i4;
      a(paramar, this.e, paramaw, false);
      i33 = this.e.b;
      int i34 = this.e.d;
      if (this.e.c > 0)
        i5 += this.e.c;
      a(this.n);
      this.e.h = i5;
      J localJ2 = this.e;
      localJ2.d += this.e.e;
      a(paramar, this.e, paramaw, false);
      i35 = this.e.b;
      if (this.e.c <= 0)
        break label2217;
      int i37 = this.e.c;
      g(i34, i33);
      this.e.h = i37;
      a(paramar, this.e, paramaw, false);
    }
    label519: label1031: label1037: label1437: label1444: label2217: for (int i36 = this.e.b; ; i36 = i33)
    {
      int i8 = i36;
      int i6 = i35;
      int i10;
      int i11;
      if (h() > 0)
        if (this.h)
        {
          int i27 = a(i6, paramar, paramaw, true);
          int i28 = i8 + i27;
          int i29 = i6 + i27;
          int i30 = b(i28, paramar, paramaw, false);
          int i31 = i28 + i30;
          int i32 = i29 + i30;
          i10 = i31;
          i11 = i32;
        }
      while (true)
      {
        if ((!paramaw.b()) || (h() == 0) || (paramaw.a()) || (!f()))
        {
          if (!paramaw.a())
          {
            this.k = -1;
            this.l = -2147483648;
            this.a.a();
          }
          this.f = false;
          this.m = null;
          return;
          if ((this.k < 0) || (this.k >= paramaw.d()))
          {
            this.k = -1;
            this.l = -2147483648;
            i1 = 0;
            break;
          }
          localH2.a = this.k;
          if ((this.m != null) && (this.m.a()))
          {
            localH2.c = this.m.c;
            if (localH2.c);
            for (localH2.b = (this.a.d() - this.m.b); ; localH2.b = (this.a.c() + this.m.b))
            {
              i1 = 1;
              break;
            }
          }
          View localView4;
          if (this.l == -2147483648)
          {
            localView4 = a(this.k);
            if (localView4 != null)
              if (this.a.c(localView4) > this.a.f())
                localH2.a();
          }
          while (true)
          {
            i1 = 1;
            break;
            if (this.a.a(localView4) - this.a.c() < 0)
            {
              localH2.b = this.a.c();
              localH2.c = false;
              continue;
            }
            if (this.a.d() - this.a.b(localView4) < 0)
            {
              localH2.b = this.a.d();
              localH2.c = true;
              continue;
            }
            if (localH2.c);
            for (int i56 = this.a.b(localView4) + this.a.b(); ; i56 = this.a.a(localView4))
            {
              localH2.b = i56;
              i1 = 1;
              break;
            }
            int i55;
            if (h() > 0)
            {
              int i54 = b(b(0));
              if (this.k >= i54)
                break label1031;
              i55 = 1;
              label1004: if (i55 != this.h)
                break label1037;
            }
            for (boolean bool = true; ; bool = false)
            {
              localH2.c = bool;
              localH2.a();
              break;
              i55 = 0;
              break label1004;
            }
            localH2.c = this.h;
            if (this.h)
            {
              localH2.b = (this.a.d() - this.l);
              continue;
            }
            localH2.b = (this.a.c() + this.l);
          }
          label1099: localView2 = this.c.getFocusedChild();
          if ((localView2 != null) && (!this.b.a(localView2)))
            break label122;
          localView2 = null;
          break label122;
          label1131: localH2.a = b(localView2);
          if (localH2.c)
          {
            int i49 = localH2.d.a.d() - i43 - localH2.d.a.b(localView2);
            localH2.b = (localH2.d.a.d() - i49);
            if (i49 <= 0)
              break label163;
            int i50 = localH2.d.a.c(localView2);
            int i51 = localH2.b - i50;
            int i52 = localH2.d.a.c();
            int i53 = i51 - (i52 + Math.min(localH2.d.a.a(localView2) - i52, 0));
            if (i53 >= 0)
              break label163;
            localH2.b += Math.min(i49, -i53);
            break label163;
          }
          int i44 = localH2.d.a.a(localView2);
          int i45 = i44 - localH2.d.a.c();
          localH2.b = i44;
          if (i45 <= 0)
            break label163;
          int i46 = i44 + localH2.d.a.c(localView2);
          int i47 = localH2.d.a.d() - i43 - localH2.d.a.b(localView2);
          int i48 = localH2.d.a.d() - Math.min(0, i47) - i46;
          if (i48 >= 0)
            break label163;
          localH2.b -= Math.min(i45, -i48);
          break label163;
          if (this.f)
          {
            i40 = 0;
            break label166;
          }
          View localView3;
          label1466: int i41;
          if (localH2.c)
          {
            localView3 = d(paramar, paramaw);
            if (localView3 == null)
              break label1577;
            localH2.a(localView3);
            if ((!paramaw.a()) && (f()))
            {
              if ((this.a.a(localView3) < this.a.d()) && (this.a.b(localView3) >= this.a.c()))
                break label1579;
              i41 = 1;
              label1533: if (i41 != 0)
                if (!localH2.c)
                  break label1585;
            }
          }
          label1577: label1579: label1585: for (int i42 = this.a.d(); ; i42 = this.a.c())
          {
            localH2.b = i42;
            i40 = 1;
            break;
            localView3 = e(paramar, paramaw);
            break label1466;
            break label1444;
            i41 = 0;
            break label1533;
          }
          label1597: i3 = i2;
          i2 = 0;
          break label202;
          label1607: int i38 = this.a.a(localView1) - this.a.c();
          i39 = this.l - i38;
          break label296;
          label1638: i5 -= i39;
          break label308;
          label1648: a(this.n);
          this.e.h = i5;
          a(paramar, this.e, paramaw, false);
          i6 = this.e.b;
          int i7 = this.e.d;
          if (this.e.c > 0)
            i4 += this.e.c;
          b(this.n);
          this.e.h = i4;
          J localJ1 = this.e;
          localJ1.d += this.e.e;
          a(paramar, this.e, paramaw, false);
          i8 = this.e.b;
          if (this.e.c <= 0)
            break label519;
          int i9 = this.e.c;
          f(i7, i6);
          this.e.h = i9;
          a(paramar, this.e, paramaw, false);
          i6 = this.e.b;
          break label519;
          int i21 = b(i8, paramar, paramaw, true);
          int i22 = i8 + i21;
          int i23 = i6 + i21;
          int i24 = a(i23, paramar, paramaw, false);
          int i25 = i22 + i24;
          int i26 = i23 + i24;
          i10 = i25;
          i11 = i26;
          continue;
        }
        int i12 = 0;
        int i13 = 0;
        List localList = paramar.b();
        int i14 = localList.size();
        int i15 = b(b(0));
        int i16 = 0;
        ay localay;
        int i19;
        label1976: int i20;
        label1988: int i18;
        int i17;
        if (i16 < i14)
        {
          localay = (ay)localList.get(i16);
          if (localay.m())
            break label2195;
          if (localay.c() < i15)
          {
            i19 = 1;
            if (i19 == this.h)
              break label2035;
            i20 = -1;
            if (i20 != -1)
              break label2041;
            i18 = i12 + this.a.c(localay.a);
            i17 = i13;
          }
        }
        while (true)
        {
          i16++;
          i12 = i18;
          i13 = i17;
          break label1934;
          i19 = 0;
          break label1976;
          label2035: i20 = 1;
          break label1988;
          label2041: i17 = i13 + this.a.c(localay.a);
          i18 = i12;
          continue;
          this.e.j = localList;
          if (i12 > 0)
          {
            g(b(t()), i10);
            this.e.h = i12;
            this.e.c = 0;
            this.e.a(null);
            a(paramar, this.e, paramaw, false);
          }
          if (i13 > 0)
          {
            f(b(u()), i11);
            this.e.h = i13;
            this.e.c = 0;
            this.e.a(null);
            a(paramar, this.e, paramaw, false);
          }
          this.e.j = null;
          break;
          i17 = i13;
          i18 = i12;
        }
        i10 = i8;
        i11 = i6;
      }
    }
  }

  public final void a(AccessibilityEvent paramAccessibilityEvent)
  {
    int i1 = -1;
    super.a(paramAccessibilityEvent);
    AccessibilityRecordCompat localAccessibilityRecordCompat;
    View localView1;
    int i2;
    View localView2;
    if (h() > 0)
    {
      localAccessibilityRecordCompat = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
      localView1 = a(0, h(), false, true);
      if (localView1 != null)
        break label72;
      i2 = i1;
      localAccessibilityRecordCompat.setFromIndex(i2);
      localView2 = a(-1 + h(), i1, false, true);
      if (localView2 != null)
        break label82;
    }
    while (true)
    {
      localAccessibilityRecordCompat.setToIndex(i1);
      return;
      label72: i2 = b(localView1);
      break;
      label82: i1 = b(localView2);
    }
  }

  public final void a(String paramString)
  {
    if (this.m == null)
      super.a(paramString);
  }

  public final int b(int paramInt, ar paramar, aw paramaw)
  {
    if (this.d == 0)
      return 0;
    return d(paramInt, paramar, paramaw);
  }

  public final int b(aw paramaw)
  {
    return h(paramaw);
  }

  public final Parcelable b()
  {
    if (this.m != null)
      return new LinearLayoutManager.SavedState(this.m);
    LinearLayoutManager.SavedState localSavedState = new LinearLayoutManager.SavedState();
    if (h() > 0)
    {
      s();
      boolean bool = this.f ^ this.h;
      localSavedState.c = bool;
      if (bool)
      {
        View localView2 = u();
        localSavedState.b = (this.a.d() - this.a.b(localView2));
        localSavedState.a = b(localView2);
        return localSavedState;
      }
      View localView1 = t();
      localSavedState.a = b(localView1);
      localSavedState.b = (this.a.a(localView1) - this.a.c());
      return localSavedState;
    }
    localSavedState.a = -1;
    return localSavedState;
  }

  public final int c(aw paramaw)
  {
    return i(paramaw);
  }

  public final View c(int paramInt, ar paramar, aw paramaw)
  {
    q();
    if (h() == 0);
    int i1;
    label76: View localView1;
    while (true)
    {
      return null;
      switch (paramInt)
      {
      default:
        i1 = -2147483648;
        if (i1 == -2147483648)
          continue;
        s();
        if (i1 == -1)
        {
          localView1 = e(paramar, paramaw);
          label101: if (localView1 == null)
            continue;
          s();
          a(i1, (int)(0.33F * this.a.f()), false, paramaw);
          this.e.g = -2147483648;
          this.e.a = false;
          a(paramar, this.e, paramaw, true);
          if (i1 != -1)
            break label295;
        }
      case 1:
      case 2:
      case 33:
      case 130:
      case 17:
      case 66:
      }
    }
    label295: for (View localView2 = t(); (localView2 != localView1) && (localView2.isFocusable()); localView2 = u())
    {
      return localView2;
      i1 = -1;
      break label76;
      i1 = 1;
      break label76;
      if (this.d == 1)
      {
        i1 = -1;
        break label76;
      }
      i1 = -2147483648;
      break label76;
      if (this.d == 1)
      {
        i1 = 1;
        break label76;
      }
      i1 = -2147483648;
      break label76;
      if (this.d == 0)
      {
        i1 = -1;
        break label76;
      }
      i1 = -2147483648;
      break label76;
      if (this.d == 0)
      {
        i1 = 1;
        break label76;
      }
      i1 = -2147483648;
      break label76;
      localView1 = d(paramar, paramaw);
      break label101;
    }
  }

  public final boolean c()
  {
    return this.d == 0;
  }

  public final int d(aw paramaw)
  {
    return i(paramaw);
  }

  public final boolean d()
  {
    return this.d == 1;
  }

  public final int e()
  {
    return this.d;
  }

  public final int e(aw paramaw)
  {
    return j(paramaw);
  }

  public final int f(aw paramaw)
  {
    return j(paramaw);
  }

  public final boolean f()
  {
    return (this.m == null) && (!this.f);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.LinearLayoutManager
 * JD-Core Version:    0.6.0
 */