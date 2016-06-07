package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.StateListDrawable;
import android.support.design.R.attr;
import android.support.design.R.dimen;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.widget.TextViewCompat;
import android.support.v7.internal.view.menu.MenuItemImpl;
import android.support.v7.internal.view.menu.x;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;

public class NavigationMenuItemView extends TextView
  implements x
{
  private static final int[] a = { 16842912 };
  private int b;
  private MenuItemImpl c;
  private ColorStateList d;

  public NavigationMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }

  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.b = paramContext.getResources().getDimensionPixelSize(R.dimen.navigation_icon_size);
  }

  public final MenuItemImpl a()
  {
    return this.c;
  }

  final void a(ColorStateList paramColorStateList)
  {
    this.d = paramColorStateList;
    if (this.c != null)
      setIcon(this.c.getIcon());
  }

  public final void a(MenuItemImpl paramMenuItemImpl, int paramInt)
  {
    this.c = paramMenuItemImpl;
    int i;
    StateListDrawable localStateListDrawable;
    if (paramMenuItemImpl.isVisible())
    {
      i = 0;
      setVisibility(i);
      if (getBackground() == null)
      {
        TypedValue localTypedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(R.attr.colorControlHighlight, localTypedValue, true))
          break label152;
        localStateListDrawable = new StateListDrawable();
        localStateListDrawable.addState(a, new ColorDrawable(localTypedValue.data));
        localStateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
      }
    }
    while (true)
    {
      setBackgroundDrawable(localStateListDrawable);
      setCheckable(paramMenuItemImpl.isCheckable());
      setChecked(paramMenuItemImpl.isChecked());
      setEnabled(paramMenuItemImpl.isEnabled());
      setTitle(paramMenuItemImpl.getTitle());
      setIcon(paramMenuItemImpl.getIcon());
      return;
      i = 8;
      break;
      label152: localStateListDrawable = null;
    }
  }

  public final boolean b()
  {
    return false;
  }

  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if ((this.c != null) && (this.c.isCheckable()) && (this.c.isChecked()))
      mergeDrawableStates(arrayOfInt, a);
    return arrayOfInt;
  }

  public void setCheckable(boolean paramBoolean)
  {
    refreshDrawableState();
  }

  public void setChecked(boolean paramBoolean)
  {
    refreshDrawableState();
  }

  public void setIcon(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      paramDrawable = DrawableCompat.wrap(paramDrawable.getConstantState().newDrawable()).mutate();
      paramDrawable.setBounds(0, 0, this.b, this.b);
      DrawableCompat.setTintList(paramDrawable, this.d);
    }
    TextViewCompat.setCompoundDrawablesRelative(this, paramDrawable, null, null, null);
  }

  public void setShortcut(boolean paramBoolean, char paramChar)
  {
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    setText(paramCharSequence);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.internal.NavigationMenuItemView
 * JD-Core Version:    0.6.0
 */