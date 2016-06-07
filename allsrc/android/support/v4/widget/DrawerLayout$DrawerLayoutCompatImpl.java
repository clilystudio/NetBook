package android.support.v4.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;

abstract interface DrawerLayout$DrawerLayoutCompatImpl
{
  public abstract void applyMarginInsets(ViewGroup.MarginLayoutParams paramMarginLayoutParams, Object paramObject, int paramInt);

  public abstract void configureApplyInsets(View paramView);

  public abstract void dispatchChildInsets(View paramView, Object paramObject, int paramInt);

  public abstract Drawable getDefaultStatusBarBackground(Context paramContext);

  public abstract int getTopInset(Object paramObject);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.DrawerLayout.DrawerLayoutCompatImpl
 * JD-Core Version:    0.6.0
 */