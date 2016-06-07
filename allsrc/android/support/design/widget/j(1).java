package android.support.design.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;

final class j extends i
{
  private ColorStateList c;
  private PorterDuff.Mode d = PorterDuff.Mode.SRC_IN;
  private PorterDuffColorFilter e;

  private PorterDuffColorFilter a(ColorStateList paramColorStateList, PorterDuff.Mode paramMode)
  {
    if ((paramColorStateList == null) || (paramMode == null))
      return null;
    return new PorterDuffColorFilter(paramColorStateList.getColorForState(getState(), 0), paramMode);
  }

  public final void draw(Canvas paramCanvas)
  {
    if ((this.e != null) && (this.a.getColorFilter() == null))
      this.a.setColorFilter(this.e);
    for (int i = 1; ; i = 0)
    {
      super.draw(paramCanvas);
      if (i != 0)
        this.a.setColorFilter(null);
      return;
    }
  }

  public final void getOutline(Outline paramOutline)
  {
    copyBounds(this.b);
    paramOutline.setOval(this.b);
  }

  public final void setTintList(ColorStateList paramColorStateList)
  {
    this.c = paramColorStateList;
    this.e = a(paramColorStateList, this.d);
    invalidateSelf();
  }

  public final void setTintMode(PorterDuff.Mode paramMode)
  {
    this.d = paramMode;
    this.e = a(this.c, paramMode);
    invalidateSelf();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.j
 * JD-Core Version:    0.6.0
 */