package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

class DrawableCompat$KitKatDrawableImpl extends DrawableCompat.HoneycombDrawableImpl
{
  public boolean isAutoMirrored(Drawable paramDrawable)
  {
    return DrawableCompatKitKat.isAutoMirrored(paramDrawable);
  }

  public void setAutoMirrored(Drawable paramDrawable, boolean paramBoolean)
  {
    DrawableCompatKitKat.setAutoMirrored(paramDrawable, paramBoolean);
  }

  public Drawable wrap(Drawable paramDrawable)
  {
    return DrawableCompatKitKat.wrapForTinting(paramDrawable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.graphics.drawable.DrawableCompat.KitKatDrawableImpl
 * JD-Core Version:    0.6.0
 */