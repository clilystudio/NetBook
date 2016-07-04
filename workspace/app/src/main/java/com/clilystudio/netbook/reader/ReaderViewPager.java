package com.clilystudio.netbook.reader;

import android.content.Context;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ParcelableCompat;
import android.support.v4.os.ParcelableCompatCreatorCallbacks;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.KeyEventCompat;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.VelocityTrackerCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.widget.EdgeEffectCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SoundEffectConstants;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

public class ReaderViewPager extends ViewGroup {
    private static final int CLOSE_ENOUGH = 2;
    private static final Comparator<cs> COMPARATOR = new Comparator<cs>() {
        @Override
        public int compare(cs lhs, cs rhs) {
            return lhs.b - rhs.b;
        }
    };
    private static final boolean DEBUG = false;
    private static final int DEFAULT_GUTTER_SIZE = 16;
    private static final int DEFAULT_OFFSCREEN_PAGES = 1;
    private static final int DRAW_ORDER_DEFAULT = 0;
    private static final int DRAW_ORDER_FORWARD = 1;
    private static final int DRAW_ORDER_REVERSE = 2;
    private static final int INVALID_POINTER = -1;
    private static final int[] LAYOUT_ATTRS = new int[]{16842931};
    private static final int MAX_SETTLE_DURATION = 600;
    private static final int MIN_DISTANCE_FOR_FLING = 25;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final String TAG = "ViewPager";
    //    private static final boolean USE_CACHE;
    private static final Interpolator sInterpolator = new Interpolator() {

        @Override
        public float getInterpolation(float input) {
            float f2 = input - 1.0f;
            return 1.0f + f2 * (f2 * (f2 * (f2 * f2)));
        }
    };
    private static final Comparator<View> sPositionComparator = new Comparator<View>() {
        @Override
        public int compare(View lhs, View rhs) {
            ct ct2 = (ct) lhs.getLayoutParams();
            ct ct3 = (ct) rhs.getLayoutParams();
            if (ct2.a != ct3.a) {
                if (ct2.a) {
                    return 1;
                }
                return -1;
            }
            return ct2.e - ct3.e;
        }
    };

    private final Runnable mEndScrollRunnable;
    private final ArrayList<cs> mItems = new ArrayList();
    private final cs mTempItem = new cs();
    private final Rect mTempRect = new Rect();
    private int mActivePointerId = -1;
    private PagerAdapter mAdapter;
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
    private int mExpectedAdapterCount;
    private long mFakeDragBeginTime;
    private boolean mFakeDragging;
    private boolean mFirstLayout = true;
    private float mFirstOffset = -3.4028235E38f;
    private int mFlingDistance;
    private int mGutterSize;
    private boolean mIgnoreGutter;
    private boolean mInLayout;
    private float mInitialMotionX;
    private float mInitialMotionY;
    private cw mInternalPageChangeListener;
    private boolean mIsBeingDragged;
    private boolean mIsUnableToDrag;
    private float mLastMotionX;
    private float mLastMotionY;
    private float mLastOffset = Float.MAX_VALUE;
    private EdgeEffectCompat mLeftEdge;
    private Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private boolean mNeedCalculatePageOffsets = false;
    private DataSetObserver mObserver;
    private int mOffscreenPageLimit = 1;
    private cw mOnPageChangeListener;
    private int mPageMargin;
    private K mPageTransformer$572aa01b;
    private boolean mPopulatePending;
    private Parcelable mRestoredAdapterState = null;
    private ClassLoader mRestoredClassLoader = null;
    private int mRestoredCurItem = -1;
    private EdgeEffectCompat mRightEdge;
    private int mScrollState;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private Method mSetChildrenDrawingOrderEnabled;
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;

    public ReaderViewPager(Context context) {
        super(context);
        this.mEndScrollRunnable = new Runnable() {
            @Override
            public void run() {
                ReaderViewPager.a(ReaderViewPager.this, 0);
                ReaderViewPager.this.b();
            }
        };
        this.mScrollState = 0;
        this.d();
    }

    public ReaderViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mEndScrollRunnable = new new Runnable() {
            @Override
            public void run() {
                ReaderViewPager.a(ReaderViewPager.this, 0);
                ReaderViewPager.this.b();
            }
        };
        this.mScrollState = 0;
        this.d();
    }

    static /* synthetic */ PagerAdapter a(ReaderViewPager readerViewPager) {
        return readerViewPager.mAdapter;
    }

    static /* synthetic */ void a(ReaderViewPager readerViewPager, int n) {
        readerViewPager.b(0);
    }

    static /* synthetic */ int b(ReaderViewPager readerViewPager) {
        return readerViewPager.mCurItem;
    }

    static /* synthetic */ int[] c() {
        return LAYOUT_ATTRS;
    }

    /*
     * Enabled aggressive block sorting
     */
    private Rect a(Rect rect, View view) {
        Rect rect2 = rect == null ? new Rect() : rect;
        if (view == null) {
            rect2.set(0, 0, 0, 0);
            return rect2;
        }
        rect2.left = view.getLeft();
        rect2.right = view.getRight();
        rect2.top = view.getTop();
        rect2.bottom = view.getBottom();
        ViewParent viewParent = view.getParent();
        while (viewParent instanceof ViewGroup && viewParent != this) {
            ViewGroup viewGroup = (ViewGroup) viewParent;
            rect2.left += viewGroup.getLeft();
            rect2.right += viewGroup.getRight();
            rect2.top += viewGroup.getTop();
            rect2.bottom += viewGroup.getBottom();
            viewParent = viewGroup.getParent();
        }
        return rect2;
    }

    private cs a(int n, int n2) {
        cs cs2 = new cs();
        cs2.b = n;
        cs2.a = this.mAdapter.instantiateItem(this, n);
        cs2.d = this.mAdapter.getPageWidth(n);
        if (n2 < 0 || n2 >= this.mItems.size()) {
            this.mItems.add(cs2);
            return cs2;
        }
        this.mItems.add(n2, cs2);
        return cs2;
    }

    private cs a(View view) {
        for (int i = 0; i < this.mItems.size(); ++i) {
            cs cs2 = this.mItems.get(i);
            if (!this.mAdapter.isViewFromObject(view, cs2.a)) continue;
            return cs2;
        }
        return null;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n, float f, int n2) {
        if (this.mDecorChildCount > 0) {
            int n3 = this.getScrollX();
            int n4 = this.getPaddingLeft();
            int n5 = this.getPaddingRight();
            int n6 = this.getWidth();
            int n7 = this.getChildCount();
            for (int i = 0; i < n7; ++i) {
                int n8;
                int n9;
                View view = this.getChildAt(i);
                ct ct2 = (ct) ((Object) view.getLayoutParams());
                if (ct2.a != false) {
                    int n10;
                    int n11;
                    switch (7 & ct2.b) {
                        default: {
                            n10 = n4;
                            int n12 = n5;
                            n9 = n4;
                            n8 = n12;
                            break;
                        }
                        case 3: {
                            int n13 = n4 + view.getWidth();
                            int n14 = n4;
                            n8 = n5;
                            n9 = n13;
                            n10 = n14;
                            break;
                        }
                        case 1: {
                            n10 = Math.max((n6 - view.getMeasuredWidth()) / 2, n4);
                            int n15 = n5;
                            n9 = n4;
                            n8 = n15;
                            break;
                        }
                        case 5: {
                            n10 = n6 - n5 - view.getMeasuredWidth();
                            int n16 = n5 + view.getMeasuredWidth();
                            n9 = n4;
                            n8 = n16;
                        }
                    }
                    if ((n11 = n10 + n3 - view.getLeft()) != 0) {
                        view.offsetLeftAndRight(n11);
                    }
                } else {
                    int n17 = n5;
                    n9 = n4;
                    n8 = n17;
                }
                int n18 = n8;
                n4 = n9;
                n5 = n18;
            }
        }
        if (this.mPageTransformer$572aa01b != null) {
            this.getScrollX();
            int n19 = this.getChildCount();
            for (int i = 0; i < n19; ++i) {
                View view = this.getChildAt(i);
                if (((ct) view.getLayoutParams()).a != false) continue;
                view.getLeft();
                this.e();
            }
        }
        this.mCalledSuper = true;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n, int n2, int n3, int n4) {
        if (n2 > 0 && !this.mItems.isEmpty()) {
            int n5 = n3 + (n - this.getPaddingLeft() - this.getPaddingRight());
            int n6 = n4 + (n2 - this.getPaddingLeft() - this.getPaddingRight());
            int n7 = (int) ((float) this.getScrollX() / (float) n6 * (float) n5);
            this.scrollTo(n7, this.getScrollY());
            if (!this.mScroller.isFinished()) {
                int n8 = this.mScroller.getDuration() - this.mScroller.timePassed();
                cs cs2 = this.d(this.mCurItem);
                this.mScroller.startScroll(n7, 0, (int) (cs2.e * (float) n), 0, n8);
            }
            return;
        }
        cs cs3 = this.d(this.mCurItem);
        float f = cs3 != null ? Math.min(cs3.e, this.mLastOffset) : 0.0f;
        int n9 = (int) (f * (float) (n - this.getPaddingLeft() - this.getPaddingRight()));
        if (n9 == this.getScrollX()) return;
        this.a(false);
        this.scrollTo(n9, this.getScrollY());
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(int n, boolean bl, int n2, boolean bl2) {
        cs cs2 = this.d(n);
        int n3 = 0;
        if (cs2 != null) {
            n3 = (int) ((float) this.e() * Math.max(this.mFirstOffset, Math.min(cs2.e, this.mLastOffset)));
        }
        if (bl) {
            if (this.getChildCount() == 0) {
                this.b(false);
            } else {
                int n4 = this.getScrollX();
                int n5 = this.getScrollY();
                int n6 = n3 - n4;
                int n7 = 0 - n5;
                if (n6 == 0 && n7 == 0) {
                    this.a(false);
                    this.b();
                    this.b(0);
                } else {
                    int n8;
                    this.b(true);
                    this.b(2);
                    int n9 = this.e();
                    int n10 = n9 / 2;
                    float f = Math.min(1.0f, 1.0f * (float) Math.abs(n6) / (float) n9);
                    float f2 = (float) n10 + (float) n10 * (float) Math.sin((float) (0.4712389167638204 * (double) (f - 0.5f)));
                    int n11 = Math.abs(n2);
                    if (n11 > 0) {
                        n8 = 4 * Math.round(1000.0f * Math.abs(f2 / (float) n11));
                    } else {
                        float f3 = (float) n9 * this.mAdapter.getPageWidth(this.mCurItem);
                        n8 = (int) (100.0f * (1.0f + (float) Math.abs(n6) / (f3 + (float) this.mPageMargin)));
                    }
                    int n12 = Math.min(n8, 600);
                    this.mScroller.startScroll(n4, n5, n6, n7, n12);
                    ViewCompat.postInvalidateOnAnimation(this);
                }
            }
            if (bl2 && this.mOnPageChangeListener != null) {
                this.mOnPageChangeListener.a(n);
            }
            if (bl2 && this.mInternalPageChangeListener != null) {
                this.mInternalPageChangeListener.a(n);
            }
            return;
        }
        if (bl2 && this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.a(n);
        }
        if (bl2 && this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.a(n);
        }
        this.a(false);
        this.scrollTo(n3, 0);
    }

    private void a(int n, boolean bl, boolean bl2) {
        this.a(n, bl, bl2, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(MotionEvent motionEvent) {
        int n = MotionEventCompat.getActionIndex(motionEvent);
        if (MotionEventCompat.getPointerId(motionEvent, n) == this.mActivePointerId) {
            int n2 = n == 0 ? 1 : 0;
            this.mLastMotionX = MotionEventCompat.getX(motionEvent, n2);
            this.mActivePointerId = MotionEventCompat.getPointerId(motionEvent, n2);
            if (this.mVelocityTracker != null) {
                this.mVelocityTracker.clear();
            }
        }
    }

    private void a(cs var1_1, int var2_2, cs var3_3) {
        int var4_4 = this.mAdapter.getCount();
        float var6_6 = this.e() > 0 ? (float) this.mPageMargin / (float) this.e() : 0.0f;
        if (var3_3 != null) {
            int var24_7 = var3_3.b;
            if (var24_7 < var1_1.b) {
                float var40_10 = var6_6 + (var3_3.e + var3_3.d);
                int var41_11 = 0;
                int var42_12 = var24_7 + 1;
                while (var42_12 <= var1_1.b && var41_11 < this.mItems.size()) {
                    cs var43_13 = this.mItems.get(var41_11);
                    while (var42_12 > var43_13.b && var41_11 < this.mItems.size() - 1) {
                        var43_13 = this.mItems.get(var41_11);
                        var41_11++;
                    }
                    float var45_15 = var40_10;
                    for (int var46_16 = var42_12; var46_16 < var43_13.b; var46_16++) {
                        var45_15 = var45_15 + (var6_6 + this.mAdapter.getPageWidth((int) var46_16));
                    }
                    var43_13.e = var45_15;
                    var40_10 = var45_15 + (var6_6 + var43_13.d);
                    var42_12 = var43_13.b;
                }
            } else if (var24_7 > var1_1.b) {
                int var28_23 = this.mItems.size() - 1;
                float var29_24 = var3_3.e;
                int var30_25 = var24_7 - 1;
                while (var30_25 >= var1_1.b && var28_23 >= 0) {
                    cs var31_32 = this.mItems.get(var28_23);
                    while (var30_25 < var31_32.b && var28_23 > 0) {
                        var31_32 = this.mItems.get(var28_23);
                        var28_23--;
                    }
                    float var33_27 = var29_24;
                    for (int var34_28 = var30_25; var34_28 > var31_32.b; var34_28--) {
                        var33_27 = var33_27 - (var6_6 + this.mAdapter.getPageWidth((int) var34_28));
                    }
                    var31_32.e = var33_27 - (var6_6 + var31_32.d);
                    var29_24 = var31_32.e;
                    var30_25 = var31_32.b;
                }
            }
        }
        int var7_33 = this.mItems.size();
        float var8_34 = var1_1.e;
        int var9_35 = var1_1.b - 1;
        this.mFirstOffset = var1_1.b == 0 ? var1_1.e : -1 * Float.MIN_VALUE;
        ;
        this.mLastOffset = var1_1.b == this.mAdapter.getCount() - 1 ? var1_1.e + var1_1.d - 1.0f : Float.MAX_VALUE;
        int var12_38 = var2_2 - 1;
        while (var12_38 >= 0) {
            cs var20_39 = this.mItems.get(var12_38);
            while (var9_35 > var20_39.b) {
                var8_34 -= var6_6 + this.mAdapter.getPageWidth(var9_35);
                var9_35--;
            }
            var20_39.e = var8_34 -= var6_6 + var20_39.d;
            if (var20_39.b == 0) {
                this.mFirstOffset = var8_34;
            }
            var9_35--;
            var12_38--;
        }
        float var13_43 = var6_6 + (var1_1.e + var1_1.d);
        int var14_44 = 1 + var1_1.b;
        int var15_45 = var2_2 + 1;
        while (var15_45 < var7_33) {
            cs var16_46 = this.mItems.get(var15_45);
            while (var14_44 < var16_46.b) {
                var13_43 += var6_6 + this.mAdapter.getPageWidth(var14_44);
                var14_44++;
            }
            if (var16_46.b == var4_4 - 1) {
                this.mLastOffset = var13_43 + var16_46.d - 1.0f;
            }
            var16_46.e = var13_43;
            var13_43 += var6_6 + var16_46.d;
            ++var14_44;
            var15_45++;
        }
        this.mNeedCalculatePageOffsets = false;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void a(boolean bl) {
        boolean bl2 = this.mScrollState == 2;
        if (bl2) {
            this.b(false);
            this.mScroller.abortAnimation();
            int n = this.getScrollX();
            int n2 = this.getScrollY();
            int n3 = this.mScroller.getCurrX();
            int n4 = this.mScroller.getCurrY();
            if (n != n3 || n2 != n4) {
                this.scrollTo(n3, n4);
            }
        }
        this.mPopulatePending = false;
        boolean bl3 = bl2;
        for (int i = 0; i < this.mItems.size(); ++i) {
            cs cs2 = this.mItems.get(i);
            if (!cs2.c) continue;
            cs2.c = false;
            bl3 = true;
        }
        if (bl3) {
            if (!bl) {
                this.mEndScrollRunnable.run();
                return;
            }
            ViewCompat.postOnAnimation(this, this.mEndScrollRunnable);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean a(float f) {
        float f2;
        boolean bl;
        boolean bl2;
        boolean bl3 = true;
        float f3 = this.mLastMotionX - f;
        this.mLastMotionX = f;
        float f4 = f3 + (float) this.getScrollX();
        int n = this.e();
        float f5 = (float) n * this.mFirstOffset;
        float f6 = (float) n * this.mLastOffset;
        cs cs2 = this.mItems.get(0);
        cs cs3 = this.mItems.get(-1 + this.mItems.size());
        if (cs2.b != 0) {
            f5 = cs2.e * (float) n;
            bl = false;
        } else {
            bl = bl3;
        }
        if (cs3.b != -1 + this.mAdapter.getCount()) {
            f2 = cs3.e * (float) n;
            bl3 = false;
        } else {
            f2 = f6;
        }
        if (f4 < f5) {
            bl2 = false;
            if (bl) {
                float f7 = f5 - f4;
                bl2 = this.mLeftEdge.onPull(Math.abs(f7) / (float) n);
            }
        } else if (f4 > f2) {
            bl2 = false;
            if (bl3) {
                float f8 = f4 - f2;
                bl2 = this.mRightEdge.onPull(Math.abs(f8) / (float) n);
            }
            f5 = f2;
        } else {
            f5 = f4;
            bl2 = false;
        }
        this.mLastMotionX += f5 - (float) ((int) f5);
        this.scrollTo((int) f5, this.getScrollY());
        this.e((int) f5);
        return bl2;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean a(int n, boolean bl, boolean bl2, int n2) {
        int n3;
        if (this.mAdapter == null || this.mAdapter.getCount() <= 0) {
            this.b(false);
            return false;
        }
        if (!bl2 && this.mCurItem == n && this.mItems.size() != 0) {
            this.b(false);
            return false;
        }
        if (n < 0) {
            n = 0;
        } else if (n >= this.mAdapter.getCount()) {
            n = -1 + this.mAdapter.getCount();
        }
        if (n > (n3 = this.mOffscreenPageLimit) + this.mCurItem || n < this.mCurItem - n3) {
            for (int i = 0; i < this.mItems.size(); ++i) {
                this.mItems.get((int) i).c = true;
            }
        }
        int n4 = this.mCurItem;
        boolean bl3 = false;
        if (n4 != n) {
            bl3 = true;
        }
        if (!this.mFirstLayout) {
            this.c(n);
            this.a(n, bl, n2, bl3);
            return bl3;
        }
        this.mCurItem = n;
        if (bl3 && this.mOnPageChangeListener != null) {
            this.mOnPageChangeListener.a(n);
        }
        if (bl3 && this.mInternalPageChangeListener != null) {
            this.mInternalPageChangeListener.a(n);
        }
        this.requestLayout();
        return bl3;
    }

    /*
     * Enabled aggressive block sorting
     */
    private boolean a(View view, boolean bl, int n, int n2, int n3) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int n4 = view.getScrollX();
            int n5 = view.getScrollY();
            for (int i = -1 + viewGroup.getChildCount(); i >= 0; --i) {
                View view2 = viewGroup.getChildAt(i);
                if (n2 + n4 >= view2.getLeft() && n2 + n4 < view2.getRight() && n3 + n5 >= view2.getTop() && n3 + n5 < view2.getBottom() && this.a(view2, true, n, n2 + n4 - view2.getLeft(), n3 + n5 - view2.getTop()))
                    return true;
                {
                    continue;
                }
            }
        }
        if (!bl || !ViewCompat.canScrollHorizontally(view, -n)) return false;
        return true;
    }

    private cs b(View view) {
        ViewParent viewParent;
        while ((viewParent = view.getParent()) != this) {
            if (viewParent == null || !(viewParent instanceof View)) {
                return null;
            }
            view = (View) ((Object) viewParent);
        }
        return this.a(view);
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private void b(int n) {
        if (this.mScrollState == n) {
            return;
        }
        this.mScrollState = n;
        if (this.mPageTransformer$572aa01b != null) {
            boolean bl = n != 0;
            int n2 = this.getChildCount();
            for (int i = 0; i < n2; ++i) {
                int n3 = bl ? 2 : 0;
                ViewCompat.setLayerType(this.getChildAt(i), n3, null);
            }
        }
        if (this.mOnPageChangeListener == null) return;
        this.mOnPageChangeListener.b(n);
    }

    private void b(boolean bl) {
        if (this.mScrollingCacheEnabled != bl) {
            this.mScrollingCacheEnabled = bl;
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     * Lifted jumps to return sites
     */
    private void c(int var1_1) {
        int var2_5 = 2;
        cs var3_4 = null;
        if (this.mCurItem != var1_1) {
            var2_5 = this.mCurItem < var1_1 ? 66 : 17;
            var3_4 = this.d(this.mCurItem);
            this.mCurItem = var1_1;
        }
        if (this.mAdapter == null) {
            this.f();
            return;
        }
        if (this.mPopulatePending) {
            this.f();
            return;
        }
        if (this.getWindowToken() == null) return;
        this.mAdapter.startUpdate(this);
        int var5_7 = Math.max(0, this.mCurItem - this.mOffscreenPageLimit);
        int var6_8 = this.mAdapter.getCount();
        int var7_9 = Math.min(var6_8 - 1, this.mOffscreenPageLimit + this.mCurItem);
        if (var6_8 != this.mExpectedAdapterCount) {
            throw new IllegalStateException("The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " + this.mExpectedAdapterCount + ", found: " + var6_8 + " Pager class: " + this.getClass() + " Problematic adapter: " + this.mAdapter.getClass());
        }
        cs var9_14 = null;
        for (int var8_13 = 0; var8_13 < this.mItems.size(); ++var8_13) {
            var9_14 = this.mItems.get(var8_13);
            if (var9_14.b >= this.mCurItem) {
                if (var9_14.b != this.mCurItem && var6_8 > 0) {
                    var9_14 = this.a(this.mCurItem, var8_13);
                }
                cs var10_15 = var9_14;
                if (var10_15 != null) {
                    int var24_16 = var8_13 - 1;
                    cs var25_17 = var24_16 >= 0 ? this.mItems.get(var24_16) : null;
                    float var26_18 = 2.0f - var10_15.d + (float) this.getPaddingLeft() / (float) this.e();
                    int var27_19 = this.mCurItem - 1;
                    float var28_20 = 0.0f;
                    int var30_22 = var8_13;
                    int var31_23 = var24_16;
                    for (int var29_21 = var27_19; var29_21 >= 0; --var29_21) {
                        if (var28_20 >= var26_18 && var29_21 < var5_7) {
                            if (var25_17 == null) break;
                            if (var29_21 != var25_17.b || var25_17.c) continue;
                            this.mItems.remove(var31_23);
                            this.mAdapter.destroyItem(this, var29_21, (Object) var25_17.a);
                            --var30_22;
                            if (--var31_23 >= 0) {
                                var25_17 = this.mItems.get(var31_23);
                                continue;
                            }
                            var25_17 = null;
                            continue;
                        }
                        if (var25_17 != null && var29_21 == var25_17.b) {
                            var28_20 += var25_17.d;
                            if (--var31_23 >= 0) {
                                var25_17 = this.mItems.get(var31_23);
                                continue;
                            }
                            var25_17 = null;
                            continue;
                        }
                        var28_20 += this.a((int) var29_21, (int) (var31_23 + 1)).d;
                        ++var30_22;
                        var25_17 = var31_23 >= 0 ? this.mItems.get(var31_23) : null;
                    }
                    var32_24 = var10_15.d;
                    var33_25 = var30_22 + 1;
                    if (var32_24 >= 2.0f)**GOTO lbl103
                    var34_26 = var33_25 < this.mItems.size() ? this.mItems.get(var33_25) : null;
                    var35_27 = 2.0f + (float) this.getPaddingRight() / (float) this.e();
                    for (var36_28 = 1 + this.mCurItem; var36_28 < var6_8; ++var36_28) {
                        if (var32_24 < var35_27 || var36_28 <= var7_9)**GOTO lbl84
                        if (var34_26 == null) break;
                        if (var36_28 != var34_26.b || var34_26.c)**GOTO lbl96
                        this.mItems.remove(var33_25);
                        this.mAdapter.destroyItem(this, var36_28, (Object) var34_26.a);
                        var47_38 = var33_25 < this.mItems.size() ? this.mItems.get(var33_25) : null;
                        var48_39 = var32_24;
                        var40_32 = var47_38;
                        var41_33 = var48_39;
                        **GOTO lbl99
                        lbl84:
                        // 1 sources:
                        if (var34_26 != null && var36_28 == var34_26.b) {
                            var43_35 = var32_24 + var34_26.d;
                            var44_36 = ++var33_25 < this.mItems.size() ? this.mItems.get(var33_25) : null;
                            var40_32 = var44_36;
                            var41_33 = var43_35;
                        } else {
                            var37_29 = this.a(var36_28, var33_25);
                            var38_30 = var32_24 + var37_29.d;
                            var39_31 = ++var33_25 < this.mItems.size() ? this.mItems.get(var33_25) : null;
                            var40_32 = var39_31;
                            var41_33 = var38_30;
                        }
                        **GOTO lbl99
                        lbl96:
                        // 1 sources:
                        var45_37 = var32_24;
                        var40_32 = var34_26;
                        var41_33 = var45_37;
                        lbl99:
                        // 4 sources:
                        var42_34 = var41_33;
                        var34_26 = var40_32;
                        var32_24 = var42_34;
                    }
                    lbl103:
                    // 3 sources:
                    this.a(var10_15, var30_22, var3_4);
                }
                lbl104:
                // 2 sources:
                var11_40 = this.mAdapter;
                var12_41 = this.mCurItem;
                var13_42 = var10_15 != null ? var10_15.a : null;
                var11_40.setPrimaryItem(this, var12_41, (Object) var13_42);
                this.mAdapter.finishUpdate(this);
                var14_43 = this.getChildCount();
                for (var15_44 = 0; var15_44 < var14_43; ++var15_44) {
                    var21_45 = this.getChildAt(var15_44);
                    var22_46 = (ct) var21_45.getLayoutParams();
                    var22_46.f = var15_44;
                    if (var22_46.a != false || var22_46.c != 0.0f || (var23_47 = this.a(var21_45)) == null) continue;
                    var22_46.c = var23_47.d;
                    var22_46.e = var23_47.b;
                }
                this.f();
                if (this.hasFocus() == false) return;
                var16_48 = this.findFocus();
                var17_49 = var16_48 != null ? this.b(var16_48) : null;
                if (var17_49 != null) {
                    if (var17_49.b == this.mCurItem) return;
                }
                var18_50 = 0;
                while (var18_50 < this.getChildCount()) {
                    View var19_51 = this.getChildAt(var18_50);
                    var20_52 = this.a(var19_51);
                    if (var20_52 != null && var20_52.b == this.mCurItem) {
                        if (var19_51.requestFocus(var2_5) != false) return;
                    }
                    ++var18_50;
                }
            }
        }
    }

    private cs d(int n) {
        for (int i = 0; i < this.mItems.size(); ++i) {
            cs cs2 = this.mItems.get(i);
            if (cs2.b != n) continue;
            return cs2;
        }
        return null;
    }

    private void d() {
        this.setWillNotDraw(false);
        this.setDescendantFocusability(262144);
        this.setFocusable(true);
        Context context = this.getContext();
        this.mScroller = new Scroller(context, sInterpolator);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        float f = context.getResources().getDisplayMetrics().density;
        this.mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop(viewConfiguration);
        this.mMinimumVelocity = (int) (400.0f * f);
        this.mMaximumVelocity = viewConfiguration.getScaledMaximumFlingVelocity();
        this.mLeftEdge = new EdgeEffectCompat(context);
        this.mRightEdge = new EdgeEffectCompat(context);
        this.mFlingDistance = (int) (25.0f * f);
        this.mCloseEnough = (int) (2.0f * f);
        this.mDefaultGutterSize = (int) (16.0f * f);
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegateCompat() {
            @Override
            public final void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityEvent) {
                super.onInitializeAccessibilityEvent(view, accessibilityEvent);
                accessibilityEvent.setClassName(ReaderViewPager.class.getName());
            }

            @Override
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setClassName(ReaderViewPager.class.getName());
                accessibilityNodeInfoCompat.setScrollable((ReaderViewPager.a(ReaderViewPager.this) != null && ReaderViewPager.a(ReaderViewPager.this).getCount() > 1));
                if (ReaderViewPager.a(ReaderViewPager.this) != null && ReaderViewPager.b(ReaderViewPager.this) >= 0 && ReaderViewPager.b(ReaderViewPager.this) < -1 + ReaderViewPager.a(ReaderViewPager.this).getCount()) {
                    accessibilityNodeInfoCompat.addAction(4096);
                }
                if (ReaderViewPager.a(ReaderViewPager.this) != null && ReaderViewPager.b(ReaderViewPager.this) > 0 && ReaderViewPager.b(ReaderViewPager.this) < ReaderViewPager.a(ReaderViewPager.this).getCount()) {
                    accessibilityNodeInfoCompat.addAction(8192);
                }
            }

            @Override
            public final boolean performAccessibilityAction(View view, int n, Bundle bundle) {
                if (super.performAccessibilityAction(view, n, bundle)) {
                    return true;
                }
                switch (n) {
                    default: {
                        return false;
                    }
                    case 4096: {
                        if (ReaderViewPager.a(ReaderViewPager.this) != null && ReaderViewPager.b(ReaderViewPager.this) >= 0 && ReaderViewPager.b(ReaderViewPager.this) < -1 + ReaderViewPager.a(ReaderViewPager.this).getCount()) {
                            ReaderViewPager.this.a(1 + ReaderViewPager.b(ReaderViewPager.this));
                            return true;
                        }
                        return false;
                    }
                    case 8192:
                }
                if (ReaderViewPager.a(ReaderViewPager.this) != null && ReaderViewPager.b(ReaderViewPager.this) > 0 && ReaderViewPager.b(ReaderViewPager.this) < ReaderViewPager.a(ReaderViewPager.this).getCount()) {
                    ReaderViewPager.this.a(-1 + ReaderViewPager.b(ReaderViewPager.this));
                    return true;
                }
                return false;
            }
        });
        if (ViewCompat.getImportantForAccessibility(this) == 0) {
            ViewCompat.setImportantForAccessibility(this, 1);
        }
    }

    private int e() {
        return this.getMeasuredWidth() - this.getPaddingLeft() - this.getPaddingRight();
    }

    private boolean e(int n) {
        boolean bl;
        if (this.mItems.size() == 0) {
            this.mCalledSuper = false;
            this.a(0, 0.0f, 0);
            boolean bl2 = this.mCalledSuper;
            bl = false;
            if (!bl2) {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
        } else {
            cs cs2 = this.g();
            int n2 = this.e();
            int n3 = n2 + this.mPageMargin;
            float f = (float) this.mPageMargin / (float) n2;
            SettingWidget settingWidget = cs2.b;
            float f2 = ((float) n / (float) n2 - cs2.e) / (f + cs2.d);
            int n4 = (int) (f2 * (float) n3);
            this.mCalledSuper = false;
            this.a((int) settingWidget, f2, n4);
            if (!this.mCalledSuper) {
                throw new IllegalStateException("onPageScrolled did not call superclass implementation");
            }
            bl = true;
        }
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     */
    private void f() {
        if (this.mDrawingOrder != 0) {
            if (this.mDrawingOrderedChildren == null) {
                this.mDrawingOrderedChildren = new ArrayList();
            } else {
                this.mDrawingOrderedChildren.clear();
            }
            int n = this.getChildCount();
            for (int i = 0; i < n; ++i) {
                View view = this.getChildAt(i);
                this.mDrawingOrderedChildren.add(view);
            }
            Collections.sort(this.mDrawingOrderedChildren, sPositionComparator);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    private boolean f(int var1_1) {
        block8:
        {
            var2_2 = this.findFocus();
            if (var2_2 != this)**GOTO lbl5
            var3_3 = null;
            **GOTO lbl8
            lbl5:
            // 1 sources:
            if (var2_2 == null)**GOTO lbl50
            var10_8 = var2_2.getParent();
            **GOTO lbl31
            lbl8:
            // 3 sources:
            do {
                var4_4 = FocusFinder.getInstance().findNextFocus(this, var3_3, var1_1);
                if (var4_4 == null || var4_4 == var3_3)**GOTO lbl21
                if (var1_1 != 17)**GOTO lbl16
                var8_5 = this.a((Rect) this.mTempRect, (View) var4_4).left;
                var9_6 = this.a((Rect) this.mTempRect, (View) var3_3).left;
                var5_7 = var3_3 != null && var8_5 >= var9_6 ? this.i() : var4_4.requestFocus();
                **GOTO lbl28
                lbl16:
                // 1 sources:
                if (var1_1 != 66)**GOTO lbl -1000
                var6_12 = this.a((Rect) this.mTempRect, (View) var4_4).left;
                var7_13 = this.a((Rect) this.mTempRect, (View) var3_3).left;
                var5_7 = var3_3 != null && var6_12 <= var7_13 ? this.j() : var4_4.requestFocus();
                **GOTO lbl28
                lbl21:
                // 1 sources:
                if (var1_1 == 17 || var1_1 == 1) {
                    var5_7 = this.i();
                } else if (var1_1 == 66 || var1_1 == 2) {
                    var5_7 = this.j();
                } else lbl - 1000: // 2 sources:
                {
                    var5_7 = false;
                }
                lbl28:
                // 5 sources:
                if (var5_7 == false) return var5_7;
                this.playSoundEffect(SoundEffectConstants.getContantForFocusDirection(var1_1));
                return var5_7;
                break;
            } while (true);
            lbl31:
            // 2 sources:
            while (var10_8 instanceof ViewGroup) {
                if (var10_8 == this) {
                    var11_9 = true;
                    break block8;
                }
                var10_8 = var10_8.getParent();
            }
            var11_9 = false;
        }
        if (var11_9)**GOTO lbl50
        var12_10 = new StringBuilder();
        var12_10.append(var2_2.getClass().getSimpleName());
        var14_11 = var2_2.getParent();
        while (var14_11 instanceof ViewGroup) {
            var12_10.append(" => ").append(var14_11.getClass().getSimpleName());
            var14_11 = var14_11.getParent();
        }
        Log.e("ViewPager", "arrowScroll tried to find focus based on non-child current focused view " + var12_10.toString());
        var3_3 = null;
        **GOTO lbl8
        lbl50:
        // 2 sources:
        var3_3 = var2_2;
        **while (true)
    }

    /*
     * Enabled aggressive block sorting
     */
    private cs g() {
        int n = this.e();
        float f = n > 0 ? (float) this.getScrollX() / (float) n : 0.0f;
        float f2 = n > 0 ? (float) this.mPageMargin / (float) n : 0.0f;
        float f3 = 0.0f;
        float f4 = 0.0f;
        Object object = -1;
        int n2 = 0;
        boolean bl = true;
        cs cs2 = null;
        while (n2 < this.mItems.size()) {
            cs cs3;
            int n3;
            cs cs4 = this.mItems.get(n2);
            if (!bl && cs4.b != object + 1) {
                cs cs5 = this.mTempItem;
                cs5.e = f2 + (f3 + f4);
                cs5.b = (SettingWidget) (object + 1);
                cs5.d = this.mAdapter.getPageWidth((int) cs5.b);
                n3 = n2 - 1;
                cs3 = cs5;
            } else {
                n3 = n2;
                cs3 = cs4;
            }
            float f5 = cs3.e;
            float f6 = f2 + (f5 + cs3.d);
            if (!bl) {
                if (f < f5) return cs2;
            }
            if (f < f6) return cs3;
            if (n3 == -1 + this.mItems.size()) {
                return cs3;
            }
            SettingWidget settingWidget = cs3.b;
            float f7 = cs3.d;
            int n4 = n3 + 1;
            f4 = f5;
            object = settingWidget;
            f3 = f7;
            cs2 = cs3;
            n2 = n4;
            bl = false;
        }
        return cs2;
    }

    private void h() {
        this.mIsBeingDragged = false;
        this.mIsUnableToDrag = false;
        if (this.mVelocityTracker != null) {
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
        }
    }

    private boolean i() {
        if (this.mCurItem > 0) {
            this.setCurrentItem(-1 + this.mCurItem, true);
            return true;
        }
        return false;
    }

    private boolean j() {
        if (this.mAdapter != null && this.mCurItem < -1 + this.mAdapter.getCount()) {
            this.setCurrentItem(1 + this.mCurItem, true);
            return true;
        }
        return false;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    final void a() {
        this.mExpectedAdapterCount = var1_1 = this.mAdapter.getCount();
        var2_2 = this.mItems.size() < 1 + (this.mOffscreenPageLimit << 1) && this.mItems.size() < var1_1;
        var3_3 = this.mCurItem;
        var4_4 = false;
        var5_5 = var3_3;
        var6_6 = var2_2;
        var7_7 = 0;
        do {
            if (var7_7 >= this.mItems.size())**GOTO lbl41
            var11_8 = this.mItems.get(var7_7);
            var12_9 = this.mAdapter.getItemPosition(var11_8.a);
            if (var12_9 == -1)**GOTO lbl57
            if (var12_9 != -2)**GOTO lbl32
            this.mItems.remove(var7_7);
            var19_15 = var7_7 - 1;
            if (!var4_4) {
                this.mAdapter.startUpdate(this);
                var4_4 = true;
            }
            this.mAdapter.destroyItem(this, (int) var11_8.b, (Object) var11_8.a);
            if (this.mCurItem == var11_8.b) {
                var20_16 = Math.max(0, Math.min(this.mCurItem, var1_1 - 1));
                var13_10 = var19_15;
                var14_11 = var4_4;
                var15_12 = var20_16;
                var16_13 = true;
            } else {
                var13_10 = var19_15;
                var14_11 = var4_4;
                var15_12 = var5_5;
                var16_13 = true;
            }
            **GOTO lbl61
            lbl32:
            // 1 sources:
            if (var11_8.b == var12_9)**GOTO lbl57
            if (var11_8.b == this.mCurItem) {
                var5_5 = var12_9;
            }
            var11_8.b = (SettingWidget) var12_9;
            var13_10 = var7_7;
            var14_11 = var4_4;
            var15_12 = var5_5;
            var16_13 = true;
            **GOTO lbl61
            lbl41:
            // 1 sources:
            if (var4_4) {
                this.mAdapter.finishUpdate(this);
            }
            Collections.sort(this.mItems, ReaderViewPager.COMPARATOR);
            if (var6_6 == false) return;
            var8_17 = this.getChildCount();
            var9_18 = 0;
            do {
                if (var9_18 >= var8_17) {
                    this.a(var5_5, false, true);
                    this.requestLayout();
                    return;
                }
                var10_19 = (ct) this.getChildAt(var9_18).getLayoutParams();
                if (var10_19.a == false) {
                    var10_19.c = 0.0f;
                }
                ++var9_18;
            } while (true);
            lbl57:
            // 2 sources:
            var13_10 = var7_7;
            var14_11 = var4_4;
            var15_12 = var5_5;
            var16_13 = var6_6;
            lbl61:
            // 4 sources:
            var17_14 = var13_10 + 1;
            var6_6 = var16_13;
            var5_5 = var15_12;
            var4_4 = var14_11;
            var7_7 = var17_14;
        } while (true);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public final boolean a(int n) {
        boolean bl;
        this.mPopulatePending = false;
        if (!this.mFirstLayout) {
            bl = true;
            do {
                return this.a(n, bl, false, 0);
                break;
            } while (true);
        }
        bl = false;
        return this.a(n, bl, false, 0);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void addFocusables(ArrayList<View> arrayList, int n, int n2) {
        int n3 = arrayList.size();
        int n4 = this.getDescendantFocusability();
        if (n4 != 393216) {
            for (int i = 0; i < this.getChildCount(); ++i) {
                cs cs2;
                View view = this.getChildAt(i);
                if (view.getVisibility() != 0 || (cs2 = this.a(view)) == null || cs2.b != this.mCurItem) continue;
                view.addFocusables(arrayList, n, n2);
            }
        }
        if (n4 == 262144 && n3 != arrayList.size() || !this.isFocusable() || (n2 & 1) == 1 && this.isInTouchMode() && !this.isFocusableInTouchMode() || arrayList == null) {
            return;
        }
        arrayList.add(this);
    }

    @Override
    public void addTouchables(ArrayList<View> arrayList) {
        for (int i = 0; i < this.getChildCount(); ++i) {
            cs cs2;
            View view = this.getChildAt(i);
            if (view.getVisibility() != 0 || (cs2 = this.a(view)) == null || cs2.b != this.mCurItem) continue;
            view.addTouchables(arrayList);
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public void addView(View view, int n, ViewGroup.LayoutParams layoutParams) {
        ViewGroup.LayoutParams layoutParams2 = !this.checkLayoutParams(layoutParams) ? this.generateLayoutParams(layoutParams) : layoutParams;
        ct ct2 = (ct) ((Object) layoutParams2);
        ct2.a = !ct2.a;
        if (!this.mInLayout) {
            super.addView(view, n, layoutParams2);
            return;
        }
        if (ct2 != null && ct2.a != false) {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
        ct2.d = true;
        this.addViewInLayout(view, n, layoutParams2);
    }

    final void b() {
        this.c(this.mCurItem);
    }

    @Override
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof ct && super.checkLayoutParams(layoutParams)) {
            return true;
        }
        return false;
    }

    @Override
    public void computeScroll() {
        if (!this.mScroller.isFinished() && this.mScroller.computeScrollOffset()) {
            int n = this.getScrollX();
            int n2 = this.getScrollY();
            int n3 = this.mScroller.getCurrX();
            int n4 = this.mScroller.getCurrY();
            if (n != n3 || n2 != n4) {
                this.scrollTo(n3, n4);
                if (!this.e(n3)) {
                    this.mScroller.abortAnimation();
                    this.scrollTo(0, n4);
                }
            }
            ViewCompat.postInvalidateOnAnimation(this);
            return;
        }
        this.a(true);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean bl;
        if (super.dispatchKeyEvent(keyEvent)) return true;
        if (keyEvent.getAction() != 0) return false;
        switch (keyEvent.getKeyCode()) {
            default: {
                return false;
            }
            case 21: {
                bl = this.f(17);
                break;
            }
            case 22: {
                bl = this.f(66);
                break;
            }
            case 61: {
                if (Build.VERSION.SDK_INT < 11) return false;
                if (KeyEventCompat.hasNoModifiers(keyEvent)) {
                    bl = this.f(2);
                } else {
                    if (!KeyEventCompat.hasModifiers(keyEvent, 1)) return false;
                    bl = this.f(1);
                }
            }
        }
        boolean bl2 = false;
        if (!bl) return bl2;
        return true;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        int n = this.getChildCount();
        int n2 = 0;
        do {
            cs cs2;
            boolean bl = false;
            if (n2 >= n) return bl;
            View view = this.getChildAt(n2);
            if (view.getVisibility() == 0 && (cs2 = this.a(view)) != null && cs2.b == this.mCurItem && view.dispatchPopulateAccessibilityEvent(accessibilityEvent)) {
                return true;
            }
            ++n2;
        } while (true);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int n = ViewCompat.getOverScrollMode(this);
        if (n == 0 || n == 1 && this.mAdapter != null && this.mAdapter.getCount() > 1) {
            boolean bl = this.mLeftEdge.isFinished();
            boolean bl2 = false;
            if (!bl) {
                int n2 = canvas.save();
                int n3 = this.getHeight() - this.getPaddingTop() - this.getPaddingBottom();
                int n4 = this.getWidth();
                canvas.rotate(270.0f);
                canvas.translate(-n3 + this.getPaddingTop(), this.mFirstOffset * (float) n4);
                this.mLeftEdge.setSize(n3, n4);
                bl2 = false | this.mLeftEdge.draw(canvas);
                canvas.restoreToCount(n2);
            }
            if (!this.mRightEdge.isFinished()) {
                int n5 = canvas.save();
                int n6 = this.getWidth();
                int n7 = this.getHeight() - this.getPaddingTop() - this.getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate(-this.getPaddingTop(), (-1.0f + this.mLastOffset) * (float) n6);
                this.mRightEdge.setSize(n7, n6);
                bl2 |= this.mRightEdge.draw(canvas);
                canvas.restoreToCount(n5);
            }
            if (!bl2) return;
            ViewCompat.postInvalidateOnAnimation(this);
            return;
        }
        this.mLeftEdge.finish();
        this.mRightEdge.finish();
    }

    @Override
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.mMarginDrawable;
        if (drawable != null && drawable.isStateful()) {
            drawable.setState(this.getDrawableState());
        }
    }

    @Override
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ct();
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ct(this.getContext(), attributeSet);
    }

    @Override
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return this.generateDefaultLayoutParams();
    }

    @Override
    protected int getChildDrawingOrder(int n, int n2) {
        if (this.mDrawingOrder == 2) {
            n2 = n - 1 - n2;
        }
        return ((ct) this.mDrawingOrderedChildren.get((int) n2).getLayoutParams()).f;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mFirstLayout = true;
    }

    @Override
    protected void onDetachedFromWindow() {
        this.removeCallbacks(this.mEndScrollRunnable);
        super.onDetachedFromWindow();
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mPageMargin > 0 && this.mMarginDrawable != null && this.mItems.size() > 0 && this.mAdapter != null) {
            int n = this.getScrollX();
            int n2 = this.getWidth();
            float f = (float) this.mPageMargin / (float) n2;
            cs cs2 = this.mItems.get(0);
            float f2 = cs2.e;
            int n3 = this.mItems.size();
            reference var8_8 = cs2.b;
            SettingWidget settingWidget = this.mItems.get((int) (n3 - 1)).b;
            int n4 = 0;
            for (reference var11_11 = var8_8; var11_11 < settingWidget; ++var11_11) {
                float f3;
                while (var11_11 > cs2.b && n4 < n3) {
                    ArrayList<cs> arrayList = this.mItems;
                    cs2 = arrayList.get(++n4);
                }
                if (var11_11 == cs2.b) {
                    f3 = (cs2.e + cs2.d) * (float) n2;
                    f2 = f + (cs2.e + cs2.d);
                } else {
                    float f4 = this.mAdapter.getPageWidth((int) var11_11);
                    f3 = (f2 + f4) * (float) n2;
                    f2 += f4 + f;
                }
                if (f3 + (float) this.mPageMargin > (float) n) {
                    this.mMarginDrawable.setBounds((int) f3, this.mTopPageBounds, (int) (0.5f + (f3 + (float) this.mPageMargin)), this.mBottomPageBounds);
                    this.mMarginDrawable.draw(canvas);
                }
                if (f3 > (float) (n + n2)) break;
            }
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean onInterceptTouchEvent(MotionEvent var1_1) {
        var2_2 = 255 & var1_1.getAction();
        if (var2_2 == 3 || var2_2 == 1) {
            this.mIsBeingDragged = false;
            this.mIsUnableToDrag = false;
            this.mActivePointerId = -1;
            if (this.mVelocityTracker == null) return false;
            this.mVelocityTracker.recycle();
            this.mVelocityTracker = null;
            return false;
        }
        if (var2_2 != 0) {
            if (this.mIsBeingDragged) {
                return true;
            }
            if (this.mIsUnableToDrag != false) return false;
        }
        switch (var2_2) {
            case 2: {
                var6_3 = this.mActivePointerId;
                if (var6_3 != -1) {
                    var7_4 = MotionEventCompat.findPointerIndex(var1_1, var6_3);
                    var8_5 = MotionEventCompat.getX(var1_1, var7_4);
                    var9_6 = var8_5 - this.mLastMotionX;
                    var10_7 = Math.abs(var9_6);
                    var11_8 = MotionEventCompat.getY(var1_1, var7_4);
                    var12_9 = Math.abs(var11_8 - this.mInitialMotionY);
                    if (var9_6 != 0.0f) {
                        var14_10 = this.mLastMotionX;
                        var15_11 = var14_10 < (float) this.mGutterSize && var9_6 > 0.0f || var14_10 > (float) (this.getWidth() - this.mGutterSize) && var9_6 < 0.0f;
                        if (!var15_11 && this.a(this, false, (int) var9_6, (int) var8_5, (int) var11_8)) {
                            this.mLastMotionX = var8_5;
                            this.mLastMotionY = var11_8;
                            this.mIsUnableToDrag = true;
                            return false;
                        }
                    }
                    if (var10_7 > (float) this.mTouchSlop && 0.5f * var10_7 > var12_9) {
                        this.mIsBeingDragged = true;
                        this.b(1);
                        var13_12 = var9_6 > 0.0f ? this.mInitialMotionX + (float) this.mTouchSlop : this.mInitialMotionX - (float) this.mTouchSlop;
                        this.mLastMotionX = var13_12;
                        this.mLastMotionY = var11_8;
                        this.b(true);
                    } else if (var12_9 > (float) this.mTouchSlop) {
                        this.mIsUnableToDrag = true;
                    }
                    if (this.mIsBeingDragged && this.a(var8_5)) {
                        ViewCompat.postInvalidateOnAnimation(this);
                        **break;
                    }
                }
                **GOTO lbl57
            }
            case 0: {
                this.mInitialMotionX = var3_13 = var1_1.getX();
                this.mLastMotionX = var3_13;
                this.mInitialMotionY = var4_14 = var1_1.getY();
                this.mLastMotionY = var4_14;
                this.mActivePointerId = MotionEventCompat.getPointerId(var1_1, 0);
                this.mIsUnableToDrag = false;
                this.mScroller.computeScrollOffset();
                if (this.mScrollState != 2 || Math.abs(this.mScroller.getFinalX() - this.mScroller.getCurrX()) <= this.mCloseEnough) {
                    this.a(false);
                    this.mIsBeingDragged = false;
                }
            }
            lbl57:
            // 6 sources:
            default:
            {
                **GOTO lbl61
            }
            case 6:
        }
        this.a(var1_1);
        lbl61:
        // 2 sources:
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(var1_1);
        return this.mIsBeingDragged;
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    protected void onLayout(boolean var1_1, int var2_2, int var3_3, int var4_4, int var5_5) {
        var6_6 = this.getChildCount();
        var7_7 = var4_4 - var2_2;
        var8_8 = var5_5 - var3_3;
        var9_9 = this.getPaddingLeft();
        var10_10 = this.getPaddingTop();
        var11_11 = this.getPaddingRight();
        var12_12 = this.getPaddingBottom();
        var13_13 = this.getScrollX();
        var14_14 = 0;
        var15_15 = 0;
        do {
            if (var15_15 >= var6_6)**GOTO lbl68
            var22_16 = this.getChildAt(var15_15);
            if (var22_16.getVisibility() == 8)**GOTO lbl87
            var27_21 = (ct) var22_16.getLayoutParams();
            if (var27_21.a == false)**GOTO lbl87
            var28_22 = 7 & var27_21.b;
            var29_23 = 112 & var27_21.b;
            switch (var28_22) {
                default: {
                    var31_25 = var9_9;
                    break;
                }
                case 3: {
                    var41_35 = var9_9 + var22_16.getMeasuredWidth();
                    var31_25 = var9_9;
                    var9_9 = var41_35;
                    break;
                }
                case 1: {
                    var31_25 = Math.max((var7_7 - var22_16.getMeasuredWidth()) / 2, var9_9);
                    break;
                }
                case 5: {
                    var30_24 = var7_7 - var11_11 - var22_16.getMeasuredWidth();
                    var11_11 += var22_16.getMeasuredWidth();
                    var31_25 = var30_24;
                }
            }
            switch (var29_23) {
                default: {
                    var32_26 = var10_10;
                    var40_34 = var12_12;
                    var34_28 = var10_10;
                    var35_29 = var40_34;
                    break;
                }
                case 48: {
                    var38_32 = var10_10 + var22_16.getMeasuredHeight();
                    var39_33 = var10_10;
                    var35_29 = var12_12;
                    var34_28 = var38_32;
                    var32_26 = var39_33;
                    break;
                }
                case 16: {
                    var32_26 = Math.max((var8_8 - var22_16.getMeasuredHeight()) / 2, var10_10);
                    var37_31 = var12_12;
                    var34_28 = var10_10;
                    var35_29 = var37_31;
                    break;
                }
                case 80: {
                    var32_26 = var8_8 - var12_12 - var22_16.getMeasuredHeight();
                    var33_27 = var12_12 + var22_16.getMeasuredHeight();
                    var34_28 = var10_10;
                    var35_29 = var33_27;
                }
            }
            var36_30 = var31_25 + var13_13;
            var22_16.layout(var36_30, var32_26, var36_30 + var22_16.getMeasuredWidth(), var32_26 + var22_16.getMeasuredHeight());
            var23_17 = var14_14 + 1;
            var24_18 = var34_28;
            var12_12 = var35_29;
            var25_19 = var11_11;
            var26_20 = var9_9;
            **GOTO lbl91
            lbl68:
            // 1 sources:
            var16_36 = var7_7 - var9_9 - var11_11;
            for (var17_37 = 0; var17_37 < var6_6; ++var17_37) {
                var18_38 = this.getChildAt(var17_37);
                if (var18_38.getVisibility() == 8) continue;
                var19_39 = (ct) var18_38.getLayoutParams();
                if (var19_39.a != false || (var20_40 = this.a(var18_38)) == null) continue;
                var21_41 = var9_9 + (int) ((float) var16_36 * var20_40.e);
                if (var19_39.d) {
                    var19_39.d = false;
                    var18_38.measure(View.MeasureSpec.makeMeasureSpec((int) ((float) var16_36 * var19_39.c), 1073741824), View.MeasureSpec.makeMeasureSpec(var8_8 - var10_10 - var12_12, 1073741824));
                }
                var18_38.layout(var21_41, var10_10, var21_41 + var18_38.getMeasuredWidth(), var10_10 + var18_38.getMeasuredHeight());
            }
            this.mTopPageBounds = var10_10;
            this.mBottomPageBounds = var8_8 - var12_12;
            this.mDecorChildCount = var14_14;
            if (this.mFirstLayout) {
                this.a(this.mCurItem, false, 0, false);
            }
            this.mFirstLayout = false;
            return;
            lbl87:
            // 2 sources:
            var23_17 = var14_14;
            var24_18 = var10_10;
            var25_19 = var11_11;
            var26_20 = var9_9;
            lbl91:
            // 2 sources:
            ++var15_15;
            var9_9 = var26_20;
            var11_11 = var25_19;
            var10_10 = var24_18;
            var14_14 = var23_17;
        } while (true);
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    protected void onMeasure(int var1_1, int var2_2) {
        this.setMeasuredDimension(ReaderViewPager.getDefaultSize(0, var1_1), ReaderViewPager.getDefaultSize(0, var2_2));
        var3_3 = this.getMeasuredWidth();
        this.mGutterSize = Math.min(var3_3 / 10, this.mDefaultGutterSize);
        var4_4 = var3_3 - this.getPaddingLeft() - this.getPaddingRight();
        var5_5 = this.getMeasuredHeight() - this.getPaddingTop() - this.getPaddingBottom();
        var6_6 = this.getChildCount();
        var7_7 = 0;
        do {
            if (var7_7 >= var6_6)**GOTO lbl24
            var12_8 = this.getChildAt(var7_7);
            if (var12_8.getVisibility() == 8 || (var13_9 = (ct) var12_8.getLayoutParams()) == null || var13_9.a == false)**GOTO lbl52
            var14_10 = 7 & var13_9.b;
            var15_11 = 112 & var13_9.b;
            var16_12 = Integer.MIN_VALUE;
            var17_13 = Integer.MIN_VALUE;
            var18_14 = var15_11 == 48 || var15_11 == 80;
            var19_15 = var14_10 == 3 || var14_10 == 5;
            if (var18_14) {
                var16_12 = 1073741824;
            }
            if (var13_9.width == -2)**GOTO lbl38
            var20_16 = 1073741824;
            var21_17 = var13_9.width != -1 ? var13_9.width : var4_4;
            **GOTO lbl40
            lbl24:
            // 1 sources:
            this.mChildWidthMeasureSpec = View.MeasureSpec.makeMeasureSpec(var4_4, 1073741824);
            this.mChildHeightMeasureSpec = View.MeasureSpec.makeMeasureSpec(var5_5, 1073741824);
            this.mInLayout = true;
            this.b();
            this.mInLayout = false;
            var8_19 = this.getChildCount();
            var9_20 = 0;
            while (var9_20 < var8_19) {
                var10_21 = this.getChildAt(var9_20);
                if (var10_21.getVisibility() != 8 && ((var11_22 = (ct) var10_21.getLayoutParams()) == null || var11_22.a == false)) {
                    var10_21.measure(View.MeasureSpec.makeMeasureSpec((int) ((float) var4_4 * var11_22.c), 1073741824), this.mChildHeightMeasureSpec);
                }
                ++var9_20;
            }
            return;
            lbl38:
            // 1 sources:
            var20_16 = var16_12;
            var21_17 = var4_4;
            lbl40:
            // 2 sources:
            if (var13_9.height == -2)**GOTO lbl -1000
            var17_13 = 1073741824;
            if (var13_9.height != -1) {
                var22_18 = var13_9.height;
            } else lbl - 1000: // 2 sources:
            {
                var22_18 = var5_5;
            }
            var12_8.measure(View.MeasureSpec.makeMeasureSpec(var21_17, var20_16), View.MeasureSpec.makeMeasureSpec(var22_18, var17_13));
            if (var18_14) {
                var5_5 -= var12_8.getMeasuredHeight();
            } else if (var19_15) {
                var4_4 -= var12_8.getMeasuredWidth();
            }
            lbl52:
            // 5 sources:
            ++var7_7;
        } while (true);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected boolean onRequestFocusInDescendants(int n, Rect rect) {
        int n2;
        int n3 = -1;
        int n4 = this.getChildCount();
        if ((n & 2) != 0) {
            n3 = 1;
            n2 = 0;
        } else {
            n2 = n4 - 1;
            n4 = n3;
        }
        while (n2 != n4) {
            cs cs2;
            View view = this.getChildAt(n2);
            if (view.getVisibility() == 0 && (cs2 = this.a(view)) != null && cs2.b == this.mCurItem && view.requestFocus(n, rect)) {
                return true;
            }
            n2 += n3;
        }
        return false;
    }

    @Override
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ReaderViewPager.SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ReaderViewPager.SavedState readerViewPager$SavedState = (ReaderViewPager.SavedState) parcelable;
        super.onRestoreInstanceState(readerViewPager$SavedState.getSuperState());
        if (this.mAdapter != null) {
            this.mAdapter.restoreState(readerViewPager$SavedState.b, readerViewPager$SavedState.c);
            this.a(readerViewPager$SavedState.a, false, true);
            return;
        }
        this.mRestoredCurItem = readerViewPager$SavedState.a;
        this.mRestoredAdapterState = readerViewPager$SavedState.b;
        this.mRestoredClassLoader = readerViewPager$SavedState.c;
    }

    @Override
    public Parcelable onSaveInstanceState() {
        ReaderViewPager.SavedState readerViewPager$SavedState = new ReaderViewPager.SavedState(super.onSaveInstanceState());
        readerViewPager$SavedState.a = this.mCurItem;
        if (this.mAdapter != null) {
            readerViewPager$SavedState.b = this.mAdapter.saveState();
        }
        return readerViewPager$SavedState;
    }

    @Override
    protected void onSizeChanged(int n, int n2, int n3, int n4) {
        super.onSizeChanged(n, n2, n3, n4);
        if (n != n3) {
            this.a(n, n3, this.mPageMargin, this.mPageMargin);
        }
    }

    /*
     * Unable to fully structure code
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public boolean onTouchEvent(MotionEvent var1_1) {
        if (this.mFakeDragging) {
            return true;
        }
        if (var1_1.getAction() == 0 && var1_1.getEdgeFlags() != 0) {
            return false;
        }
        if (this.mAdapter == null) return false;
        if (this.mAdapter.getCount() == 0) {
            return false;
        }
        if (this.mVelocityTracker == null) {
            this.mVelocityTracker = VelocityTracker.obtain();
        }
        this.mVelocityTracker.addMovement(var1_1);
        var2_2 = 255 & var1_1.getAction();
        var3_3 = false;
        switch (var2_2) {
            case 0: {
                this.mScroller.abortAnimation();
                this.mPopulatePending = false;
                this.b();
                this.mIsBeingDragged = true;
                this.b(1);
                this.mInitialMotionX = var26_4 = var1_1.getX();
                this.mLastMotionX = var26_4;
                this.mInitialMotionY = var27_5 = var1_1.getY();
                this.mLastMotionY = var27_5;
                this.mActivePointerId = MotionEventCompat.getPointerId(var1_1, 0);
                return true;
            }
            case 2: {
                if (!this.mIsBeingDragged) {
                    var20_6 = MotionEventCompat.findPointerIndex(var1_1, this.mActivePointerId);
                    var21_7 = MotionEventCompat.getX(var1_1, var20_6);
                    var22_8 = Math.abs(var21_7 - this.mLastMotionX);
                    var23_9 = MotionEventCompat.getY(var1_1, var20_6);
                    var24_10 = Math.abs(var23_9 - this.mLastMotionY);
                    if (var22_8 > (float) this.mTouchSlop && var22_8 > var24_10) {
                        this.mIsBeingDragged = true;
                        var25_11 = var21_7 - this.mInitialMotionX > 0.0f ? this.mInitialMotionX + (float) this.mTouchSlop : this.mInitialMotionX - (float) this.mTouchSlop;
                        this.mLastMotionX = var25_11;
                        this.mLastMotionY = var23_9;
                        this.b(1);
                        this.b(true);
                    }
                }
                var19_12 = this.mIsBeingDragged;
                var3_3 = false;
                if (var19_12 == false) return true;
                var3_3 = false | this.a(MotionEventCompat.getX(var1_1, MotionEventCompat.findPointerIndex(var1_1, this.mActivePointerId)));
                **break;
            }
            case 1: {
                var6_13 = this.mIsBeingDragged;
                var3_3 = false;
                if (var6_13 == false) return true;
                var7_14 = this.mVelocityTracker;
                var7_14.computeCurrentVelocity(1000, this.mMaximumVelocity);
                var8_15 = (int) VelocityTrackerCompat.getXVelocity(var7_14, this.mActivePointerId);
                this.mPopulatePending = true;
                var9_16 = this.e();
                var10_17 = this.getScrollX();
                var11_18 = this.g();
                var12_19 = var11_18.b;
                var13_20 = ((float) var10_17 / (float) var9_16 - var11_18.e) / var11_18.d;
                if (Math.abs((int) (MotionEventCompat.getX(var1_1, MotionEventCompat.findPointerIndex(var1_1, this.mActivePointerId)) - this.mInitialMotionX)) > this.mFlingDistance && Math.abs(var8_15) > this.mMinimumVelocity) {
                    if (var8_15 <= 0) {
                        ++var12_19;
                    }
                    var15_21 = var12_19;
                } else {
                    var14_24 = var12_19 >= this.mCurItem ? 0.4f : 0.6f;
                    var15_21 = (int) (var14_24 + (var13_20 + (Object) var12_19));
                }
                if (this.mItems.size() > 0) {
                    var17_22 = this.mItems.get(0);
                    var18_23 = this.mItems.get(-1 + this.mItems.size());
                    var15_21 = Math.max((int) var17_22.b, Math.min((int) var15_21, (int) var18_23.b));
                }
                this.a((int) var15_21, true, true, var8_15);
                this.mActivePointerId = -1;
                this.h();
                var3_3 = this.mLeftEdge.onRelease() | this.mRightEdge.onRelease();
                **break;
            }
            case 3: {
                var5_25 = this.mIsBeingDragged;
                var3_3 = false;
                if (var5_25 == false) return true;
                this.a(this.mCurItem, true, 0, false);
                this.mActivePointerId = -1;
                this.h();
                var3_3 = this.mLeftEdge.onRelease() | this.mRightEdge.onRelease();
            }
            lbl82:
            // 4 sources:
            default:
            {
                if (var3_3 == false) return true;
                ViewCompat.postInvalidateOnAnimation(this);
                return true;
            }
            case 5: {
                var4_26 = MotionEventCompat.getActionIndex(var1_1);
                this.mLastMotionX = MotionEventCompat.getX(var1_1, var4_26);
                this.mActivePointerId = MotionEventCompat.getPointerId(var1_1, var4_26);
                return true;
            }
            case 6:
        }
        this.a(var1_1);
        this.mLastMotionX = MotionEventCompat.getX(var1_1, MotionEventCompat.findPointerIndex(var1_1, this.mActivePointerId));
        return true;
    }

    @Override
    public void removeView(View view) {
        if (this.mInLayout) {
            this.removeViewInLayout(view);
            return;
        }
        super.removeView(view);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    public void setAdapter(PagerAdapter pagerAdapter) {
        if (this.mAdapter != null) {
            this.mAdapter.unregisterDataSetObserver((DataSetObserver) ((Object) this.mObserver));
            this.mAdapter.startUpdate(this);
            for (int i = 0; i < this.mItems.size(); ++i) {
                cs cs2 = this.mItems.get(i);
                this.mAdapter.destroyItem(this, (int) cs2.b, (Object) cs2.a);
            }
            this.mAdapter.finishUpdate(this);
            this.mItems.clear();
            for (int j = 0; j < this.getChildCount(); ++j) {
                if (((ct) this.getChildAt((int) j).getLayoutParams()).a != false) continue;
                this.removeViewAt(j);
                --j;
            }
            this.mCurItem = 0;
            this.scrollTo(0, 0);
        }
        this.mAdapter = pagerAdapter;
        this.mExpectedAdapterCount = 0;
        if (this.mAdapter == null) return;
        if (this.mObserver == null) {
            this.mObserver = new DataSetObserver() {

                @Override
                public void onChanged() {
                    ReaderViewPager.this.a();
                }

                @Override
                public void onInvalidated() {
                    ReaderViewPager.this.a();
                }
            };
        }
        this.mAdapter.registerDataSetObserver((DataSetObserver) ((Object) this.mObserver));
        this.mPopulatePending = false;
        boolean bl = this.mFirstLayout;
        this.mFirstLayout = true;
        this.mExpectedAdapterCount = this.mAdapter.getCount();
        if (this.mRestoredCurItem >= 0) {
            this.mAdapter.restoreState(this.mRestoredAdapterState, this.mRestoredClassLoader);
            this.a(this.mRestoredCurItem, false, true);
            this.mRestoredCurItem = -1;
            this.mRestoredAdapterState = null;
            this.mRestoredClassLoader = null;
            return;
        }
        if (!bl) {
            this.b();
            return;
        }
        this.requestLayout();
    }

    public void setCurrentItem(int n, boolean bl) {
        this.mPopulatePending = false;
        this.a(n, bl, false);
    }

    public void setOffscreenPageLimit(int n) {
        if (n <= 0) {
            Log.w("ViewPager", "Requested offscreen page limit " + n + " too small; defaulting to 1");
            n = 1;
        }
        if (n != this.mOffscreenPageLimit) {
            this.mOffscreenPageLimit = n;
            this.b();
        }
    }

    public void setOnPageChangeListener(cw cw2) {
        this.mOnPageChangeListener = cw2;
    }

    public void setPageMargin(int n) {
        int n2 = this.mPageMargin;
        this.mPageMargin = n;
        int n3 = this.getWidth();
        this.a(n3, n3, n, n2);
        this.requestLayout();
    }

    public void setPageMarginDrawable(int n) {
        this.setPageMarginDrawable(this.getContext().getResources().getDrawable(n));
    }

    /*
     * Enabled aggressive block sorting
     */
    public void setPageMarginDrawable(Drawable drawable) {
        this.mMarginDrawable = drawable;
        if (drawable != null) {
            this.refreshDrawableState();
        }
        boolean bl = drawable == null;
        this.setWillNotDraw(bl);
        this.invalidate();
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public void setPageTransformer$7c662580(boolean bl, K k) {
        boolean bl2 = true;
        if (Build.VERSION.SDK_INT < 11) return;
        boolean bl3 = k != null ? bl2 : false;
        boolean bl4 = this.mPageTransformer$572aa01b != null ? bl2 : false;
        boolean bl5 = bl3 != bl4 ? bl2 : false;
        this.mPageTransformer$572aa01b = k;
        if (Build.VERSION.SDK_INT >= 7) {
            if (this.mSetChildrenDrawingOrderEnabled == null) {
                try {
                    Class[] arrclass = new Class[]{Boolean.TYPE};
                    this.mSetChildrenDrawingOrderEnabled = ViewGroup.class.getDeclaredMethod("setChildrenDrawingOrderEnabled", arrclass);
                } catch (NoSuchMethodException var12_10) {
                    Log.e("ViewPager", "Can't find setChildrenDrawingOrderEnabled", var12_10);
                }
            }
            try {
                Method method = this.mSetChildrenDrawingOrderEnabled;
                Object[] arrobject = new Object[]{bl3};
                method.invoke(this, arrobject);
            } catch (Exception var7_11) {
                Log.e("ViewPager", "Error changing children drawing order", var7_11);
            }
        }
        if (bl3) {
            if (bl) {
                bl2 = BADBOOL 2;
            }
            this.mDrawingOrder = bl2;
        } else {
            this.mDrawingOrder = 0;
        }
        if (bl5) {
            this.b();
        }
    }

    @Override
    protected boolean verifyDrawable(Drawable drawable) {
        if (super.verifyDrawable(drawable) || drawable == this.mMarginDrawable) {
            return true;
        }
        return false;
    }

    public class SavedState extends View.BaseSavedState {
        public final Parcelable.Creator<ReaderViewPager.SavedState> CREATOR = ParcelableCompat.newCreator(new ParcelableCompatCreatorCallbacks<SavedState>() {
            @Override
            public SavedState createFromParcel(Parcel in, ClassLoader loader) {
                return new ReaderViewPager.SavedState(in, loader);
            }

            @Override
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        });
        int a;
        Parcelable b;
        ClassLoader c;

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel);
            if (classLoader == null) {
                classLoader = this.getClass().getClassLoader();
            }
            this.a = parcel.readInt();
            this.b = parcel.readParcelable(classLoader);
            this.c = classLoader;
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.a + "}";
        }

        @Override
        public void writeToParcel(Parcel parcel, int n) {
            super.writeToParcel(parcel, n);
            parcel.writeInt(this.a);
            parcel.writeParcelable(this.b, n);
        }
    }

}
