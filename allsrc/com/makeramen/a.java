package com.makeramen;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;
import android.widget.ImageView.ScaleType;

public final class a extends Drawable
{
  private final RectF a = new RectF();
  private final RectF b = new RectF();
  private final RectF c = new RectF();
  private final BitmapShader d;
  private final Paint e;
  private final int f;
  private final int g;
  private final RectF h = new RectF();
  private final Paint i;
  private final Matrix j = new Matrix();
  private float k = 0.0F;
  private boolean l = false;
  private float m = 0.0F;
  private ColorStateList n = ColorStateList.valueOf(-16777216);
  private ImageView.ScaleType o = ImageView.ScaleType.FIT_CENTER;

  private a(Bitmap paramBitmap)
  {
    this.f = paramBitmap.getWidth();
    this.g = paramBitmap.getHeight();
    this.c.set(0.0F, 0.0F, this.f, this.g);
    this.d = new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    this.d.setLocalMatrix(this.j);
    this.e = new Paint();
    this.e.setStyle(Paint.Style.FILL);
    this.e.setAntiAlias(true);
    this.e.setShader(this.d);
    this.i = new Paint();
    this.i.setStyle(Paint.Style.STROKE);
    this.i.setAntiAlias(true);
    this.i.setColor(this.n.getColorForState(getState(), -16777216));
    this.i.setStrokeWidth(this.m);
  }

  public static Drawable a(Drawable paramDrawable)
  {
    if ((paramDrawable == null) || ((paramDrawable instanceof a)));
    while (true)
    {
      return paramDrawable;
      if (!(paramDrawable instanceof LayerDrawable))
        break;
      paramDrawable = (LayerDrawable)paramDrawable;
      int i1 = paramDrawable.getNumberOfLayers();
      for (int i2 = 0; i2 < i1; i2++)
      {
        Drawable localDrawable = paramDrawable.getDrawable(i2);
        paramDrawable.setDrawableByLayerId(paramDrawable.getId(i2), a(localDrawable));
      }
    }
    Bitmap localBitmap = b(paramDrawable);
    if (localBitmap != null)
      return new a(localBitmap);
    Log.w("RoundedDrawable", "Failed to create bitmap from drawable!");
    return paramDrawable;
  }

  public static a a(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
      return new a(paramBitmap);
    return null;
  }

  private void a()
  {
    float f1 = 0.0F;
    switch (b.a[this.o.ordinal()])
    {
    case 4:
    default:
      this.h.set(this.c);
      this.j.setRectToRect(this.c, this.a, Matrix.ScaleToFit.CENTER);
      this.j.mapRect(this.h);
      this.h.inset(this.m / 2.0F, this.m / 2.0F);
      this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
    case 1:
    case 2:
    case 3:
    case 5:
    case 6:
    case 7:
    }
    while (true)
    {
      this.b.set(this.h);
      this.d.setLocalMatrix(this.j);
      return;
      this.h.set(this.a);
      this.h.inset(this.m / 2.0F, this.m / 2.0F);
      this.j.set(null);
      this.j.setTranslate((int)(0.5F + 0.5F * (this.h.width() - this.f)), (int)(0.5F + 0.5F * (this.h.height() - this.g)));
      continue;
      this.h.set(this.a);
      this.h.inset(this.m / 2.0F, this.m / 2.0F);
      this.j.set(null);
      float f5;
      float f6;
      if (this.f * this.h.height() > this.h.width() * this.g)
      {
        f5 = this.h.height() / this.g;
        f6 = 0.5F * (this.h.width() - f5 * this.f);
      }
      while (true)
      {
        this.j.setScale(f5, f5);
        this.j.postTranslate((int)(f6 + 0.5F) + this.m, (int)(f1 + 0.5F) + this.m);
        break;
        f5 = this.h.width() / this.f;
        f1 = 0.5F * (this.h.height() - f5 * this.g);
        f6 = 0.0F;
      }
      this.j.set(null);
      float f2;
      if ((this.f <= this.a.width()) && (this.g <= this.a.height()))
        f2 = 1.0F;
      while (true)
      {
        float f3 = (int)(0.5F + 0.5F * (this.a.width() - f2 * this.f));
        float f4 = (int)(0.5F + 0.5F * (this.a.height() - f2 * this.g));
        this.j.setScale(f2, f2);
        this.j.postTranslate(f3, f4);
        this.h.set(this.c);
        this.j.mapRect(this.h);
        this.h.inset(this.m / 2.0F, this.m / 2.0F);
        this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
        break;
        f2 = Math.min(this.a.width() / this.f, this.a.height() / this.g);
      }
      this.h.set(this.c);
      this.j.setRectToRect(this.c, this.a, Matrix.ScaleToFit.END);
      this.j.mapRect(this.h);
      this.h.inset(this.m / 2.0F, this.m / 2.0F);
      this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
      continue;
      this.h.set(this.c);
      this.j.setRectToRect(this.c, this.a, Matrix.ScaleToFit.START);
      this.j.mapRect(this.h);
      this.h.inset(this.m / 2.0F, this.m / 2.0F);
      this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
      continue;
      this.h.set(this.a);
      this.h.inset(this.m / 2.0F, this.m / 2.0F);
      this.j.set(null);
      this.j.setRectToRect(this.c, this.h, Matrix.ScaleToFit.FILL);
    }
  }

  private static Bitmap b(Drawable paramDrawable)
  {
    if ((paramDrawable instanceof BitmapDrawable))
      return ((BitmapDrawable)paramDrawable).getBitmap();
    int i1 = Math.max(paramDrawable.getIntrinsicWidth(), 1);
    int i2 = Math.max(paramDrawable.getIntrinsicHeight(), 1);
    try
    {
      Bitmap localBitmap = Bitmap.createBitmap(i1, i2, Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap);
      paramDrawable.setBounds(0, 0, localCanvas.getWidth(), localCanvas.getHeight());
      paramDrawable.draw(localCanvas);
      return localBitmap;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public final a a(float paramFloat)
  {
    this.k = paramFloat;
    return this;
  }

  public final a a(ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null);
    while (true)
    {
      this.n = paramColorStateList;
      this.i.setColor(this.n.getColorForState(getState(), -16777216));
      return this;
      paramColorStateList = ColorStateList.valueOf(0);
    }
  }

  public final a a(ImageView.ScaleType paramScaleType)
  {
    if (paramScaleType == null)
      paramScaleType = ImageView.ScaleType.FIT_CENTER;
    if (this.o != paramScaleType)
    {
      this.o = paramScaleType;
      a();
    }
    return this;
  }

  public final a a(boolean paramBoolean)
  {
    this.l = paramBoolean;
    return this;
  }

  public final a b(float paramFloat)
  {
    this.m = paramFloat;
    this.i.setStrokeWidth(this.m);
    return this;
  }

  public final void draw(Canvas paramCanvas)
  {
    if (this.l)
    {
      if (this.m > 0.0F)
      {
        paramCanvas.drawOval(this.b, this.e);
        paramCanvas.drawOval(this.h, this.i);
        return;
      }
      paramCanvas.drawOval(this.b, this.e);
      return;
    }
    if (this.m > 0.0F)
    {
      paramCanvas.drawRoundRect(this.b, Math.max(this.k, 0.0F), Math.max(this.k, 0.0F), this.e);
      paramCanvas.drawRoundRect(this.h, this.k, this.k, this.i);
      return;
    }
    paramCanvas.drawRoundRect(this.b, this.k, this.k, this.e);
  }

  public final int getIntrinsicHeight()
  {
    return this.g;
  }

  public final int getIntrinsicWidth()
  {
    return this.f;
  }

  public final int getOpacity()
  {
    return -3;
  }

  public final boolean isStateful()
  {
    return this.n.isStateful();
  }

  protected final void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    this.a.set(paramRect);
    a();
  }

  protected final boolean onStateChange(int[] paramArrayOfInt)
  {
    int i1 = this.n.getColorForState(paramArrayOfInt, 0);
    if (this.i.getColor() != i1)
    {
      this.i.setColor(i1);
      return true;
    }
    return super.onStateChange(paramArrayOfInt);
  }

  public final void setAlpha(int paramInt)
  {
    this.e.setAlpha(paramInt);
    invalidateSelf();
  }

  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    this.e.setColorFilter(paramColorFilter);
    invalidateSelf();
  }

  public final void setDither(boolean paramBoolean)
  {
    this.e.setDither(paramBoolean);
    invalidateSelf();
  }

  public final void setFilterBitmap(boolean paramBoolean)
  {
    this.e.setFilterBitmap(paramBoolean);
    invalidateSelf();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.makeramen.a
 * JD-Core Version:    0.6.0
 */