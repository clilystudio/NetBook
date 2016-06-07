package android.support.design.widget;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;
import android.support.design.R.color;
import android.support.v7.a.a.a;

final class M extends a
{
  private static double c = Math.cos(Math.toRadians(45.0D));
  float a;
  float b;
  private Paint d;
  private Paint e;
  private RectF f;
  private float g;
  private Path h;
  private float i;
  private boolean j = true;
  private final int k;
  private final int l;
  private final int m;
  private boolean n = true;
  private boolean o = false;

  public M(Resources paramResources, Drawable paramDrawable, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    super(paramDrawable);
    this.k = paramResources.getColor(R.color.shadow_start_color);
    this.l = paramResources.getColor(R.color.shadow_mid_color);
    this.m = paramResources.getColor(R.color.shadow_end_color);
    this.d = new Paint(5);
    this.d.setStyle(Paint.Style.FILL);
    this.g = Math.round(paramFloat1);
    this.f = new RectF();
    this.e = new Paint(this.d);
    this.e.setAntiAlias(false);
    a(paramFloat2, paramFloat3);
  }

  private static int a(float paramFloat)
  {
    int i1 = Math.round(paramFloat);
    if (i1 % 2 == 1)
      i1--;
    return i1;
  }

  final void a(float paramFloat1, float paramFloat2)
  {
    if ((paramFloat1 < 0.0F) || (paramFloat2 < 0.0F))
      throw new IllegalArgumentException("invalid shadow size");
    float f1 = a(paramFloat1);
    float f2 = a(paramFloat2);
    if (f1 > f2)
    {
      if (!this.o)
        this.o = true;
      f1 = f2;
    }
    if ((this.b == f1) && (this.a == f2))
      return;
    this.b = f1;
    this.a = f2;
    this.i = Math.round(f1 * 1.5F);
    this.j = true;
    invalidateSelf();
  }

  public final void a(boolean paramBoolean)
  {
    this.n = false;
    invalidateSelf();
  }

  public final void draw(Canvas paramCanvas)
  {
    float f1;
    float f2;
    int i1;
    if (this.j)
    {
      Rect localRect = getBounds();
      float f9 = 1.5F * this.a;
      this.f.set(localRect.left + this.a, f9 + localRect.top, localRect.right - this.a, localRect.bottom - f9);
      a().setBounds((int)this.f.left, (int)this.f.top, (int)this.f.right, (int)this.f.bottom);
      RectF localRectF1 = new RectF(-this.g, -this.g, this.g, this.g);
      RectF localRectF2 = new RectF(localRectF1);
      localRectF2.inset(-this.i, -this.i);
      if (this.h == null)
      {
        this.h = new Path();
        this.h.setFillType(Path.FillType.EVEN_ODD);
        this.h.moveTo(-this.g, 0.0F);
        this.h.rLineTo(-this.i, 0.0F);
        this.h.arcTo(localRectF2, 180.0F, 90.0F, false);
        this.h.arcTo(localRectF1, 270.0F, -90.0F, false);
        this.h.close();
        float f10 = -localRectF2.top;
        if (f10 > 0.0F)
        {
          float f13 = this.g / f10;
          float f14 = f13 + (1.0F - f13) / 2.0F;
          Paint localPaint2 = this.d;
          int[] arrayOfInt2 = new int[4];
          arrayOfInt2[0] = 0;
          arrayOfInt2[1] = this.k;
          arrayOfInt2[2] = this.l;
          arrayOfInt2[3] = this.m;
          localPaint2.setShader(new RadialGradient(0.0F, 0.0F, f10, arrayOfInt2, new float[] { 0.0F, f13, f14, 1.0F }, Shader.TileMode.CLAMP));
        }
        Paint localPaint1 = this.e;
        float f11 = localRectF1.top;
        float f12 = localRectF2.top;
        int[] arrayOfInt1 = new int[3];
        arrayOfInt1[0] = this.k;
        arrayOfInt1[1] = this.l;
        arrayOfInt1[2] = this.m;
        localPaint1.setShader(new LinearGradient(0.0F, f11, 0.0F, f12, arrayOfInt1, new float[] { 0.0F, 0.5F, 1.0F }, Shader.TileMode.CLAMP));
        this.e.setAntiAlias(false);
        this.j = false;
      }
    }
    else
    {
      f1 = -this.g - this.i;
      f2 = this.g;
      if (this.f.width() - 2.0F * f2 <= 0.0F)
        break label1002;
      i1 = 1;
      label505: if (this.f.height() - 2.0F * f2 <= 0.0F)
        break label1008;
    }
    label1002: label1008: for (int i2 = 1; ; i2 = 0)
    {
      float f3 = this.b - 0.25F * this.b;
      float f4 = this.b - 0.5F * this.b;
      float f5 = this.b - this.b;
      float f6 = f2 / (f4 + f2);
      float f7 = f2 / (f3 + f2);
      float f8 = f2 / (f2 + f5);
      int i3 = paramCanvas.save();
      paramCanvas.translate(f2 + this.f.left, f2 + this.f.top);
      paramCanvas.scale(f6, f7);
      paramCanvas.drawPath(this.h, this.d);
      if (i1 != 0)
      {
        paramCanvas.scale(1.0F / f6, 1.0F);
        paramCanvas.drawRect(0.0F, f1, this.f.width() - 2.0F * f2, -this.g, this.e);
      }
      paramCanvas.restoreToCount(i3);
      int i4 = paramCanvas.save();
      paramCanvas.translate(this.f.right - f2, this.f.bottom - f2);
      paramCanvas.scale(f6, f8);
      paramCanvas.rotate(180.0F);
      paramCanvas.drawPath(this.h, this.d);
      if (i1 != 0)
      {
        paramCanvas.scale(1.0F / f6, 1.0F);
        paramCanvas.drawRect(0.0F, f1, this.f.width() - 2.0F * f2, -this.g + this.i, this.e);
      }
      paramCanvas.restoreToCount(i4);
      int i5 = paramCanvas.save();
      paramCanvas.translate(f2 + this.f.left, this.f.bottom - f2);
      paramCanvas.scale(f6, f8);
      paramCanvas.rotate(270.0F);
      paramCanvas.drawPath(this.h, this.d);
      if (i2 != 0)
      {
        paramCanvas.scale(1.0F / f8, 1.0F);
        paramCanvas.drawRect(0.0F, f1, this.f.height() - 2.0F * f2, -this.g, this.e);
      }
      paramCanvas.restoreToCount(i5);
      int i6 = paramCanvas.save();
      paramCanvas.translate(this.f.right - f2, f2 + this.f.top);
      paramCanvas.scale(f6, f7);
      paramCanvas.rotate(90.0F);
      paramCanvas.drawPath(this.h, this.d);
      if (i2 != 0)
      {
        paramCanvas.scale(1.0F / f7, 1.0F);
        paramCanvas.drawRect(0.0F, f1, this.f.height() - 2.0F * f2, -this.g, this.e);
      }
      paramCanvas.restoreToCount(i6);
      super.draw(paramCanvas);
      return;
      this.h.reset();
      break;
      i1 = 0;
      break label505;
    }
  }

  public final int getOpacity()
  {
    return -3;
  }

  public final boolean getPadding(Rect paramRect)
  {
    float f1 = this.a;
    float f2 = this.g;
    float f3;
    if (this.n)
      f3 = (float)(f1 * 1.5F + (1.0D - c) * f2);
    while (true)
    {
      int i1 = (int)Math.ceil(f3);
      float f4 = this.a;
      float f5 = this.g;
      if (this.n)
        f4 = (float)(f4 + (1.0D - c) * f5);
      int i2 = (int)Math.ceil(f4);
      paramRect.set(i2, i1, i2, i1);
      return true;
      f3 = f1 * 1.5F;
    }
  }

  protected final void onBoundsChange(Rect paramRect)
  {
    this.j = true;
  }

  public final void setAlpha(int paramInt)
  {
    super.setAlpha(paramInt);
    this.d.setAlpha(paramInt);
    this.e.setAlpha(paramInt);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.M
 * JD-Core Version:    0.6.0
 */