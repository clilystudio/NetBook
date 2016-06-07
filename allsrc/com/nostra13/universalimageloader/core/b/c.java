package com.nostra13.universalimageloader.core.b;

import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Drawable;

public final class c extends Drawable
{
  private float a;
  private int b;
  private RectF c = new RectF();
  private RectF d;
  private BitmapShader e;
  private Paint f;

  public c(Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.e = new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    this.d = new RectF(paramInt2, paramInt2, paramBitmap.getWidth() - paramInt2, paramBitmap.getHeight() - paramInt2);
    this.f = new Paint();
    this.f.setAntiAlias(true);
    this.f.setShader(this.e);
  }

  public final void draw(Canvas paramCanvas)
  {
    paramCanvas.drawRoundRect(this.c, this.a, this.a, this.f);
  }

  public final int getOpacity()
  {
    return -3;
  }

  protected final void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    this.c.set(this.b, this.b, paramRect.width() - this.b, paramRect.height() - this.b);
    Matrix localMatrix = new Matrix();
    localMatrix.setRectToRect(this.d, this.c, Matrix.ScaleToFit.FILL);
    this.e.setLocalMatrix(localMatrix);
  }

  public final void setAlpha(int paramInt)
  {
    this.f.setAlpha(paramInt);
  }

  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    this.f.setColorFilter(paramColorFilter);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.nostra13.universalimageloader.core.b.c
 * JD-Core Version:    0.6.0
 */