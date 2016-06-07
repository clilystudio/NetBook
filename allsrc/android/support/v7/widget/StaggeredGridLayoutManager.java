package android.support.v7.widget;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat.CollectionItemInfoCompat;
import android.support.v4.view.accessibility.AccessibilityRecordCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import java.util.ArrayList;
import java.util.BitSet;

public final class StaggeredGridLayoutManager extends ao
{
  Z a;
  private Z d;
  private int e;
  private F f;
  private boolean g;
  private boolean h;
  private int i;
  private int j;
  private boolean k;
  private boolean l;
  private StaggeredGridLayoutManager.SavedState m;
  private int n;
  private int o;
  private int p;
  private final Rect q;
  private final av r;
  private boolean s;
  private final Runnable t;

  private static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt2 == 0) && (paramInt3 == 0));
    int i1;
    do
    {
      return paramInt1;
      i1 = View.MeasureSpec.getMode(paramInt1);
    }
    while ((i1 != -2147483648) && (i1 != 1073741824));
    return View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt1) - paramInt2 - paramInt3, i1);
  }

  private int a(ar paramar, F paramF, aw paramaw)
  {
    null.set(0, 0, true);
    int i1;
    int i2;
    label47: int i3;
    label50: int i4;
    label71: View localView;
    aO localaO1;
    int i8;
    label139: int i19;
    label155: label180: label187: label207: int i9;
    int i11;
    label229: Rect localRect;
    label257: int i14;
    int i13;
    label369: int i18;
    if (paramF.d == 1)
    {
      i1 = paramF.f + paramF.a;
      if (!this.h)
        break label627;
      i2 = this.a.d();
      i3 = 0;
      if ((paramF.b < 0) || (paramF.b >= paramaw.d()))
        break label639;
      i4 = 1;
      if ((i4 == 0) || (null.isEmpty()))
        break label861;
      localView = paramar.b(paramF.b);
      paramF.b += paramF.c;
      localaO1 = (aO)localView.getLayoutParams();
      int i7 = localaO1.a.c();
      if (null.c(i7) != -1)
        break label645;
      i8 = 1;
      if (i8 == 0)
        break label668;
      if (paramF.d != -1)
        break label651;
      i19 = 1;
      if ((i19 != this.h) && (paramF.d != 1))
        break label657;
      this.a.c();
      null.a(i7, null);
      localaO1.e = null;
      if (paramF.d != 1)
        break label671;
      a(localView);
      i9 = localaO1.width;
      int i10 = this.o;
      if (i9 >= 0)
        break label681;
      i11 = i10;
      int i12 = this.p;
      localRect = this.q;
      if (this.c != null)
        break label693;
      localRect.set(0, 0, 0, 0);
      aO localaO2 = (aO)localView.getLayoutParams();
      localView.measure(a(i11, localaO2.leftMargin + this.q.left, localaO2.rightMargin + this.q.right), a(i12, localaO2.topMargin + this.q.top, localaO2.bottomMargin + this.q.bottom));
      if (paramF.d != 1)
        break label710;
      i14 = null.b(i2);
      i13 = i14 + this.a.c(localView);
      if (i8 != 0);
      if (paramF.d != 1)
        break label735;
      aR localaR2 = localaO1.e;
      aO localaO5 = (aO)localView.getLayoutParams();
      localaO5.e = localaR2;
      null.add(localView);
      localaR2.b = -2147483648;
      if (null.size() == 1)
        localaR2.a = -2147483648;
      if ((localaO5.a.m()) || (localaO5.a.k()))
        localaR2.c += localaR2.e.a.c(localView);
      label476: int i15 = null.d * this.e + this.d.c();
      int i16 = i15 + this.d.c(localView);
      aO localaO4 = (aO)localView.getLayoutParams();
      a(localView, i14 + localaO4.leftMargin, i15 + localaO4.topMargin, i13 - localaO4.rightMargin, i16 - localaO4.bottomMargin);
      int i17 = this.f.d;
      i18 = null.c;
      if (i17 != -1)
        break label837;
      if (i18 + null.a() <= i1)
        null.set(null.d, false);
    }
    while (true)
    {
      a(paramar, this.f);
      i3 = 1;
      break label50;
      i1 = paramF.e - paramF.a;
      break;
      label627: i2 = this.a.c();
      break label47;
      label639: i4 = 0;
      break label71;
      label645: i8 = 0;
      break label139;
      label651: i19 = 0;
      break label155;
      label657: this.a.d();
      break label180;
      label668: break label187;
      label671: b(localView, 0);
      break label207;
      label681: i11 = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
      break label229;
      label693: localRect.set(this.c.c(localView));
      break label257;
      label710: i13 = null.a(i2);
      i14 = i13 - this.a.c(localView);
      break label369;
      label735: aR localaR1 = localaO1.e;
      aO localaO3 = (aO)localView.getLayoutParams();
      localaO3.e = localaR1;
      null.add(0, localView);
      localaR1.a = -2147483648;
      if (null.size() == 1)
        localaR1.b = -2147483648;
      if ((!localaO3.a.m()) && (!localaO3.a.k()))
        break label476;
      localaR1.c += localaR1.e.a.c(localView);
      break label476;
      label837: if (null.b() - i18 < i1)
        continue;
      null.set(null.d, false);
    }
    label861: if (i3 == 0)
      a(paramar, this.f);
    int i6;
    if (this.f.d == -1)
      i6 = null.a(this.a.c());
    for (int i5 = this.a.c() - i6; i5 > 0; i5 = null.b(this.a.d()) - this.a.d())
      return Math.min(paramF.a, i5);
    return 0;
  }

  private View a(boolean paramBoolean1, boolean paramBoolean2)
  {
    e();
    int i1 = this.a.c();
    int i2 = this.a.d();
    int i3 = h();
    Object localObject1 = null;
    int i4 = 0;
    Object localObject2;
    if (i4 < i3)
    {
      localObject2 = b(i4);
      int i5 = this.a.a((View)localObject2);
      if ((this.a.b((View)localObject2) <= i1) || (i5 >= i2))
        break label110;
      if ((i5 >= i1) || (!paramBoolean1))
        return localObject2;
      if (localObject1 != null)
        break label110;
    }
    while (true)
    {
      i4++;
      localObject1 = localObject2;
      break;
      return localObject1;
      label110: localObject2 = localObject1;
    }
  }

  private void a(int paramInt, aw paramaw)
  {
    this.f.a = 0;
    this.f.b = paramInt;
    if ((this.c != null) && (RecyclerView.t(this.c)));
    for (int i1 = 1; i1 != 0; i1 = 0)
    {
      this.f.e = (this.a.c() - 0);
      this.f.f = (0 + this.a.d());
      return;
    }
    this.f.f = (0 + this.a.e());
    this.f.e = (-0);
  }

  private void a(ar paramar, int paramInt)
  {
    while (true)
    {
      View localView1;
      aO localaO1;
      if (h() > 0)
      {
        localView1 = b(0);
        if (this.a.b(localView1) <= paramInt)
        {
          localaO1 = (aO)localView1.getLayoutParams();
          if (null.size() != 1)
            break label49;
        }
      }
      return;
      label49: aR localaR = localaO1.e;
      View localView2 = (View)null.remove(0);
      aO localaO2 = (aO)localView2.getLayoutParams();
      localaO2.e = null;
      if (null.size() == 0)
        localaR.b = -2147483648;
      if ((localaO2.a.m()) || (localaO2.a.k()))
        localaR.c -= localaR.e.a.c(localView2);
      localaR.a = -2147483648;
      a(localView1, paramar);
    }
  }

  private void a(ar paramar, F paramF)
  {
    if (paramF.a == 0)
    {
      if (paramF.d == -1)
      {
        b(paramar, paramF.f);
        return;
      }
      a(paramar, paramF.e);
      return;
    }
    if (paramF.d == -1)
    {
      int i3 = paramF.e - null.a(paramF.e);
      if (i3 < 0);
      for (int i4 = paramF.f; ; i4 = paramF.f - Math.min(i3, paramF.a))
      {
        b(paramar, i4);
        return;
      }
    }
    int i1 = null.b(paramF.f) - paramF.f;
    if (i1 < 0);
    for (int i2 = paramF.e; ; i2 = paramF.e + Math.min(i1, paramF.a))
    {
      a(paramar, i2);
      return;
    }
  }

  private void a(ar paramar, aw paramaw, boolean paramBoolean)
  {
    int i1 = null.b(this.a.d());
    int i2 = this.a.d() - i1;
    if (i2 > 0)
    {
      int i3 = i2 - -d(-i2, paramar, paramaw);
      if ((paramBoolean) && (i3 > 0))
        this.a.a(i3);
    }
  }

  private View b(boolean paramBoolean1, boolean paramBoolean2)
  {
    e();
    int i1 = this.a.c();
    int i2 = this.a.d();
    Object localObject1 = null;
    int i3 = -1 + h();
    Object localObject2;
    if (i3 >= 0)
    {
      localObject2 = b(i3);
      int i4 = this.a.a((View)localObject2);
      int i5 = this.a.b((View)localObject2);
      if ((i5 <= i1) || (i4 >= i2))
        break label112;
      if ((i5 <= i2) || (!paramBoolean1))
        return localObject2;
      if (localObject1 != null)
        break label112;
    }
    while (true)
    {
      i3--;
      localObject1 = localObject2;
      break;
      return localObject1;
      label112: localObject2 = localObject1;
    }
  }

  private void b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1;
    int i2;
    int i3;
    if (this.h)
    {
      i1 = s();
      if (paramInt3 != 3)
        break label96;
      if (paramInt1 >= paramInt2)
        break label85;
      i2 = paramInt2 + 1;
      i3 = paramInt1;
      label31: null.b(i3);
      switch (paramInt3)
      {
      case 2:
      default:
        label68: if (i2 > i1)
          break;
      case 0:
      case 1:
      case 3:
      }
    }
    while (true)
    {
      return;
      i1 = t();
      break;
      label85: i2 = paramInt1 + 1;
      i3 = paramInt2;
      break label31;
      label96: i2 = paramInt1 + paramInt2;
      i3 = paramInt1;
      break label31;
      null.b(paramInt1, paramInt2);
      break label68;
      null.a(paramInt1, paramInt2);
      break label68;
      null.a(paramInt1, 1);
      null.b(paramInt2, 1);
      break label68;
      if (this.h);
      for (int i4 = t(); i3 <= i4; i4 = s())
      {
        g();
        return;
      }
    }
  }

  private void b(ar paramar, int paramInt)
  {
    for (int i1 = -1 + h(); ; i1--)
    {
      View localView1;
      aO localaO1;
      if (i1 >= 0)
      {
        localView1 = b(i1);
        if (this.a.a(localView1) >= paramInt)
        {
          localaO1 = (aO)localView1.getLayoutParams();
          if (null.size() != 1)
            break label56;
        }
      }
      return;
      label56: aR localaR = localaO1.e;
      int i2 = null.size();
      View localView2 = (View)null.remove(i2 - 1);
      aO localaO2 = (aO)localView2.getLayoutParams();
      localaO2.e = null;
      if ((localaO2.a.m()) || (localaO2.a.k()))
        localaR.c -= localaR.e.a.c(localView2);
      if (i2 == 1)
        localaR.a = -2147483648;
      localaR.b = -2147483648;
      a(localView1, paramar);
    }
  }

  private void b(ar paramar, aw paramaw, boolean paramBoolean)
  {
    int i1 = null.a(this.a.c()) - this.a.c();
    if (i1 > 0)
    {
      int i2 = i1 - d(i1, paramar, paramaw);
      if ((paramBoolean) && (i2 > 0))
        this.a.a(-i2);
    }
  }

  private int d(int paramInt, ar paramar, aw paramaw)
  {
    e();
    int i1;
    int i2;
    int i4;
    if (paramInt > 0)
    {
      i1 = 1;
      i2 = s();
      a(i2, paramaw);
      f(i1);
      this.f.b = (i2 + this.f.c);
      int i3 = Math.abs(paramInt);
      this.f.a = i3;
      i4 = a(paramar, this.f, paramaw);
      if (i3 >= i4)
        break label112;
    }
    while (true)
    {
      this.a.a(-paramInt);
      this.k = this.h;
      return paramInt;
      i1 = -1;
      i2 = t();
      break;
      label112: if (paramInt < 0)
      {
        paramInt = -i4;
        continue;
      }
      paramInt = i4;
    }
  }

  private void e()
  {
    if (this.a == null)
    {
      this.a = Z.a(this, 0);
      this.d = Z.a(this, 1);
      this.f = new F();
    }
  }

  private void f(int paramInt)
  {
    int i1 = 1;
    this.f.d = paramInt;
    F localF = this.f;
    int i2 = this.h;
    if (paramInt == -1)
    {
      int i3 = i1;
      if (i2 != i3)
        break label48;
    }
    while (true)
    {
      localF.c = i1;
      return;
      int i4 = 0;
      break;
      label48: i1 = -1;
    }
  }

  private int g(aw paramaw)
  {
    if (h() == 0)
      return 0;
    e();
    return a.a(paramaw, this.a, a(true, true), b(true, true), this, false, this.h);
  }

  private int h(aw paramaw)
  {
    if (h() == 0)
      return 0;
    e();
    return a.a(paramaw, this.a, a(true, true), b(true, true), this, false);
  }

  private int i(aw paramaw)
  {
    if (h() == 0)
      return 0;
    e();
    return a.b(paramaw, this.a, a(true, true), b(true, true), this, false);
  }

  private void q()
  {
    boolean bool;
    if (!r())
      bool = this.g;
    while (true)
    {
      this.h = bool;
      return;
      if (!this.g)
      {
        bool = true;
        continue;
      }
      bool = false;
    }
  }

  private boolean r()
  {
    return ViewCompat.getLayoutDirection(this.c) == 1;
  }

  private int s()
  {
    int i1 = h();
    if (i1 == 0)
      return 0;
    return b(b(i1 - 1));
  }

  private int t()
  {
    if (h() == 0)
      return 0;
    return b(b(0));
  }

  public final int a(int paramInt, ar paramar, aw paramaw)
  {
    return d(paramInt, paramar, paramaw);
  }

  public final int a(aw paramaw)
  {
    return g(paramaw);
  }

  public final ap a()
  {
    return new aO(-2, -2);
  }

  public final ap a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new aO(paramContext, paramAttributeSet);
  }

  public final ap a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams))
      return new aO((ViewGroup.MarginLayoutParams)paramLayoutParams);
    return new aO(paramLayoutParams);
  }

  public final void a(int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 0);
  }

  public final void a(Parcelable paramParcelable)
  {
    if ((paramParcelable instanceof StaggeredGridLayoutManager.SavedState))
    {
      this.m = ((StaggeredGridLayoutManager.SavedState)paramParcelable);
      g();
    }
  }

  public final void a(RecyclerView paramRecyclerView, ar paramar)
  {
    Runnable localRunnable = this.t;
    if (this.c != null)
      this.c.removeCallbacks(localRunnable);
  }

  public final void a(ar paramar, aw paramaw)
  {
    e();
    av localav = this.r;
    localav.a();
    label140: label173: int i1;
    label191: int i7;
    label217: int i5;
    if (this.m != null)
      if ((this.m.c <= 0) || (this.m.c == 0))
      {
        this.l = this.m.j;
        boolean bool2 = this.m.h;
        a(null);
        if ((this.m != null) && (this.m.h != bool2))
          this.m.h = bool2;
        this.g = bool2;
        g();
        q();
        if (this.m.a == -1)
          break label566;
        this.i = this.m.a;
        localav.c = this.m.i;
        if (this.m.e > 1)
        {
          null.f = this.m.f;
          null.g = this.m.g;
        }
        if ((!paramaw.a()) && (this.i != -1))
          break label592;
        i1 = 0;
        if (i1 == 0)
        {
          if (!this.k)
            break label1068;
          int i6 = paramaw.d();
          i7 = -1 + h();
          if (i7 < 0)
            break label1062;
          i5 = b(b(i7));
          if ((i5 < 0) || (i5 >= i6))
            break label1056;
          label245: localav.a = i5;
          localav.b = -2147483648;
        }
        if ((this.m == null) && ((localav.c != this.k) || (r() != this.l)))
        {
          null.c();
          localav.d = true;
        }
        if ((h() > 0) && (this.m != null));
        a(paramar);
        this.s = false;
        this.e = (this.d.f() / 0);
        this.n = View.MeasureSpec.makeMeasureSpec(this.d.f(), 1073741824);
        this.p = View.MeasureSpec.makeMeasureSpec(this.e, 1073741824);
        this.o = View.MeasureSpec.makeMeasureSpec(0, 0);
        a(localav.a, paramaw);
        if (!localav.c)
          break label1125;
        f(-1);
        a(paramar, this.f, paramaw);
        f(1);
        this.f.b = (localav.a + this.f.c);
        a(paramar, this.f, paramaw);
        label445: if (h() > 0)
        {
          if (!this.h)
            break label1179;
          a(paramar, paramaw, true);
          b(paramar, paramaw, false);
        }
      }
    while (true)
    {
      if (!paramaw.a())
      {
        this.i = -1;
        this.j = -2147483648;
      }
      this.k = localav.c;
      this.l = r();
      this.m = null;
      return;
      StaggeredGridLayoutManager.SavedState localSavedState = this.m;
      localSavedState.d = null;
      localSavedState.c = 0;
      localSavedState.e = 0;
      localSavedState.f = null;
      localSavedState.g = null;
      this.m.a = this.m.b;
      break;
      label566: localav.c = this.h;
      break label140;
      q();
      localav.c = this.h;
      break label173;
      label592: if ((this.i < 0) || (this.i >= paramaw.d()))
      {
        this.i = -1;
        this.j = -2147483648;
        i1 = 0;
        break label191;
      }
      View localView;
      label683: label746: int i14;
      if ((this.m == null) || (this.m.a == -1) || (this.m.c <= 0))
      {
        localView = a(this.i);
        if (localView != null)
        {
          int i11;
          if (this.h)
          {
            i11 = s();
            localav.a = i11;
            if (this.j == -2147483648)
              break label775;
            if (!localav.c)
              break label746;
          }
          for (localav.b = (this.a.d() - this.j - this.a.b(localView)); ; localav.b = (this.a.c() + this.j - this.a.a(localView)))
          {
            i1 = 1;
            break;
            i11 = t();
            break label683;
          }
          label775: if (this.a.c(localView) > this.a.f())
            if (localav.c)
            {
              i14 = this.a.d();
              label810: localav.b = i14;
            }
        }
      }
      while (true)
      {
        i1 = 1;
        break;
        i14 = this.a.c();
        break label810;
        int i12 = this.a.a(localView) - this.a.c();
        if (i12 < 0)
        {
          localav.b = (-i12);
          continue;
        }
        int i13 = this.a.d() - this.a.b(localView);
        if (i13 < 0)
        {
          localav.b = i13;
          continue;
        }
        localav.b = -2147483648;
        continue;
        localav.a = this.i;
        int i8;
        int i10;
        label950: boolean bool1;
        if (this.j == -2147483648)
        {
          i8 = localav.a;
          if (h() == 0)
            if (this.h)
            {
              i10 = 1;
              if (i10 != 1)
                break label1022;
              bool1 = true;
              label959: localav.c = bool1;
              localav.b();
            }
        }
        while (true)
        {
          localav.d = true;
          break;
          i10 = -1;
          break label950;
          if (i8 < t());
          for (int i9 = 1; ; i9 = 0)
          {
            if (i9 == this.h)
              break label1016;
            i10 = -1;
            break;
          }
          label1016: i10 = 1;
          break label950;
          label1022: bool1 = false;
          break label959;
          localav.a(this.j);
        }
        localav.b = -2147483648;
        localav.a = this.i;
      }
      label1056: i7--;
      break label217;
      label1062: i5 = 0;
      break label245;
      label1068: int i2 = paramaw.d();
      int i3 = h();
      for (int i4 = 0; ; i4++)
      {
        if (i4 >= i3)
          break label1119;
        i5 = b(b(i4));
        if ((i5 >= 0) && (i5 < i2))
          break;
      }
      label1119: i5 = 0;
      break label245;
      label1125: f(1);
      a(paramar, this.f, paramaw);
      f(-1);
      this.f.b = (localav.a + this.f.c);
      a(paramar, this.f, paramaw);
      break label445;
      label1179: b(paramar, paramaw, true);
      a(paramar, paramaw, false);
    }
  }

  public final void a(AccessibilityEvent paramAccessibilityEvent)
  {
    super.a(paramAccessibilityEvent);
    AccessibilityRecordCompat localAccessibilityRecordCompat;
    View localView1;
    View localView2;
    if (h() > 0)
    {
      localAccessibilityRecordCompat = AccessibilityEventCompat.asRecord(paramAccessibilityEvent);
      localView1 = a(false, true);
      localView2 = b(false, true);
      if ((localView1 != null) && (localView2 != null));
    }
    else
    {
      return;
    }
    int i1 = b(localView1);
    int i2 = b(localView2);
    if (i1 < i2)
    {
      localAccessibilityRecordCompat.setFromIndex(i1);
      localAccessibilityRecordCompat.setToIndex(i2);
      return;
    }
    localAccessibilityRecordCompat.setFromIndex(i2);
    localAccessibilityRecordCompat.setToIndex(i1);
  }

  public final void a(String paramString)
  {
    if (this.m == null)
      super.a(paramString);
  }

  public final boolean a(ap paramap)
  {
    return paramap instanceof aO;
  }

  public final int b(int paramInt, ar paramar, aw paramaw)
  {
    return d(paramInt, paramar, paramaw);
  }

  public final int b(ar paramar, aw paramaw)
  {
    return 0;
  }

  public final int b(aw paramaw)
  {
    return g(paramaw);
  }

  public final Parcelable b()
  {
    if (this.m != null)
      return new StaggeredGridLayoutManager.SavedState(this.m);
    StaggeredGridLayoutManager.SavedState localSavedState = new StaggeredGridLayoutManager.SavedState();
    localSavedState.h = this.g;
    localSavedState.i = this.k;
    localSavedState.j = this.l;
    localSavedState.e = 0;
    int i1;
    View localView;
    label98: int i2;
    if (h() > 0)
    {
      e();
      if (this.k)
      {
        i1 = s();
        localSavedState.a = i1;
        if (!this.h)
          break label133;
        localView = b(true, true);
        if (localView != null)
          break label143;
        i2 = -1;
        label105: localSavedState.b = i2;
        localSavedState.c = 0;
        localSavedState.d = new int[0];
      }
    }
    while (true)
    {
      return localSavedState;
      i1 = t();
      break;
      label133: localView = a(true, true);
      break label98;
      label143: i2 = b(localView);
      break label105;
      localSavedState.a = -1;
      localSavedState.b = -1;
      localSavedState.c = 0;
    }
  }

  public final void b(int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 1);
  }

  public final void b(View paramView, AccessibilityNodeInfoCompat paramAccessibilityNodeInfoCompat)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (!(localLayoutParams instanceof aO))
    {
      super.a(paramView, paramAccessibilityNodeInfoCompat);
      return;
    }
    aO localaO = (aO)localLayoutParams;
    if (localaO.e == null);
    for (int i1 = -1; ; i1 = localaO.e.d)
    {
      paramAccessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(i1, 1, -1, -1, false, false));
      return;
    }
  }

  public final int c(ar paramar, aw paramaw)
  {
    return super.c(paramar, paramaw);
  }

  public final int c(aw paramaw)
  {
    return h(paramaw);
  }

  public final void c(int paramInt)
  {
    super.c(paramInt);
  }

  public final void c(int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 2);
  }

  public final boolean c()
  {
    return true;
  }

  public final int d(aw paramaw)
  {
    return h(paramaw);
  }

  public final void d(int paramInt)
  {
    super.d(paramInt);
  }

  public final void d(int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2, 3);
  }

  public final boolean d()
  {
    return false;
  }

  public final int e(aw paramaw)
  {
    return i(paramaw);
  }

  public final void e(int paramInt)
  {
    if (paramInt == 0)
      h();
  }

  public final int f(aw paramaw)
  {
    return i(paramaw);
  }

  public final boolean f()
  {
    return this.m == null;
  }

  public final void p()
  {
    null.c();
    g();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.StaggeredGridLayoutManager
 * JD-Core Version:    0.6.0
 */