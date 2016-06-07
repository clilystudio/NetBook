package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

class DrawableCompat$HoneycombDrawableImpl extends DrawableCompat.BaseDrawableImpl
{
  public void jumpToCurrentState(Drawable paramDrawable)
  {
    DrawableCompatHoneycomb.jumpToCurrentState(paramDrawable);
  }

  public Drawable wrap(Drawable paramDrawable)
  {
    return DrawableCompatHoneycomb.wrapForTinting(paramDrawable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.graphics.drawable.DrawableCompat.HoneycombDrawableImpl
 * JD-Core Version:    0.6.0
 */