package android.support.v4.view;

import android.os.Build.VERSION;

public class ScaleGestureDetectorCompat
{
  static final ScaleGestureDetectorCompat.ScaleGestureDetectorImpl IMPL;

  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      IMPL = new ScaleGestureDetectorCompat.ScaleGestureDetectorCompatKitKatImpl(null);
      return;
    }
    IMPL = new ScaleGestureDetectorCompat.BaseScaleGestureDetectorImpl(null);
  }

  public static boolean isQuickScaleEnabled(Object paramObject)
  {
    return IMPL.isQuickScaleEnabled(paramObject);
  }

  public static void setQuickScaleEnabled(Object paramObject, boolean paramBoolean)
  {
    IMPL.setQuickScaleEnabled(paramObject, paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ScaleGestureDetectorCompat
 * JD-Core Version:    0.6.0
 */