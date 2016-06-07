package com.mob.tools.gui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.support.design.widget.K;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.widget.ImageView;
import com.mob.tools.e;
import com.mob.tools.log.d;

public class ScaledImageView extends ImageView
  implements View.OnTouchListener
{
  private Bitmap a;
  private float b;
  private float[] c;
  private int d;
  private K e;
  private Matrix f;
  private int g;
  private Matrix h;

  public ScaledImageView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public ScaledImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  public ScaledImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    this.d = ViewConfiguration.get(paramContext).getScaledTouchSlop();
    this.d *= this.d;
    setOnTouchListener(this);
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    try
    {
      switch (paramMotionEvent.getAction())
      {
      case 0:
        this.f = new Matrix();
        this.f.set(getImageMatrix());
        this.h = new Matrix();
        this.h.set(this.f);
        float[] arrayOfFloat12 = new float[2];
        arrayOfFloat12[0] = paramMotionEvent.getX(0);
        arrayOfFloat12[1] = paramMotionEvent.getY(0);
        this.c = arrayOfFloat12;
      case 1:
        for (this.g = 1; ; this.g = 0)
        {
          setImageMatrix(this.f);
          break;
          float f9 = paramMotionEvent.getX(0) - this.c[0];
          float f10 = paramMotionEvent.getY(0) - this.c[1];
          if ((this.g != 1) || (f9 * f9 + f10 * f10 > this.d))
            continue;
          performClick();
        }
      case 5:
      case 6:
      case 261:
      case 262:
      case 2:
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        e.a().w(localThrowable);
        break;
        float[] arrayOfFloat10 = new float[2];
        arrayOfFloat10[0] = paramMotionEvent.getX(0);
        arrayOfFloat10[1] = paramMotionEvent.getY(0);
        float[] arrayOfFloat11 = new float[2];
        arrayOfFloat11[0] = paramMotionEvent.getX(1);
        arrayOfFloat11[1] = paramMotionEvent.getY(1);
        float f7 = arrayOfFloat10[0] - arrayOfFloat11[0];
        float f8 = arrayOfFloat10[1] - arrayOfFloat11[1];
        this.b = (f7 * f7 + f8 * f8);
        this.g = 3;
        continue;
        float[] arrayOfFloat9 = new float[2];
        arrayOfFloat9[0] = paramMotionEvent.getX(1);
        arrayOfFloat9[1] = paramMotionEvent.getY(1);
        this.c = arrayOfFloat9;
        this.h.set(this.f);
        this.g = 2;
        continue;
        float[] arrayOfFloat7 = new float[2];
        arrayOfFloat7[0] = paramMotionEvent.getX(0);
        arrayOfFloat7[1] = paramMotionEvent.getY(0);
        float[] arrayOfFloat8 = new float[2];
        arrayOfFloat8[0] = paramMotionEvent.getX(1);
        arrayOfFloat8[1] = paramMotionEvent.getY(1);
        float f5 = arrayOfFloat7[0] - arrayOfFloat8[0];
        float f6 = arrayOfFloat7[1] - arrayOfFloat8[1];
        this.b = (f5 * f5 + f6 * f6);
        this.g = 3;
        continue;
        float[] arrayOfFloat6 = new float[2];
        arrayOfFloat6[0] = paramMotionEvent.getX(0);
        arrayOfFloat6[1] = paramMotionEvent.getY(0);
        this.c = arrayOfFloat6;
        this.h.set(this.f);
        this.g = 1;
        continue;
        if (this.g == 1)
        {
          float[] arrayOfFloat5 = new float[2];
          arrayOfFloat5[0] = paramMotionEvent.getX(0);
          arrayOfFloat5[1] = paramMotionEvent.getY(0);
          this.f.set(this.h);
          this.f.postTranslate(arrayOfFloat5[0] - this.c[0], arrayOfFloat5[1] - this.c[1]);
          continue;
        }
        if (this.g == 2)
        {
          float[] arrayOfFloat4 = new float[2];
          arrayOfFloat4[0] = paramMotionEvent.getX(1);
          arrayOfFloat4[1] = paramMotionEvent.getY(1);
          this.f.set(this.h);
          this.f.postTranslate(arrayOfFloat4[0] - this.c[0], arrayOfFloat4[1] - this.c[1]);
          continue;
        }
        if (this.g != 3)
          continue;
        float[] arrayOfFloat1 = new float[2];
        arrayOfFloat1[0] = paramMotionEvent.getX(0);
        arrayOfFloat1[1] = paramMotionEvent.getY(0);
        float[] arrayOfFloat2 = new float[2];
        arrayOfFloat2[0] = paramMotionEvent.getX(1);
        arrayOfFloat2[1] = paramMotionEvent.getY(1);
        float f1 = arrayOfFloat1[0] - arrayOfFloat2[0];
        float f2 = arrayOfFloat1[1] - arrayOfFloat2[1];
        float f3 = f1 * f1 + f2 * f2;
        this.f.set(this.h);
        float f4 = (float)Math.sqrt(f3 / this.b);
        float[] arrayOfFloat3 = new float[2];
        arrayOfFloat3[0] = ((arrayOfFloat1[0] + arrayOfFloat2[0]) / 2.0F);
        arrayOfFloat3[1] = ((arrayOfFloat1[1] + arrayOfFloat2[1]) / 2.0F);
        this.f.postScale(f4, f4, arrayOfFloat3[0], arrayOfFloat3[1]);
        continue;
        return false;
      }
    }
    return true;
  }

  public void setBitmap(Bitmap paramBitmap)
  {
    this.a = paramBitmap;
    setImageBitmap(paramBitmap);
    int[] arrayOfInt1 = new int[2];
    arrayOfInt1[0] = getWidth();
    arrayOfInt1[1] = getHeight();
    int[] arrayOfInt2 = new int[2];
    arrayOfInt2[0] = this.a.getWidth();
    arrayOfInt2[1] = this.a.getHeight();
    int[] arrayOfInt3 = new int[2];
    if (arrayOfInt2[0] / arrayOfInt2[1] > arrayOfInt1[0] / arrayOfInt1[1])
    {
      arrayOfInt3[0] = arrayOfInt1[0];
      arrayOfInt3[1] = (int)(0.5F + arrayOfInt2[1] * arrayOfInt1[0] / arrayOfInt2[0]);
    }
    while (true)
    {
      int[] arrayOfInt4 = new int[2];
      arrayOfInt4[0] = ((arrayOfInt1[0] - arrayOfInt3[0]) / 2);
      arrayOfInt4[1] = ((arrayOfInt1[1] - arrayOfInt3[1]) / 2);
      float[] arrayOfFloat = new float[2];
      arrayOfInt3[0] /= arrayOfInt2[0];
      arrayOfInt3[1] /= arrayOfInt2[1];
      this.f = new Matrix();
      this.f.set(getImageMatrix());
      this.f.postScale(arrayOfFloat[0], arrayOfFloat[1]);
      this.f.postTranslate(arrayOfInt4[0], arrayOfInt4[1]);
      setImageMatrix(this.f);
      return;
      arrayOfInt3[1] = arrayOfInt1[1];
      arrayOfInt3[0] = (int)(0.5F + arrayOfInt2[0] * arrayOfInt1[1] / arrayOfInt2[1]);
    }
  }

  public void setOnMatrixChangedListener$2dad7339(K paramK)
  {
    this.e = paramK;
    if (this.f != null)
      setImageMatrix(this.f);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.mob.tools.gui.ScaledImageView
 * JD-Core Version:    0.6.0
 */