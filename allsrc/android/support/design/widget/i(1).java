package android.support.design.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.ColorUtils;

class i extends Drawable
{
  final Paint a = new Paint(1);
  final Rect b = new Rect();
  private RectF c = new RectF();
  private float d;
  private int e;
  private int f;
  private int g;
  private int h;
  private int i;
  private boolean j = true;

  public i()
  {
    this.a.setStyle(Paint.Style.STROKE);
  }

  final void a(float paramFloat)
  {
    if (this.d != paramFloat)
    {
      this.d = paramFloat;
      this.a.setStrokeWidth(1.3333F * paramFloat);
      this.j = true;
      invalidateSelf();
    }
  }

  final void a(int paramInt)
  {
    this.i = paramInt;
    this.j = true;
    invalidateSelf();
  }

  final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.e = paramInt1;
    this.f = paramInt2;
    this.g = paramInt3;
    this.h = paramInt4;
  }

  public void draw(Canvas paramCanvas)
  {
    if (this.j)
    {
      Paint localPaint = this.a;
      Rect localRect = this.b;
      copyBounds(localRect);
      float f2 = this.d / localRect.height();
      int[] arrayOfInt = new int[6];
      arrayOfInt[0] = ColorUtils.compositeColors(this.e, this.i);
      arrayOfInt[1] = ColorUtils.compositeColors(this.f, this.i);
      arrayOfInt[2] = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.f, 0), this.i);
      arrayOfInt[3] = ColorUtils.compositeColors(ColorUtils.setAlphaComponent(this.h, 0), this.i);
      arrayOfInt[4] = ColorUtils.compositeColors(this.h, this.i);
      arrayOfInt[5] = ColorUtils.compositeColors(this.g, this.i);
      float[] arrayOfFloat = new float[6];
      arrayOfFloat[0] = 0.0F;
      arrayOfFloat[1] = f2;
      arrayOfFloat[2] = 0.5F;
      arrayOfFloat[3] = 0.5F;
      arrayOfFloat[4] = (1.0F - f2);
      arrayOfFloat[5] = 1.0F;
      localPaint.setShader(new LinearGradient(0.0F, localRect.top, 0.0F, localRect.bottom, arrayOfInt, arrayOfFloat, Shader.TileMode.CLAMP));
      this.j = false;
    }
    float f1 = this.a.getStrokeWidth() / 2.0F;
    RectF localRectF = this.c;
    copyBounds(this.b);
    localRectF.set(this.b);
    localRectF.left = (f1 + localRectF.left);
    localRectF.top = (f1 + localRectF.top);
    localRectF.right -= f1;
    localRectF.bottom -= f1;
    paramCanvas.drawOval(localRectF, this.a);
  }

  public int getOpacity()
  {
    if (this.d > 0.0F)
      return -3;
    return -2;
  }

  public boolean getPadding(Rect paramRect)
  {
    int k = Math.round(this.d);
    paramRect.set(k, k, k, k);
    return true;
  }

  protected void onBoundsChange(Rect paramRect)
  {
    this.j = true;
  }

  public void setAlpha(int paramInt)
  {
    this.a.setAlpha(paramInt);
    invalidateSelf();
  }

  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.a.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.i
 * JD-Core Version:    0.6.0
 */