package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.design.R.dimen;
import android.support.design.R.layout;
import android.support.v7.internal.view.menu.MenuBuilder;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.SubMenuBuilder;
import android.support.v7.internal.view.menu.u;
import android.support.v7.internal.view.menu.w;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.LinearLayout;

public final class a
  implements u, AdapterView.OnItemClickListener
{
  private NavigationMenuView a;
  private LinearLayout b;
  private MenuBuilder c;
  private int d;
  private b e;
  private LayoutInflater f;
  private ColorStateList g;
  private ColorStateList h;
  private Drawable i;
  private int j;

  public final w a(ViewGroup paramViewGroup)
  {
    if (this.a == null)
    {
      this.a = ((NavigationMenuView)this.f.inflate(R.layout.design_navigation_menu, paramViewGroup, false));
      if (this.e == null)
        this.e = new b(this);
      this.b = ((LinearLayout)this.f.inflate(R.layout.design_navigation_item_header, this.a, false));
      this.a.addHeaderView(this.b);
      this.a.setAdapter(this.e);
      this.a.setOnItemClickListener(this);
    }
    return this.a;
  }

  public final void a(int paramInt)
  {
    this.d = 1;
  }

  public final void a(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    this.f = LayoutInflater.from(paramContext);
    this.c = paramMenuBuilder;
    Resources localResources = paramContext.getResources();
    localResources.getDimensionPixelOffset(R.dimen.navigation_padding_top_default);
    this.j = localResources.getDimensionPixelOffset(R.dimen.navigation_separator_vertical_padding);
  }

  public final void a(ColorStateList paramColorStateList)
  {
    this.h = paramColorStateList;
  }

  public final void a(Drawable paramDrawable)
  {
    this.i = paramDrawable;
  }

  public final void a(Parcelable paramParcelable)
  {
    Bundle localBundle1 = (Bundle)paramParcelable;
    SparseArray localSparseArray = localBundle1.getSparseParcelableArray("android:menu:list");
    if (localSparseArray != null)
      this.a.restoreHierarchyState(localSparseArray);
    Bundle localBundle2 = localBundle1.getBundle("android:menu:adapter");
    if (localBundle2 != null)
      this.e.a(localBundle2);
  }

  public final void a(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
  }

  public final void a(boolean paramBoolean)
  {
    if (this.e != null)
      this.e.notifyDataSetChanged();
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }

  public final boolean a(SubMenuBuilder paramSubMenuBuilder)
  {
    return false;
  }

  public final int b()
  {
    return this.d;
  }

  public final View b(int paramInt)
  {
    View localView = this.f.inflate(paramInt, this.b, false);
    this.b.addView(localView);
    this.a.setPadding(0, 0, 0, this.a.getPaddingBottom());
    return localView;
  }

  public final void b(ColorStateList paramColorStateList)
  {
    this.g = paramColorStateList;
  }

  public final void b(boolean paramBoolean)
  {
    if (this.e != null)
      this.e.a(paramBoolean);
  }

  public final boolean b(MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }

  public final Parcelable c()
  {
    Bundle localBundle = new Bundle();
    if (this.a != null)
    {
      SparseArray localSparseArray = new SparseArray();
      this.a.saveHierarchyState(localSparseArray);
      localBundle.putSparseParcelableArray("android:menu:list", localSparseArray);
    }
    if (this.e != null)
      localBundle.putBundle("android:menu:adapter", this.e.a());
    return localBundle;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int k = paramInt - this.a.getHeaderViewsCount();
    if (k >= 0)
      this.c.a(this.e.a(k).d(), this, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.internal.a
 * JD-Core Version:    0.6.0
 */