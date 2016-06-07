package com.maxthon.main;

import android.content.Context;
import android.content.res.Resources;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Interpolator;
import com.maxthon.mge.R.bool;
import com.maxthon.mge.R.color;
import com.maxthon.mge.R.dimen;
import com.maxthon.mge.R.integer;
import com.maxthon.mge.R.string;

public class SmoothProgressDrawable$Builder
{
  private int[] mColors;
  private Interpolator mInterpolator;
  private boolean mMirrorMode;
  private boolean mReversed;
  private int mSectionsCount;
  private float mSpeed;
  private int mStrokeSeparatorLength;
  private float mStrokeWidth;

  public SmoothProgressDrawable$Builder(Context paramContext)
  {
    initValues(paramContext);
  }

  private void initValues(Context paramContext)
  {
    Resources localResources = paramContext.getResources();
    this.mInterpolator = new AccelerateInterpolator();
    this.mSectionsCount = localResources.getInteger(R.integer.spb_default_sections_count);
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = localResources.getColor(R.color.spb_default_color);
    this.mColors = arrayOfInt;
    this.mSpeed = Float.parseFloat(localResources.getString(R.string.spb_default_speed));
    this.mReversed = localResources.getBoolean(R.bool.spb_default_reversed);
    this.mStrokeSeparatorLength = localResources.getDimensionPixelSize(R.dimen.spb_default_stroke_separator_length);
    this.mStrokeWidth = localResources.getDimensionPixelOffset(R.dimen.spb_default_stroke_width);
  }

  public SmoothProgressDrawable build()
  {
    return new SmoothProgressDrawable(this.mInterpolator, this.mSectionsCount, this.mStrokeSeparatorLength, this.mColors, this.mStrokeWidth, this.mSpeed, this.mReversed, this.mMirrorMode, null);
  }

  public Builder color(int paramInt)
  {
    this.mColors = new int[] { paramInt };
    return this;
  }

  public Builder colors(int[] paramArrayOfInt)
  {
    if ((paramArrayOfInt == null) || (paramArrayOfInt.length == 0))
      throw new IllegalArgumentException("Your color array must not be empty");
    this.mColors = paramArrayOfInt;
    return this;
  }

  public Builder interpolator(Interpolator paramInterpolator)
  {
    if (paramInterpolator == null)
      throw new IllegalArgumentException("Interpolator can't be null");
    this.mInterpolator = paramInterpolator;
    return this;
  }

  public Builder mirrorMode(boolean paramBoolean)
  {
    this.mMirrorMode = paramBoolean;
    return this;
  }

  public Builder reversed(boolean paramBoolean)
  {
    this.mReversed = paramBoolean;
    return this;
  }

  public Builder sectionsCount(int paramInt)
  {
    if (paramInt <= 0)
      throw new IllegalArgumentException("SectionsCount must be > 0");
    this.mSectionsCount = paramInt;
    return this;
  }

  public Builder separatorLength(int paramInt)
  {
    if (paramInt < 0)
      throw new IllegalArgumentException("SeparatorLength must be >= 0");
    this.mStrokeSeparatorLength = paramInt;
    return this;
  }

  public Builder speed(float paramFloat)
  {
    if (paramFloat < 0.0F)
      throw new IllegalArgumentException("Speed must be >= 0");
    this.mSpeed = paramFloat;
    return this;
  }

  public Builder strokeWidth(float paramFloat)
  {
    if (paramFloat < 0.0F)
      throw new IllegalArgumentException("The width must be >= 0");
    this.mStrokeWidth = paramFloat;
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.main.SmoothProgressDrawable.Builder
 * JD-Core Version:    0.6.0
 */