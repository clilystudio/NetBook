package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.ArrayList;

public class SlidingPaneLayout extends ViewGroup
{
  private static final int DEFAULT_FADE_COLOR = -858993460;
  private static final int DEFAULT_OVERHANG_SIZE = 32;
  static final SlidingPaneLayout.SlidingPanelLayoutImpl IMPL;
  private static final int MIN_FLING_VELOCITY = 400;
  private static final String TAG = "SlidingPaneLayout";
  private boolean mCanSlide;
  private int mCoveredFadeColor;
  private final ViewDragHelper mDragHelper;
  private boolean mFirstLayout = true;
  private float mInitialMotionX;
  private float mInitialMotionY;
  private boolean mIsUnableToDrag;
  private final int mOverhangSize;
  private SlidingPaneLayout.PanelSlideListener mPanelSlideListener;
  private int mParallaxBy;
  private float mParallaxOffset;
  private final ArrayList<SlidingPaneLayout.DisableLayerRunnable> mPostedRunnables = new ArrayList();
  private boolean mPreservedOpenState;
  private Drawable mShadowDrawableLeft;
  private Drawable mShadowDrawableRight;
  private float mSlideOffset;
  private int mSlideRange;
  private View mSlideableView;
  private int mSliderFadeColor = -858993460;
  private final Rect mTmpRect = new Rect();

  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 17)
    {
      IMPL = new SlidingPaneLayout.SlidingPanelLayoutImplJBMR1();
      return;
    }
    if (i >= 16)
    {
      IMPL = new SlidingPaneLayout.SlidingPanelLayoutImplJB();
      return;
    }
    IMPL = new SlidingPaneLayout.SlidingPanelLayoutImplBase();
  }

  public SlidingPaneLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public SlidingPaneLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public SlidingPaneLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    float f = paramContext.getResources().getDisplayMetrics().density;
    this.mOverhangSize = (int)(0.5F + 32.0F * f);
    ViewConfiguration.get(paramContext);
    setWillNotDraw(false);
    ViewCompat.setAccessibilityDelegate(this, new SlidingPaneLayout.AccessibilityDelegate(this));
    ViewCompat.setImportantForAccessibility(this, 1);
    this.mDragHelper = ViewDragHelper.create(this, 0.5F, new SlidingPaneLayout.DragHelperCallback(this, null));
    this.mDragHelper.setMinVelocity(f * 400.0F);
  }

  private boolean closePane(View paramView, int paramInt)
  {
    int i;
    if (!this.mFirstLayout)
    {
      boolean bool = smoothSlideTo(0.0F, paramInt);
      i = 0;
      if (!bool);
    }
    else
    {
      this.mPreservedOpenState = false;
      i = 1;
    }
    return i;
  }

  private void dimChildView(View paramView, float paramFloat, int paramInt)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    if ((paramFloat > 0.0F) && (paramInt != 0))
    {
      int i = (int)(paramFloat * ((0xFF000000 & paramInt) >>> 24)) << 24 | 0xFFFFFF & paramInt;
      if (localLayoutParams.dimPaint == null)
        localLayoutParams.dimPaint = new Paint();
      localLayoutParams.dimPaint.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_OVER));
      if (ViewCompat.getLayerType(paramView) != 2)
        ViewCompat.setLayerType(paramView, 2, localLayoutParams.dimPaint);
      invalidateChildRegion(paramView);
    }
    do
      return;
    while (ViewCompat.getLayerType(paramView) == 0);
    if (localLayoutParams.dimPaint != null)
      localLayoutParams.dimPaint.setColorFilter(null);
    SlidingPaneLayout.DisableLayerRunnable localDisableLayerRunnable = new SlidingPaneLayout.DisableLayerRunnable(this, paramView);
    this.mPostedRunnables.add(localDisableLayerRunnable);
    ViewCompat.postOnAnimation(this, localDisableLayerRunnable);
  }

  private void invalidateChildRegion(View paramView)
  {
    IMPL.invalidateChildRegion(this, paramView);
  }

  private boolean isLayoutRtlSupport()
  {
    return ViewCompat.getLayoutDirection(this) == 1;
  }

  private void onPanelDragged(int paramInt)
  {
    if (this.mSlideableView == null)
    {
      this.mSlideOffset = 0.0F;
      return;
    }
    boolean bool = isLayoutRtlSupport();
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)this.mSlideableView.getLayoutParams();
    int i = this.mSlideableView.getWidth();
    if (bool)
      paramInt = getWidth() - paramInt - i;
    int j;
    if (bool)
    {
      j = getPaddingRight();
      if (!bool)
        break label146;
    }
    label146: for (int k = localLayoutParams.rightMargin; ; k = localLayoutParams.leftMargin)
    {
      this.mSlideOffset = ((paramInt - (k + j)) / this.mSlideRange);
      if (this.mParallaxBy != 0)
        parallaxOtherViews(this.mSlideOffset);
      if (localLayoutParams.dimWhenOffset)
        dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
      dispatchOnPanelSlide(this.mSlideableView);
      return;
      j = getPaddingLeft();
      break;
    }
  }

  private boolean openPane(View paramView, int paramInt)
  {
    if ((this.mFirstLayout) || (smoothSlideTo(1.0F, paramInt)))
    {
      this.mPreservedOpenState = true;
      return true;
    }
    return false;
  }

  private void parallaxOtherViews(float paramFloat)
  {
    boolean bool = isLayoutRtlSupport();
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)this.mSlideableView.getLayoutParams();
    int i1;
    int i;
    label41: int k;
    label50: View localView;
    float f;
    if (localLayoutParams.dimWhenOffset)
      if (bool)
      {
        i1 = localLayoutParams.rightMargin;
        if (i1 > 0)
          break label169;
        i = 1;
        int j = getChildCount();
        k = 0;
        if (k >= j)
          return;
        localView = getChildAt(k);
        if (localView != this.mSlideableView)
        {
          int m = (int)((1.0F - this.mParallaxOffset) * this.mParallaxBy);
          this.mParallaxOffset = paramFloat;
          int n = m - (int)((1.0F - paramFloat) * this.mParallaxBy);
          if (bool)
            n = -n;
          localView.offsetLeftAndRight(n);
          if (i != 0)
          {
            if (!bool)
              break label175;
            f = this.mParallaxOffset - 1.0F;
          }
        }
      }
    while (true)
    {
      dimChildView(localView, f, this.mCoveredFadeColor);
      k++;
      break label50;
      i1 = localLayoutParams.leftMargin;
      break;
      label169: i = 0;
      break label41;
      label175: f = 1.0F - this.mParallaxOffset;
    }
  }

  private static boolean viewIsOpaque(View paramView)
  {
    if (ViewCompat.isOpaque(paramView));
    while (true)
    {
      return true;
      if (Build.VERSION.SDK_INT >= 18)
        return false;
      Drawable localDrawable = paramView.getBackground();
      if (localDrawable == null)
        break;
      if (localDrawable.getOpacity() != -1)
        return false;
    }
    return false;
  }

  protected boolean canScroll(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
  {
    int k;
    if ((paramView instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)paramView;
      int i = paramView.getScrollX();
      int j = paramView.getScrollY();
      k = -1 + localViewGroup.getChildCount();
      if (k >= 0)
      {
        View localView = localViewGroup.getChildAt(k);
        if ((paramInt2 + i >= localView.getLeft()) && (paramInt2 + i < localView.getRight()) && (paramInt3 + j >= localView.getTop()) && (paramInt3 + j < localView.getBottom()))
        {
          int m = paramInt2 + i - localView.getLeft();
          int n = paramInt3 + j - localView.getTop();
          if (!canScroll(localView, true, paramInt1, m, n));
        }
      }
    }
    while (true)
    {
      return true;
      k--;
      break;
      if (paramBoolean)
        if (!isLayoutRtlSupport())
          break label170;
      while (!ViewCompat.canScrollHorizontally(paramView, paramInt1))
      {
        return false;
        label170: paramInt1 = -paramInt1;
      }
    }
  }

  @Deprecated
  public boolean canSlide()
  {
    return this.mCanSlide;
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof SlidingPaneLayout.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }

  public boolean closePane()
  {
    return closePane(this.mSlideableView, 0);
  }

  public void computeScroll()
  {
    if (this.mDragHelper.continueSettling(true))
    {
      if (!this.mCanSlide)
        this.mDragHelper.abort();
    }
    else
      return;
    ViewCompat.postInvalidateOnAnimation(this);
  }

  void dispatchOnPanelClosed(View paramView)
  {
    if (this.mPanelSlideListener != null)
      this.mPanelSlideListener.onPanelClosed(paramView);
    sendAccessibilityEvent(32);
  }

  void dispatchOnPanelOpened(View paramView)
  {
    if (this.mPanelSlideListener != null)
      this.mPanelSlideListener.onPanelOpened(paramView);
    sendAccessibilityEvent(32);
  }

  void dispatchOnPanelSlide(View paramView)
  {
    if (this.mPanelSlideListener != null)
      this.mPanelSlideListener.onPanelSlide(paramView, this.mSlideOffset);
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    Drawable localDrawable;
    if (isLayoutRtlSupport())
    {
      localDrawable = this.mShadowDrawableRight;
      if (getChildCount() <= 1)
        break label48;
    }
    label48: for (View localView = getChildAt(1); ; localView = null)
    {
      if ((localView != null) && (localDrawable != null))
        break label53;
      return;
      localDrawable = this.mShadowDrawableLeft;
      break;
    }
    label53: int i = localView.getTop();
    int j = localView.getBottom();
    int k = localDrawable.getIntrinsicWidth();
    int n;
    int m;
    if (isLayoutRtlSupport())
    {
      n = localView.getRight();
      m = n + k;
    }
    while (true)
    {
      localDrawable.setBounds(n, i, m, j);
      localDrawable.draw(paramCanvas);
      return;
      m = localView.getLeft();
      n = m - k;
    }
  }

  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    int i = paramCanvas.save(2);
    boolean bool;
    if ((this.mCanSlide) && (!localLayoutParams.slideable) && (this.mSlideableView != null))
    {
      paramCanvas.getClipBounds(this.mTmpRect);
      if (isLayoutRtlSupport())
      {
        this.mTmpRect.left = Math.max(this.mTmpRect.left, this.mSlideableView.getRight());
        paramCanvas.clipRect(this.mTmpRect);
      }
    }
    else
    {
      if (Build.VERSION.SDK_INT >= 11)
        break label248;
      if ((!localLayoutParams.dimWhenOffset) || (this.mSlideOffset <= 0.0F))
        break label236;
      if (!paramView.isDrawingCacheEnabled())
        paramView.setDrawingCacheEnabled(true);
      Bitmap localBitmap = paramView.getDrawingCache();
      if (localBitmap == null)
        break label195;
      paramCanvas.drawBitmap(localBitmap, paramView.getLeft(), paramView.getTop(), localLayoutParams.dimPaint);
      bool = false;
    }
    while (true)
    {
      paramCanvas.restoreToCount(i);
      return bool;
      this.mTmpRect.right = Math.min(this.mTmpRect.right, this.mSlideableView.getLeft());
      break;
      label195: Log.e("SlidingPaneLayout", "drawChild: child view " + paramView + " returned null drawing cache");
      bool = super.drawChild(paramCanvas, paramView, paramLong);
      continue;
      label236: if (paramView.isDrawingCacheEnabled())
        paramView.setDrawingCacheEnabled(false);
      label248: bool = super.drawChild(paramCanvas, paramView, paramLong);
    }
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new SlidingPaneLayout.LayoutParams();
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new SlidingPaneLayout.LayoutParams(getContext(), paramAttributeSet);
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams))
      return new SlidingPaneLayout.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    return new SlidingPaneLayout.LayoutParams(paramLayoutParams);
  }

  public int getCoveredFadeColor()
  {
    return this.mCoveredFadeColor;
  }

  public int getParallaxDistance()
  {
    return this.mParallaxBy;
  }

  public int getSliderFadeColor()
  {
    return this.mSliderFadeColor;
  }

  boolean isDimmed(View paramView)
  {
    if (paramView == null)
      return false;
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)paramView.getLayoutParams();
    return (this.mCanSlide) && (localLayoutParams.dimWhenOffset) && (this.mSlideOffset > 0.0F);
  }

  public boolean isOpen()
  {
    return (!this.mCanSlide) || (this.mSlideOffset == 1.0F);
  }

  public boolean isSlideable()
  {
    return this.mCanSlide;
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.mFirstLayout = true;
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.mFirstLayout = true;
    int i = this.mPostedRunnables.size();
    for (int j = 0; j < i; j++)
      ((SlidingPaneLayout.DisableLayerRunnable)this.mPostedRunnables.get(j)).run();
    this.mPostedRunnables.clear();
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    if ((!this.mCanSlide) && (i == 0) && (getChildCount() > 1))
    {
      View localView = getChildAt(1);
      if (localView != null)
        if (this.mDragHelper.isViewUnder(localView, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY()))
          break label100;
    }
    boolean bool1;
    label100: for (boolean bool2 = true; ; bool2 = false)
    {
      this.mPreservedOpenState = bool2;
      if ((this.mCanSlide) && ((!this.mIsUnableToDrag) || (i == 0)))
        break;
      this.mDragHelper.cancel();
      bool1 = super.onInterceptTouchEvent(paramMotionEvent);
      return bool1;
    }
    if ((i == 3) || (i == 1))
    {
      this.mDragHelper.cancel();
      return false;
    }
    switch (i)
    {
    case 1:
    default:
    case 0:
    case 2:
    }
    label152: float f3;
    float f4;
    do
    {
      for (int j = 0; ; j = 1)
      {
        if (!this.mDragHelper.shouldInterceptTouchEvent(paramMotionEvent))
        {
          bool1 = false;
          if (j == 0)
            break;
        }
        return true;
        this.mIsUnableToDrag = false;
        float f5 = paramMotionEvent.getX();
        float f6 = paramMotionEvent.getY();
        this.mInitialMotionX = f5;
        this.mInitialMotionY = f6;
        if ((!this.mDragHelper.isViewUnder(this.mSlideableView, (int)f5, (int)f6)) || (!isDimmed(this.mSlideableView)))
          break label152;
      }
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      f3 = Math.abs(f1 - this.mInitialMotionX);
      f4 = Math.abs(f2 - this.mInitialMotionY);
    }
    while ((f3 <= this.mDragHelper.getTouchSlop()) || (f4 <= f3));
    this.mDragHelper.cancel();
    this.mIsUnableToDrag = true;
    return false;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool1 = isLayoutRtlSupport();
    int j;
    label36: int k;
    label47: int n;
    float f;
    label83: int i1;
    int i2;
    label96: SlidingPaneLayout.LayoutParams localLayoutParams;
    int i6;
    int i7;
    int i14;
    label203: boolean bool2;
    label227: int i9;
    int i11;
    int i10;
    label290: int i4;
    if (bool1)
    {
      this.mDragHelper.setEdgeTrackingEnabled(2);
      int i = paramInt3 - paramInt1;
      if (!bool1)
        break label348;
      j = getPaddingRight();
      if (!bool1)
        break label357;
      k = getPaddingLeft();
      int m = getPaddingTop();
      n = getChildCount();
      if (this.mFirstLayout)
      {
        if ((!this.mCanSlide) || (!this.mPreservedOpenState))
          break label366;
        f = 1.0F;
        this.mSlideOffset = f;
      }
      i1 = 0;
      i2 = j;
      if (i1 >= n)
        break label445;
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 8)
        break label557;
      localLayoutParams = (SlidingPaneLayout.LayoutParams)localView.getLayoutParams();
      i6 = localView.getMeasuredWidth();
      i7 = 0;
      if (!localLayoutParams.slideable)
        break label388;
      int i12 = localLayoutParams.leftMargin + localLayoutParams.rightMargin;
      int i13 = Math.min(j, i - k - this.mOverhangSize) - i2 - i12;
      this.mSlideRange = i13;
      if (!bool1)
        break label372;
      i14 = localLayoutParams.rightMargin;
      if (i13 + (i2 + i14) + i6 / 2 <= i - k)
        break label382;
      bool2 = true;
      localLayoutParams.dimWhenOffset = bool2;
      int i15 = (int)(i13 * this.mSlideOffset);
      i9 = i2 + (i14 + i15);
      this.mSlideOffset = (i15 / this.mSlideRange);
      if (!bool1)
        break label428;
      i11 = i7 + (i - i9);
      i10 = i11 - i6;
      localView.layout(i10, m, i11, m + localView.getMeasuredHeight());
      i4 = j + localView.getWidth();
    }
    for (int i5 = i9; ; i5 = i2)
    {
      i1++;
      j = i4;
      i2 = i5;
      break label96;
      this.mDragHelper.setEdgeTrackingEnabled(1);
      break;
      label348: j = getPaddingLeft();
      break label36;
      label357: k = getPaddingRight();
      break label47;
      label366: f = 0.0F;
      break label83;
      label372: i14 = localLayoutParams.leftMargin;
      break label203;
      label382: bool2 = false;
      break label227;
      label388: if ((this.mCanSlide) && (this.mParallaxBy != 0));
      for (int i8 = (int)((1.0F - this.mSlideOffset) * this.mParallaxBy); ; i8 = 0)
      {
        i7 = i8;
        i9 = j;
        break;
        label428: i10 = i9 - i7;
        i11 = i10 + i6;
        break label290;
        label445: if (this.mFirstLayout)
        {
          if (!this.mCanSlide)
            break label520;
          if (this.mParallaxBy != 0)
            parallaxOtherViews(this.mSlideOffset);
          if (((SlidingPaneLayout.LayoutParams)this.mSlideableView.getLayoutParams()).dimWhenOffset)
            dimChildView(this.mSlideableView, this.mSlideOffset, this.mSliderFadeColor);
        }
        while (true)
        {
          updateObscuredViewsVisibility(this.mSlideableView);
          this.mFirstLayout = false;
          return;
          label520: for (int i3 = 0; i3 < n; i3++)
            dimChildView(getChildAt(i3), 0.0F, this.mSliderFadeColor);
        }
      }
      label557: i4 = j;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt1);
    int k = View.MeasureSpec.getMode(paramInt2);
    int m = View.MeasureSpec.getSize(paramInt2);
    int n;
    int i1;
    int i2;
    if (i != 1073741824)
      if (isInEditMode())
      {
        if ((i == -2147483648) || (i != 0))
          break label1106;
        n = k;
        i1 = 300;
        i2 = m;
      }
    while (true)
    {
      int i4;
      int i3;
      label94: boolean bool1;
      int i5;
      int i6;
      int i7;
      int i8;
      int i9;
      float f1;
      label151: View localView2;
      SlidingPaneLayout.LayoutParams localLayoutParams2;
      int i25;
      int i26;
      float f2;
      boolean bool4;
      switch (n)
      {
      default:
        i4 = 0;
        i3 = -1;
        bool1 = false;
        i5 = i1 - getPaddingLeft() - getPaddingRight();
        i6 = getChildCount();
        if (i6 > 2)
          Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        this.mSlideableView = null;
        i7 = 0;
        i8 = i5;
        i9 = i4;
        f1 = 0.0F;
        if (i7 < i6)
        {
          localView2 = getChildAt(i7);
          localLayoutParams2 = (SlidingPaneLayout.LayoutParams)localView2.getLayoutParams();
          if (localView2.getVisibility() != 8)
            break;
          localLayoutParams2.dimWhenOffset = false;
          i25 = i8;
          i26 = i9;
          f2 = f1;
          bool4 = bool1;
        }
      case 1073741824:
      case -2147483648:
      }
      while (true)
      {
        i7++;
        bool1 = bool4;
        i9 = i26;
        i8 = i25;
        f1 = f2;
        break label151;
        throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        if (k != 0)
          break label1106;
        if (isInEditMode())
        {
          if (k != 0)
            break label1106;
          n = -2147483648;
          i1 = j;
          i2 = 300;
          break;
        }
        throw new IllegalStateException("Height must not be UNSPECIFIED");
        i4 = i2 - getPaddingTop() - getPaddingBottom();
        i3 = i4;
        break label94;
        i3 = i2 - getPaddingTop() - getPaddingBottom();
        i4 = 0;
        break label94;
        if (localLayoutParams2.weight > 0.0F)
        {
          f1 += localLayoutParams2.weight;
          if (localLayoutParams2.width == 0);
        }
        else
        {
          int i19 = localLayoutParams2.leftMargin + localLayoutParams2.rightMargin;
          int i20;
          label391: int i21;
          label411: int i24;
          if (localLayoutParams2.width == -2)
          {
            i20 = View.MeasureSpec.makeMeasureSpec(i5 - i19, -2147483648);
            if (localLayoutParams2.height != -2)
              break label561;
            i21 = View.MeasureSpec.makeMeasureSpec(i3, -2147483648);
            localView2.measure(i20, i21);
            int i22 = localView2.getMeasuredWidth();
            int i23 = localView2.getMeasuredHeight();
            if ((n == -2147483648) && (i23 > i9))
              i9 = Math.min(i23, i3);
            i24 = i8 - i22;
            if (i24 >= 0)
              break label599;
          }
          label561: label599: for (boolean bool2 = true; ; bool2 = false)
          {
            localLayoutParams2.slideable = bool2;
            boolean bool3 = bool2 | bool1;
            if (localLayoutParams2.slideable)
              this.mSlideableView = localView2;
            i25 = i24;
            f2 = f1;
            bool4 = bool3;
            i26 = i9;
            break;
            if (localLayoutParams2.width == -1)
            {
              i20 = View.MeasureSpec.makeMeasureSpec(i5 - i19, 1073741824);
              break label391;
            }
            i20 = View.MeasureSpec.makeMeasureSpec(localLayoutParams2.width, 1073741824);
            break label391;
            if (localLayoutParams2.height == -1)
            {
              i21 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
              break label411;
            }
            i21 = View.MeasureSpec.makeMeasureSpec(localLayoutParams2.height, 1073741824);
            break label411;
          }
          if ((bool1) || (f1 > 0.0F))
          {
            int i10 = i5 - this.mOverhangSize;
            int i11 = 0;
            if (i11 < i6)
            {
              View localView1 = getChildAt(i11);
              SlidingPaneLayout.LayoutParams localLayoutParams1;
              int i12;
              label695: int i13;
              label703: int i18;
              if (localView1.getVisibility() != 8)
              {
                localLayoutParams1 = (SlidingPaneLayout.LayoutParams)localView1.getLayoutParams();
                if (localView1.getVisibility() != 8)
                {
                  if ((localLayoutParams1.width != 0) || (localLayoutParams1.weight <= 0.0F))
                    break label788;
                  i12 = 1;
                  if (i12 == 0)
                    break label794;
                  i13 = 0;
                  if ((!bool1) || (localView1 == this.mSlideableView))
                    break label858;
                  if ((localLayoutParams1.width < 0) && ((i13 > i10) || (localLayoutParams1.weight > 0.0F)))
                  {
                    if (i12 == 0)
                      break label842;
                    if (localLayoutParams1.height != -2)
                      break label804;
                    i18 = View.MeasureSpec.makeMeasureSpec(i3, -2147483648);
                    label767: localView1.measure(View.MeasureSpec.makeMeasureSpec(i10, 1073741824), i18);
                  }
                }
              }
              while (true)
              {
                i11++;
                break;
                label788: i12 = 0;
                break label695;
                label794: i13 = localView1.getMeasuredWidth();
                break label703;
                label804: if (localLayoutParams1.height == -1)
                {
                  i18 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
                  break label767;
                }
                i18 = View.MeasureSpec.makeMeasureSpec(localLayoutParams1.height, 1073741824);
                break label767;
                label842: i18 = View.MeasureSpec.makeMeasureSpec(localView1.getMeasuredHeight(), 1073741824);
                break label767;
                label858: if (localLayoutParams1.weight <= 0.0F)
                  continue;
                int i14;
                if (localLayoutParams1.width == 0)
                  if (localLayoutParams1.height == -2)
                    i14 = View.MeasureSpec.makeMeasureSpec(i3, -2147483648);
                while (true)
                {
                  if (!bool1)
                    break label1000;
                  int i16 = i5 - (localLayoutParams1.leftMargin + localLayoutParams1.rightMargin);
                  int i17 = View.MeasureSpec.makeMeasureSpec(i16, 1073741824);
                  if (i13 == i16)
                    break;
                  localView1.measure(i17, i14);
                  break;
                  if (localLayoutParams1.height == -1)
                  {
                    i14 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
                    continue;
                  }
                  i14 = View.MeasureSpec.makeMeasureSpec(localLayoutParams1.height, 1073741824);
                  continue;
                  i14 = View.MeasureSpec.makeMeasureSpec(localView1.getMeasuredHeight(), 1073741824);
                }
                label1000: int i15 = Math.max(0, i8);
                localView1.measure(View.MeasureSpec.makeMeasureSpec(i13 + (int)(localLayoutParams1.weight * i15 / f1), 1073741824), i14);
              }
            }
          }
          setMeasuredDimension(i1, i9 + getPaddingTop() + getPaddingBottom());
          this.mCanSlide = bool1;
          if ((this.mDragHelper.getViewDragState() != 0) && (!bool1))
            this.mDragHelper.abort();
          return;
        }
        i25 = i8;
        i26 = i9;
        f2 = f1;
        bool4 = bool1;
      }
      label1106: n = k;
      i1 = j;
      i2 = m;
    }
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    SlidingPaneLayout.SavedState localSavedState = (SlidingPaneLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (localSavedState.isOpen)
      openPane();
    while (true)
    {
      this.mPreservedOpenState = localSavedState.isOpen;
      return;
      closePane();
    }
  }

  protected Parcelable onSaveInstanceState()
  {
    SlidingPaneLayout.SavedState localSavedState = new SlidingPaneLayout.SavedState(super.onSaveInstanceState());
    if (isSlideable());
    for (boolean bool = isOpen(); ; bool = this.mPreservedOpenState)
    {
      localSavedState.isOpen = bool;
      return localSavedState;
    }
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3)
      this.mFirstLayout = true;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.mCanSlide)
      return super.onTouchEvent(paramMotionEvent);
    this.mDragHelper.processTouchEvent(paramMotionEvent);
    switch (0xFF & paramMotionEvent.getAction())
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return true;
      float f5 = paramMotionEvent.getX();
      float f6 = paramMotionEvent.getY();
      this.mInitialMotionX = f5;
      this.mInitialMotionY = f6;
      continue;
      if (!isDimmed(this.mSlideableView))
        continue;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      float f3 = f1 - this.mInitialMotionX;
      float f4 = f2 - this.mInitialMotionY;
      int i = this.mDragHelper.getTouchSlop();
      if ((f3 * f3 + f4 * f4 >= i * i) || (!this.mDragHelper.isViewUnder(this.mSlideableView, (int)f1, (int)f2)))
        continue;
      closePane(this.mSlideableView, 0);
    }
  }

  public boolean openPane()
  {
    return openPane(this.mSlideableView, 0);
  }

  public void requestChildFocus(View paramView1, View paramView2)
  {
    super.requestChildFocus(paramView1, paramView2);
    if ((!isInTouchMode()) && (!this.mCanSlide))
      if (paramView1 != this.mSlideableView)
        break label36;
    label36: for (boolean bool = true; ; bool = false)
    {
      this.mPreservedOpenState = bool;
      return;
    }
  }

  void setAllChildrenVisible()
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      if (localView.getVisibility() != 4)
        continue;
      localView.setVisibility(0);
    }
  }

  public void setCoveredFadeColor(int paramInt)
  {
    this.mCoveredFadeColor = paramInt;
  }

  public void setPanelSlideListener(SlidingPaneLayout.PanelSlideListener paramPanelSlideListener)
  {
    this.mPanelSlideListener = paramPanelSlideListener;
  }

  public void setParallaxDistance(int paramInt)
  {
    this.mParallaxBy = paramInt;
    requestLayout();
  }

  @Deprecated
  public void setShadowDrawable(Drawable paramDrawable)
  {
    setShadowDrawableLeft(paramDrawable);
  }

  public void setShadowDrawableLeft(Drawable paramDrawable)
  {
    this.mShadowDrawableLeft = paramDrawable;
  }

  public void setShadowDrawableRight(Drawable paramDrawable)
  {
    this.mShadowDrawableRight = paramDrawable;
  }

  @Deprecated
  public void setShadowResource(int paramInt)
  {
    setShadowDrawable(getResources().getDrawable(paramInt));
  }

  public void setShadowResourceLeft(int paramInt)
  {
    setShadowDrawableLeft(getResources().getDrawable(paramInt));
  }

  public void setShadowResourceRight(int paramInt)
  {
    setShadowDrawableRight(getResources().getDrawable(paramInt));
  }

  public void setSliderFadeColor(int paramInt)
  {
    this.mSliderFadeColor = paramInt;
  }

  @Deprecated
  public void smoothSlideClosed()
  {
    closePane();
  }

  @Deprecated
  public void smoothSlideOpen()
  {
    openPane();
  }

  boolean smoothSlideTo(float paramFloat, int paramInt)
  {
    if (!this.mCanSlide)
      return false;
    boolean bool = isLayoutRtlSupport();
    SlidingPaneLayout.LayoutParams localLayoutParams = (SlidingPaneLayout.LayoutParams)this.mSlideableView.getLayoutParams();
    int j;
    int k;
    if (bool)
    {
      j = getPaddingRight() + localLayoutParams.rightMargin;
      k = this.mSlideableView.getWidth();
    }
    for (int i = (int)(getWidth() - (j + paramFloat * this.mSlideRange + k)); this.mDragHelper.smoothSlideViewTo(this.mSlideableView, i, this.mSlideableView.getTop()); i = (int)(getPaddingLeft() + localLayoutParams.leftMargin + paramFloat * this.mSlideRange))
    {
      setAllChildrenVisible();
      ViewCompat.postInvalidateOnAnimation(this);
      return true;
    }
    return false;
  }

  void updateObscuredViewsVisibility(View paramView)
  {
    boolean bool = isLayoutRtlSupport();
    int i;
    int j;
    label29: int i3;
    int i2;
    int i1;
    int n;
    label81: int i5;
    label90: View localView;
    int i6;
    label119: int i9;
    if (bool)
    {
      i = getWidth() - getPaddingRight();
      if (!bool)
        break label226;
      j = getPaddingLeft();
      int k = getPaddingTop();
      int m = getHeight() - getPaddingBottom();
      if ((paramView == null) || (!viewIsOpaque(paramView)))
        break label240;
      i3 = paramView.getLeft();
      i2 = paramView.getRight();
      i1 = paramView.getTop();
      n = paramView.getBottom();
      int i4 = getChildCount();
      i5 = 0;
      if (i5 >= i4)
        return;
      localView = getChildAt(i5);
      if (localView == paramView)
        return;
      if (!bool)
        break label255;
      i6 = j;
      int i7 = Math.max(i6, localView.getLeft());
      int i8 = Math.max(k, localView.getTop());
      if (!bool)
        break label261;
      i9 = i;
      label150: int i10 = Math.min(i9, localView.getRight());
      int i11 = Math.min(m, localView.getBottom());
      if ((i7 < i3) || (i8 < i1) || (i10 > i2) || (i11 > n))
        break label268;
    }
    label261: label268: for (int i12 = 4; ; i12 = 0)
    {
      localView.setVisibility(i12);
      i5++;
      break label90;
      i = getPaddingLeft();
      break;
      label226: j = getWidth() - getPaddingRight();
      break label29;
      label240: n = 0;
      i1 = 0;
      i2 = 0;
      i3 = 0;
      break label81;
      label255: i6 = i;
      break label119;
      i9 = j;
      break label150;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.SlidingPaneLayout
 * JD-Core Version:    0.6.0
 */