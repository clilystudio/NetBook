package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.GravityCompat;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewGroupCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;

public class DrawerLayout extends ViewGroup
  implements DrawerLayoutImpl
{
  private static final boolean ALLOW_EDGE_LOCK = false;
  private static final boolean CAN_HIDE_DESCENDANTS = false;
  private static final boolean CHILDREN_DISALLOW_INTERCEPT = true;
  private static final int DEFAULT_SCRIM_COLOR = -1728053248;
  static final DrawerLayout.DrawerLayoutCompatImpl IMPL;
  private static final int[] LAYOUT_ATTRS;
  public static final int LOCK_MODE_LOCKED_CLOSED = 1;
  public static final int LOCK_MODE_LOCKED_OPEN = 2;
  public static final int LOCK_MODE_UNLOCKED = 0;
  private static final int MIN_DRAWER_MARGIN = 64;
  private static final int MIN_FLING_VELOCITY = 400;
  private static final int PEEK_DELAY = 160;
  public static final int STATE_DRAGGING = 1;
  public static final int STATE_IDLE = 0;
  public static final int STATE_SETTLING = 2;
  private static final String TAG = "DrawerLayout";
  private static final float TOUCH_SLOP_SENSITIVITY = 1.0F;
  private final DrawerLayout.ChildAccessibilityDelegate mChildAccessibilityDelegate = new DrawerLayout.ChildAccessibilityDelegate(this);
  private boolean mChildrenCanceledTouch;
  private boolean mDisallowInterceptRequested;
  private boolean mDrawStatusBarBackground;
  private int mDrawerState;
  private boolean mFirstLayout = true;
  private boolean mInLayout;
  private float mInitialMotionX;
  private float mInitialMotionY;
  private Object mLastInsets;
  private final DrawerLayout.ViewDragCallback mLeftCallback;
  private final ViewDragHelper mLeftDragger;
  private DrawerLayout.DrawerListener mListener;
  private int mLockModeLeft;
  private int mLockModeRight;
  private int mMinDrawerMargin;
  private final DrawerLayout.ViewDragCallback mRightCallback;
  private final ViewDragHelper mRightDragger;
  private int mScrimColor = -1728053248;
  private float mScrimOpacity;
  private Paint mScrimPaint = new Paint();
  private Drawable mShadowLeft;
  private Drawable mShadowRight;
  private Drawable mStatusBarBackground;
  private CharSequence mTitleLeft;
  private CharSequence mTitleRight;

  static
  {
    boolean bool = true;
    int[] arrayOfInt = new int[bool];
    arrayOfInt[0] = 16842931;
    LAYOUT_ATTRS = arrayOfInt;
    if (Build.VERSION.SDK_INT >= 19);
    while (true)
    {
      CAN_HIDE_DESCENDANTS = bool;
      if (Build.VERSION.SDK_INT < 21)
        break;
      IMPL = new DrawerLayout.DrawerLayoutCompatImplApi21();
      return;
      bool = false;
    }
    IMPL = new DrawerLayout.DrawerLayoutCompatImplBase();
  }

  public DrawerLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public DrawerLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setDescendantFocusability(262144);
    float f1 = getResources().getDisplayMetrics().density;
    this.mMinDrawerMargin = (int)(0.5F + 64.0F * f1);
    float f2 = f1 * 400.0F;
    this.mLeftCallback = new DrawerLayout.ViewDragCallback(this, 3);
    this.mRightCallback = new DrawerLayout.ViewDragCallback(this, 5);
    this.mLeftDragger = ViewDragHelper.create(this, 1.0F, this.mLeftCallback);
    this.mLeftDragger.setEdgeTrackingEnabled(1);
    this.mLeftDragger.setMinVelocity(f2);
    this.mLeftCallback.setDragger(this.mLeftDragger);
    this.mRightDragger = ViewDragHelper.create(this, 1.0F, this.mRightCallback);
    this.mRightDragger.setEdgeTrackingEnabled(2);
    this.mRightDragger.setMinVelocity(f2);
    this.mRightCallback.setDragger(this.mRightDragger);
    setFocusableInTouchMode(true);
    ViewCompat.setImportantForAccessibility(this, 1);
    ViewCompat.setAccessibilityDelegate(this, new DrawerLayout.AccessibilityDelegate(this));
    ViewGroupCompat.setMotionEventSplittingEnabled(this, false);
    if (ViewCompat.getFitsSystemWindows(this))
    {
      IMPL.configureApplyInsets(this);
      this.mStatusBarBackground = IMPL.getDefaultStatusBarBackground(paramContext);
    }
  }

  private View findVisibleDrawer()
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      if ((isDrawerView(localView)) && (isDrawerVisible(localView)))
        return localView;
    }
    return null;
  }

  static String gravityToString(int paramInt)
  {
    if ((paramInt & 0x3) == 3)
      return "LEFT";
    if ((paramInt & 0x5) == 5)
      return "RIGHT";
    return Integer.toHexString(paramInt);
  }

  private static boolean hasOpaqueBackground(View paramView)
  {
    Drawable localDrawable = paramView.getBackground();
    int i = 0;
    if (localDrawable != null)
    {
      int j = localDrawable.getOpacity();
      i = 0;
      if (j == -1)
        i = 1;
    }
    return i;
  }

  private boolean hasPeekingDrawer()
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
      if (((DrawerLayout.LayoutParams)getChildAt(j).getLayoutParams()).isPeeking)
        return true;
    return false;
  }

  private boolean hasVisibleDrawer()
  {
    return findVisibleDrawer() != null;
  }

  private static boolean includeChildForAccessibility(View paramView)
  {
    return (ViewCompat.getImportantForAccessibility(paramView) != 4) && (ViewCompat.getImportantForAccessibility(paramView) != 2);
  }

  private void updateChildrenImportantForAccessibility(View paramView, boolean paramBoolean)
  {
    int i = getChildCount();
    int j = 0;
    if (j < i)
    {
      View localView = getChildAt(j);
      if (((!paramBoolean) && (!isDrawerView(localView))) || ((paramBoolean) && (localView == paramView)))
        ViewCompat.setImportantForAccessibility(localView, 1);
      while (true)
      {
        j++;
        break;
        ViewCompat.setImportantForAccessibility(localView, 4);
      }
    }
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    if ((findOpenDrawer() != null) || (isDrawerView(paramView)))
      ViewCompat.setImportantForAccessibility(paramView, 4);
    while (true)
    {
      if (!CAN_HIDE_DESCENDANTS)
        ViewCompat.setAccessibilityDelegate(paramView, this.mChildAccessibilityDelegate);
      return;
      ViewCompat.setImportantForAccessibility(paramView, 1);
    }
  }

  void cancelChildViewTouch()
  {
    int i = 0;
    if (!this.mChildrenCanceledTouch)
    {
      long l = SystemClock.uptimeMillis();
      MotionEvent localMotionEvent = MotionEvent.obtain(l, l, 3, 0.0F, 0.0F, 0);
      int j = getChildCount();
      while (i < j)
      {
        getChildAt(i).dispatchTouchEvent(localMotionEvent);
        i++;
      }
      localMotionEvent.recycle();
      this.mChildrenCanceledTouch = true;
    }
  }

  boolean checkDrawerViewAbsoluteGravity(View paramView, int paramInt)
  {
    return (paramInt & getDrawerViewAbsoluteGravity(paramView)) == paramInt;
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof DrawerLayout.LayoutParams)) && (super.checkLayoutParams(paramLayoutParams));
  }

  public void closeDrawer(int paramInt)
  {
    View localView = findDrawerWithGravity(paramInt);
    if (localView == null)
      throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(paramInt));
    closeDrawer(localView);
  }

  public void closeDrawer(View paramView)
  {
    if (!isDrawerView(paramView))
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    if (this.mFirstLayout)
    {
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
      localLayoutParams.onScreen = 0.0F;
      localLayoutParams.knownOpen = false;
    }
    while (true)
    {
      invalidate();
      return;
      if (checkDrawerViewAbsoluteGravity(paramView, 3))
      {
        this.mLeftDragger.smoothSlideViewTo(paramView, -paramView.getWidth(), paramView.getTop());
        continue;
      }
      this.mRightDragger.smoothSlideViewTo(paramView, getWidth(), paramView.getTop());
    }
  }

  public void closeDrawers()
  {
    closeDrawers(false);
  }

  void closeDrawers(boolean paramBoolean)
  {
    int i = getChildCount();
    int j = 0;
    boolean bool = false;
    if (j < i)
    {
      View localView = getChildAt(j);
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
      if ((isDrawerView(localView)) && ((!paramBoolean) || (localLayoutParams.isPeeking)))
      {
        int k = localView.getWidth();
        if (!checkDrawerViewAbsoluteGravity(localView, 3))
          break label104;
        bool |= this.mLeftDragger.smoothSlideViewTo(localView, -k, localView.getTop());
      }
      while (true)
      {
        localLayoutParams.isPeeking = false;
        j++;
        break;
        label104: bool |= this.mRightDragger.smoothSlideViewTo(localView, getWidth(), localView.getTop());
      }
    }
    this.mLeftCallback.removeCallbacks();
    this.mRightCallback.removeCallbacks();
    if (bool)
      invalidate();
  }

  public void computeScroll()
  {
    int i = getChildCount();
    float f = 0.0F;
    for (int j = 0; j < i; j++)
      f = Math.max(f, ((DrawerLayout.LayoutParams)getChildAt(j).getLayoutParams()).onScreen);
    this.mScrimOpacity = f;
    if ((this.mLeftDragger.continueSettling(true) | this.mRightDragger.continueSettling(true)))
      ViewCompat.postInvalidateOnAnimation(this);
  }

  void dispatchOnDrawerClosed(View paramView)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (localLayoutParams.knownOpen)
    {
      localLayoutParams.knownOpen = false;
      if (this.mListener != null)
        this.mListener.onDrawerClosed(paramView);
      updateChildrenImportantForAccessibility(paramView, false);
      if (hasWindowFocus())
      {
        View localView = getRootView();
        if (localView != null)
          localView.sendAccessibilityEvent(32);
      }
    }
  }

  void dispatchOnDrawerOpened(View paramView)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (!localLayoutParams.knownOpen)
    {
      localLayoutParams.knownOpen = true;
      if (this.mListener != null)
        this.mListener.onDrawerOpened(paramView);
      updateChildrenImportantForAccessibility(paramView, true);
      if (hasWindowFocus())
        sendAccessibilityEvent(32);
      paramView.requestFocus();
    }
  }

  void dispatchOnDrawerSlide(View paramView, float paramFloat)
  {
    if (this.mListener != null)
      this.mListener.onDrawerSlide(paramView, paramFloat);
  }

  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    int i = getHeight();
    boolean bool1 = isContentView(paramView);
    int j = getWidth();
    int k = paramCanvas.save();
    int m = 0;
    int i10;
    View localView;
    int i12;
    if (bool1)
    {
      int i9 = getChildCount();
      i10 = 0;
      if (i10 < i9)
      {
        localView = getChildAt(i10);
        if ((localView != paramView) && (localView.getVisibility() == 0) && (hasOpaqueBackground(localView)) && (isDrawerView(localView)) && (localView.getHeight() >= i))
          if (checkDrawerViewAbsoluteGravity(localView, 3))
          {
            i12 = localView.getRight();
            if (i12 <= m)
              break label489;
          }
      }
    }
    while (true)
    {
      m = i12;
      int i11 = j;
      while (true)
      {
        i10++;
        j = i11;
        break;
        i11 = localView.getLeft();
        if (i11 < j)
          continue;
        i11 = j;
      }
      paramCanvas.clipRect(m, 0, j, getHeight());
      int n = j;
      boolean bool2 = super.drawChild(paramCanvas, paramView, paramLong);
      paramCanvas.restoreToCount(k);
      if ((this.mScrimOpacity > 0.0F) && (bool1))
      {
        int i8 = (int)(((0xFF000000 & this.mScrimColor) >>> 24) * this.mScrimOpacity) << 24 | 0xFFFFFF & this.mScrimColor;
        this.mScrimPaint.setColor(i8);
        paramCanvas.drawRect(m, 0.0F, n, getHeight(), this.mScrimPaint);
      }
      do
      {
        return bool2;
        if ((this.mShadowLeft == null) || (!checkDrawerViewAbsoluteGravity(paramView, 3)))
          continue;
        int i5 = this.mShadowLeft.getIntrinsicWidth();
        int i6 = paramView.getRight();
        int i7 = this.mLeftDragger.getEdgeSize();
        float f2 = Math.max(0.0F, Math.min(i6 / i7, 1.0F));
        this.mShadowLeft.setBounds(i6, paramView.getTop(), i5 + i6, paramView.getBottom());
        this.mShadowLeft.setAlpha((int)(255.0F * f2));
        this.mShadowLeft.draw(paramCanvas);
        return bool2;
      }
      while ((this.mShadowRight == null) || (!checkDrawerViewAbsoluteGravity(paramView, 5)));
      int i1 = this.mShadowRight.getIntrinsicWidth();
      int i2 = paramView.getLeft();
      int i3 = getWidth() - i2;
      int i4 = this.mRightDragger.getEdgeSize();
      float f1 = Math.max(0.0F, Math.min(i3 / i4, 1.0F));
      this.mShadowRight.setBounds(i2 - i1, paramView.getTop(), i2, paramView.getBottom());
      this.mShadowRight.setAlpha((int)(255.0F * f1));
      this.mShadowRight.draw(paramCanvas);
      return bool2;
      label489: i12 = m;
    }
  }

  View findDrawerWithGravity(int paramInt)
  {
    int i = 0x7 & GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    int j = getChildCount();
    for (int k = 0; k < j; k++)
    {
      View localView = getChildAt(k);
      if ((0x7 & getDrawerViewAbsoluteGravity(localView)) == i)
        return localView;
    }
    return null;
  }

  View findOpenDrawer()
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView = getChildAt(j);
      if (((DrawerLayout.LayoutParams)localView.getLayoutParams()).knownOpen)
        return localView;
    }
    return null;
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new DrawerLayout.LayoutParams(-1, -1);
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new DrawerLayout.LayoutParams(getContext(), paramAttributeSet);
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof DrawerLayout.LayoutParams))
      return new DrawerLayout.LayoutParams((DrawerLayout.LayoutParams)paramLayoutParams);
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams))
      return new DrawerLayout.LayoutParams((ViewGroup.MarginLayoutParams)paramLayoutParams);
    return new DrawerLayout.LayoutParams(paramLayoutParams);
  }

  public int getDrawerLockMode(int paramInt)
  {
    int i = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    if (i == 3)
      return this.mLockModeLeft;
    if (i == 5)
      return this.mLockModeRight;
    return 0;
  }

  public int getDrawerLockMode(View paramView)
  {
    int i = getDrawerViewAbsoluteGravity(paramView);
    if (i == 3)
      return this.mLockModeLeft;
    if (i == 5)
      return this.mLockModeRight;
    return 0;
  }

  public CharSequence getDrawerTitle(int paramInt)
  {
    int i = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    if (i == 3)
      return this.mTitleLeft;
    if (i == 5)
      return this.mTitleRight;
    return null;
  }

  int getDrawerViewAbsoluteGravity(View paramView)
  {
    return GravityCompat.getAbsoluteGravity(((DrawerLayout.LayoutParams)paramView.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(this));
  }

  float getDrawerViewOffset(View paramView)
  {
    return ((DrawerLayout.LayoutParams)paramView.getLayoutParams()).onScreen;
  }

  public Drawable getStatusBarBackgroundDrawable()
  {
    return this.mStatusBarBackground;
  }

  boolean isContentView(View paramView)
  {
    return ((DrawerLayout.LayoutParams)paramView.getLayoutParams()).gravity == 0;
  }

  public boolean isDrawerOpen(int paramInt)
  {
    View localView = findDrawerWithGravity(paramInt);
    if (localView != null)
      return isDrawerOpen(localView);
    return false;
  }

  public boolean isDrawerOpen(View paramView)
  {
    if (!isDrawerView(paramView))
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    return ((DrawerLayout.LayoutParams)paramView.getLayoutParams()).knownOpen;
  }

  boolean isDrawerView(View paramView)
  {
    return (0x7 & GravityCompat.getAbsoluteGravity(((DrawerLayout.LayoutParams)paramView.getLayoutParams()).gravity, ViewCompat.getLayoutDirection(paramView))) != 0;
  }

  public boolean isDrawerVisible(int paramInt)
  {
    View localView = findDrawerWithGravity(paramInt);
    if (localView != null)
      return isDrawerVisible(localView);
    return false;
  }

  public boolean isDrawerVisible(View paramView)
  {
    if (!isDrawerView(paramView))
      throw new IllegalArgumentException("View " + paramView + " is not a drawer");
    return ((DrawerLayout.LayoutParams)paramView.getLayoutParams()).onScreen > 0.0F;
  }

  void moveDrawerToOffset(View paramView, float paramFloat)
  {
    float f = getDrawerViewOffset(paramView);
    int i = paramView.getWidth();
    int j = (int)(f * i);
    int k = (int)(paramFloat * i) - j;
    if (checkDrawerViewAbsoluteGravity(paramView, 3));
    while (true)
    {
      paramView.offsetLeftAndRight(k);
      setDrawerViewOffset(paramView, paramFloat);
      return;
      k = -k;
    }
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
  }

  public void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.mDrawStatusBarBackground) && (this.mStatusBarBackground != null))
    {
      int i = IMPL.getTopInset(this.mLastInsets);
      if (i > 0)
      {
        this.mStatusBarBackground.setBounds(0, 0, getWidth(), i);
        this.mStatusBarBackground.draw(paramCanvas);
      }
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getActionMasked(paramMotionEvent);
    boolean bool1 = this.mLeftDragger.shouldInterceptTouchEvent(paramMotionEvent) | this.mRightDragger.shouldInterceptTouchEvent(paramMotionEvent);
    switch (i)
    {
    default:
      j = 0;
      int k;
      if ((!bool1) && (j == 0) && (!hasPeekingDrawer()))
      {
        boolean bool2 = this.mChildrenCanceledTouch;
        k = 0;
        if (!bool2);
      }
      else
      {
        k = 1;
      }
      return k;
    case 0:
      label59: float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      this.mInitialMotionX = f1;
      this.mInitialMotionY = f2;
      if (this.mScrimOpacity <= 0.0F)
        break;
      View localView = this.mLeftDragger.findTopChildUnder((int)f1, (int)f2);
      if ((localView == null) || (!isContentView(localView)))
        break;
    case 2:
    case 1:
    case 3:
    }
    for (int j = 1; ; j = 0)
    {
      this.mDisallowInterceptRequested = false;
      this.mChildrenCanceledTouch = false;
      break label59;
      if (!this.mLeftDragger.checkTouchSlop(3))
        break;
      this.mLeftCallback.removeCallbacks();
      this.mRightCallback.removeCallbacks();
      j = 0;
      break label59;
      closeDrawers(true);
      this.mDisallowInterceptRequested = false;
      this.mChildrenCanceledTouch = false;
      break;
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (hasVisibleDrawer()))
    {
      KeyEventCompat.startTracking(paramKeyEvent);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      View localView = findVisibleDrawer();
      if ((localView != null) && (getDrawerLockMode(localView) == 0))
        closeDrawers();
      return localView != null;
    }
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.mInLayout = true;
    int i = paramInt3 - paramInt1;
    int j = getChildCount();
    int k = 0;
    while (k < j)
    {
      View localView = getChildAt(k);
      DrawerLayout.LayoutParams localLayoutParams;
      if (localView.getVisibility() != 8)
      {
        localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
        if (isContentView(localView))
          localView.layout(localLayoutParams.leftMargin, localLayoutParams.topMargin, localLayoutParams.leftMargin + localView.getMeasuredWidth(), localLayoutParams.topMargin + localView.getMeasuredHeight());
      }
      else
      {
        k++;
        continue;
      }
      int m = localView.getMeasuredWidth();
      int n = localView.getMeasuredHeight();
      int i1;
      float f;
      label159: int i2;
      if (checkDrawerViewAbsoluteGravity(localView, 3))
      {
        i1 = -m + (int)(m * localLayoutParams.onScreen);
        f = (m + i1) / m;
        if (f == localLayoutParams.onScreen)
          break label309;
        i2 = 1;
        label173: switch (0x70 & localLayoutParams.gravity)
        {
        default:
          localView.layout(i1, localLayoutParams.topMargin, m + i1, n + localLayoutParams.topMargin);
          label233: if (i2 != 0)
            setDrawerViewOffset(localView, f);
          if (localLayoutParams.onScreen <= 0.0F)
            break;
        case 80:
        case 16:
        }
      }
      for (int i5 = 0; localView.getVisibility() != i5; i5 = 4)
      {
        localView.setVisibility(i5);
        break;
        i1 = i - (int)(m * localLayoutParams.onScreen);
        f = (i - i1) / m;
        break label159;
        label309: i2 = 0;
        break label173;
        int i6 = paramInt4 - paramInt2;
        localView.layout(i1, i6 - localLayoutParams.bottomMargin - localView.getMeasuredHeight(), m + i1, i6 - localLayoutParams.bottomMargin);
        break label233;
        int i3 = paramInt4 - paramInt2;
        int i4 = (i3 - n) / 2;
        if (i4 < localLayoutParams.topMargin)
          i4 = localLayoutParams.topMargin;
        while (true)
        {
          localView.layout(i1, i4, m + i1, n + i4);
          break;
          if (i4 + n <= i3 - localLayoutParams.bottomMargin)
            continue;
          i4 = i3 - localLayoutParams.bottomMargin - n;
        }
      }
    }
    this.mInLayout = false;
    this.mFirstLayout = false;
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = 300;
    int j = 0;
    int k = View.MeasureSpec.getMode(paramInt1);
    int m = View.MeasureSpec.getMode(paramInt2);
    int n = View.MeasureSpec.getSize(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt2);
    if ((k != 1073741824) || (m != 1073741824))
      if (isInEditMode())
      {
        if ((k != -2147483648) && (k == 0))
          n = i;
        if ((m == -2147483648) || (m != 0))
          break label455;
      }
    while (true)
    {
      setMeasuredDimension(n, i);
      int i2;
      label119: View localView;
      DrawerLayout.LayoutParams localLayoutParams;
      int i6;
      if ((this.mLastInsets != null) && (ViewCompat.getFitsSystemWindows(this)))
      {
        i2 = 1;
        int i3 = ViewCompat.getLayoutDirection(this);
        int i4 = getChildCount();
        if (j >= i4)
          break label454;
        localView = getChildAt(j);
        if (localView.getVisibility() != 8)
        {
          localLayoutParams = (DrawerLayout.LayoutParams)localView.getLayoutParams();
          if (i2 != 0)
          {
            i6 = GravityCompat.getAbsoluteGravity(localLayoutParams.gravity, i3);
            if (!ViewCompat.getFitsSystemWindows(localView))
              break label271;
            IMPL.dispatchChildInsets(localView, this.mLastInsets, i6);
          }
          label195: if (!isContentView(localView))
            break label290;
          localView.measure(View.MeasureSpec.makeMeasureSpec(n - localLayoutParams.leftMargin - localLayoutParams.rightMargin, 1073741824), View.MeasureSpec.makeMeasureSpec(i - localLayoutParams.topMargin - localLayoutParams.bottomMargin, 1073741824));
        }
      }
      while (true)
      {
        j++;
        break label119;
        throw new IllegalArgumentException("DrawerLayout must be measured with MeasureSpec.EXACTLY.");
        i2 = 0;
        break;
        label271: IMPL.applyMarginInsets(localLayoutParams, this.mLastInsets, i6);
        break label195;
        label290: if (!isDrawerView(localView))
          break label411;
        int i5 = 0x7 & getDrawerViewAbsoluteGravity(localView);
        if ((i5 & 0x0) != 0)
          throw new IllegalStateException("Child drawer has absolute gravity " + gravityToString(i5) + " but this DrawerLayout" + " already has a drawer view along that edge");
        localView.measure(getChildMeasureSpec(paramInt1, this.mMinDrawerMargin + localLayoutParams.leftMargin + localLayoutParams.rightMargin, localLayoutParams.width), getChildMeasureSpec(paramInt2, localLayoutParams.topMargin + localLayoutParams.bottomMargin, localLayoutParams.height));
      }
      label411: throw new IllegalStateException("Child " + localView + " at index " + j + " does not have a valid layout_gravity - must be Gravity.LEFT, Gravity.RIGHT or Gravity.NO_GRAVITY");
      label454: return;
      label455: i = i1;
    }
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    DrawerLayout.SavedState localSavedState = (DrawerLayout.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (localSavedState.openDrawerGravity != 0)
    {
      View localView = findDrawerWithGravity(localSavedState.openDrawerGravity);
      if (localView != null)
        openDrawer(localView);
    }
    setDrawerLockMode(localSavedState.lockModeLeft, 3);
    setDrawerLockMode(localSavedState.lockModeRight, 5);
  }

  protected Parcelable onSaveInstanceState()
  {
    DrawerLayout.SavedState localSavedState = new DrawerLayout.SavedState(super.onSaveInstanceState());
    View localView = findOpenDrawer();
    if (localView != null)
      localSavedState.openDrawerGravity = ((DrawerLayout.LayoutParams)localView.getLayoutParams()).gravity;
    localSavedState.lockModeLeft = this.mLockModeLeft;
    localSavedState.lockModeRight = this.mLockModeRight;
    return localSavedState;
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.mLeftDragger.processTouchEvent(paramMotionEvent);
    this.mRightDragger.processTouchEvent(paramMotionEvent);
    boolean bool;
    switch (0xFF & paramMotionEvent.getAction())
    {
    case 2:
    default:
      return true;
    case 0:
      float f5 = paramMotionEvent.getX();
      float f6 = paramMotionEvent.getY();
      this.mInitialMotionX = f5;
      this.mInitialMotionY = f6;
      this.mDisallowInterceptRequested = false;
      this.mChildrenCanceledTouch = false;
      return true;
    case 1:
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      View localView1 = this.mLeftDragger.findTopChildUnder((int)f1, (int)f2);
      if ((localView1 != null) && (isContentView(localView1)))
      {
        float f3 = f1 - this.mInitialMotionX;
        float f4 = f2 - this.mInitialMotionY;
        int i = this.mLeftDragger.getTouchSlop();
        if (f3 * f3 + f4 * f4 < i * i)
        {
          View localView2 = findOpenDrawer();
          if (localView2 != null)
          {
            if (getDrawerLockMode(localView2) != 2)
              break;
            bool = true;
          }
        }
      }
    case 3:
    }
    while (true)
    {
      closeDrawers(bool);
      this.mDisallowInterceptRequested = false;
      return true;
      bool = false;
      continue;
      closeDrawers(true);
      this.mDisallowInterceptRequested = false;
      this.mChildrenCanceledTouch = false;
      return true;
      bool = true;
    }
  }

  public void openDrawer(int paramInt)
  {
    View localView = findDrawerWithGravity(paramInt);
    if (localView == null)
      throw new IllegalArgumentException("No drawer view found with gravity " + gravityToString(paramInt));
    openDrawer(localView);
  }

  public void openDrawer(View paramView)
  {
    if (!isDrawerView(paramView))
      throw new IllegalArgumentException("View " + paramView + " is not a sliding drawer");
    if (this.mFirstLayout)
    {
      DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
      localLayoutParams.onScreen = 1.0F;
      localLayoutParams.knownOpen = true;
      updateChildrenImportantForAccessibility(paramView, true);
    }
    while (true)
    {
      invalidate();
      return;
      if (checkDrawerViewAbsoluteGravity(paramView, 3))
      {
        this.mLeftDragger.smoothSlideViewTo(paramView, 0, paramView.getTop());
        continue;
      }
      this.mRightDragger.smoothSlideViewTo(paramView, getWidth() - paramView.getWidth(), paramView.getTop());
    }
  }

  public void requestDisallowInterceptTouchEvent(boolean paramBoolean)
  {
    super.requestDisallowInterceptTouchEvent(paramBoolean);
    this.mDisallowInterceptRequested = paramBoolean;
    if (paramBoolean)
      closeDrawers(true);
  }

  public void requestLayout()
  {
    if (!this.mInLayout)
      super.requestLayout();
  }

  public void setChildInsets(Object paramObject, boolean paramBoolean)
  {
    this.mLastInsets = paramObject;
    this.mDrawStatusBarBackground = paramBoolean;
    if ((!paramBoolean) && (getBackground() == null));
    for (boolean bool = true; ; bool = false)
    {
      setWillNotDraw(bool);
      requestLayout();
      return;
    }
  }

  public void setDrawerListener(DrawerLayout.DrawerListener paramDrawerListener)
  {
    this.mListener = paramDrawerListener;
  }

  public void setDrawerLockMode(int paramInt)
  {
    setDrawerLockMode(paramInt, 3);
    setDrawerLockMode(paramInt, 5);
  }

  public void setDrawerLockMode(int paramInt1, int paramInt2)
  {
    int i = GravityCompat.getAbsoluteGravity(paramInt2, ViewCompat.getLayoutDirection(this));
    ViewDragHelper localViewDragHelper;
    if (i == 3)
    {
      this.mLockModeLeft = paramInt1;
      if (paramInt1 != 0)
      {
        if (i != 3)
          break label78;
        localViewDragHelper = this.mLeftDragger;
        label34: localViewDragHelper.cancel();
      }
      switch (paramInt1)
      {
      default:
      case 2:
      case 1:
      }
    }
    label78: View localView1;
    do
    {
      View localView2;
      do
      {
        return;
        if (i != 5)
          break;
        this.mLockModeRight = paramInt1;
        break;
        localViewDragHelper = this.mRightDragger;
        break label34;
        localView2 = findDrawerWithGravity(i);
      }
      while (localView2 == null);
      openDrawer(localView2);
      return;
      localView1 = findDrawerWithGravity(i);
    }
    while (localView1 == null);
    closeDrawer(localView1);
  }

  public void setDrawerLockMode(int paramInt, View paramView)
  {
    if (!isDrawerView(paramView))
      throw new IllegalArgumentException("View " + paramView + " is not a drawer with appropriate layout_gravity");
    setDrawerLockMode(paramInt, ((DrawerLayout.LayoutParams)paramView.getLayoutParams()).gravity);
  }

  public void setDrawerShadow(int paramInt1, int paramInt2)
  {
    setDrawerShadow(getResources().getDrawable(paramInt1), paramInt2);
  }

  public void setDrawerShadow(Drawable paramDrawable, int paramInt)
  {
    int i = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    if ((i & 0x3) == 3)
    {
      this.mShadowLeft = paramDrawable;
      invalidate();
    }
    if ((i & 0x5) == 5)
    {
      this.mShadowRight = paramDrawable;
      invalidate();
    }
  }

  public void setDrawerTitle(int paramInt, CharSequence paramCharSequence)
  {
    int i = GravityCompat.getAbsoluteGravity(paramInt, ViewCompat.getLayoutDirection(this));
    if (i == 3)
      this.mTitleLeft = paramCharSequence;
    do
      return;
    while (i != 5);
    this.mTitleRight = paramCharSequence;
  }

  void setDrawerViewOffset(View paramView, float paramFloat)
  {
    DrawerLayout.LayoutParams localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
    if (paramFloat == localLayoutParams.onScreen)
      return;
    localLayoutParams.onScreen = paramFloat;
    dispatchOnDrawerSlide(paramView, paramFloat);
  }

  public void setScrimColor(int paramInt)
  {
    this.mScrimColor = paramInt;
    invalidate();
  }

  public void setStatusBarBackground(int paramInt)
  {
    if (paramInt != 0);
    for (Drawable localDrawable = ContextCompat.getDrawable(getContext(), paramInt); ; localDrawable = null)
    {
      this.mStatusBarBackground = localDrawable;
      invalidate();
      return;
    }
  }

  public void setStatusBarBackground(Drawable paramDrawable)
  {
    this.mStatusBarBackground = paramDrawable;
    invalidate();
  }

  public void setStatusBarBackgroundColor(int paramInt)
  {
    this.mStatusBarBackground = new ColorDrawable(paramInt);
    invalidate();
  }

  void updateDrawerState(int paramInt1, int paramInt2, View paramView)
  {
    int i = 1;
    int j = this.mLeftDragger.getViewDragState();
    int k = this.mRightDragger.getViewDragState();
    DrawerLayout.LayoutParams localLayoutParams;
    if ((j == i) || (k == i))
      if ((paramView != null) && (paramInt2 == 0))
      {
        localLayoutParams = (DrawerLayout.LayoutParams)paramView.getLayoutParams();
        if (localLayoutParams.onScreen != 0.0F)
          break label125;
        dispatchOnDrawerClosed(paramView);
      }
    while (true)
    {
      if (i != this.mDrawerState)
      {
        this.mDrawerState = i;
        if (this.mListener != null)
          this.mListener.onDrawerStateChanged(i);
      }
      return;
      if ((j == 2) || (k == 2))
      {
        i = 2;
        break;
      }
      i = 0;
      break;
      label125: if (localLayoutParams.onScreen != 1.0F)
        continue;
      dispatchOnDrawerOpened(paramView);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.widget.DrawerLayout
 * JD-Core Version:    0.6.0
 */