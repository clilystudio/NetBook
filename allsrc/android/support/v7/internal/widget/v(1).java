package android.support.v7.internal.widget;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.id;
import android.support.v7.appcompat.R.layout;
import android.support.v7.appcompat.R.string;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

final class v extends BaseAdapter
{
  private l a;
  private int b = 4;
  private boolean c;
  private boolean d;
  private boolean e;

  private v(ActivityChooserView paramActivityChooserView)
  {
  }

  public final int a()
  {
    int i = 0;
    int j = this.b;
    this.b = 2147483647;
    int k = View.MeasureSpec.makeMeasureSpec(0, 0);
    int m = View.MeasureSpec.makeMeasureSpec(0, 0);
    int n = getCount();
    View localView = null;
    int i1 = 0;
    while (i < n)
    {
      localView = getView(i, localView, null);
      localView.measure(k, m);
      i1 = Math.max(i1, localView.getMeasuredWidth());
      i++;
    }
    this.b = j;
    return i1;
  }

  public final void a(int paramInt)
  {
    if (this.b != paramInt)
    {
      this.b = paramInt;
      notifyDataSetChanged();
    }
  }

  public final void a(l paraml)
  {
    l locall = ActivityChooserView.a(this.f).a;
    if ((locall != null) && (this.f.isShown()))
      locall.unregisterObserver(ActivityChooserView.i(this.f));
    this.a = paraml;
    if ((paraml != null) && (this.f.isShown()))
      paraml.registerObserver(ActivityChooserView.i(this.f));
    notifyDataSetChanged();
  }

  public final void a(boolean paramBoolean)
  {
    if (this.e != paramBoolean)
    {
      this.e = paramBoolean;
      notifyDataSetChanged();
    }
  }

  public final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((this.c != paramBoolean1) || (this.d != paramBoolean2))
    {
      this.c = paramBoolean1;
      this.d = paramBoolean2;
      notifyDataSetChanged();
    }
  }

  public final ResolveInfo b()
  {
    return this.a.b();
  }

  public final int c()
  {
    return this.a.a();
  }

  public final int d()
  {
    return this.a.c();
  }

  public final l e()
  {
    return this.a;
  }

  public final boolean f()
  {
    return this.c;
  }

  public final int getCount()
  {
    int i = this.a.a();
    if ((!this.c) && (this.a.b() != null))
      i--;
    int j = Math.min(i, this.b);
    if (this.e)
      j++;
    return j;
  }

  public final Object getItem(int paramInt)
  {
    switch (getItemViewType(paramInt))
    {
    default:
      throw new IllegalArgumentException();
    case 1:
      return null;
    case 0:
    }
    if ((!this.c) && (this.a.b() != null))
      paramInt++;
    return this.a.a(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final int getItemViewType(int paramInt)
  {
    if ((this.e) && (paramInt == -1 + getCount()))
      return 1;
    return 0;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    switch (getItemViewType(paramInt))
    {
    default:
      throw new IllegalArgumentException();
    case 1:
      if ((paramView == null) || (paramView.getId() != 1))
      {
        paramView = LayoutInflater.from(this.f.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, paramViewGroup, false);
        paramView.setId(1);
        ((TextView)paramView.findViewById(R.id.title)).setText(this.f.getContext().getString(R.string.abc_activity_chooser_view_see_all));
      }
      return paramView;
    case 0:
    }
    if ((paramView == null) || (paramView.getId() != R.id.list_item))
      paramView = LayoutInflater.from(this.f.getContext()).inflate(R.layout.abc_activity_chooser_view_list_item, paramViewGroup, false);
    PackageManager localPackageManager = this.f.getContext().getPackageManager();
    ImageView localImageView = (ImageView)paramView.findViewById(R.id.icon);
    ResolveInfo localResolveInfo = (ResolveInfo)getItem(paramInt);
    localImageView.setImageDrawable(localResolveInfo.loadIcon(localPackageManager));
    ((TextView)paramView.findViewById(R.id.title)).setText(localResolveInfo.loadLabel(localPackageManager));
    if ((this.c) && (paramInt == 0) && (this.d))
    {
      ViewCompat.setActivated(paramView, true);
      return paramView;
    }
    ViewCompat.setActivated(paramView, false);
    return paramView;
  }

  public final int getViewTypeCount()
  {
    return 3;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.v
 * JD-Core Version:    0.6.0
 */