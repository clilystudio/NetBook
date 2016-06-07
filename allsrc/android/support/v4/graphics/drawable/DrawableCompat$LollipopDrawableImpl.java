package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;

class DrawableCompat$LollipopDrawableImpl extends DrawableCompat.KitKatDrawableImpl
{
  public void setHotspot(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    DrawableCompatLollipop.setHotspot(paramDrawable, paramFloat1, paramFloat2);
  }

  public void setHotspotBounds(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    DrawableCompatLollipop.setHotspotBounds(paramDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
  }

  public void setTint(Drawable paramDrawable, int paramInt)
  {
    DrawableCompatLollipop.setTint(paramDrawable, paramInt);
  }

  public void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    DrawableCompatLollipop.setTintList(paramDrawable, paramColorStateList);
  }

  public void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    DrawableCompatLollipop.setTintMode(paramDrawable, paramMode);
  }

  public Drawable wrap(Drawable paramDrawable)
  {
    return DrawableCompatLollipop.wrapForTinting(paramDrawable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.graphics.drawable.DrawableCompat.LollipopDrawableImpl
 * JD-Core Version:    0.6.0
 */