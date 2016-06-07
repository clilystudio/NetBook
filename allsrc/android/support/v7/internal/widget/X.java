package android.support.v7.internal.widget;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;

final class X extends I
{
  private final Y a;

  public X(Resources paramResources, Y paramY)
  {
    super(paramResources);
    this.a = paramY;
  }

  public final Drawable getDrawable(int paramInt)
  {
    Drawable localDrawable = super.getDrawable(paramInt);
    if (localDrawable != null)
      this.a.a(paramInt, localDrawable);
    return localDrawable;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.X
 * JD-Core Version:    0.6.0
 */