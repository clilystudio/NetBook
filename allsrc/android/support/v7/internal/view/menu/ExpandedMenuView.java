package android.support.v7.internal.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.handmark.pulltorefresh.library.internal.e;

public final class ExpandedMenuView extends ListView
  implements i, w, AdapterView.OnItemClickListener
{
  private static final int[] a = { 16842964, 16843049 };
  private MenuBuilder b;

  public ExpandedMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 16842868);
  }

  public ExpandedMenuView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet);
    setOnItemClickListener(this);
    e locale = e.a(paramContext, paramAttributeSet, a, paramInt, 0);
    if (locale.e(0))
      setBackgroundDrawable(locale.a(0));
    if (locale.e(1))
      setDivider(locale.a(1));
    locale.b();
  }

  public final void a(MenuBuilder paramMenuBuilder)
  {
    this.b = paramMenuBuilder;
  }

  public final boolean a(MenuItemImpl paramMenuItemImpl)
  {
    return this.b.a(paramMenuItemImpl, 0);
  }

  protected final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    setChildrenDrawingCacheEnabled(false);
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    a((MenuItemImpl)getAdapter().getItem(paramInt));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.ExpandedMenuView
 * JD-Core Version:    0.6.0
 */