package android.support.v7.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.internal.widget.TintImageView;

final class e extends TintImageView
  implements i
{
  public e(ActionMenuPresenter paramActionMenuPresenter, Context paramContext)
  {
    super(paramContext, null, R.attr.actionOverflowButtonStyle);
    setClickable(true);
    setFocusable(true);
    setVisibility(0);
    setEnabled(true);
    setOnTouchListener(new f(this, this, paramActionMenuPresenter));
  }

  public final boolean d()
  {
    return false;
  }

  public final boolean e()
  {
    return false;
  }

  public final boolean performClick()
  {
    if (super.performClick())
      return true;
    playSoundEffect(0);
    this.a.f();
    return true;
  }

  protected final boolean setFrame(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool = super.setFrame(paramInt1, paramInt2, paramInt3, paramInt4);
    Drawable localDrawable1 = getDrawable();
    Drawable localDrawable2 = getBackground();
    if ((localDrawable1 != null) && (localDrawable2 != null))
    {
      int i = getWidth();
      int j = getHeight();
      int k = Math.max(i, j) / 2;
      int m = getPaddingLeft() - getPaddingRight();
      int n = getPaddingTop() - getPaddingBottom();
      int i1 = (i + m) / 2;
      int i2 = (j + n) / 2;
      DrawableCompat.setHotspotBounds(localDrawable2, i1 - k, i2 - k, i1 + k, i2 + k);
    }
    return bool;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.e
 * JD-Core Version:    0.6.0
 */