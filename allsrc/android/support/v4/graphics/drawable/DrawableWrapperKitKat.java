package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

class DrawableWrapperKitKat extends DrawableWrapperHoneycomb
{
  DrawableWrapperKitKat(Drawable paramDrawable)
  {
    super(paramDrawable);
  }

  public boolean isAutoMirrored()
  {
    return this.mDrawable.isAutoMirrored();
  }

  public void setAutoMirrored(boolean paramBoolean)
  {
    this.mDrawable.setAutoMirrored(paramBoolean);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.graphics.drawable.DrawableWrapperKitKat
 * JD-Core Version:    0.6.0
 */