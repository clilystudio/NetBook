package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;

class DrawableCompatBase
{
  public static void setTint(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable instanceof DrawableWrapper))
      ((DrawableWrapper)paramDrawable).setTint(paramInt);
  }

  public static void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    if ((paramDrawable instanceof DrawableWrapper))
      ((DrawableWrapper)paramDrawable).setTintList(paramColorStateList);
  }

  public static void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    if ((paramDrawable instanceof DrawableWrapper))
      ((DrawableWrapper)paramDrawable).setTintMode(paramMode);
  }

  public static Drawable wrapForTinting(Drawable paramDrawable)
  {
    if (!(paramDrawable instanceof DrawableWrapperDonut))
      paramDrawable = new DrawableWrapperDonut(paramDrawable);
    return paramDrawable;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.graphics.drawable.DrawableCompatBase
 * JD-Core Version:    0.6.0
 */