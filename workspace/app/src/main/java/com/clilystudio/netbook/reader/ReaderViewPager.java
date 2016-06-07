package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.design.widget.K;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ReaderViewPager extends ViewGroup
{
  private static final int CLOSE_ENOUGH = 2;
  private static final Comparator<cs> COMPARATOR;
  private static final boolean DEBUG = false;
  private static final int DEFAULT_GUTTER_SIZE = 16;
  private static final int DEFAULT_OFFSCREEN_PAGES = 1;
  private static final int DRAW_ORDER_DEFAULT = 0;
  private static final int DRAW_ORDER_FORWARD = 1;
  private static final int DRAW_ORDER_REVERSE = 2;
  private static final int INVALID_POINTER = -1;
  private static final int[] LAYOUT_ATTRS = { 16842931 };
  private static final int MAX_SETTLE_DURATION = 600;
  private static final int MIN_DISTANCE_FOR_FLING = 25;
  private static final int MIN_FLING_VELOCITY = 400;
  private static final String TAG = "ViewPager";
  private static final boolean USE_CACHE;
  private static final Interpolator sInterpolator;
  private static final cz sPositionComparator;
  private int mActivePointerId = -1;
  private PagerAdapter mAdapter;
  private cv mAdapterChangeListener;
  private int mBottomPageBounds;
  private boolean mCalledSuper;
  private int mChildHeightMeasureSpec;
  private int mChildWidthMeasureSpec;
  private int mCloseEnough;
  private int mCurItem;
  private int mDecorChildCount;
  private int mDefaultGutterSize;
  private int mDrawingOrder;
  private ArrayList<View> mDrawingOrderedChildren;
  private final Runnable mEndScrollRunnable = new cq(this);
  private int mExpectedAdapterCount;
  private long mFakeDragBeginTime;
  private boolean mFakeDragging;
  private boolean mFirstLayout = true;
  private float mFirstOffset = -3.402824E+038F;
  private int mFlingDistance;
  private int mGutterSize;
  private boolean mIgnoreGutter;
  private boolean mInLayout;
  private float mInitialMotionX;
  private float mInitialMotionY;
  private cw mInternalPageChangeListener;
  private boolean mIsBeingDragged;
  private boolean mIsUnableToDrag;
  private final ArrayList<cs> mItems = new ArrayList();
  private float mLastMotionX;
  private float mLastMotionY;
  private float mLastOffset = 3.4028235E+38F;
  private EdgeEffectCompat mLeftEdge;
  private Drawable mMarginDrawable;
  private int mMaximumVelocity;
  private int mMinimumVelocity;
  private boolean mNeedCalculatePageOffsets = false;
  private cx mObserver;
  private int mOffscreenPageLimit = 1;
  private cw mOnPageChangeListener;
  private int mPageMargin;
  private K mPageTransformer$572aa01b;
  private boolean mPopulatePending;
  private Parcelable mRestoredAdapterState = null;
  private ClassLoader mRestoredClassLoader = null;
  private int mRestoredCurItem = -1;
  private EdgeEffectCompat mRightEdge;
  private int mScrollState = 0;
  private Scroller mScroller;
  private boolean mScrollingCacheEnabled;
  private Method mSetChildrenDrawingOrderEnabled;
  private final cs mTempItem = new cs();
  private final Rect mTempRect = new Rect();
  private int mTopPageBounds;
  private int mTouchSlop;
  private VelocityTracker mVelocityTracker;

  static
  {
    COMPARATOR = new co();
    sInterpolator = new cp();
    sPositionComparator = new cz();
  }

  public ReaderViewPager(Context paramContext)
  {
    super(paramContext);
    d();
  }

  public ReaderViewPager(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
  }

  private Rect a(Rect paramRect, View paramView)
  {
    if (paramRect == null);
    for (Rect localRect = new Rect(); ; localRect = paramRect)
    {
      if (paramView == null)
      {
        localRect.set(0, 0, 0, 0);
        return localRect;
      }
      localRect.left = paramView.getLeft();
      localRect.right = paramView.getRight();
      localRect.top = paramView.getTop();
      localRect.bottom = paramView.getBottom();
      ViewGroup localViewGroup;
      for (ViewParent localViewParent = paramView.getParent(); ((localViewParent instanceof ViewGroup)) && (localViewParent != this); localViewParent = localViewGroup.getParent())
      {
        localViewGroup = (ViewGroup)localViewParent;
        localRect.left += localViewGroup.getLeft();
        localRect.right += localViewGroup.getRight();
        localRect.top += localViewGroup.getTop();
        localRect.bottom += localViewGroup.getBottom();
      }
      return localRect;
    }
  }

  private cs a(int paramInt1, int paramInt2)
  {
    cs localcs = new cs();
    localcs.b = paramInt1;
    localcs.a = this.mAdapter.instantiateItem(this, paramInt1);
    localcs.d = this.mAdapter.getPageWidth(paramInt1);
    if ((paramInt2 < 0) || (paramInt2 >= this.mItems.size()))
    {
      this.mItems.add(localcs);
      return localcs;
    }
    this.mItems.add(paramInt2, localcs);
    return localcs;
  }

  private cs a(View paramView)
  {
    for (int i = 0; i < this.mItems.size(); i++)
    {
      cs localcs = (cs)this.mItems.get(i);
      if (this.mAdapter.isViewFromObject(paramView, localcs.a))
        return localcs;
    }
    return null;
  }

  private void a(int paramInt1, float paramFloat, int paramInt2)
  {
    int m;
    int n;
    int i1;
    int i3;
    View localView2;
    int i8;
    int i5;
    int i6;
    if (this.mDecorChildCount > 0)
    {
      int k = getScrollX();
      m = getPaddingLeft();
      n = getPaddingRight();
      i1 = getWidth();
      int i2 = getChildCount();
      i3 = 0;
      if (i3 < i2)
      {
        localView2 = getChildAt(i3);
        ct localct = (ct)localView2.getLayoutParams();
        if (!localct.a)
          break label343;
        switch (0x7 & localct.b)
        {
        case 2:
        case 4:
        default:
          i8 = m;
          int i14 = n;
          i5 = m;
          i6 = i14;
          label132: int i10 = i8 + k - localView2.getLeft();
          if (i10 == 0)
            break;
          localView2.offsetLeftAndRight(i10);
        case 3:
        case 1:
        case 5:
        }
      }
    }
    while (true)
    {
      i3++;
      int i7 = i6;
      m = i5;
      n = i7;
      break;
      int i12 = m + localView2.getWidth();
      int i13 = m;
      i6 = n;
      i5 = i12;
      i8 = i13;
      break label132;
      i8 = Math.max((i1 - localView2.getMeasuredWidth()) / 2, m);
      int i11 = n;
      i5 = m;
      i6 = i11;
      break label132;
      i8 = i1 - n - localView2.getMeasuredWidth();
      int i9 = n + localView2.getMeasuredWidth();
      i5 = m;
      i6 = i9;
      break label132;
      if (this.mPageTransformer$572aa01b != null)
      {
        getScrollX();
        int i = getChildCount();
        for (int j = 0; j < i; j++)
        {
          View localView1 = getChildAt(j);
          if (((ct)localView1.getLayoutParams()).a)
            continue;
          localView1.getLeft();
          e();
        }
      }
      this.mCalledSuper = true;
      return;
      label343: int i4 = n;
      i5 = m;
      i6 = i4;
    }
  }

  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 > 0) && (!this.mItems.isEmpty()))
    {
      int j = paramInt3 + (paramInt1 - getPaddingLeft() - getPaddingRight());
      int k = paramInt4 + (paramInt2 - getPaddingLeft() - getPaddingRight());
      int m = (int)(getScrollX() / k * j);
      scrollTo(m, getScrollY());
      if (!this.mScroller.isFinished())
      {
        int n = this.mScroller.getDuration() - this.mScroller.timePassed();
        cs localcs2 = d(this.mCurItem);
        this.mScroller.startScroll(m, 0, (int)(localcs2.e * paramInt1), 0, n);
      }
      return;
    }
    cs localcs1 = d(this.mCurItem);
    float f;
    if (localcs1 != null)
      f = Math.min(localcs1.e, this.mLastOffset);
    while (true)
    {
      int i = (int)(f * (paramInt1 - getPaddingLeft() - getPaddingRight()));
      if (i == getScrollX())
        break;
      a(false);
      scrollTo(i, getScrollY());
      return;
      f = 0.0F;
    }
  }

  private void a(int paramInt1, boolean paramBoolean1, int paramInt2, boolean paramBoolean2)
  {
    cs localcs = d(paramInt1);
    int i = 0;
    if (localcs != null)
      i = (int)(e() * Math.max(this.mFirstOffset, Math.min(localcs.e, this.mLastOffset)));
    if (paramBoolean1)
    {
      if (getChildCount() == 0)
        b(false);
      int j;
      int k;
      int m;
      int n;
      while (true)
      {
        if ((paramBoolean2) && (this.mOnPageChangeListener != null))
          this.mOnPageChangeListener.a(paramInt1);
        if ((paramBoolean2) && (this.mInternalPageChangeListener != null))
          this.mInternalPageChangeListener.a(paramInt1);
        return;
        j = getScrollX();
        k = getScrollY();
        m = i - j;
        n = 0 - k;
        if ((m != 0) || (n != 0))
          break;
        a(false);
        b();
        b(0);
      }
      b(true);
      b(2);
      int i1 = e();
      int i2 = i1 / 2;
      float f1 = Math.min(1.0F, 1.0F * Math.abs(m) / i1);
      float f2 = i2 + i2 * (float)Math.sin((float)(0.47123891676382D * (f1 - 0.5F)));
      int i3 = Math.abs(paramInt2);
      if (i3 > 0);
      float f3;
      for (int i4 = 4 * Math.round(1000.0F * Math.abs(f2 / i3)); ; i4 = (int)(100.0F * (1.0F + Math.abs(m) / (f3 + this.mPageMargin))))
      {
        int i5 = Math.min(i4, 600);
        this.mScroller.startScroll(j, k, m, n, i5);
        ViewCompat.postInvalidateOnAnimation(this);
        break;
        f3 = i1 * this.mAdapter.getPageWidth(this.mCurItem);
      }
    }
    if ((paramBoolean2) && (this.mOnPageChangeListener != null))
      this.mOnPageChangeListener.a(paramInt1);
    if ((paramBoolean2) && (this.mInternalPageChangeListener != null))
      this.mInternalPageChangeListener.a(paramInt1);
    a(false);
    scrollTo(i, 0);
  }

  private void a(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    a(paramInt, paramBoolean1, paramBoolean2, 0);
  }

  private void a(MotionEvent paramMotionEvent)
  {
    int i = MotionEventCompat.getActionIndex(paramMotionEvent);
    if (MotionEventCompat.getPointerId(paramMotionEvent, i) == this.mActivePointerId)
      if (i != 0)
        break label56;
    label56: for (int j = 1; ; j = 0)
    {
      this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, j);
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, j);
      if (this.mVelocityTracker != null)
        this.mVelocityTracker.clear();
      return;
    }
  }

  private void a(cs paramcs1, int paramInt, cs paramcs2)
  {
    int i = this.mAdapter.getCount();
    int j = e();
    float f1;
    if (j > 0)
      f1 = this.mPageMargin / j;
    int i7;
    float f12;
    int i17;
    cs localcs4;
    while (true)
    {
      if (paramcs2 == null)
        break label421;
      i7 = paramcs2.b;
      if (i7 >= paramcs1.b)
        break;
      float f11 = f1 + (paramcs2.e + paramcs2.d);
      int i15 = i7 + 1;
      f12 = f11;
      int i16 = 0;
      i17 = i15;
      if ((i17 > paramcs1.b) || (i16 >= this.mItems.size()))
        break label421;
      for (localcs4 = (cs)this.mItems.get(i16); (i17 > localcs4.b) && (i16 < -1 + this.mItems.size()); localcs4 = (cs)this.mItems.get(i16))
        i16++;
      f1 = 0.0F;
    }
    while (true)
    {
      if (i19 < localcs4.b)
      {
        Object localObject2;
        float f15 = localObject2 + (f1 + this.mAdapter.getPageWidth(i19));
        i19++;
        f13 = f15;
        continue;
      }
      localcs4.e = f13;
      float f14 = f13 + (f1 + localcs4.d);
      int i20 = i19 + 1;
      f12 = f14;
      i17 = i20;
      break;
      float f7;
      int i11;
      cs localcs3;
      if (i7 > paramcs1.b)
      {
        int i8 = -1 + this.mItems.size();
        float f6 = paramcs2.e;
        int i9 = i7 - 1;
        int i10 = i8;
        f7 = f6;
        i11 = i9;
        if ((i11 >= paramcs1.b) && (i10 >= 0))
          for (localcs3 = (cs)this.mItems.get(i10); (i11 < localcs3.b) && (i10 > 0); localcs3 = (cs)this.mItems.get(i10))
            i10--;
      }
      while (true)
      {
        if (i13 > localcs3.b)
        {
          Object localObject1;
          float f10 = localObject1 - (f1 + this.mAdapter.getPageWidth(i13));
          i13--;
          f8 = f10;
          continue;
        }
        float f9 = f8 - (f1 + localcs3.d);
        localcs3.e = f9;
        int i14 = i13 - 1;
        f7 = f9;
        i11 = i14;
        break;
        label421: int k = this.mItems.size();
        float f2 = paramcs1.e;
        int m = -1 + paramcs1.b;
        float f3;
        float f4;
        if (paramcs1.b == 0)
        {
          f3 = paramcs1.e;
          this.mFirstOffset = f3;
          if (paramcs1.b != i - 1)
            break label568;
          f4 = paramcs1.e + paramcs1.d - 1.0F;
          label487: this.mLastOffset = f4;
        }
        label568: int i5;
        for (int n = paramInt - 1; ; n = i5)
        {
          if (n < 0)
            break label625;
          cs localcs2 = (cs)this.mItems.get(n);
          while (true)
            if (m > localcs2.b)
            {
              PagerAdapter localPagerAdapter2 = this.mAdapter;
              int i6 = m - 1;
              f2 -= f1 + localPagerAdapter2.getPageWidth(m);
              m = i6;
              continue;
              f3 = -3.402824E+038F;
              break;
              f4 = 3.4028235E+38F;
              break label487;
            }
          f2 -= f1 + localcs2.d;
          localcs2.e = f2;
          if (localcs2.b == 0)
            this.mFirstOffset = f2;
          i5 = n - 1;
          m--;
        }
        label625: float f5 = f1 + (paramcs1.e + paramcs1.d);
        int i1 = 1 + paramcs1.b;
        int i3;
        for (int i2 = paramInt + 1; i2 < k; i2 = i3)
        {
          cs localcs1 = (cs)this.mItems.get(i2);
          while (i1 < localcs1.b)
          {
            PagerAdapter localPagerAdapter1 = this.mAdapter;
            int i4 = i1 + 1;
            f5 += f1 + localPagerAdapter1.getPageWidth(i1);
            i1 = i4;
          }
          if (localcs1.b == i - 1)
            this.mLastOffset = (f5 + localcs1.d - 1.0F);
          localcs1.e = f5;
          f5 += f1 + localcs1.d;
          i3 = i2 + 1;
          i1++;
        }
        this.mNeedCalculatePageOffsets = false;
        return;
        int i12 = i11;
        float f8 = f7;
        int i13 = i12;
      }
      int i18 = i17;
      float f13 = f12;
      int i19 = i18;
    }
  }

  private void a(boolean paramBoolean)
  {
    if (this.mScrollState == 2);
    int k;
    for (int i = 1; ; i = 0)
    {
      if (i != 0)
      {
        b(false);
        this.mScroller.abortAnimation();
        int m = getScrollX();
        int n = getScrollY();
        int i1 = this.mScroller.getCurrX();
        int i2 = this.mScroller.getCurrY();
        if ((m != i1) || (n != i2))
          scrollTo(i1, i2);
      }
      this.mPopulatePending = false;
      int j = 0;
      k = i;
      while (j < this.mItems.size())
      {
        cs localcs = (cs)this.mItems.get(j);
        if (localcs.c)
        {
          localcs.c = false;
          k = 1;
        }
        j++;
      }
    }
    if (k != 0)
    {
      if (paramBoolean)
        ViewCompat.postOnAnimation(this, this.mEndScrollRunnable);
    }
    else
      return;
    this.mEndScrollRunnable.run();
  }

  private boolean a(float paramFloat)
  {
    int i = 1;
    float f1 = this.mLastMotionX - paramFloat;
    this.mLastMotionX = paramFloat;
    float f2 = f1 + getScrollX();
    int j = e();
    float f3 = j * this.mFirstOffset;
    float f4 = j * this.mLastOffset;
    cs localcs1 = (cs)this.mItems.get(0);
    cs localcs2 = (cs)this.mItems.get(-1 + this.mItems.size());
    if (localcs1.b != 0)
      f3 = localcs1.e * j;
    for (int k = 0; ; k = i)
    {
      float f5;
      if (localcs2.b != -1 + this.mAdapter.getCount())
      {
        f5 = localcs2.e * j;
        i = 0;
      }
      while (true)
      {
        boolean bool;
        if (f2 < f3)
        {
          bool = false;
          if (k != 0)
          {
            float f6 = f3 - f2;
            bool = this.mLeftEdge.onPull(Math.abs(f6) / j);
          }
        }
        while (true)
        {
          this.mLastMotionX += f3 - (int)f3;
          scrollTo((int)f3, getScrollY());
          e((int)f3);
          return bool;
          if (f2 > f5)
          {
            bool = false;
            if (i != 0)
            {
              float f7 = f2 - f5;
              bool = this.mRightEdge.onPull(Math.abs(f7) / j);
            }
            f3 = f5;
            continue;
          }
          f3 = f2;
          bool = false;
        }
        f5 = f4;
      }
    }
  }

  private boolean a(int paramInt1, boolean paramBoolean1, boolean paramBoolean2, int paramInt2)
  {
    if ((this.mAdapter == null) || (this.mAdapter.getCount() <= 0))
    {
      b(false);
      return false;
    }
    if ((!paramBoolean2) && (this.mCurItem == paramInt1) && (this.mItems.size() != 0))
    {
      b(false);
      return false;
    }
    if (paramInt1 < 0)
      paramInt1 = 0;
    while (true)
    {
      int i = this.mOffscreenPageLimit;
      if ((paramInt1 <= i + this.mCurItem) && (paramInt1 >= this.mCurItem - i))
        break;
      for (int j = 0; j < this.mItems.size(); j++)
        ((cs)this.mItems.get(j)).c = true;
      if (paramInt1 < this.mAdapter.getCount())
        continue;
      paramInt1 = -1 + this.mAdapter.getCount();
    }
    int k = this.mCurItem;
    boolean bool = false;
    if (k != paramInt1)
      bool = true;
    if (this.mFirstLayout)
    {
      this.mCurItem = paramInt1;
      if ((bool) && (this.mOnPageChangeListener != null))
        this.mOnPageChangeListener.a(paramInt1);
      if ((bool) && (this.mInternalPageChangeListener != null))
        this.mInternalPageChangeListener.a(paramInt1);
      requestLayout();
      return bool;
    }
    c(paramInt1);
    a(paramInt1, paramBoolean1, paramInt2, bool);
    return bool;
  }

  private boolean a(View paramView, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3)
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
        if ((paramInt2 + i < localView.getLeft()) || (paramInt2 + i >= localView.getRight()) || (paramInt3 + j < localView.getTop()) || (paramInt3 + j >= localView.getBottom()) || (!a(localView, true, paramInt1, paramInt2 + i - localView.getLeft(), paramInt3 + j - localView.getTop())));
      }
    }
    do
    {
      return true;
      k--;
      break;
    }
    while ((paramBoolean) && (ViewCompat.canScrollHorizontally(paramView, -paramInt1)));
    return false;
  }

  private cs b(View paramView)
  {
    while (true)
    {
      ViewParent localViewParent = paramView.getParent();
      if (localViewParent == this)
        break;
      if ((localViewParent == null) || (!(localViewParent instanceof View)))
        return null;
      paramView = (View)localViewParent;
    }
    return a(paramView);
  }

  private void b(int paramInt)
  {
    if (this.mScrollState == paramInt);
    label35: label71: 
    do
    {
      return;
      this.mScrollState = paramInt;
      if (this.mPageTransformer$572aa01b == null)
        continue;
      int i;
      int k;
      if (paramInt != 0)
      {
        i = 1;
        int j = getChildCount();
        k = 0;
        if (k >= j)
          continue;
        if (i == 0)
          break label71;
      }
      for (int m = 2; ; m = 0)
      {
        ViewCompat.setLayerType(getChildAt(k), m, null);
        k++;
        break label35;
        i = 0;
        break;
      }
    }
    while (this.mOnPageChangeListener == null);
    this.mOnPageChangeListener.b(paramInt);
  }

  private void b(boolean paramBoolean)
  {
    if (this.mScrollingCacheEnabled != paramBoolean)
      this.mScrollingCacheEnabled = paramBoolean;
  }

  private void c(int paramInt)
  {
    int i13;
    cs localcs1;
    int i;
    if (this.mCurItem != paramInt)
      if (this.mCurItem < paramInt)
      {
        i13 = 66;
        cs localcs12 = d(this.mCurItem);
        this.mCurItem = paramInt;
        localcs1 = localcs12;
        i = i13;
      }
    while (true)
    {
      if (this.mAdapter == null)
        f();
      do
      {
        return;
        i13 = 17;
        break;
        if (!this.mPopulatePending)
          continue;
        f();
        return;
      }
      while (getWindowToken() == null);
      this.mAdapter.startUpdate(this);
      int j = this.mOffscreenPageLimit;
      int k = Math.max(0, this.mCurItem - j);
      int m = this.mAdapter.getCount();
      int n = Math.min(m - 1, j + this.mCurItem);
      if (m != this.mExpectedAdapterCount)
        try
        {
          String str2 = getResources().getResourceName(getId());
          str1 = str2;
          throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.mExpectedAdapterCount + ", found: " + m + " Pager id: " + str1 + " Pager class: " + getClass() + " Problematic adapter: " + this.mAdapter.getClass());
        }
        catch (Resources.NotFoundException localNotFoundException)
        {
          while (true)
            String str1 = Integer.toHexString(getId());
        }
      int i1 = 0;
      cs localcs2;
      if (i1 < this.mItems.size())
      {
        localcs2 = (cs)this.mItems.get(i1);
        if (localcs2.b >= this.mCurItem)
          if (localcs2.b != this.mCurItem)
            break label1255;
      }
      while (true)
      {
        if ((localcs2 == null) && (m > 0));
        for (cs localcs3 = a(this.mCurItem, i1); ; localcs3 = localcs2)
        {
          label355: int i9;
          label399: label510: float f3;
          label516: label621: int i11;
          Object localObject2;
          label667: int i12;
          label690: cs localcs11;
          label786: Object localObject3;
          float f6;
          if (localcs3 != null)
          {
            int i6 = i1 - 1;
            cs localcs7;
            float f2;
            int i8;
            int i10;
            if (i6 >= 0)
            {
              localcs7 = (cs)this.mItems.get(i6);
              float f1 = 2.0F - localcs3.d + getPaddingLeft() / e();
              int i7 = -1 + this.mCurItem;
              f2 = 0.0F;
              i8 = i7;
              i9 = i1;
              i10 = i6;
              if (i8 < 0)
                break label621;
              if ((f2 < f1) || (i8 >= k))
                break label516;
              if (localcs7 == null)
                break label621;
              if ((i8 == localcs7.b) && (!localcs7.c))
              {
                this.mItems.remove(i10);
                this.mAdapter.destroyItem(this, i8, localcs7.a);
                i10--;
                i9--;
                if (i10 < 0)
                  break label510;
                localcs7 = (cs)this.mItems.get(i10);
              }
            }
            while (true)
            {
              i8--;
              break label399;
              i1++;
              break;
              localcs7 = null;
              break label355;
              localcs7 = null;
              continue;
              if ((localcs7 != null) && (i8 == localcs7.b))
              {
                f2 += localcs7.d;
                i10--;
                if (i10 >= 0)
                {
                  localcs7 = (cs)this.mItems.get(i10);
                  continue;
                }
                localcs7 = null;
                continue;
              }
              f2 += a(i8, i10 + 1).d;
              i9++;
              if (i10 >= 0)
              {
                localcs7 = (cs)this.mItems.get(i10);
                continue;
              }
              localcs7 = null;
            }
            f3 = localcs3.d;
            i11 = i9 + 1;
            if (f3 < 2.0F)
              if (i11 < this.mItems.size())
              {
                localObject2 = (cs)this.mItems.get(i11);
                float f4 = 2.0F + getPaddingRight() / e();
                i12 = 1 + this.mCurItem;
                if (i12 >= m)
                  break label965;
                if ((f3 < f4) || (i12 <= n))
                  break label828;
                if (localObject2 == null)
                  break label965;
                if ((i12 != ((cs)localObject2).b) || (((cs)localObject2).c))
                  break label1233;
                this.mItems.remove(i11);
                this.mAdapter.destroyItem(this, i12, ((cs)localObject2).a);
                if (i11 >= this.mItems.size())
                  break label822;
                localcs11 = (cs)this.mItems.get(i11);
                float f10 = f3;
                localObject3 = localcs11;
                f6 = f10;
              }
          }
          while (true)
          {
            i12++;
            float f7 = f6;
            localObject2 = localObject3;
            f3 = f7;
            break label690;
            localObject2 = null;
            break label667;
            label822: localcs11 = null;
            break label786;
            label828: if ((localObject2 != null) && (i12 == ((cs)localObject2).b))
            {
              float f8 = f3 + ((cs)localObject2).d;
              i11++;
              if (i11 < this.mItems.size());
              for (cs localcs10 = (cs)this.mItems.get(i11); ; localcs10 = null)
              {
                localObject3 = localcs10;
                f6 = f8;
                break;
              }
            }
            cs localcs8 = a(i12, i11);
            i11++;
            float f5 = f3 + localcs8.d;
            if (i11 < this.mItems.size());
            for (cs localcs9 = (cs)this.mItems.get(i11); ; localcs9 = null)
            {
              localObject3 = localcs9;
              f6 = f5;
              break;
            }
            label965: a(localcs3, i9, localcs1);
            PagerAdapter localPagerAdapter = this.mAdapter;
            int i2 = this.mCurItem;
            if (localcs3 != null);
            for (Object localObject1 = localcs3.a; ; localObject1 = null)
            {
              localPagerAdapter.setPrimaryItem(this, i2, localObject1);
              this.mAdapter.finishUpdate(this);
              int i3 = getChildCount();
              for (int i4 = 0; i4 < i3; i4++)
              {
                View localView3 = getChildAt(i4);
                ct localct = (ct)localView3.getLayoutParams();
                localct.f = i4;
                if ((localct.a) || (localct.c != 0.0F))
                  continue;
                cs localcs6 = a(localView3);
                if (localcs6 == null)
                  continue;
                localct.c = localcs6.d;
                localct.e = localcs6.b;
              }
            }
            f();
            if (!hasFocus())
              break;
            View localView1 = findFocus();
            if (localView1 != null);
            for (cs localcs4 = b(localView1); ; localcs4 = null)
            {
              if ((localcs4 != null) && (localcs4.b == this.mCurItem))
                break label1231;
              for (int i5 = 0; ; i5++)
              {
                if (i5 >= getChildCount())
                  break label1225;
                View localView2 = getChildAt(i5);
                cs localcs5 = a(localView2);
                if ((localcs5 != null) && (localcs5.b == this.mCurItem) && (localView2.requestFocus(i)))
                  break;
              }
              label1225: break;
            }
            label1231: break;
            label1233: float f9 = f3;
            localObject3 = localObject2;
            f6 = f9;
          }
        }
        label1255: localcs2 = null;
      }
      i = 2;
      localcs1 = null;
    }
  }

  private cs d(int paramInt)
  {
    for (int i = 0; i < this.mItems.size(); i++)
    {
      cs localcs = (cs)this.mItems.get(i);
      if (localcs.b == paramInt)
        return localcs;
    }
    return null;
  }

  private void d()
  {
    setWillNotDraw(false);
    setDescendantFocusability(262144);
    setFocusable(true);
    Context localContext = getContext();
    this.mScroller = new Scroller(localContext, sInterpolator);
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(localContext);
    float f = localContext.getResources().getDisplayMetrics().density;
    this.mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(localViewConfiguration);
    this.mMinimumVelocity = (int)(400.0F * f);
    this.mMaximumVelocity = localViewConfiguration.getScaledMaximumFlingVelocity();
    this.mLeftEdge = new EdgeEffectCompat(localContext);
    this.mRightEdge = new EdgeEffectCompat(localContext);
    this.mFlingDistance = (int)(25.0F * f);
    this.mCloseEnough = (int)(2.0F * f);
    this.mDefaultGutterSize = (int)(16.0F * f);
    ViewCompat.setAccessibilityDelegate(this, new cu(this));
    if (ViewCompat.getImportantForAccessibility(this) == 0)
      ViewCompat.setImportantForAccessibility(this, 1);
  }

  private int e()
  {
    return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
  }

  private boolean e(int paramInt)
  {
    int n;
    if (this.mItems.size() == 0)
    {
      this.mCalledSuper = false;
      a(0, 0.0F, 0);
      boolean bool = this.mCalledSuper;
      n = 0;
      if (!bool)
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
    }
    else
    {
      cs localcs = g();
      int i = e();
      int j = i + this.mPageMargin;
      float f1 = this.mPageMargin / i;
      int k = localcs.b;
      float f2 = (paramInt / i - localcs.e) / (f1 + localcs.d);
      int m = (int)(f2 * j);
      this.mCalledSuper = false;
      a(k, f2, m);
      if (!this.mCalledSuper)
        throw new IllegalStateException("onPageScrolled did not call superclass implementation");
      n = 1;
    }
    return n;
  }

  private void f()
  {
    if (this.mDrawingOrder != 0)
    {
      if (this.mDrawingOrderedChildren == null)
        this.mDrawingOrderedChildren = new ArrayList();
      while (true)
      {
        int i = getChildCount();
        for (int j = 0; j < i; j++)
        {
          View localView = getChildAt(j);
          this.mDrawingOrderedChildren.add(localView);
        }
        this.mDrawingOrderedChildren.clear();
      }
      Collections.sort(this.mDrawingOrderedChildren, sPositionComparator);
    }
  }

  private boolean f(int paramInt)
  {
    View localView1 = findFocus();
    View localView2;
    View localView3;
    boolean bool;
    label86: ViewParent localViewParent1;
    if (localView1 == this)
    {
      localView2 = null;
      localView3 = FocusFinder.getInstance().findNextFocus(this, localView2, paramInt);
      if ((localView3 == null) || (localView3 == localView2))
        break label321;
      if (paramInt != 17)
        break label256;
      int k = a(this.mTempRect, localView3).left;
      int m = a(this.mTempRect, localView2).left;
      if ((localView2 != null) && (k >= m))
      {
        bool = i();
        if (bool)
          playSoundEffect(SoundEffectConstants.getContantForFocusDirection(paramInt));
        return bool;
      }
    }
    else
    {
      if (localView1 == null)
        break label367;
      localViewParent1 = localView1.getParent();
      if (!(localViewParent1 instanceof ViewGroup))
        break label372;
      if (localViewParent1 != this);
    }
    label256: label321: label367: label372: for (int n = 1; ; n = 0)
    {
      if (n == 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(localView1.getClass().getSimpleName());
        ViewParent localViewParent2 = localView1.getParent();
        while (true)
          if ((localViewParent2 instanceof ViewGroup))
          {
            localStringBuilder.append(" => ").append(localViewParent2.getClass().getSimpleName());
            localViewParent2 = localViewParent2.getParent();
            continue;
            localViewParent1 = localViewParent1.getParent();
            break;
          }
        Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + localStringBuilder.toString());
        localView2 = null;
        break;
        bool = localView3.requestFocus();
        break label86;
        if (paramInt == 66)
        {
          int i = a(this.mTempRect, localView3).left;
          int j = a(this.mTempRect, localView2).left;
          if ((localView2 != null) && (i <= j))
          {
            bool = j();
            break label86;
          }
          bool = localView3.requestFocus();
          break label86;
          if ((paramInt == 17) || (paramInt == 1))
          {
            bool = i();
            break label86;
          }
          if ((paramInt == 66) || (paramInt == 2))
          {
            bool = j();
            break label86;
          }
        }
        bool = false;
        break label86;
      }
      localView2 = localView1;
      break;
    }
  }

  private cs g()
  {
    int i = e();
    float f1;
    float f2;
    label31: float f3;
    float f4;
    int j;
    int k;
    int m;
    Object localObject;
    label49: cs localcs1;
    cs localcs3;
    int n;
    if (i > 0)
    {
      f1 = getScrollX() / i;
      if (i <= 0)
        break label210;
      f2 = this.mPageMargin / i;
      f3 = 0.0F;
      f4 = 0.0F;
      j = -1;
      k = 0;
      m = 1;
      localObject = null;
      if (k < this.mItems.size())
      {
        localcs1 = (cs)this.mItems.get(k);
        if ((m != 0) || (localcs1.b == j + 1))
          break label261;
        localcs3 = this.mTempItem;
        localcs3.e = (f2 + (f3 + f4));
        localcs3.b = (j + 1);
        localcs3.d = this.mAdapter.getPageWidth(localcs3.b);
        n = k - 1;
      }
    }
    for (cs localcs2 = localcs3; ; localcs2 = localcs1)
    {
      float f5 = localcs2.e;
      float f6 = f2 + (f5 + localcs2.d);
      if ((m != 0) || (f1 >= f5))
      {
        if ((f1 < f6) || (n == -1 + this.mItems.size()))
          localObject = localcs2;
      }
      else
      {
        return localObject;
        f1 = 0.0F;
        break;
        label210: f2 = 0.0F;
        break label31;
      }
      int i1 = localcs2.b;
      float f7 = localcs2.d;
      int i2 = n + 1;
      f4 = f5;
      j = i1;
      f3 = f7;
      localObject = localcs2;
      k = i2;
      m = 0;
      break label49;
      label261: n = k;
    }
  }

  private void h()
  {
    this.mIsBeingDragged = false;
    this.mIsUnableToDrag = false;
    if (this.mVelocityTracker != null)
    {
      this.mVelocityTracker.recycle();
      this.mVelocityTracker = null;
    }
  }

  private boolean i()
  {
    if (this.mCurItem > 0)
    {
      setCurrentItem(-1 + this.mCurItem, true);
      return true;
    }
    return false;
  }

  private boolean j()
  {
    if ((this.mAdapter != null) && (this.mCurItem < -1 + this.mAdapter.getCount()))
    {
      setCurrentItem(1 + this.mCurItem, true);
      return true;
    }
    return false;
  }

  final void a()
  {
    int i = this.mAdapter.getCount();
    this.mExpectedAdapterCount = i;
    int j;
    int m;
    int n;
    int i1;
    int i2;
    label61: cs localcs;
    int i5;
    int i11;
    int i6;
    int i7;
    int i8;
    int i9;
    if ((this.mItems.size() < 1 + (this.mOffscreenPageLimit << 1)) && (this.mItems.size() < i))
    {
      j = 1;
      int k = this.mCurItem;
      m = 0;
      n = k;
      i1 = j;
      i2 = 0;
      if (i2 >= this.mItems.size())
        break label288;
      localcs = (cs)this.mItems.get(i2);
      i5 = this.mAdapter.getItemPosition(localcs.a);
      if (i5 == -1)
        break label379;
      if (i5 != -2)
        break label237;
      this.mItems.remove(i2);
      i11 = i2 - 1;
      if (m == 0)
      {
        this.mAdapter.startUpdate(this);
        m = 1;
      }
      this.mAdapter.destroyItem(this, localcs.b, localcs.a);
      if (this.mCurItem != localcs.b)
        break label398;
      int i12 = Math.max(0, Math.min(this.mCurItem, i - 1));
      i6 = i11;
      i7 = m;
      i8 = i12;
      i9 = 1;
    }
    while (true)
    {
      int i10 = i6 + 1;
      i1 = i9;
      n = i8;
      m = i7;
      i2 = i10;
      break label61;
      j = 0;
      break;
      label237: if (localcs.b != i5)
      {
        if (localcs.b == this.mCurItem)
          n = i5;
        localcs.b = i5;
        i6 = i2;
        i7 = m;
        i8 = n;
        i9 = 1;
        continue;
        if (m != 0)
          this.mAdapter.finishUpdate(this);
        Collections.sort(this.mItems, COMPARATOR);
        if (i1 != 0)
        {
          int i3 = getChildCount();
          for (int i4 = 0; i4 < i3; i4++)
          {
            ct localct = (ct)getChildAt(i4).getLayoutParams();
            if (localct.a)
              continue;
            localct.c = 0.0F;
          }
          a(n, false, true);
          requestLayout();
        }
        return;
      }
      label288: label379: i6 = i2;
      i7 = m;
      i8 = n;
      i9 = i1;
      continue;
      label398: i6 = i11;
      i7 = m;
      i8 = n;
      i9 = 1;
    }
  }

  public final boolean a(int paramInt)
  {
    this.mPopulatePending = false;
    if (!this.mFirstLayout);
    for (boolean bool = true; ; bool = false)
      return a(paramInt, bool, false, 0);
  }

  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    int i = paramArrayList.size();
    int j = getDescendantFocusability();
    if (j != 393216)
      for (int k = 0; k < getChildCount(); k++)
      {
        View localView = getChildAt(k);
        if (localView.getVisibility() != 0)
          continue;
        cs localcs = a(localView);
        if ((localcs == null) || (localcs.b != this.mCurItem))
          continue;
        localView.addFocusables(paramArrayList, paramInt1, paramInt2);
      }
    if (((j == 262144) && (i != paramArrayList.size())) || (!isFocusable()));
    do
      return;
    while ((((paramInt2 & 0x1) == 1) && (isInTouchMode()) && (!isFocusableInTouchMode())) || (paramArrayList == null));
    paramArrayList.add(this);
  }

  public void addTouchables(ArrayList<View> paramArrayList)
  {
    for (int i = 0; i < getChildCount(); i++)
    {
      View localView = getChildAt(i);
      if (localView.getVisibility() != 0)
        continue;
      cs localcs = a(localView);
      if ((localcs == null) || (localcs.b != this.mCurItem))
        continue;
      localView.addTouchables(paramArrayList);
    }
  }

  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (!checkLayoutParams(paramLayoutParams));
    for (ViewGroup.LayoutParams localLayoutParams = generateLayoutParams(paramLayoutParams); ; localLayoutParams = paramLayoutParams)
    {
      ct localct = (ct)localLayoutParams;
      localct.a |= paramView instanceof cr;
      if (this.mInLayout)
      {
        if ((localct != null) && (localct.a))
          throw new IllegalStateException("Cannot add pager decor view during layout");
        localct.d = true;
        addViewInLayout(paramView, paramInt, localLayoutParams);
        return;
      }
      super.addView(paramView, paramInt, localLayoutParams);
      return;
    }
  }

  final void b()
  {
    c(this.mCurItem);
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof ct)) && (super.checkLayoutParams(paramLayoutParams));
  }

  public void computeScroll()
  {
    if ((!this.mScroller.isFinished()) && (this.mScroller.computeScrollOffset()))
    {
      int i = getScrollX();
      int j = getScrollY();
      int k = this.mScroller.getCurrX();
      int m = this.mScroller.getCurrY();
      if ((i != k) || (j != m))
      {
        scrollTo(k, m);
        if (!e(k))
        {
          this.mScroller.abortAnimation();
          scrollTo(0, m);
        }
      }
      ViewCompat.postInvalidateOnAnimation(this);
      return;
    }
    a(true);
  }

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    boolean bool;
    if (!super.dispatchKeyEvent(paramKeyEvent))
    {
      if (paramKeyEvent.getAction() == 0);
      switch (paramKeyEvent.getKeyCode())
      {
      default:
        bool = false;
      case 21:
      case 22:
      case 61:
      }
    }
    while (true)
    {
      int i = 0;
      if (bool)
        i = 1;
      return i;
      bool = f(17);
      continue;
      bool = f(66);
      continue;
      if (Build.VERSION.SDK_INT < 11)
        break;
      if (KeyEventCompat.hasNoModifiers(paramKeyEvent))
      {
        bool = f(2);
        continue;
      }
      if (!KeyEventCompat.hasModifiers(paramKeyEvent, 1))
        break;
      bool = f(1);
    }
  }

  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    int i = getChildCount();
    for (int j = 0; ; j++)
    {
      int k = 0;
      if (j < i)
      {
        View localView = getChildAt(j);
        if (localView.getVisibility() != 0)
          continue;
        cs localcs = a(localView);
        if ((localcs == null) || (localcs.b != this.mCurItem) || (!localView.dispatchPopulateAccessibilityEvent(paramAccessibilityEvent)))
          continue;
        k = 1;
      }
      return k;
    }
  }

  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    int i = ViewCompat.getOverScrollMode(this);
    boolean bool2;
    if ((i == 0) || ((i == 1) && (this.mAdapter != null) && (this.mAdapter.getCount() > 1)))
    {
      boolean bool1 = this.mLeftEdge.isFinished();
      bool2 = false;
      if (!bool1)
      {
        int n = paramCanvas.save();
        int i1 = getHeight() - getPaddingTop() - getPaddingBottom();
        int i2 = getWidth();
        paramCanvas.rotate(270.0F);
        paramCanvas.translate(-i1 + getPaddingTop(), this.mFirstOffset * i2);
        this.mLeftEdge.setSize(i1, i2);
        bool2 = false | this.mLeftEdge.draw(paramCanvas);
        paramCanvas.restoreToCount(n);
      }
      if (!this.mRightEdge.isFinished())
      {
        int j = paramCanvas.save();
        int k = getWidth();
        int m = getHeight() - getPaddingTop() - getPaddingBottom();
        paramCanvas.rotate(90.0F);
        paramCanvas.translate(-getPaddingTop(), -(1.0F + this.mLastOffset) * k);
        this.mRightEdge.setSize(m, k);
        bool2 |= this.mRightEdge.draw(paramCanvas);
        paramCanvas.restoreToCount(j);
      }
    }
    while (true)
    {
      if (bool2)
        ViewCompat.postInvalidateOnAnimation(this);
      return;
      this.mLeftEdge.finish();
      this.mRightEdge.finish();
      bool2 = false;
    }
  }

  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    Drawable localDrawable = this.mMarginDrawable;
    if ((localDrawable != null) && (localDrawable.isStateful()))
      localDrawable.setState(getDrawableState());
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ct();
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ct(getContext(), paramAttributeSet);
  }

  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return generateDefaultLayoutParams();
  }

  protected int getChildDrawingOrder(int paramInt1, int paramInt2)
  {
    if (this.mDrawingOrder == 2)
      paramInt2 = paramInt1 - 1 - paramInt2;
    return ((ct)((View)this.mDrawingOrderedChildren.get(paramInt2)).getLayoutParams()).f;
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.mFirstLayout = true;
  }

  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.mEndScrollRunnable);
    super.onDetachedFromWindow();
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if ((this.mPageMargin > 0) && (this.mMarginDrawable != null) && (this.mItems.size() > 0) && (this.mAdapter != null))
    {
      int i = getScrollX();
      int j = getWidth();
      float f1 = this.mPageMargin / j;
      cs localcs = (cs)this.mItems.get(0);
      float f2 = localcs.e;
      int k = this.mItems.size();
      int m = localcs.b;
      int n = ((cs)this.mItems.get(k - 1)).b;
      int i1 = 0;
      int i2 = m;
      if (i2 < n)
      {
        while ((i2 > localcs.b) && (i1 < k))
        {
          ArrayList localArrayList = this.mItems;
          i1++;
          localcs = (cs)localArrayList.get(i1);
        }
        float f4;
        if (i2 == localcs.b)
        {
          f4 = (localcs.e + localcs.d) * j;
          f2 = f1 + (localcs.e + localcs.d);
        }
        while (true)
        {
          if (f4 + this.mPageMargin > i)
          {
            this.mMarginDrawable.setBounds((int)f4, this.mTopPageBounds, (int)(0.5F + (f4 + this.mPageMargin)), this.mBottomPageBounds);
            this.mMarginDrawable.draw(paramCanvas);
          }
          if (f4 > i + j)
            return;
          i2++;
          break;
          float f3 = this.mAdapter.getPageWidth(i2);
          f4 = (f2 + f3) * j;
          f2 += f3 + f1;
        }
      }
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 0xFF & paramMotionEvent.getAction();
    if ((i == 3) || (i == 1))
    {
      this.mIsBeingDragged = false;
      this.mIsUnableToDrag = false;
      this.mActivePointerId = -1;
      if (this.mVelocityTracker != null)
      {
        this.mVelocityTracker.recycle();
        this.mVelocityTracker = null;
      }
    }
    do
    {
      return false;
      if (i == 0)
        break;
      if (this.mIsBeingDragged)
        return true;
    }
    while (this.mIsUnableToDrag);
    switch (i)
    {
    default:
    case 2:
    case 0:
    case 6:
    }
    while (true)
    {
      if (this.mVelocityTracker == null)
        this.mVelocityTracker = VelocityTracker.obtain();
      this.mVelocityTracker.addMovement(paramMotionEvent);
      return this.mIsBeingDragged;
      int j = this.mActivePointerId;
      if (j == -1)
        continue;
      int k = MotionEventCompat.findPointerIndex(paramMotionEvent, j);
      float f3 = MotionEventCompat.getX(paramMotionEvent, k);
      float f4 = f3 - this.mLastMotionX;
      float f5 = Math.abs(f4);
      float f6 = MotionEventCompat.getY(paramMotionEvent, k);
      float f7 = Math.abs(f6 - this.mInitialMotionY);
      if (f4 != 0.0F)
      {
        float f9 = this.mLastMotionX;
        if (((f9 < this.mGutterSize) && (f4 > 0.0F)) || ((f9 > getWidth() - this.mGutterSize) && (f4 < 0.0F)));
        for (int m = 1; (m == 0) && (a(this, false, (int)f4, (int)f3, (int)f6)); m = 0)
        {
          this.mLastMotionX = f3;
          this.mLastMotionY = f6;
          this.mIsUnableToDrag = true;
          return false;
        }
      }
      float f8;
      if ((f5 > this.mTouchSlop) && (0.5F * f5 > f7))
      {
        this.mIsBeingDragged = true;
        b(1);
        if (f4 > 0.0F)
        {
          f8 = this.mInitialMotionX + this.mTouchSlop;
          label360: this.mLastMotionX = f8;
          this.mLastMotionY = f6;
          b(true);
        }
      }
      while ((this.mIsBeingDragged) && (a(f3)))
      {
        ViewCompat.postInvalidateOnAnimation(this);
        break;
        f8 = this.mInitialMotionX - this.mTouchSlop;
        break label360;
        if (f7 <= this.mTouchSlop)
          continue;
        this.mIsUnableToDrag = true;
      }
      float f1 = paramMotionEvent.getX();
      this.mInitialMotionX = f1;
      this.mLastMotionX = f1;
      float f2 = paramMotionEvent.getY();
      this.mInitialMotionY = f2;
      this.mLastMotionY = f2;
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      this.mIsUnableToDrag = false;
      this.mScroller.computeScrollOffset();
      if ((this.mScrollState == 2) && (Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) > this.mCloseEnough))
        continue;
      a(false);
      this.mIsBeingDragged = false;
      continue;
      a(paramMotionEvent);
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getChildCount();
    int j = paramInt3 - paramInt1;
    int k = paramInt4 - paramInt2;
    int m = getPaddingLeft();
    int n = getPaddingTop();
    int i1 = getPaddingRight();
    int i2 = getPaddingBottom();
    int i3 = getScrollX();
    int i4 = 0;
    int i5 = 0;
    View localView2;
    int i16;
    label156: int i17;
    int i19;
    int i20;
    label208: int i9;
    int i10;
    int i11;
    if (i5 < i)
    {
      localView2 = getChildAt(i5);
      if (localView2.getVisibility() == 8)
        break label659;
      ct localct2 = (ct)localView2.getLayoutParams();
      if (!localct2.a)
        break label659;
      int i13 = 0x7 & localct2.b;
      int i14 = 0x70 & localct2.b;
      switch (i13)
      {
      case 2:
      case 4:
      default:
        i16 = m;
        switch (i14)
        {
        default:
          i17 = n;
          int i25 = i2;
          i19 = n;
          i20 = i25;
          int i21 = i16 + i3;
          localView2.layout(i21, i17, i21 + localView2.getMeasuredWidth(), i17 + localView2.getMeasuredHeight());
          i9 = i4 + 1;
          i10 = i19;
          i2 = i20;
          i11 = i1;
        case 48:
        case 16:
        case 80:
        }
      case 3:
      case 1:
      case 5:
      }
    }
    for (int i12 = m; ; i12 = m)
    {
      i5++;
      m = i12;
      i1 = i11;
      n = i10;
      i4 = i9;
      break;
      int i26 = m + localView2.getMeasuredWidth();
      i16 = m;
      m = i26;
      break label156;
      i16 = Math.max((j - localView2.getMeasuredWidth()) / 2, m);
      break label156;
      int i15 = j - i1 - localView2.getMeasuredWidth();
      i1 += localView2.getMeasuredWidth();
      i16 = i15;
      break label156;
      int i23 = n + localView2.getMeasuredHeight();
      int i24 = n;
      i20 = i2;
      i19 = i23;
      i17 = i24;
      break label208;
      i17 = Math.max((k - localView2.getMeasuredHeight()) / 2, n);
      int i22 = i2;
      i19 = n;
      i20 = i22;
      break label208;
      i17 = k - i2 - localView2.getMeasuredHeight();
      int i18 = i2 + localView2.getMeasuredHeight();
      i19 = n;
      i20 = i18;
      break label208;
      int i6 = j - m - i1;
      for (int i7 = 0; i7 < i; i7++)
      {
        View localView1 = getChildAt(i7);
        if (localView1.getVisibility() == 8)
          continue;
        ct localct1 = (ct)localView1.getLayoutParams();
        if (localct1.a)
          continue;
        cs localcs = a(localView1);
        if (localcs == null)
          continue;
        int i8 = m + (int)(i6 * localcs.e);
        if (localct1.d)
        {
          localct1.d = false;
          localView1.measure(View.MeasureSpec.makeMeasureSpec((int)(i6 * localct1.c), 1073741824), View.MeasureSpec.makeMeasureSpec(k - n - i2, 1073741824));
        }
        localView1.layout(i8, n, i8 + localView1.getMeasuredWidth(), n + localView1.getMeasuredHeight());
      }
      this.mTopPageBounds = n;
      this.mBottomPageBounds = (k - i2);
      this.mDecorChildCount = i4;
      if (this.mFirstLayout)
        a(this.mCurItem, false, 0, false);
      this.mFirstLayout = false;
      return;
      label659: i9 = i4;
      i10 = n;
      i11 = i1;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    setMeasuredDimension(getDefaultSize(0, paramInt1), getDefaultSize(0, paramInt2));
    int i = getMeasuredWidth();
    this.mGutterSize = Math.min(i / 10, this.mDefaultGutterSize);
    int j = i - getPaddingLeft() - getPaddingRight();
    int k = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
    int m = getChildCount();
    int n = 0;
    View localView2;
    ct localct2;
    int i5;
    int i6;
    int i7;
    label167: int i8;
    label182: label192: int i9;
    int i10;
    if (n < m)
    {
      localView2 = getChildAt(n);
      if (localView2.getVisibility() != 8)
      {
        localct2 = (ct)localView2.getLayoutParams();
        if ((localct2 != null) && (localct2.a))
        {
          int i3 = 0x7 & localct2.b;
          int i4 = 0x70 & localct2.b;
          i5 = -2147483648;
          i6 = -2147483648;
          if ((i4 != 48) && (i4 != 80))
            break label294;
          i7 = 1;
          if ((i3 != 3) && (i3 != 5))
            break label300;
          i8 = 1;
          if (i7 == 0)
            break label306;
          i5 = 1073741824;
          if (localct2.width == -2)
            break label478;
          i9 = 1073741824;
          if (localct2.width == -1)
            break label471;
          i10 = localct2.width;
        }
      }
    }
    while (true)
    {
      if (localct2.height != -2)
      {
        i6 = 1073741824;
        if (localct2.height == -1);
      }
      for (int i11 = localct2.height; ; i11 = k)
      {
        localView2.measure(View.MeasureSpec.makeMeasureSpec(i10, i9), View.MeasureSpec.makeMeasureSpec(i11, i6));
        if (i7 != 0)
          k -= localView2.getMeasuredHeight();
        while (true)
        {
          n++;
          break;
          label294: i7 = 0;
          break label167;
          label300: i8 = 0;
          break label182;
          label306: if (i8 == 0)
            break label192;
          i6 = 1073741824;
          break label192;
          if (i8 == 0)
            continue;
          j -= localView2.getMeasuredWidth();
        }
        this.mChildWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(j, 1073741824);
        this.mChildHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(k, 1073741824);
        this.mInLayout = true;
        b();
        this.mInLayout = false;
        int i1 = getChildCount();
        for (int i2 = 0; i2 < i1; i2++)
        {
          View localView1 = getChildAt(i2);
          if (localView1.getVisibility() == 8)
            continue;
          ct localct1 = (ct)localView1.getLayoutParams();
          if ((localct1 != null) && (localct1.a))
            continue;
          localView1.measure(View.MeasureSpec.makeMeasureSpec((int)(j * localct1.c), 1073741824), this.mChildHeightMeasureSpec);
        }
        return;
      }
      label471: i10 = j;
      continue;
      label478: i9 = i5;
      i10 = j;
    }
  }

  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    int i = -1;
    int j = getChildCount();
    int k;
    if ((paramInt & 0x2) != 0)
    {
      i = 1;
      k = 0;
    }
    while (k != j)
    {
      View localView = getChildAt(k);
      if (localView.getVisibility() == 0)
      {
        cs localcs = a(localView);
        if ((localcs != null) && (localcs.b == this.mCurItem) && (localView.requestFocus(paramInt, paramRect)))
        {
          return true;
          k = j - 1;
          j = i;
          continue;
        }
      }
      k += i;
    }
    return false;
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    if (!(paramParcelable instanceof ReaderViewPager.SavedState))
    {
      super.onRestoreInstanceState(paramParcelable);
      return;
    }
    ReaderViewPager.SavedState localSavedState = (ReaderViewPager.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if (this.mAdapter != null)
    {
      this.mAdapter.restoreState(localSavedState.b, localSavedState.c);
      a(localSavedState.a, false, true);
      return;
    }
    this.mRestoredCurItem = localSavedState.a;
    this.mRestoredAdapterState = localSavedState.b;
    this.mRestoredClassLoader = localSavedState.c;
  }

  public Parcelable onSaveInstanceState()
  {
    ReaderViewPager.SavedState localSavedState = new ReaderViewPager.SavedState(super.onSaveInstanceState());
    localSavedState.a = this.mCurItem;
    if (this.mAdapter != null)
      localSavedState.b = this.mAdapter.saveState();
    return localSavedState;
  }

  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3)
      a(paramInt1, paramInt3, this.mPageMargin, this.mPageMargin);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.mFakeDragging)
      return true;
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getEdgeFlags() != 0))
      return false;
    if ((this.mAdapter == null) || (this.mAdapter.getCount() == 0))
      return false;
    if (this.mVelocityTracker == null)
      this.mVelocityTracker = VelocityTracker.obtain();
    this.mVelocityTracker.addMovement(paramMotionEvent);
    int i = 0xFF & paramMotionEvent.getAction();
    boolean bool1 = false;
    switch (i)
    {
    case 4:
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    case 5:
    case 6:
    }
    while (true)
    {
      if (bool1)
        ViewCompat.postInvalidateOnAnimation(this);
      return true;
      this.mScroller.abortAnimation();
      this.mPopulatePending = false;
      b();
      this.mIsBeingDragged = true;
      b(1);
      float f8 = paramMotionEvent.getX();
      this.mInitialMotionX = f8;
      this.mLastMotionX = f8;
      float f9 = paramMotionEvent.getY();
      this.mInitialMotionY = f9;
      this.mLastMotionY = f9;
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, 0);
      bool1 = false;
      continue;
      float f5;
      float f7;
      if (!this.mIsBeingDragged)
      {
        int i3 = MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId);
        float f3 = MotionEventCompat.getX(paramMotionEvent, i3);
        float f4 = Math.abs(f3 - this.mLastMotionX);
        f5 = MotionEventCompat.getY(paramMotionEvent, i3);
        float f6 = Math.abs(f5 - this.mLastMotionY);
        if ((f4 > this.mTouchSlop) && (f4 > f6))
        {
          this.mIsBeingDragged = true;
          if (f3 - this.mInitialMotionX <= 0.0F)
            break label368;
          f7 = this.mInitialMotionX + this.mTouchSlop;
        }
      }
      while (true)
      {
        this.mLastMotionX = f7;
        this.mLastMotionY = f5;
        b(1);
        b(true);
        boolean bool4 = this.mIsBeingDragged;
        bool1 = false;
        if (!bool4)
          break;
        bool1 = false | a(MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId)));
        break;
        label368: f7 = this.mInitialMotionX - this.mTouchSlop;
      }
      boolean bool3 = this.mIsBeingDragged;
      bool1 = false;
      if (!bool3)
        continue;
      VelocityTracker localVelocityTracker = this.mVelocityTracker;
      localVelocityTracker.computeCurrentVelocity(1000, this.mMaximumVelocity);
      int k = (int)VelocityTrackerCompat.getXVelocity(localVelocityTracker, this.mActivePointerId);
      this.mPopulatePending = true;
      int m = e();
      int n = getScrollX();
      cs localcs1 = g();
      int i1 = localcs1.b;
      float f1 = (n / m - localcs1.e) / localcs1.d;
      int i2;
      if ((Math.abs((int)(MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId)) - this.mInitialMotionX)) > this.mFlingDistance) && (Math.abs(k) > this.mMinimumVelocity))
      {
        if (k > 0);
        while (true)
        {
          i2 = i1;
          if (this.mItems.size() > 0)
          {
            cs localcs2 = (cs)this.mItems.get(0);
            cs localcs3 = (cs)this.mItems.get(-1 + this.mItems.size());
            i2 = Math.max(localcs2.b, Math.min(i2, localcs3.b));
          }
          a(i2, true, true, k);
          this.mActivePointerId = -1;
          h();
          bool1 = this.mLeftEdge.onRelease() | this.mRightEdge.onRelease();
          break;
          i1++;
        }
      }
      float f2;
      if (i1 >= this.mCurItem)
        f2 = 0.4F;
      while (true)
      {
        i2 = (int)(f2 + (f1 + i1));
        break;
        f2 = 0.6F;
      }
      boolean bool2 = this.mIsBeingDragged;
      bool1 = false;
      if (!bool2)
        continue;
      a(this.mCurItem, true, 0, false);
      this.mActivePointerId = -1;
      h();
      bool1 = this.mLeftEdge.onRelease() | this.mRightEdge.onRelease();
      continue;
      int j = MotionEventCompat.getActionIndex(paramMotionEvent);
      this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, j);
      this.mActivePointerId = MotionEventCompat.getPointerId(paramMotionEvent, j);
      bool1 = false;
      continue;
      a(paramMotionEvent);
      this.mLastMotionX = MotionEventCompat.getX(paramMotionEvent, MotionEventCompat.findPointerIndex(paramMotionEvent, this.mActivePointerId));
      bool1 = false;
    }
  }

  public void removeView(View paramView)
  {
    if (this.mInLayout)
    {
      removeViewInLayout(paramView);
      return;
    }
    super.removeView(paramView);
  }

  public void setAdapter(PagerAdapter paramPagerAdapter)
  {
    if (this.mAdapter != null)
    {
      this.mAdapter.unregisterDataSetObserver(this.mObserver);
      this.mAdapter.startUpdate(this);
      for (int i = 0; i < this.mItems.size(); i++)
      {
        cs localcs = (cs)this.mItems.get(i);
        this.mAdapter.destroyItem(this, localcs.b, localcs.a);
      }
      this.mAdapter.finishUpdate(this);
      this.mItems.clear();
      for (int j = 0; j < getChildCount(); j++)
      {
        if (((ct)getChildAt(j).getLayoutParams()).a)
          continue;
        removeViewAt(j);
        j--;
      }
      this.mCurItem = 0;
      scrollTo(0, 0);
    }
    this.mAdapter = paramPagerAdapter;
    this.mExpectedAdapterCount = 0;
    boolean bool;
    if (this.mAdapter != null)
    {
      if (this.mObserver == null)
        this.mObserver = new cx(this, 0);
      this.mAdapter.registerDataSetObserver(this.mObserver);
      this.mPopulatePending = false;
      bool = this.mFirstLayout;
      this.mFirstLayout = true;
      this.mExpectedAdapterCount = this.mAdapter.getCount();
      if (this.mRestoredCurItem >= 0)
      {
        this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
        a(this.mRestoredCurItem, false, true);
        this.mRestoredCurItem = -1;
        this.mRestoredAdapterState = null;
        this.mRestoredClassLoader = null;
      }
    }
    else
    {
      return;
    }
    if (!bool)
    {
      b();
      return;
    }
    requestLayout();
  }

  public void setCurrentItem(int paramInt, boolean paramBoolean)
  {
    this.mPopulatePending = false;
    a(paramInt, paramBoolean, false);
  }

  public void setOffscreenPageLimit(int paramInt)
  {
    if (paramInt <= 0)
    {
      Log.w("ViewPager", "Requested offscreen page limit " + paramInt + " too small; defaulting to 1");
      paramInt = 1;
    }
    if (paramInt != this.mOffscreenPageLimit)
    {
      this.mOffscreenPageLimit = paramInt;
      b();
    }
  }

  public void setOnPageChangeListener(cw paramcw)
  {
    this.mOnPageChangeListener = paramcw;
  }

  public void setPageMargin(int paramInt)
  {
    int i = this.mPageMargin;
    this.mPageMargin = paramInt;
    int j = getWidth();
    a(j, j, paramInt, i);
    requestLayout();
  }

  public void setPageMarginDrawable(int paramInt)
  {
    setPageMarginDrawable(getContext().getResources().getDrawable(paramInt));
  }

  public void setPageMarginDrawable(Drawable paramDrawable)
  {
    this.mMarginDrawable = paramDrawable;
    if (paramDrawable != null)
      refreshDrawableState();
    if (paramDrawable == null);
    for (boolean bool = true; ; bool = false)
    {
      setWillNotDraw(bool);
      invalidate();
      return;
    }
  }

  public void setPageTransformer$7c662580(boolean paramBoolean, K paramK)
  {
    int i = 1;
    int j;
    if (Build.VERSION.SDK_INT >= 11)
    {
      if (paramK == null)
        break label140;
      j = i;
    }
    while (true)
    {
      label27: int i1;
      if (this.mPageTransformer$572aa01b != null)
      {
        int m = i;
        if (j == m)
          break label152;
        i1 = i;
        label37: this.mPageTransformer$572aa01b = paramK;
        if ((Build.VERSION.SDK_INT >= 7) && (this.mSetChildrenDrawingOrderEnabled != null));
      }
      try
      {
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = Boolean.TYPE;
        this.mSetChildrenDrawingOrderEnabled = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", arrayOfClass);
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        try
        {
          while (true)
          {
            Method localMethod = this.mSetChildrenDrawingOrderEnabled;
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = Boolean.valueOf(j);
            localMethod.invoke(this, arrayOfObject);
            if (j == 0)
              break label190;
            if (paramBoolean)
              i = 2;
            this.mDrawingOrder = i;
            if (i1 != 0)
              b();
            return;
            label140: int k = 0;
            break;
            int n = 0;
            break label27;
            label152: i1 = 0;
            break label37;
            localNoSuchMethodException = localNoSuchMethodException;
            Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", localNoSuchMethodException);
          }
        }
        catch (Exception localException)
        {
          while (true)
          {
            Log.e("ViewPager", "Error changing children drawing order", localException);
            continue;
            label190: this.mDrawingOrder = 0;
          }
        }
      }
    }
  }

  protected boolean verifyDrawable(Drawable paramDrawable)
  {
    return (super.verifyDrawable(paramDrawable)) || (paramDrawable == this.mMarginDrawable);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.ReaderViewPager
 * JD-Core Version:    0.6.0
 */