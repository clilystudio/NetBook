package android.support.v7.widget;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.support.v4.view.ActionProvider;
import android.support.v4.view.ActionProvider.SubUiVisibilityListener;
import android.support.v7.appcompat.R.integer;
import android.support.v7.appcompat.R.layout;
import android.support.v7.internal.view.menu.ActionMenuItemView;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.support.v7.internal.view.menu.s;
import android.support.v7.internal.view.menu.w;
import android.support.v7.internal.view.menu.x;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import java.util.ArrayList;

public class ActionMenuPresenter extends android.support.v7.internal.view.menu.c
  implements ActionProvider.SubUiVisibilityListener
{
  final a e = new a(this, 0);
  int f;
  private View g;
  private boolean h;
  private boolean i;
  private int j;
  private int k;
  private int l;
  private boolean m;
  private boolean n;
  private boolean o;
  private boolean p;
  private int q;
  private final SparseBooleanArray r = new SparseBooleanArray();
  private View s;
  private g t;
  private b u;
  private d v;
  private c w;

  public ActionMenuPresenter(Context paramContext)
  {
    super(paramContext, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
  }

  public final w a(ViewGroup paramViewGroup)
  {
    w localw = super.a(paramViewGroup);
    ((ActionMenuView)localw).setPresenter(this);
    return localw;
  }

  public final View a(MenuItemImpl paramMenuItemImpl, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramMenuItemImpl.getActionView();
    if ((localView == null) || (paramMenuItemImpl.l()))
      localView = super.a(paramMenuItemImpl, paramView, paramViewGroup);
    if (paramMenuItemImpl.isActionViewExpanded());
    for (int i1 = 8; ; i1 = 0)
    {
      localView.setVisibility(i1);
      ActionMenuView localActionMenuView = (ActionMenuView)paramViewGroup;
      ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
      if (!localActionMenuView.checkLayoutParams(localLayoutParams))
        localView.setLayoutParams(localActionMenuView.a(localLayoutParams));
      return localView;
    }
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    this.j = paramInt;
    this.n = true;
    this.o = true;
  }

  public final void a(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    super.a(paramContext, paramMenuBuilder);
    Resources localResources = paramContext.getResources();
    com.alipay.sdk.b.b localb = com.alipay.sdk.b.b.a(paramContext);
    if (!this.i)
      this.h = localb.c();
    if (!this.o)
      this.j = localb.d();
    if (!this.m)
      this.l = localb.b();
    int i1 = this.j;
    if (this.h)
    {
      if (this.g == null)
      {
        this.g = new e(this, this.a);
        int i2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.g.measure(i2, i2);
      }
      i1 -= this.g.getMeasuredWidth();
    }
    while (true)
    {
      this.k = i1;
      this.q = (int)(56.0F * localResources.getDisplayMetrics().density);
      this.s = null;
      return;
      this.g = null;
    }
  }

  public final void a(Parcelable paramParcelable)
  {
    ActionMenuPresenter.SavedState localSavedState = (ActionMenuPresenter.SavedState)paramParcelable;
    if (localSavedState.a > 0)
    {
      MenuItem localMenuItem = this.c.findItem(localSavedState.a);
      if (localMenuItem != null)
        a((SubMenuBuilder)localMenuItem.getSubMenu());
    }
  }

  public final void a(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    h();
    super.a(paramMenuBuilder, paramBoolean);
  }

  public final void a(MenuItemImpl paramMenuItemImpl, x paramx)
  {
    paramx.a(paramMenuItemImpl, 0);
    ActionMenuView localActionMenuView = (ActionMenuView)this.d;
    ActionMenuItemView localActionMenuItemView = (ActionMenuItemView)paramx;
    localActionMenuItemView.setItemInvoker(localActionMenuView);
    if (this.w == null)
      this.w = new c(this, 0);
    localActionMenuItemView.setPopupCallback(this.w);
  }

  public final void a(ActionMenuView paramActionMenuView)
  {
    this.d = paramActionMenuView;
    paramActionMenuView.a(this.c);
  }

  public final void a(boolean paramBoolean)
  {
    int i1 = 1;
    ((View)this.d).getParent();
    super.a(paramBoolean);
    ((View)this.d).requestLayout();
    if (this.c != null)
    {
      ArrayList localArrayList2 = this.c.l();
      int i5 = localArrayList2.size();
      for (int i6 = 0; i6 < i5; i6++)
      {
        ActionProvider localActionProvider = ((MenuItemImpl)localArrayList2.get(i6)).getSupportActionProvider();
        if (localActionProvider == null)
          continue;
        localActionProvider.setSubUiVisibilityListener(this);
      }
    }
    ArrayList localArrayList1;
    int i2;
    int i3;
    int i4;
    if (this.c != null)
    {
      localArrayList1 = this.c.m();
      boolean bool = this.h;
      i2 = 0;
      if (bool)
      {
        i2 = 0;
        if (localArrayList1 != null)
        {
          i3 = localArrayList1.size();
          if (i3 != i1)
            break label279;
          if (((MenuItemImpl)localArrayList1.get(0)).isActionViewExpanded())
            break label273;
          i4 = i1;
          label162: i2 = i4;
        }
      }
      if (i2 == 0)
        break label295;
      if (this.g == null)
        this.g = new e(this, this.a);
      ViewGroup localViewGroup = (ViewGroup)this.g.getParent();
      if (localViewGroup != this.d)
      {
        if (localViewGroup != null)
          localViewGroup.removeView(this.g);
        ActionMenuView localActionMenuView = (ActionMenuView)this.d;
        localActionMenuView.addView(this.g, localActionMenuView.b());
      }
    }
    while (true)
    {
      ((ActionMenuView)this.d).setOverflowReserved(this.h);
      return;
      localArrayList1 = null;
      break;
      label273: i4 = 0;
      break label162;
      label279: if (i3 > 0);
      while (true)
      {
        i2 = i1;
        break;
        i1 = 0;
      }
      label295: if ((this.g == null) || (this.g.getParent() != this.d))
        continue;
      ((ViewGroup)this.d).removeView(this.g);
    }
  }

  public final boolean a()
  {
    ArrayList localArrayList = this.c.j();
    int i1 = localArrayList.size();
    int i2 = this.l;
    int i3 = this.k;
    int i4 = View.MeasureSpec.makeMeasureSpec(0, 0);
    ViewGroup localViewGroup = (ViewGroup)this.d;
    int i5 = 0;
    int i6 = 0;
    int i7 = 0;
    int i8 = 0;
    MenuItemImpl localMenuItemImpl3;
    if (i8 < i1)
    {
      localMenuItemImpl3 = (MenuItemImpl)localArrayList.get(i8);
      if (localMenuItemImpl3.j())
      {
        i5++;
        label80: if ((!this.p) || (!localMenuItemImpl3.isActionViewExpanded()))
          break label807;
      }
    }
    label546: label807: for (int i32 = 0; ; i32 = i2)
    {
      i8++;
      i2 = i32;
      break;
      if (localMenuItemImpl3.i())
      {
        i6++;
        break label80;
      }
      i7 = 1;
      break label80;
      if ((this.h) && ((i7 != 0) || (i5 + i6 > i2)))
        i2--;
      int i9 = i2 - i5;
      SparseBooleanArray localSparseBooleanArray = this.r;
      localSparseBooleanArray.clear();
      int i11;
      int i10;
      if (this.n)
      {
        int i30 = i3 / this.q;
        int i31 = i3 % this.q;
        i11 = this.q + i31 / i30;
        i10 = i30;
      }
      while (true)
      {
        int i12 = 0;
        int i13 = 0;
        int i14 = i10;
        MenuItemImpl localMenuItemImpl1;
        View localView2;
        int i15;
        label295: int i17;
        int i28;
        if (i13 < i1)
        {
          localMenuItemImpl1 = (MenuItemImpl)localArrayList.get(i13);
          if (localMenuItemImpl1.j())
          {
            localView2 = a(localMenuItemImpl1, this.s, localViewGroup);
            if (this.s == null)
              this.s = localView2;
            if (this.n)
            {
              i15 = i14 - ActionMenuView.a(localView2, i11, i14, i4, 0);
              i17 = localView2.getMeasuredWidth();
              i28 = i3 - i17;
              if (i12 != 0)
                break label791;
            }
          }
        }
        while (true)
        {
          int i29 = localMenuItemImpl1.getGroupId();
          if (i29 != 0)
            localSparseBooleanArray.put(i29, true);
          localMenuItemImpl1.d(true);
          int i16 = i28;
          int i18 = i9;
          i13++;
          i3 = i16;
          i9 = i18;
          i12 = i17;
          i14 = i15;
          break;
          localView2.measure(i4, i4);
          i15 = i14;
          break label295;
          int i19;
          boolean bool1;
          boolean bool2;
          label440: View localView1;
          label508: int i26;
          boolean bool3;
          int i20;
          if (localMenuItemImpl1.i())
          {
            i19 = localMenuItemImpl1.getGroupId();
            bool1 = localSparseBooleanArray.get(i19);
            if (((i9 > 0) || (bool1)) && (i3 > 0) && ((!this.n) || (i14 > 0)))
            {
              bool2 = true;
              if (!bool2)
                break label780;
              localView1 = a(localMenuItemImpl1, this.s, localViewGroup);
              if (this.s == null)
                this.s = localView1;
              if (!this.n)
                break label619;
              int i27 = ActionMenuView.a(localView1, i11, i14, i4, 0);
              i14 -= i27;
              if (i27 == 0)
                bool2 = false;
              int i24 = localView1.getMeasuredWidth();
              i3 -= i24;
              if (i12 == 0)
                i12 = i24;
              if (!this.n)
                break label637;
              if (i3 < 0)
                break label631;
              i26 = 1;
              bool3 = bool2 & i26;
              i20 = i14;
            }
          }
          while (true)
          {
            int i21;
            if ((bool3) && (i19 != 0))
            {
              localSparseBooleanArray.put(i19, true);
              i21 = i9;
            }
            while (true)
            {
              if (bool3)
                i21--;
              localMenuItemImpl1.d(bool3);
              i17 = i12;
              i16 = i3;
              i18 = i21;
              i15 = i20;
              break;
              bool2 = false;
              break label440;
              label619: localView1.measure(i4, i4);
              break label508;
              label631: i26 = 0;
              break label546;
              label637: if (i3 + i12 > 0);
              for (int i25 = 1; ; i25 = 0)
              {
                bool3 = bool2 & i25;
                i20 = i14;
                break;
              }
              if (bool1)
              {
                localSparseBooleanArray.put(i19, false);
                int i22 = i9;
                int i23 = 0;
                while (true)
                  if (i23 < i13)
                  {
                    MenuItemImpl localMenuItemImpl2 = (MenuItemImpl)localArrayList.get(i23);
                    if (localMenuItemImpl2.getGroupId() == i19)
                    {
                      if (localMenuItemImpl2.h())
                        i22++;
                      localMenuItemImpl2.d(false);
                    }
                    i23++;
                    continue;
                    localMenuItemImpl1.d(false);
                    i15 = i14;
                    i16 = i3;
                    i17 = i12;
                    i18 = i9;
                    break;
                    return true;
                  }
                i21 = i22;
                continue;
              }
              i21 = i9;
            }
            bool3 = bool2;
            i20 = i14;
          }
          i17 = i12;
        }
        i10 = 0;
        i11 = 0;
      }
    }
  }

  public final boolean a(SubMenuBuilder paramSubMenuBuilder)
  {
    if (!paramSubMenuBuilder.hasVisibleItems())
      return false;
    for (SubMenuBuilder localSubMenuBuilder = paramSubMenuBuilder; localSubMenuBuilder.p() != this.c; localSubMenuBuilder = (SubMenuBuilder)localSubMenuBuilder.p());
    MenuItem localMenuItem = localSubMenuBuilder.getItem();
    ViewGroup localViewGroup = (ViewGroup)this.d;
    int i2;
    View localView2;
    if (localViewGroup != null)
    {
      int i1 = localViewGroup.getChildCount();
      i2 = 0;
      if (i2 < i1)
      {
        localView2 = localViewGroup.getChildAt(i2);
        if ((!(localView2 instanceof x)) || (((x)localView2).a() != localMenuItem));
      }
    }
    for (View localView1 = localView2; ; localView1 = null)
    {
      if (localView1 != null)
        break label136;
      if (this.g != null)
        break label130;
      return false;
      i2++;
      break;
    }
    label130: localView1 = this.g;
    label136: this.f = paramSubMenuBuilder.getItem().getItemId();
    this.u = new b(this, this.b, paramSubMenuBuilder);
    this.u.a(localView1);
    this.u.d();
    super.a(paramSubMenuBuilder);
    return true;
  }

  public final boolean a(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramViewGroup.getChildAt(paramInt) == this.g)
      return false;
    return super.a(paramViewGroup, paramInt);
  }

  public final void b(int paramInt)
  {
    this.l = 2147483647;
    this.m = true;
  }

  public final void b(boolean paramBoolean)
  {
    this.h = true;
    this.i = true;
  }

  public final Parcelable c()
  {
    ActionMenuPresenter.SavedState localSavedState = new ActionMenuPresenter.SavedState();
    localSavedState.a = this.f;
    return localSavedState;
  }

  public final void c(boolean paramBoolean)
  {
    this.p = paramBoolean;
  }

  public final boolean c(MenuItemImpl paramMenuItemImpl)
  {
    return paramMenuItemImpl.h();
  }

  public final void e()
  {
    if (!this.m)
      this.l = this.b.getResources().getInteger(R.integer.abc_max_action_buttons);
    if (this.c != null)
      this.c.b(true);
  }

  public final boolean f()
  {
    if ((this.h) && (!j()) && (this.c != null) && (this.d != null) && (this.v == null) && (!this.c.m().isEmpty()))
    {
      this.v = new d(this, new g(this, this.b, this.c, this.g, true));
      ((View)this.d).post(this.v);
      super.a(null);
      return true;
    }
    return false;
  }

  public final boolean g()
  {
    if ((this.v != null) && (this.d != null))
    {
      ((View)this.d).removeCallbacks(this.v);
      this.v = null;
      return true;
    }
    g localg = this.t;
    if (localg != null)
    {
      localg.g();
      return true;
    }
    return false;
  }

  public final boolean h()
  {
    return g() | i();
  }

  public final boolean i()
  {
    if (this.u != null)
    {
      this.u.g();
      return true;
    }
    return false;
  }

  public final boolean j()
  {
    return (this.t != null) && (this.t.h());
  }

  public final boolean k()
  {
    return (this.v != null) || (j());
  }

  public void onSubUiVisibilityChanged(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      super.a(null);
      return;
    }
    this.c.a(false);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter
 * JD-Core Version:    0.6.0
 */