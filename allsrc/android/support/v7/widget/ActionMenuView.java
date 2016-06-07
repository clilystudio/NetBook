package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.view.menu.v;
import android.support.v7.internal.view.menu.w;
import android.support.v7.internal.widget.ae;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;

public class ActionMenuView extends LinearLayoutCompat
  implements android.support.v7.internal.view.menu.i, w
{
  private MenuBuilder a;
  private Context b;
  private Context c;
  private int d;
  private boolean e;
  private ActionMenuPresenter f;
  private v g;
  private h h;
  private boolean i;
  private int j;
  private int k;
  private int l;
  private m m;

  public ActionMenuView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.b = paramContext;
    setBaselineAligned(false);
    float f1 = paramContext.getResources().getDisplayMetrics().density;
    this.k = (int)(56.0F * f1);
    this.l = (int)(f1 * 4.0F);
    this.c = paramContext;
    this.d = 0;
  }

  static int a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    k localk = (k)paramView.getLayoutParams();
    int n = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
    ActionMenuItemView localActionMenuItemView;
    int i1;
    if ((paramView instanceof ActionMenuItemView))
    {
      localActionMenuItemView = (ActionMenuItemView)paramView;
      if ((localActionMenuItemView == null) || (!localActionMenuItemView.c()))
        break label182;
      i1 = 1;
      label54: if ((paramInt2 <= 0) || ((i1 != 0) && (paramInt2 < 2)))
        break label188;
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, -2147483648), n);
      int i3 = paramView.getMeasuredWidth();
      i2 = i3 / paramInt1;
      if (i3 % paramInt1 != 0)
        i2++;
      if ((i1 == 0) || (i2 >= 2));
    }
    label182: label188: for (int i2 = 2; ; i2 = 0)
    {
      boolean bool1 = localk.a;
      boolean bool2 = false;
      if (!bool1)
      {
        bool2 = false;
        if (i1 != 0)
          bool2 = true;
      }
      localk.d = bool2;
      localk.b = i2;
      paramView.measure(View.MeasureSpec.makeMeasureSpec(i2 * paramInt1, 1073741824), n);
      return i2;
      localActionMenuItemView = null;
      break;
      i1 = 0;
      break label54;
    }
  }

  private boolean a(int paramInt)
  {
    if (paramInt == 0)
      return false;
    View localView1 = getChildAt(paramInt - 1);
    View localView2 = getChildAt(paramInt);
    int n = getChildCount();
    boolean bool1 = false;
    if (paramInt < n)
    {
      boolean bool2 = localView1 instanceof i;
      bool1 = false;
      if (bool2)
        bool1 = false | ((i)localView1).e();
    }
    if ((paramInt > 0) && ((localView2 instanceof i)))
      return bool1 | ((i)localView2).d();
    return bool1;
  }

  private k b(AttributeSet paramAttributeSet)
  {
    return new k(getContext(), paramAttributeSet);
  }

  private static k l()
  {
    k localk = new k(-2, -2);
    localk.h = 16;
    return localk;
  }

  protected final k a(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams != null)
    {
      if ((paramLayoutParams instanceof k));
      for (k localk = new k((k)paramLayoutParams); ; localk = new k(paramLayoutParams))
      {
        if (localk.h <= 0)
          localk.h = 16;
        return localk;
      }
    }
    return l();
  }

  public final void a(MenuBuilder paramMenuBuilder)
  {
    this.a = paramMenuBuilder;
  }

  public final boolean a()
  {
    return this.e;
  }

  public final boolean a(MenuItemImpl paramMenuItemImpl)
  {
    return this.a.a(paramMenuItemImpl, 0);
  }

  public final k b()
  {
    k localk = l();
    localk.a = true;
    return localk;
  }

  public final Menu c()
  {
    ActionMenuPresenter localActionMenuPresenter;
    if (this.a == null)
    {
      Context localContext = getContext();
      this.a = new MenuBuilder(localContext);
      this.a.a(new l(this, 0));
      this.f = new ActionMenuPresenter(localContext);
      this.f.b(true);
      localActionMenuPresenter = this.f;
      if (this.g == null)
        break label110;
    }
    label110: for (Object localObject = this.g; ; localObject = new j(this, 0))
    {
      localActionMenuPresenter.a((v)localObject);
      this.a.a(this.f, this.c);
      this.f.a(this);
      return this.a;
    }
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return (paramLayoutParams != null) && ((paramLayoutParams instanceof k));
  }

  public final MenuBuilder d()
  {
    return this.a;
  }

  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return false;
  }

  public final boolean e()
  {
    return (this.f != null) && (this.f.f());
  }

  public final boolean f()
  {
    return (this.f != null) && (this.f.g());
  }

  public final boolean g()
  {
    return (this.f != null) && (this.f.j());
  }

  public final boolean h()
  {
    return (this.f != null) && (this.f.k());
  }

  public final void i()
  {
    if (this.f != null)
      this.f.h();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8)
      super.onConfigurationChanged(paramConfiguration);
    if (this.f != null)
    {
      this.f.a(false);
      if (this.f.j())
      {
        this.f.g();
        this.f.f();
      }
    }
  }

  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    i();
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!this.i)
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
    }
    int n = getChildCount();
    int i1 = (paramInt4 - paramInt2) / 2;
    int i2 = k();
    int i3 = 0;
    int i4 = paramInt3 - paramInt1 - getPaddingRight() - getPaddingLeft();
    int i5 = 0;
    boolean bool = ae.a(this);
    int i6 = 0;
    label70: View localView4;
    k localk3;
    int i31;
    int i34;
    int i33;
    label167: int i29;
    int i30;
    if (i6 < n)
    {
      localView4 = getChildAt(i6);
      if (localView4.getVisibility() == 8)
        break label690;
      localk3 = (k)localView4.getLayoutParams();
      if (localk3.a)
      {
        i31 = localView4.getMeasuredWidth();
        if (a(i6))
          i31 += i2;
        int i32 = localView4.getMeasuredHeight();
        if (bool)
        {
          i34 = getPaddingLeft() + localk3.leftMargin;
          i33 = i34 + i31;
          int i35 = i1 - i32 / 2;
          localView4.layout(i34, i35, i33, i32 + i35);
          i29 = i4 - i31;
          i5 = 1;
          i30 = i3;
        }
      }
    }
    while (true)
    {
      i6++;
      i3 = i30;
      i4 = i29;
      break label70;
      i33 = getWidth() - getPaddingRight() - localk3.rightMargin;
      i34 = i33 - i31;
      break label167;
      i29 = i4 - (localView4.getMeasuredWidth() + localk3.leftMargin + localk3.rightMargin);
      a(i6);
      i30 = i3 + 1;
      continue;
      if ((n == 1) && (i5 == 0))
      {
        View localView3 = getChildAt(0);
        int i25 = localView3.getMeasuredWidth();
        int i26 = localView3.getMeasuredHeight();
        int i27 = (paramInt3 - paramInt1) / 2 - i25 / 2;
        int i28 = i1 - i26 / 2;
        localView3.layout(i27, i28, i25 + i27, i26 + i28);
        return;
      }
      int i7;
      label367: int i9;
      label386: int i10;
      int i18;
      int i19;
      label413: k localk2;
      int i21;
      int i22;
      if (i5 != 0)
      {
        i7 = 0;
        int i8 = i3 - i7;
        if (i8 <= 0)
          break label540;
        i9 = i4 / i8;
        i10 = Math.max(0, i9);
        if (!bool)
          break label546;
        i18 = getWidth() - getPaddingRight();
        i19 = 0;
        if (i19 < n)
        {
          View localView2 = getChildAt(i19);
          localk2 = (k)localView2.getLayoutParams();
          if ((localView2.getVisibility() == 8) || (localk2.a))
            break label683;
          i21 = i18 - localk2.rightMargin;
          i22 = localView2.getMeasuredWidth();
          int i23 = localView2.getMeasuredHeight();
          int i24 = i1 - i23 / 2;
          localView2.layout(i21 - i22, i24, i21, i23 + i24);
        }
      }
      label540: label546: label676: label683: for (int i20 = i21 - (i10 + (i22 + localk2.leftMargin)); ; i20 = i18)
      {
        i19++;
        i18 = i20;
        break label413;
        break;
        i7 = 1;
        break label367;
        i9 = 0;
        break label386;
        int i11 = getPaddingLeft();
        int i12 = 0;
        label555: k localk1;
        int i14;
        int i15;
        if (i12 < n)
        {
          View localView1 = getChildAt(i12);
          localk1 = (k)localView1.getLayoutParams();
          if ((localView1.getVisibility() == 8) || (localk1.a))
            break label676;
          i14 = i11 + localk1.leftMargin;
          i15 = localView1.getMeasuredWidth();
          int i16 = localView1.getMeasuredHeight();
          int i17 = i1 - i16 / 2;
          localView1.layout(i14, i17, i14 + i15, i16 + i17);
        }
        for (int i13 = i14 + (i10 + (i15 + localk1.rightMargin)); ; i13 = i11)
        {
          i12++;
          i11 = i13;
          break label555;
          break;
        }
      }
      label690: i29 = i4;
      i30 = i3;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool1 = this.i;
    boolean bool2;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824)
      bool2 = true;
    int i1;
    int i3;
    int i5;
    int i8;
    int i9;
    int i10;
    int i12;
    int i13;
    int i14;
    int i15;
    int i16;
    int i17;
    long l1;
    int i18;
    int i19;
    int i43;
    boolean bool4;
    label353: int i44;
    label371: int i46;
    int i47;
    label409: int i48;
    label420: int i49;
    int i51;
    int i40;
    int i41;
    long l6;
    int i42;
    int i39;
    while (true)
    {
      this.i = bool2;
      if (bool1 != this.i)
        this.j = 0;
      int n = View.MeasureSpec.getSize(paramInt1);
      if ((this.i) && (this.a != null) && (n != this.j))
      {
        this.j = n;
        this.a.b(true);
      }
      i1 = getChildCount();
      if ((this.i) && (i1 > 0))
      {
        i3 = View.MeasureSpec.getMode(paramInt2);
        int i4 = View.MeasureSpec.getSize(paramInt1);
        i5 = View.MeasureSpec.getSize(paramInt2);
        int i6 = getPaddingLeft() + getPaddingRight();
        int i7 = getPaddingTop() + getPaddingBottom();
        i8 = getChildMeasureSpec(paramInt2, i7, -2);
        i9 = i4 - i6;
        i10 = i9 / this.k;
        int i11 = i9 % this.k;
        if (i10 == 0)
        {
          setMeasuredDimension(i9, 0);
          return;
          bool2 = false;
          continue;
        }
        i12 = this.k + i11 / i10;
        i13 = 0;
        i14 = 0;
        i15 = 0;
        i16 = 0;
        i17 = 0;
        l1 = 0L;
        i18 = getChildCount();
        i19 = 0;
        if (i19 < i18)
        {
          View localView4 = getChildAt(i19);
          if (localView4.getVisibility() == 8)
            break label1441;
          boolean bool3 = localView4 instanceof ActionMenuItemView;
          i43 = i16 + 1;
          if (bool3)
            localView4.setPadding(this.l, 0, this.l, 0);
          k localk6 = (k)localView4.getLayoutParams();
          localk6.f = false;
          localk6.c = 0;
          localk6.b = 0;
          localk6.d = false;
          localk6.leftMargin = 0;
          localk6.rightMargin = 0;
          if ((!bool3) || (!((ActionMenuItemView)localView4).c()))
            break;
          bool4 = true;
          localk6.e = bool4;
          if (localk6.a)
          {
            i44 = 1;
            int i45 = a(localView4, i12, i44, i8, i7);
            i46 = Math.max(i14, i45);
            if (!localk6.d)
              break label1434;
            i47 = i15 + 1;
            if (!localk6.a)
              break label1427;
            i48 = 1;
            i49 = i10 - i45;
            int i50 = localView4.getMeasuredHeight();
            i51 = Math.max(i13, i50);
            if (i45 != 1)
              break label1392;
            long l8 = l1 | 1 << i19;
            i40 = i51;
            i41 = i49;
            i15 = i47;
            i17 = i48;
            l6 = l8;
            i42 = i46;
            i39 = i43;
          }
        }
      }
    }
    while (true)
    {
      i19++;
      i14 = i42;
      i13 = i40;
      i10 = i41;
      l1 = l6;
      i16 = i39;
      break;
      bool4 = false;
      break label353;
      i44 = i10;
      break label371;
      int i20;
      int i21;
      long l2;
      int i22;
      int i30;
      long l4;
      int i31;
      int i32;
      label575: k localk5;
      int i38;
      int i37;
      if ((i17 != 0) && (i16 == 2))
      {
        i20 = 1;
        i21 = 0;
        l2 = l1;
        i22 = i10;
        if ((i15 <= 0) || (i22 <= 0))
          break label865;
        i30 = 2147483647;
        l4 = 0L;
        i31 = 0;
        i32 = 0;
        if (i32 >= i18)
          break label684;
        localk5 = (k)getChildAt(i32).getLayoutParams();
        if (!localk5.d)
          break label1381;
        if (localk5.b >= i30)
          break label651;
        i38 = localk5.b;
        l4 = 1 << i32;
        i37 = 1;
      }
      while (true)
      {
        i32++;
        i30 = i38;
        i31 = i37;
        break label575;
        i20 = 0;
        break;
        label651: if (localk5.b == i30)
        {
          l4 |= 1 << i32;
          i37 = i31 + 1;
          i38 = i30;
          continue;
          label684: l2 |= l4;
          int i34;
          int i35;
          long l5;
          label715: View localView3;
          k localk4;
          int i36;
          if (i31 <= i22)
          {
            int i33 = i30 + 1;
            i34 = 0;
            i35 = i22;
            l5 = l2;
            if (i34 < i18)
            {
              localView3 = getChildAt(i34);
              localk4 = (k)localView3.getLayoutParams();
              if ((l4 & 1 << i34) == 0L)
              {
                if (localk4.b != i33)
                  break label1374;
                l5 |= 1 << i34;
                i36 = i35;
              }
            }
          }
          while (true)
          {
            i34++;
            i35 = i36;
            break label715;
            if ((i20 != 0) && (localk4.e) && (i35 == 1))
              localView3.setPadding(i12 + this.l, 0, this.l, 0);
            localk4.b = (1 + localk4.b);
            localk4.f = true;
            i36 = i35 - 1;
            continue;
            l2 = l5;
            i21 = 1;
            i22 = i35;
            break;
            label865: long l3 = l2;
            int i23;
            float f1;
            float f2;
            if ((i17 == 0) && (i16 == 1))
            {
              i23 = 1;
              if ((i22 <= 0) || (l3 == 0L))
                break label1218;
              int i26 = i16 - 1;
              if ((i22 >= i26) && (i23 == 0) && (i14 <= 1))
                break label1218;
              f1 = Long.bitCount(l3);
              if (i23 != 0)
                break label1367;
              if (((1L & l3) != 0L) && (!((k)getChildAt(0).getLayoutParams()).e))
                f1 -= 0.5F;
              if (((l3 & 1 << i18 - 1) == 0L) || (((k)getChildAt(i18 - 1).getLayoutParams()).e))
                break label1367;
              f2 = f1 - 0.5F;
            }
            while (true)
            {
              int i27;
              int i28;
              label1035: k localk3;
              int i29;
              if (f2 > 0.0F)
              {
                i27 = (int)(i22 * i12 / f2);
                i28 = 0;
                i24 = i21;
                if (i28 >= i18)
                  break label1222;
                if ((l3 & 1 << i28) == 0L)
                  break label1211;
                View localView2 = getChildAt(i28);
                localk3 = (k)localView2.getLayoutParams();
                if (!(localView2 instanceof ActionMenuItemView))
                  break label1142;
                localk3.c = i27;
                localk3.f = true;
                if ((i28 == 0) && (!localk3.e))
                  localk3.leftMargin = (-i27 / 2);
                i29 = 1;
              }
              while (true)
              {
                i28++;
                i24 = i29;
                break label1035;
                i23 = 0;
                break;
                i27 = 0;
                break label1028;
                label1142: if (localk3.a)
                {
                  localk3.c = i27;
                  localk3.f = true;
                  localk3.rightMargin = (-i27 / 2);
                  i29 = 1;
                  continue;
                }
                if (i28 != 0)
                  localk3.leftMargin = (i27 / 2);
                if (i28 != i18 - 1)
                  localk3.rightMargin = (i27 / 2);
                label1211: i29 = i24;
              }
              label1218: int i24 = i21;
              label1222: if (i24 != 0)
                for (int i25 = 0; i25 < i18; i25++)
                {
                  View localView1 = getChildAt(i25);
                  k localk2 = (k)localView1.getLayoutParams();
                  if (!localk2.f)
                    continue;
                  localView1.measure(View.MeasureSpec.makeMeasureSpec(i12 * localk2.b + localk2.c, 1073741824), i8);
                }
              if (i3 != 1073741824);
              while (true)
              {
                setMeasuredDimension(i9, i13);
                return;
                for (int i2 = 0; i2 < i1; i2++)
                {
                  k localk1 = (k)getChildAt(i2).getLayoutParams();
                  localk1.rightMargin = 0;
                  localk1.leftMargin = 0;
                }
                super.onMeasure(paramInt1, paramInt2);
                return;
                i13 = i5;
              }
              label1367: f2 = f1;
            }
            label1374: i36 = i35;
          }
        }
        label1028: label1381: i37 = i31;
        i38 = i30;
      }
      label1392: i39 = i43;
      i42 = i46;
      long l7 = l1;
      i40 = i51;
      i41 = i49;
      i17 = i48;
      i15 = i47;
      l6 = l7;
      continue;
      label1427: i48 = i17;
      break label420;
      label1434: i47 = i15;
      break label409;
      label1441: i39 = i16;
      l6 = l1;
      i40 = i13;
      i41 = i10;
      i42 = i14;
    }
  }

  public void setExpandedActionViewsExclusive(boolean paramBoolean)
  {
    this.f.c(paramBoolean);
  }

  public void setMenuCallbacks(v paramv, h paramh)
  {
    this.g = paramv;
    this.h = paramh;
  }

  public void setOnMenuItemClickListener(m paramm)
  {
    this.m = paramm;
  }

  public void setOverflowReserved(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }

  public void setPopupTheme(int paramInt)
  {
    if (this.d != paramInt)
    {
      this.d = paramInt;
      if (paramInt == 0)
        this.c = this.b;
    }
    else
    {
      return;
    }
    this.c = new ContextThemeWrapper(this.b, paramInt);
  }

  public void setPresenter(ActionMenuPresenter paramActionMenuPresenter)
  {
    this.f = paramActionMenuPresenter;
    this.f.a(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ActionMenuView
 * JD-Core Version:    0.6.0
 */