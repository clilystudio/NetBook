package android.support.v4.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.WindowInsets;

class DrawerLayoutCompatApi21
{
  private static final int[] THEME_ATTRS = { 16843828 };

  public static void applyMarginInsets(ViewGroup.MarginLayoutParams paramMarginLayoutParams, Object paramObject, int paramInt)
  {
    WindowInsets localWindowInsets = (WindowInsets)paramObject;
    if (paramInt == 3)
      localWindowInsets = localWindowInsets.replaceSystemWindowInsets(localWindowInsets.getSystemWindowInsetLeft(), localWindowInsets.getSystemWindowInsetTop(), 0, localWindowInsets.getSystemWindowInsetBottom());
    while (true)
    {
      paramMarginLayoutParams.leftMargin = localWindowInsets.getSystemWindowInsetLeft();
      paramMarginLayoutParams.topMargin = localWindowInsets.getSystemWindowInsetTop();
      paramMarginLayoutParams.rightMargin = localWindowInsets.getSystemWindowInsetRight();
      paramMarginLayoutParams.bottomMargin = localWindowInsets.getSystemWindowInsetBottom();
      return;
      if (paramInt != 5)
        continue;
      localWindowInsets = localWindowInsets.replaceSystemWindowInsets(0, localWindowInsets.getSystemWindowInsetTop(), localWindowInsets.getSystemWindowInsetRight(), localWindowInsets.getSystemWindowInsetBottom());
    }
  }

  public static void configureApplyInsets(View paramView)
  {
    if ((paramView instanceof DrawerLayoutImpl))
    {
      paramView.setOnApplyWindowInsetsListener(new DrawerLayoutCompatApi21.InsetsListener());
      paramView.setSystemUiVisibility(1280);
    }
  }

  public static void dispatchChildInsets(View paramView, Object paramObject, int paramInt)
  {
    WindowInsets localWindowInsets = (WindowInsets)paramObject;
    if (paramInt == 3)
      localWindowInsets = localWindowInsets.replaceSystemWindowInsets(localWindowInsets.getSystemWindowInsetLeft(), localWindowInsets.getSystemWindowInsetTop(), 0, localWindowInsets.getSystemWindowInsetBottom());
    while (true)
    {
      paramView.dispatchApplyWindowInsets(localWindowInsets);
      return;
      if (paramInt != 5)
        continue;
      localWindowInsets = localWindowInsets.replaceSystemWindowInsets(0, localWindowInsets.getSystemWindowInsetTop(), localWindowInsets.getSystemWindowInsetRight(), localWindowInsets.getSystemWindowInsetBottom());
    }
  }

  public static Drawable getDefaultStatusBarBackground(Context paramContext)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(THEME_ATTRS);
    try
    {
      Drawable localDrawable = localTypedArray.getDrawable(0);
      return localDrawable;
    }
    finally
    {
      localTypedArray.recycle();
    }
    throw localObject;
  }

  public static int getTopInset(Object paramObject)
  {
    if (paramObject != null)
      return ((WindowInsets)paramObject).getSystemWindowInsetTop();
    return 0;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.DrawerLayoutCompatApi21
 * JD-Core Version:    0.6.0
 */