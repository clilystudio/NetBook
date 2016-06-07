package android.support.v4.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;

abstract interface DrawableCompat$DrawableImpl
{
  public abstract boolean isAutoMirrored(Drawable paramDrawable);

  public abstract void jumpToCurrentState(Drawable paramDrawable);

  public abstract void setAutoMirrored(Drawable paramDrawable, boolean paramBoolean);

  public abstract void setHotspot(Drawable paramDrawable, float paramFloat1, float paramFloat2);

  public abstract void setHotspotBounds(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4);

  public abstract void setTint(Drawable paramDrawable, int paramInt);

  public abstract void setTintList(Drawable paramDrawable, ColorStateList paramColorStateList);

  public abstract void setTintMode(Drawable paramDrawable, PorterDuff.Mode paramMode);

  public abstract Drawable wrap(Drawable paramDrawable);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.graphics.drawable.DrawableCompat.DrawableImpl
 * JD-Core Version:    0.6.0
 */