package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.support.v4.graphics.ColorUtils;
import android.util.TypedValue;

public final class V
{
  static final int[] a;
  static final int[] b;
  static final int[] c;
  static final int[] d;
  static final int[] e;
  static final int[] f;
  static final int[] g;
  static final int[] h;
  private static final ThreadLocal<TypedValue> i = new ThreadLocal();
  private static final int[] j;

  static
  {
    a = new int[] { -16842910 };
    b = new int[] { 16842908 };
    c = new int[] { 16843518 };
    d = new int[] { 16842919 };
    e = new int[] { 16842912 };
    f = new int[] { 16842913 };
    g = new int[] { -16842919, -16842908 };
    h = new int[0];
    j = new int[1];
  }

  public static int a(Context paramContext, int paramInt)
  {
    j[0] = paramInt;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(null, j);
    try
    {
      int k = localTypedArray.getColor(0, 0);
      return k;
    }
    finally
    {
      localTypedArray.recycle();
    }
    throw localObject;
  }

  static int a(Context paramContext, int paramInt, float paramFloat)
  {
    int k = a(paramContext, paramInt);
    return ColorUtils.setAlphaComponent(k, Math.round(paramFloat * Color.alpha(k)));
  }

  public static ColorStateList a(int paramInt1, int paramInt2)
  {
    int[][] arrayOfInt = new int[2][];
    int[] arrayOfInt1 = new int[2];
    arrayOfInt[0] = a;
    arrayOfInt1[0] = paramInt2;
    arrayOfInt[1] = h;
    arrayOfInt1[1] = paramInt1;
    return new ColorStateList(arrayOfInt, arrayOfInt1);
  }

  public static ColorStateList b(Context paramContext, int paramInt)
  {
    j[0] = paramInt;
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(null, j);
    try
    {
      ColorStateList localColorStateList = localTypedArray.getColorStateList(0);
      return localColorStateList;
    }
    finally
    {
      localTypedArray.recycle();
    }
    throw localObject;
  }

  public static int c(Context paramContext, int paramInt)
  {
    ColorStateList localColorStateList = b(paramContext, paramInt);
    if ((localColorStateList != null) && (localColorStateList.isStateful()))
      return localColorStateList.getColorForState(a, localColorStateList.getDefaultColor());
    TypedValue localTypedValue = (TypedValue)i.get();
    if (localTypedValue == null)
    {
      localTypedValue = new TypedValue();
      i.set(localTypedValue);
    }
    paramContext.getTheme().resolveAttribute(16842803, localTypedValue, true);
    return a(paramContext, paramInt, localTypedValue.getFloat());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.V
 * JD-Core Version:    0.6.0
 */