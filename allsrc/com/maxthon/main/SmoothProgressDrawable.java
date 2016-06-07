package com.maxthon.main;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.animation.Interpolator;

public class SmoothProgressDrawable extends Drawable
  implements Animatable
{
  private static final long FRAME_DURATION = 16L;
  private static final float OFFSET_PER_FRAME = 0.01F;
  private Rect mBounds;
  private int[] mColors;
  private int mColorsIndex;
  private float mCurrentOffset;
  private Interpolator mInterpolator;
  private float mMaxOffset;
  private boolean mMirrorMode;
  private boolean mNewTurn;
  private Paint mPaint;
  private boolean mReversed;
  private boolean mRunning = false;
  private int mSectionsCount;
  private int mSeparatorLength;
  private float mSpeed;
  private final Runnable mUpdater = new SmoothProgressDrawable.1(this);

  private SmoothProgressDrawable(Interpolator paramInterpolator, int paramInt1, int paramInt2, int[] paramArrayOfInt, float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.mInterpolator = paramInterpolator;
    this.mSectionsCount = paramInt1;
    this.mSeparatorLength = paramInt2;
    this.mSpeed = paramFloat2;
    this.mReversed = paramBoolean1;
    this.mColors = paramArrayOfInt;
    this.mColorsIndex = 0;
    this.mMirrorMode = paramBoolean2;
    this.mMaxOffset = (1.0F / this.mSectionsCount);
    this.mPaint = new Paint();
    this.mPaint.setStrokeWidth(paramFloat1);
    this.mPaint.setStyle(Paint.Style.STROKE);
    this.mPaint.setDither(false);
    this.mPaint.setAntiAlias(false);
  }

  private int decrementColor(int paramInt)
  {
    int i = paramInt - 1;
    if (i < 0)
      i = -1 + this.mColors.length;
    return i;
  }

  private void drawLine(Canvas paramCanvas, int paramInt1, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4, int paramInt2)
  {
    this.mPaint.setColor(this.mColors[paramInt2]);
    if (!this.mMirrorMode)
      paramCanvas.drawLine(paramFloat1, paramFloat2, paramFloat3, paramFloat4, this.mPaint);
    while (true)
    {
      paramCanvas.save();
      return;
      if (this.mReversed)
      {
        paramCanvas.drawLine(paramFloat1 + paramInt1, paramFloat2, paramFloat3 + paramInt1, paramFloat4, this.mPaint);
        paramCanvas.drawLine(paramInt1 - paramFloat1, paramFloat2, paramInt1 - paramFloat3, paramFloat4, this.mPaint);
        continue;
      }
      paramCanvas.drawLine(paramFloat1, paramFloat2, paramFloat3, paramFloat4, this.mPaint);
      paramCanvas.drawLine((paramInt1 << 1) - paramFloat1, paramFloat2, (paramInt1 << 1) - paramFloat3, paramFloat4, this.mPaint);
    }
  }

  private void drawStrokes(Canvas paramCanvas)
  {
    int i = this.mBounds.width();
    if (this.mMirrorMode)
      i /= 2;
    int j = i + this.mSeparatorLength + this.mSectionsCount;
    int k = this.mBounds.centerY();
    float f1 = 1.0F / this.mSectionsCount;
    if (this.mNewTurn)
    {
      this.mColorsIndex = decrementColor(this.mColorsIndex);
      this.mNewTurn = false;
    }
    int m = this.mColorsIndex;
    int n = 0;
    float f2 = 0.0F;
    if (n > this.mSectionsCount)
      return;
    float f3 = f1 * n + this.mCurrentOffset;
    float f4 = Math.max(0.0F, f3 - f1);
    float f5 = (int)(Math.abs(this.mInterpolator.getInterpolation(f4) - this.mInterpolator.getInterpolation(Math.min(f3, 1.0F))) * j);
    float f6;
    label179: float f7;
    if (f5 + f4 < j)
    {
      f6 = Math.min(f5, this.mSeparatorLength);
      if (f5 <= f6)
        break label268;
      f7 = f5 - f6;
    }
    while (true)
    {
      float f8 = f2 + f7;
      if (f8 > f2)
        drawLine(paramCanvas, i, Math.min(i, f2), k, Math.min(i, f8), k, m);
      float f9 = f8 + f6;
      m = incrementColor(m);
      n++;
      f2 = f9;
      break;
      f6 = 0.0F;
      break label179;
      label268: f7 = 0.0F;
    }
  }

  private int incrementColor(int paramInt)
  {
    int i = paramInt + 1;
    if (i >= this.mColors.length)
      i = 0;
    return i;
  }

  public void draw(Canvas paramCanvas)
  {
    this.mBounds = getBounds();
    paramCanvas.clipRect(this.mBounds);
    int i = this.mBounds.width();
    if (this.mReversed)
    {
      paramCanvas.translate(i, 0.0F);
      paramCanvas.scale(-1.0F, 1.0F);
    }
    drawStrokes(paramCanvas);
  }

  public int getOpacity()
  {
    return -2;
  }

  public boolean isRunning()
  {
    return this.mRunning;
  }

  public void scheduleSelf(Runnable paramRunnable, long paramLong)
  {
    this.mRunning = true;
    super.scheduleSelf(paramRunnable, paramLong);
  }

  public void setAlpha(int paramInt)
  {
    this.mPaint.setAlpha(paramInt);
  }

  public void setColor(int paramInt)
  {
    setColors(new int[] { paramInt });
  }

  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.mPaint.setColorFilter(paramColorFilter);
  }

  public void setColors(int[] paramArrayOfInt)
  {
    if ((paramArrayOfInt == null) || (paramArrayOfInt.length == 0))
      throw new IllegalArgumentException("Colors cannot be null or empty");
    this.mColorsIndex = 0;
    this.mColors = paramArrayOfInt;
    invalidateSelf();
  }

  public void setInterpolator(Interpolator paramInterpolator)
  {
    if (paramInterpolator == null)
      throw new IllegalArgumentException("Interpolator cannot be null");
    this.mInterpolator = paramInterpolator;
    invalidateSelf();
  }

  public void setMirrorMode(boolean paramBoolean)
  {
    if (this.mMirrorMode == paramBoolean)
      return;
    this.mMirrorMode = paramBoolean;
    invalidateSelf();
  }

  public void setReversed(boolean paramBoolean)
  {
    if (this.mReversed == paramBoolean)
      return;
    this.mReversed = paramBoolean;
    invalidateSelf();
  }

  public void setSectionsCount(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("SectionsCount must be > 0");
    this.mSectionsCount = paramInt;
    this.mMaxOffset = (1.0F / this.mSectionsCount);
    this.mCurrentOffset %= this.mMaxOffset;
    invalidateSelf();
  }

  public void setSeparatorLength(int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("SeparatorLength must be >= 0");
    this.mSeparatorLength = paramInt;
    invalidateSelf();
  }

  public void setSpeed(float paramFloat)
  {
    if (paramFloat < 0.0F)
      throw new IllegalArgumentException("Speed must be >= 0");
    this.mSpeed = paramFloat;
    invalidateSelf();
  }

  public void setStrokeWidth(float paramFloat)
  {
    if (paramFloat < 0.0F)
      throw new IllegalArgumentException("The strokeWidth must be >= 0");
    this.mPaint.setStrokeWidth(paramFloat);
    invalidateSelf();
  }

  public void start()
  {
    if (isRunning())
      return;
    scheduleSelf(this.mUpdater, 16L + SystemClock.uptimeMillis());
    invalidateSelf();
  }

  public void stop()
  {
    if (!isRunning())
      return;
    this.mRunning = false;
    unscheduleSelf(this.mUpdater);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.main.SmoothProgressDrawable
 * JD-Core Version:    0.6.0
 */