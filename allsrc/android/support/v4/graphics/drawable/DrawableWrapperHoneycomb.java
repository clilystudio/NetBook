package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

class DrawableWrapperHoneycomb extends DrawableWrapperDonut
{
  DrawableWrapperHoneycomb(Drawable paramDrawable)
  {
    super(paramDrawable);
  }

  public void jumpToCurrentState()
  {
    this.mDrawable.jumpToCurrentState();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.graphics.drawable.DrawableWrapperHoneycomb
 * JD-Core Version:    0.6.0
 */