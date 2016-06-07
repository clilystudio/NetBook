package android.support.v4.graphics;

import android.graphics.Bitmap;
import android.os.Build.VERSION;

public class BitmapCompat
{
  static final BitmapCompat.BitmapImpl IMPL;

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 19)
    {
      IMPL = new BitmapCompat.KitKatBitmapCompatImpl();
      return;
    }
    if (i >= 18)
    {
      IMPL = new BitmapCompat.JbMr2BitmapCompatImpl();
      return;
    }
    if (i >= 12)
    {
      IMPL = new BitmapCompat.HcMr1BitmapCompatImpl();
      return;
    }
    IMPL = new BitmapCompat.BaseBitmapImpl();
  }

  public static int getAllocationByteCount(Bitmap paramBitmap)
  {
    return IMPL.getAllocationByteCount(paramBitmap);
  }

  public static boolean hasMipMap(Bitmap paramBitmap)
  {
    return IMPL.hasMipMap(paramBitmap);
  }

  public static void setHasMipMap(Bitmap paramBitmap, boolean paramBoolean)
  {
    IMPL.setHasMipMap(paramBitmap, paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.graphics.BitmapCompat
 * JD-Core Version:    0.6.0
 */