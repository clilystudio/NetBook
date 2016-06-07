package android.support.design.widget;

import android.support.v4.view.ViewCompat;
import android.support.v4.widget.ViewDragHelper;
import android.support.v4.widget.ViewDragHelper.Callback;
import android.view.View;

final class ae extends ViewDragHelper.Callback
{
  private int a;

  ae(ad paramad)
  {
  }

  public final int clampViewPositionHorizontal(View paramView, int paramInt1, int paramInt2)
  {
    int i;
    int j;
    int k;
    if (ViewCompat.getLayoutDirection(paramView) == 1)
    {
      i = 1;
      if (ad.c(this.b) != 0)
        break label78;
      if (i == 0)
        break label58;
      j = this.a - paramView.getWidth();
      k = this.a;
    }
    while (true)
    {
      return ad.a(j, paramInt1, k);
      i = 0;
      break;
      label58: j = this.a;
      k = this.a + paramView.getWidth();
      continue;
      label78: if (ad.c(this.b) == 1)
      {
        if (i != 0)
        {
          j = this.a;
          k = this.a + paramView.getWidth();
          continue;
        }
        j = this.a - paramView.getWidth();
        k = this.a;
        continue;
      }
      j = this.a - paramView.getWidth();
      k = this.a + paramView.getWidth();
    }
  }

  public final int clampViewPositionVertical(View paramView, int paramInt1, int paramInt2)
  {
    return paramView.getTop();
  }

  public final int getViewHorizontalDragRange(View paramView)
  {
    return paramView.getWidth();
  }

  public final void onViewDragStateChanged(int paramInt)
  {
    if (ad.a(this.b) != null)
      ad.a(this.b).a(paramInt);
  }

  public final void onViewPositionChanged(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = paramView.getWidth() * ad.e(this.b);
    float f2 = paramView.getWidth() * ad.f(this.b);
    if (paramInt1 <= f1)
    {
      ViewCompat.setAlpha(paramView, 1.0F);
      return;
    }
    if (paramInt1 >= f2)
    {
      ViewCompat.setAlpha(paramView, 0.0F);
      return;
    }
    ViewCompat.setAlpha(paramView, ad.a(0.0F, 1.0F - (paramInt1 - f1) / (f2 - f1), 1.0F));
  }

  public final void onViewReleased(View paramView, float paramFloat1, float paramFloat2)
  {
    int i = 1;
    int k = paramView.getWidth();
    int i1;
    label43: int i3;
    if (paramFloat1 != 0.0F)
      if (ViewCompat.getLayoutDirection(paramView) == i)
      {
        int i4 = i;
        if (ad.c(this.b) != 2)
          break label112;
        i1 = i;
        if (i1 == 0)
          break label290;
        if (paramView.getLeft() >= this.a)
          break label278;
        i3 = this.a - k;
        label68: if (!ad.b(this.b).settleCapturedViewAt(i3, paramView.getTop()))
          break label302;
        ViewCompat.postOnAnimation(paramView, new ag(this.b, paramView, i));
      }
    label112: int j;
    label278: label290: label302: 
    do
    {
      return;
      int i5 = 0;
      break;
      if (ad.c(this.b) == 0)
      {
        if (i5 != 0)
        {
          if (paramFloat1 < 0.0F)
          {
            i1 = i;
            break label43;
          }
          i2 = 0;
          break label43;
        }
        if (paramFloat1 > 0.0F)
        {
          i2 = i;
          break label43;
        }
        i2 = 0;
        break label43;
      }
      if (ad.c(this.b) == i)
      {
        if (i5 != 0)
        {
          if (paramFloat1 > 0.0F)
          {
            i2 = i;
            break label43;
          }
          i2 = 0;
          break label43;
        }
        if (paramFloat1 < 0.0F)
        {
          i2 = i;
          break label43;
        }
        i2 = 0;
        break label43;
        int m = paramView.getLeft() - this.a;
        int n = Math.round(paramView.getWidth() * ad.d(this.b));
        if (Math.abs(m) >= n)
        {
          i2 = i;
          break label43;
        }
        i2 = 0;
        break label43;
      }
      int i2 = 0;
      break label43;
      i3 = k + this.a;
      break label68;
      i3 = this.a;
      j = 0;
      break label68;
    }
    while ((j == 0) || (ad.a(this.b) == null));
    ad.a(this.b).a();
  }

  public final boolean tryCaptureView(View paramView, int paramInt)
  {
    this.a = paramView.getLeft();
    return true;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.ae
 * JD-Core Version:    0.6.0
 */