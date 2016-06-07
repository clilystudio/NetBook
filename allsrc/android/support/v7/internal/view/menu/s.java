package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.support.v7.appcompat.R.attr;
import android.support.v7.appcompat.R.dimen;
import android.support.v7.appcompat.R.layout;
import android.support.v7.widget.L;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;

public class s
  implements u, View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  static final int a = R.layout.abc_popup_menu_item_layout;
  boolean b;
  private final Context c;
  private final LayoutInflater d;
  private final MenuBuilder e;
  private final t f;
  private final boolean g;
  private final int h;
  private final int i;
  private final int j;
  private View k;
  private L l;
  private ViewTreeObserver m;
  private v n;
  private ViewGroup o;
  private boolean p;
  private int q;
  private int r = 0;

  public s(Context paramContext, MenuBuilder paramMenuBuilder, View paramView)
  {
    this(paramContext, paramMenuBuilder, paramView, false, R.attr.popupMenuStyle);
  }

  public s(Context paramContext, MenuBuilder paramMenuBuilder, View paramView, boolean paramBoolean, int paramInt)
  {
    this(paramContext, paramMenuBuilder, paramView, paramBoolean, paramInt, 0);
  }

  public s(Context paramContext, MenuBuilder paramMenuBuilder, View paramView, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this.c = paramContext;
    this.d = LayoutInflater.from(paramContext);
    this.e = paramMenuBuilder;
    this.f = new t(this, this.e);
    this.g = paramBoolean;
    this.i = paramInt1;
    this.j = paramInt2;
    Resources localResources = paramContext.getResources();
    this.h = Math.max(localResources.getDisplayMetrics().widthPixels / 2, localResources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
    this.k = paramView;
    paramMenuBuilder.a(this, paramContext);
  }

  public final void a(int paramInt)
  {
    this.r = paramInt;
  }

  public final void a(Context paramContext, MenuBuilder paramMenuBuilder)
  {
  }

  public final void a(Parcelable paramParcelable)
  {
  }

  public final void a(MenuBuilder paramMenuBuilder, boolean paramBoolean)
  {
    if (paramMenuBuilder != this.e);
    do
    {
      return;
      g();
    }
    while (this.n == null);
    this.n.a(paramMenuBuilder, paramBoolean);
  }

  public final void a(v paramv)
  {
    this.n = paramv;
  }

  public final void a(View paramView)
  {
    this.k = paramView;
  }

  public final void a(boolean paramBoolean)
  {
    this.p = false;
    this.f.notifyDataSetChanged();
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
    s locals;
    int i2;
    if (paramSubMenuBuilder.hasVisibleItems())
    {
      locals = new s(this.c, paramSubMenuBuilder, this.k);
      locals.n = this.n;
      int i1 = paramSubMenuBuilder.size();
      i2 = 0;
      if (i2 >= i1)
        break label118;
      MenuItem localMenuItem = paramSubMenuBuilder.getItem(i2);
      if ((!localMenuItem.isVisible()) || (localMenuItem.getIcon() == null));
    }
    label118: for (boolean bool = true; ; bool = false)
    {
      locals.b = bool;
      if (locals.f())
      {
        if (this.n != null)
          this.n.a_(paramSubMenuBuilder);
        return true;
        i2++;
        break;
      }
      return false;
    }
  }

  public final int b()
  {
    return 0;
  }

  public final void b(boolean paramBoolean)
  {
    this.b = paramBoolean;
  }

  public final boolean b(MenuItemImpl paramMenuItemImpl)
  {
    return false;
  }

  public final Parcelable c()
  {
    return null;
  }

  public final void d()
  {
    if (!f())
      throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
  }

  public final L e()
  {
    return this.l;
  }

  public final boolean f()
  {
    int i1 = 0;
    this.l = new L(this.c, null, this.i, this.j);
    this.l.a(this);
    this.l.a(this);
    this.l.a(this.f);
    this.l.a(true);
    View localView1 = this.k;
    int i6;
    View localView2;
    View localView3;
    label195: int i9;
    if (localView1 != null)
    {
      if (this.m == null);
      for (int i2 = 1; ; i2 = 0)
      {
        this.m = localView1.getViewTreeObserver();
        if (i2 != 0)
          this.m.addOnGlobalLayoutListener(this);
        this.l.a(localView1);
        this.l.b(this.r);
        if (!this.p)
        {
          t localt = this.f;
          int i3 = View.MeasureSpec.makeMeasureSpec(0, 0);
          int i4 = View.MeasureSpec.makeMeasureSpec(0, 0);
          int i5 = localt.getCount();
          i6 = 0;
          int i7 = 0;
          localView2 = null;
          if (i6 < i5)
          {
            int i8 = localt.getItemViewType(i6);
            if (i8 == i7)
              break label335;
            i7 = i8;
            localView3 = null;
            if (this.o == null)
              this.o = new FrameLayout(this.c);
            localView2 = localt.getView(i6, localView3, this.o);
            localView2.measure(i3, i4);
            i9 = localView2.getMeasuredWidth();
            if (i9 < this.h)
              break;
            i1 = this.h;
          }
          this.q = i1;
          this.p = true;
        }
        this.l.c(this.q);
        this.l.d(2);
        this.l.c();
        this.l.g().setOnKeyListener(this);
        return true;
      }
    }
    return false;
    if (i9 > i1);
    while (true)
    {
      i6++;
      i1 = i9;
      break;
      label335: localView3 = localView2;
      break label195;
      i9 = i1;
    }
  }

  public final void g()
  {
    if (h())
      this.l.a();
  }

  public final boolean h()
  {
    return (this.l != null) && (this.l.b());
  }

  public void onDismiss()
  {
    this.l = null;
    this.e.close();
    if (this.m != null)
    {
      if (!this.m.isAlive())
        this.m = this.k.getViewTreeObserver();
      this.m.removeGlobalOnLayoutListener(this);
      this.m = null;
    }
  }

  public void onGlobalLayout()
  {
    if (h())
    {
      View localView = this.k;
      if ((localView != null) && (localView.isShown()))
        break label28;
      g();
    }
    label28: 
    do
      return;
    while (!h());
    this.l.c();
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    t localt = this.f;
    t.a(localt).a(localt.a(paramInt), 0);
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 82))
    {
      g();
      return true;
    }
    return false;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.s
 * JD-Core Version:    0.6.0
 */