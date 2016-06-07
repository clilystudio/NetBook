package com.androidquery.util;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import java.lang.ref.WeakReference;

public final class e extends BitmapDrawable
{
  private float a;
  private WeakReference<ImageView> b;
  private boolean c;
  private Matrix d;
  private int e;
  private float f;

  public e(Resources paramResources, Bitmap paramBitmap, ImageView paramImageView, float paramFloat1, float paramFloat2)
  {
    super(paramResources, paramBitmap);
    this.b = new WeakReference(paramImageView);
    this.a = paramFloat1;
    this.f = paramFloat2;
    paramImageView.setScaleType(ImageView.ScaleType.MATRIX);
    paramImageView.setImageMatrix(new Matrix());
    a(paramImageView, paramBitmap, false);
  }

  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    float f1 = this.a;
    if (this.a == 3.4028235E+38F)
      f1 = paramInt2 / paramInt1;
    return (int)(f1 * paramInt3);
  }

  private static int a(ImageView paramImageView)
  {
    ViewGroup.LayoutParams localLayoutParams = paramImageView.getLayoutParams();
    int i = 0;
    if (localLayoutParams != null)
      i = localLayoutParams.width;
    if (i <= 0)
      i = paramImageView.getWidth();
    if (i > 0)
      i = i - paramImageView.getPaddingLeft() - paramImageView.getPaddingRight();
    return i;
  }

  private void a(ImageView paramImageView, Bitmap paramBitmap, boolean paramBoolean)
  {
    int i = a(paramImageView);
    if (i <= 0);
    do
    {
      int j;
      ViewGroup.LayoutParams localLayoutParams;
      do
      {
        return;
        j = a(paramBitmap.getWidth(), paramBitmap.getHeight(), i) + paramImageView.getPaddingTop() + paramImageView.getPaddingBottom();
        localLayoutParams = paramImageView.getLayoutParams();
      }
      while (localLayoutParams == null);
      if (j == localLayoutParams.height)
        continue;
      localLayoutParams.height = j;
      paramImageView.setLayoutParams(localLayoutParams);
    }
    while (!paramBoolean);
    this.c = true;
  }

  public final void draw(Canvas paramCanvas)
  {
    WeakReference localWeakReference = this.b;
    ImageView localImageView = null;
    if (localWeakReference != null)
      localImageView = (ImageView)this.b.get();
    if ((this.a == 0.0F) || (localImageView == null))
    {
      super.draw(paramCanvas);
      return;
    }
    Bitmap localBitmap = getBitmap();
    int i = localBitmap.getWidth();
    int j;
    int k;
    int m;
    if ((this.d == null) || (i != this.e))
    {
      j = localBitmap.getHeight();
      k = a(localImageView);
      m = a(i, j, k);
      if ((i > 0) && (j > 0) && (k > 0) && (m > 0));
    }
    float f4;
    float f3;
    for (Matrix localMatrix = null; ; localMatrix = this.d)
    {
      if (localMatrix != null)
      {
        int n = localImageView.getPaddingTop() + localImageView.getPaddingBottom();
        int i1 = localImageView.getPaddingLeft() + localImageView.getPaddingRight();
        if ((n > 0) || (i1 > 0))
          paramCanvas.clipRect(0, 0, localImageView.getWidth() - i1, localImageView.getHeight() - n);
        paramCanvas.drawBitmap(localBitmap, localMatrix, getPaint());
      }
      if (this.c)
        break;
      a(localImageView, localBitmap, true);
      return;
      if ((this.d != null) && (i == this.e))
        continue;
      this.d = new Matrix();
      if (i * m < k * j)
        break label309;
      f1 = m / j;
      f4 = 0.5F * (k - f1 * i);
      f3 = 0.0F;
      this.d.setScale(f1, f1);
      this.d.postTranslate(f4, f3);
      this.e = i;
    }
    label309: float f1 = k / i;
    float f2;
    if (this.f != 3.4028235E+38F)
      f2 = (1.0F - this.f) / 2.0F;
    while (true)
    {
      f3 = f2 * (m - f1 * j);
      f4 = 0.0F;
      break;
      f2 = 0.25F + (1.5F - Math.max(1.0F, Math.min(1.5F, j / i))) / 2.0F;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.androidquery.util.e
 * JD-Core Version:    0.6.0
 */