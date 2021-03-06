package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.support.v4.view.animation.FastOutSlowInInterpolator;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;

class MaterialProgressDrawable extends Drawable
  implements Animatable
{
  private static final int ANIMATION_DURATION = 1332;
  private static final int ARROW_HEIGHT = 5;
  private static final int ARROW_HEIGHT_LARGE = 6;
  private static final float ARROW_OFFSET_ANGLE = 5.0F;
  private static final int ARROW_WIDTH = 10;
  private static final int ARROW_WIDTH_LARGE = 12;
  private static final float CENTER_RADIUS = 8.75F;
  private static final float CENTER_RADIUS_LARGE = 12.5F;
  private static final int CIRCLE_DIAMETER = 40;
  private static final int CIRCLE_DIAMETER_LARGE = 56;
  private static final float COLOR_START_DELAY_OFFSET = 0.75F;
  static final int DEFAULT = 1;
  private static final float END_TRIM_START_DELAY_OFFSET = 0.5F;
  private static final float FULL_ROTATION = 1080.0F;
  static final int LARGE = 0;
  private static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
  private static final Interpolator MATERIAL_INTERPOLATOR = new FastOutSlowInInterpolator();
  private static final float MAX_PROGRESS_ARC = 0.8F;
  private static final float NUM_POINTS = 5.0F;
  private static final float START_TRIM_DURATION_OFFSET = 0.5F;
  private static final float STROKE_WIDTH = 2.5F;
  private static final float STROKE_WIDTH_LARGE = 3.0F;
  private final int[] COLORS = { -16777216 };
  private Animation mAnimation;
  private final ArrayList<Animation> mAnimators = new ArrayList();
  private final Drawable.Callback mCallback = new MaterialProgressDrawable.3(this);
  boolean mFinishing;
  private double mHeight;
  private View mParent;
  private Resources mResources;
  private final MaterialProgressDrawable.Ring mRing;
  private float mRotation;
  private float mRotationCount;
  private double mWidth;

  public MaterialProgressDrawable(Context paramContext, View paramView)
  {
    this.mParent = paramView;
    this.mResources = paramContext.getResources();
    this.mRing = new MaterialProgressDrawable.Ring(this.mCallback);
    this.mRing.setColors(this.COLORS);
    updateSizes(1);
    setupAnimators();
  }

  private void applyFinishTranslation(float paramFloat, MaterialProgressDrawable.Ring paramRing)
  {
    updateRingColor(paramFloat, paramRing);
    float f1 = (float)(1.0D + Math.floor(paramRing.getStartingRotation() / 0.8F));
    float f2 = getMinProgressArc(paramRing);
    paramRing.setStartTrim(paramRing.getStartingStartTrim() + paramFloat * (paramRing.getStartingEndTrim() - f2 - paramRing.getStartingStartTrim()));
    paramRing.setEndTrim(paramRing.getStartingEndTrim());
    paramRing.setRotation(paramRing.getStartingRotation() + paramFloat * (f1 - paramRing.getStartingRotation()));
  }

  private int evaluateColorChange(float paramFloat, int paramInt1, int paramInt2)
  {
    int i = Integer.valueOf(paramInt1).intValue();
    int j = i >>> 24;
    int k = 0xFF & i >> 16;
    int m = 0xFF & i >> 8;
    int n = i & 0xFF;
    int i1 = Integer.valueOf(paramInt2).intValue();
    int i2 = i1 >>> 24;
    int i3 = 0xFF & i1 >> 16;
    int i4 = 0xFF & i1 >> 8;
    int i5 = i1 & 0xFF;
    return j + (int)(paramFloat * (i2 - j)) << 24 | k + (int)(paramFloat * (i3 - k)) << 16 | m + (int)(paramFloat * (i4 - m)) << 8 | n + (int)(paramFloat * (i5 - n));
  }

  private float getMinProgressArc(MaterialProgressDrawable.Ring paramRing)
  {
    return (float)Math.toRadians(paramRing.getStrokeWidth() / (6.283185307179586D * paramRing.getCenterRadius()));
  }

  private float getRotation()
  {
    return this.mRotation;
  }

  private void setSizeParameters(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, float paramFloat1, float paramFloat2)
  {
    MaterialProgressDrawable.Ring localRing = this.mRing;
    float f = this.mResources.getDisplayMetrics().density;
    this.mWidth = (paramDouble1 * f);
    this.mHeight = (paramDouble2 * f);
    localRing.setStrokeWidth(f * (float)paramDouble4);
    localRing.setCenterRadius(paramDouble3 * f);
    localRing.setColorIndex(0);
    localRing.setArrowDimensions(paramFloat1 * f, f * paramFloat2);
    localRing.setInsets((int)this.mWidth, (int)this.mHeight);
  }

  private void setupAnimators()
  {
    MaterialProgressDrawable.Ring localRing = this.mRing;
    MaterialProgressDrawable.1 local1 = new MaterialProgressDrawable.1(this, localRing);
    local1.setRepeatCount(-1);
    local1.setRepeatMode(1);
    local1.setInterpolator(LINEAR_INTERPOLATOR);
    local1.setAnimationListener(new MaterialProgressDrawable.2(this, localRing));
    this.mAnimation = local1;
  }

  private void updateRingColor(float paramFloat, MaterialProgressDrawable.Ring paramRing)
  {
    if (paramFloat > 0.75F)
      paramRing.setColor(evaluateColorChange((paramFloat - 0.75F) / 0.25F, paramRing.getStartingColor(), paramRing.getNextColor()));
  }

  public void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    int i = paramCanvas.save();
    paramCanvas.rotate(this.mRotation, localRect.exactCenterX(), localRect.exactCenterY());
    this.mRing.draw(paramCanvas, localRect);
    paramCanvas.restoreToCount(i);
  }

  public int getAlpha()
  {
    return this.mRing.getAlpha();
  }

  public int getIntrinsicHeight()
  {
    return (int)this.mHeight;
  }

  public int getIntrinsicWidth()
  {
    return (int)this.mWidth;
  }

  public int getOpacity()
  {
    return -3;
  }

  public boolean isRunning()
  {
    ArrayList localArrayList = this.mAnimators;
    int i = localArrayList.size();
    for (int j = 0; j < i; j++)
    {
      Animation localAnimation = (Animation)localArrayList.get(j);
      if ((localAnimation.hasStarted()) && (!localAnimation.hasEnded()))
        return true;
    }
    return false;
  }

  public void setAlpha(int paramInt)
  {
    this.mRing.setAlpha(paramInt);
  }

  public void setArrowScale(float paramFloat)
  {
    this.mRing.setArrowScale(paramFloat);
  }

  public void setBackgroundColor(int paramInt)
  {
    this.mRing.setBackgroundColor(paramInt);
  }

  public void setColorFilter(ColorFilter paramColorFilter)
  {
    this.mRing.setColorFilter(paramColorFilter);
  }

  public void setColorSchemeColors(int[] paramArrayOfInt)
  {
    this.mRing.setColors(paramArrayOfInt);
    this.mRing.setColorIndex(0);
  }

  public void setProgressRotation(float paramFloat)
  {
    this.mRing.setRotation(paramFloat);
  }

  void setRotation(float paramFloat)
  {
    this.mRotation = paramFloat;
    invalidateSelf();
  }

  public void setStartEndTrim(float paramFloat1, float paramFloat2)
  {
    this.mRing.setStartTrim(paramFloat1);
    this.mRing.setEndTrim(paramFloat2);
  }

  public void showArrow(boolean paramBoolean)
  {
    this.mRing.setShowArrow(paramBoolean);
  }

  public void start()
  {
    this.mAnimation.reset();
    this.mRing.storeOriginals();
    if (this.mRing.getEndTrim() != this.mRing.getStartTrim())
    {
      this.mFinishing = true;
      this.mAnimation.setDuration(666L);
      this.mParent.startAnimation(this.mAnimation);
      return;
    }
    this.mRing.setColorIndex(0);
    this.mRing.resetOriginals();
    this.mAnimation.setDuration(1332L);
    this.mParent.startAnimation(this.mAnimation);
  }

  public void stop()
  {
    this.mParent.clearAnimation();
    setRotation(0.0F);
    this.mRing.setShowArrow(false);
    this.mRing.setColorIndex(0);
    this.mRing.resetOriginals();
  }

  public void updateSizes(@MaterialProgressDrawable.ProgressDrawableSize int paramInt)
  {
    if (paramInt == 0)
    {
      setSizeParameters(56.0D, 56.0D, 12.5D, 3.0D, 12.0F, 6.0F);
      return;
    }
    setSizeParameters(40.0D, 40.0D, 8.75D, 2.5D, 10.0F, 5.0F);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.MaterialProgressDrawable
 * JD-Core Version:    0.6.0
 */