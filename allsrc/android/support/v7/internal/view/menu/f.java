package android.support.v7.internal.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v7.appcompat.R.layout;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

public final class f
  implements u, AdapterView.OnItemClickListener
{
  LayoutInflater a;
  MenuBuilder b;
  int c;
  private Context d;
  private ExpandedMenuView e;
  private int f;
  private v g;
  private g h;

  private f(int paramInt1, int paramInt2)
  {
    this.c = paramInt1;
    this.f = 0;
  }

  public f(Context paramContext, int paramInt)
  {
    this(paramInt, 0);
    this.d = paramContext;
    this.a = LayoutInflater.from(this.d);
  }

  public final w a(ViewGroup paramViewGroup)
  {
    if (this.e == null)
    {
      this.e = ((ExpandedMenuView)this.a.inflate(R.layout.abc_expanded_menu_layout, paramViewGroup, false));
      if (this.h == null)
        this.h = new g(this);
      this.e.setAdapter(this.h);
      this.e.setOnItemClickListener(this);
    }
    return this.e;
  }

  public final void a(Context paramContext, MenuBuilder paramMenuBuilder)
  {
    if (this.f != 0)
    {
      this.d = new ContextThemeWrapper(paramContext, this.f);
      this.a = LayoutInflater.from(this.d);
    }
    while (true)
    {
      this.b = paramMenuBuilder;
      if (this.h != null)
        this.h.notifyDataSetChanged();
      return;
      if (this.d == null)
        continue;
      this.d = paramContext;
      if (this.a != null)
        continue;
      this.a = LayoutInflater.from(this.d);
    }
  }

  public final void a(Parcelable paramParcelable)
  {
    SparseArray localSparseArray = ((Bundle)paramParcelable).getSparseParcelableArray("android:menu:list");
    if (localSparseArray != null)
      this.e.restoreHierarchyState(localSparseArray);
  }

  public final void a(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if (this.g != null)
      this.g.a(paramMenuBuilder, paramBoolean);
  }

  public final void a(v paramv)
  {
    this.g = paramv;
  }

  public final void a(boolean paramBoolean)
  {
    if (this.h != null)
      this.h.notifyDataSetChanged();
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
    if (!paramSubMenuBuilder.hasVisibleItems())
      return false;
    new j(paramSubMenuBuilder).a(null);
    if (this.g != null)
      this.g.a_(paramSubMenuBuilder);
    return true;
  }

  public final int b()
  {
    return 0;
  }

  public final boolean b(MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }

  public final Parcelable c()
  {
    if (this.e == null)
      return null;
    Bundle localBundle = new Bundle();
    SparseArray localSparseArray = new SparseArray();
    if (this.e != null)
      this.e.saveHierarchyState(localSparseArray);
    localBundle.putSparseParcelableArray("android:menu:list", localSparseArray);
    return localBundle;
  }

  public final ListAdapter d()
  {
    if (this.h == null)
      this.h = new g(this);
    return this.h;
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.b.a(this.h.a(paramInt), this, 0);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.f
 * JD-Core Version:    0.6.0
 */