package android.support.v7.internal.widget;

import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public final class E
{
  public static final Rect a = new Rect();
  private static Class<?> b;

  static
  {
    if (Build.VERSION.SDK_INT >= 18);
    try
    {
      b = Class.forName("android.graphics.Insets");
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
  }

  public static Rect a(Drawable paramDrawable)
  {
    if (b != null);
    while (true)
    {
      Object localObject;
      int j;
      Field localField;
      int k;
      try
      {
        Drawable localDrawable = DrawableCompat.unwrap(paramDrawable);
        localObject = localDrawable.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(localDrawable, new Object[0]);
        if (localObject != null)
        {
          localRect = new Rect();
          Field[] arrayOfField = b.getFields();
          int i = arrayOfField.length;
          j = 0;
          if (j >= i)
            break label227;
          localField = arrayOfField[j];
          String str = localField.getName();
          k = -1;
          switch (str.hashCode())
          {
          case 3317767:
            if (!str.equals("left"))
              break;
            k = 0;
            break;
          case 115029:
            if (!str.equals("top"))
              break;
            k = 1;
            break;
          case 108511772:
            if (!str.equals("right"))
              break;
            k = 2;
            break;
          case -1383228885:
            if (!str.equals("bottom"))
              break;
            k = 3;
            break;
            localRect.left = localField.getInt(localObject);
          }
        }
      }
      catch (Exception localException)
      {
        Log.e("DrawableUtils", "Couldn't obtain the optical insets. Ignoring.");
      }
      Rect localRect = a;
      label227: return localRect;
      localRect.top = localField.getInt(localObject);
      break label304;
      localRect.right = localField.getInt(localObject);
      break label304;
      localRect.bottom = localField.getInt(localObject);
      break label304;
      switch (k)
      {
      case 0:
      case 1:
      case 2:
      case 3:
      }
      label304: j++;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.E
 * JD-Core Version:    0.6.0
 */