package android.support.v4.content.res;

import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.Drawable;

class ResourcesCompatApi21
{
  public static Drawable getDrawable(Resources paramResources, int paramInt, Resources.Theme paramTheme)
  {
    return paramResources.getDrawable(paramInt, paramTheme);
  }

  public static Drawable getDrawableForDensity(Resources paramResources, int paramInt1, int paramInt2, Resources.Theme paramTheme)
  {
    return paramResources.getDrawableForDensity(paramInt1, paramInt2, paramTheme);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.content.res.ResourcesCompatApi21
 * JD-Core Version:    0.6.0
 */