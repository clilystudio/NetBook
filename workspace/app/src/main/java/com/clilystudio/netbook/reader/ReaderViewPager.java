
package com.clilystudio.netbook.reader;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources$NotFoundException;
import android.database.DataSetObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build$VERSION;
import android.os.IBinder;
import android.os.Parcelable;
import android.support.design.widget.K;
import android.support.v4.view.AccessibilityDelegateCompat;
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
import android.view.View$MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.Scroller;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class ReaderViewPager extends ViewGroup {

    public ReaderViewPager(Context Context1, AttributeSet AttributeSet2)
    {
        super( Context1, AttributeSet2 );
        mRestoredCurItem = -1;
        mRestoredAdapterState = null;
        mRestoredClassLoader = null;
        mFirstOffset = -3.4028234663852886e+038F;
        mLastOffset = 3.4028234663852886e+038F;
        mOffscreenPageLimit = 1;
        mActivePointerId = -1;
        mFirstLayout = true;
        mNeedCalculatePageOffsets = false;
        mEndScrollRunnable = (Runnable) new cq( this );
        mScrollState = 0;
        d();
    }

    private static final boolean USE_CACHE = false;
    private int mActivePointerId;
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
    private ArrayList mDrawingOrderedChildren;
    private Runnable mEndScrollRunnable;     // final access specifier removed
    private int mExpectedAdapterCount;
    private long mFakeDragBeginTime;
    private boolean mFakeDragging;
    private boolean mFirstLayout;
    private float mFirstOffset;
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
    private float mLastOffset;
    private EdgeEffectCompat mLeftEdge;
    private Drawable mMarginDrawable;
    private int mMaximumVelocity;
    private int mMinimumVelocity;
    private boolean mNeedCalculatePageOffsets;
    private cx mObserver;
    private int mOffscreenPageLimit;
    private cw mOnPageChangeListener;
    private int mPageMargin;
    private K mPageTransformer$572aa01b;
    private boolean mPopulatePending;
    private Parcelable mRestoredAdapterState;
    private ClassLoader mRestoredClassLoader;
    private int mRestoredCurItem;
    private EdgeEffectCompat mRightEdge;
    private int mScrollState;
    private Scroller mScroller;
    private boolean mScrollingCacheEnabled;
    private reflect.Method mSetChildrenDrawingOrderEnabled;
    private int mTopPageBounds;
    private int mTouchSlop;
    private VelocityTracker mVelocityTracker;
    private static final int CLOSE_ENOUGH = 2;
    private static final boolean DEBUG = false;
    private static final int DEFAULT_GUTTER_SIZE = 16;
    private static final int DEFAULT_OFFSCREEN_PAGES = 1;
    private static final int DRAW_ORDER_DEFAULT = 0;
    private static final int DRAW_ORDER_FORWARD = 1;
    private static final int DRAW_ORDER_REVERSE = 2;
    private static final int INVALID_POINTER = -1;
    private static final int MAX_SETTLE_DURATION = 600;
    private static final int MIN_DISTANCE_FOR_FLING = 25;
    private static final int MIN_FLING_VELOCITY = 400;
    private static final String TAG = "ViewPager";
    private static final int[] LAYOUT_ATTRS = { 16842931 };
    private static final Comparator COMPARATOR = new co();
    private static final Interpolator sInterpolator = new cp();
    private static final cz sPositionComparator = new cz();
    private final ArrayList mItems = new ArrayList();
    private final cs mTempItem = new cs();
    private final Rect mTempRect = new Rect();

    public ReaderViewPager(Context Context1)
    {
        super( Context1 );
        mRestoredCurItem = -1;
        mRestoredAdapterState = null;
        mRestoredClassLoader = null;
        mFirstOffset = -3.4028234663852886e+038F;
        mLastOffset = 3.4028234663852886e+038F;
        mOffscreenPageLimit = 1;
        mActivePointerId = -1;
        mFirstLayout = true;
        mNeedCalculatePageOffsets = false;
        mEndScrollRunnable = (Runnable) new cq( this );
        mScrollState = 0;
        d();
    }

    private Rect a(Rect Rect1, View View2)
    {
        Rect Rect3;

        if( Rect1 == null )
            Rect3 = new Rect();
        else
            Rect3 = Rect1;
        if( View2 == null )
            Rect3.set( 0, 0, 0, 0 );
        else
        {
            ViewParent ViewParent4;
            ViewGroup ViewGroup5;

            Rect3.left = View2.getLeft();
            Rect3.right = View2.getRight();
            Rect3.top = View2.getTop();
            Rect3.bottom = View2.getBottom();
            for( ViewParent4 = View2.getParent(); ViewParent4 instanceof ViewGroup && ViewParent4 != this; ViewParent4 = ViewGroup5.getParent() )
            {
                ViewGroup5 = (ViewGroup) ViewParent4;
                Rect3.left += ViewGroup5.getLeft();
                Rect3.right += ViewGroup5.getRight();
                Rect3.top += ViewGroup5.getTop();
                Rect3.bottom += ViewGroup5.getBottom();
            }
        }
        return Rect3;
    }

    static PagerAdapter a(ReaderViewPager ReaderViewPager1)
    {
        return ReaderViewPager1.mAdapter;
    }

    private cs a(int int1, int int2)
    {
        Object Object3 = new cs();

        ((cs) Object3).b = int1;
        ((cs) Object3).a = mAdapter.instantiateItem( this, int1 );
        ((cs) Object3).d = mAdapter.getPageWidth( int1 );
        if( int2 < 0 || int2 >= mItems.size() )
            mItems.add( Object3 );
        else
            mItems.add( int2, Object3 );
        return (cs) Object3;
    }

    private cs a(View View1)
    {
        int int2 = 0;

        while( int2 < mItems.size() )
        {
            cs cs3 = (cs) mItems.get( int2 );

            if( mAdapter.isViewFromObject( View1, cs3.a ) )
                return cs3;
            else
                ++int2;
        }
        return null;
    }

    private void a(int int1, float float2, int int3)
    {
        if( mDecorChildCount > 0 )
        {
            int int10 = getScrollX();
            int int11 = getPaddingLeft();
            int int12 = getPaddingRight();
            int int13 = getWidth();
            int int14 = getChildCount();
            int int15 = 0;

            while( int15 < int14 )
            {
                View View16 = getChildAt( int15 );
                ct ct17 = (ct) View16.getLayoutParams();
                int int19;
                int int20;
                int int21;

                if( ct17.a )
                {
                    int int22;
                    int int24;

                    switch( 0x7 & ct17.b )
                    {
                        case 2:
                        case 4:
                        default:
                            int int28;

                            int22 = int11;
                            int28 = int12;
                            int19 = int11;
                            int20 = int28;
                            break;
                        case 3:
                            int int26 = int11 + View16.getWidth();
                            int int27 = int11;

                            int20 = int12;
                            int19 = int26;
                            int22 = int27;
                            break;
                        case 1:
                            int int25;

                            int22 = Math.max( (int13 - View16.getMeasuredWidth()) / 2, int11 );
                            int25 = int12;
                            int19 = int11;
                            int20 = int25;
                            break;
                        case 5:
                            int int23;

                            int22 = int13 - int12 - View16.getMeasuredWidth();
                            int23 = int12 + View16.getMeasuredWidth();
                            int19 = int11;
                            int20 = int23;
                            break;
                    }
                    int24 = int22 + int10 - View16.getLeft();
                    if( int24 != 0 )
                        View16.offsetLeftAndRight( int24 );
                }
                else
                {
                    int int18 = int12;

                    int19 = int11;
                    int20 = int18;
                }
                ++int15;
                int21 = int20;
                int11 = int19;
                int12 = int21;
            }
        }
        if( mPageTransformer$572aa01b != null )
        {
            int int5;
            int int6;

            getScrollX();
            int5 = getChildCount();
            for( int6 = 0; int6 < int5; ++int6 )
            {
                View View7 = getChildAt( int6 );

                if( !((ct) View7.getLayoutParams()).a )
                {
                    View7.getLeft();
                    e();
                }
            }
        }
        mCalledSuper = true;
    }

    private void a(int int1, int int2, int int3, int int4)
    {
        if( int2 > 0 && !mItems.isEmpty() )
        {
            int int8 = int3 + (int1 - getPaddingLeft() - getPaddingRight());
            int int9 = int4 + (int2 - getPaddingLeft() - getPaddingRight());
            int int10 = (int) ((float) getScrollX() / (float) int9 * (float) int8);

            scrollTo( int10, getScrollY() );
            if( !mScroller.isFinished() )
            {
                int int11 = mScroller.getDuration() - mScroller.timePassed();
                cs cs12 = d( mCurItem );

                mScroller.startScroll( int10, 0, (int) (cs12.e * (float) int1), 0, int11 );
            }
        }
        else
        {
            cs cs5 = d( mCurItem );
            float float6;
            int int7;

            if( cs5 != null )
                float6 = Math.min( cs5.e, mLastOffset );
            else
                float6 = 0.0F;
            int7 = (int) (float6 * (float) (int1 - getPaddingLeft() - getPaddingRight()));
            if( int7 != getScrollX() )
            {
                a( false );
                scrollTo( int7, getScrollY() );
                return;
            }
        }
    }

    private void a(int int1, boolean boolean2, int int3, boolean boolean4)
    {
        cs cs5 = d( int1 );
        int int6 = 0;

        if( cs5 != null )
            int6 = (int) ((float) e() * Math.max( mFirstOffset, Math.min( cs5.e, mLastOffset ) ));
        if( boolean2 )
        {
            if( getChildCount() == 0 )
                b( false );
            else
            {
                int int7 = getScrollX();
                int int8 = getScrollY();
                int int9 = int6 - int7;
                int int10 = 0 - int8;

                if( int9 == 0 && int10 == 0 )
                {
                    a( false );
                    b();
                    b( 0 );
                }
                else
                {
                    int int11;
                    int int12;
                    float float13;
                    float float14;
                    int int15;
                    int int17;
                    int int18;

                    b( true );
                    b( 2 );
                    int11 = e();
                    int12 = int11 / 2;
                    float13 = Math.min( 1.0F, 1.0F * (float) Math.abs( int9 ) / (float) int11 );
                    float14 = (float) int12 + (float) int12 * (float) Math.sin( (double) (float) (0.4712389167638204 * (double) (float13 - 0.5F)) );
                    int15 = Math.abs( int3 );
                    if( int15 > 0 )
                        int17 = 4 * Math.round( 1000.0F * Math.abs( float14 / (float) int15 ) );
                    else
                    {
                        float float16 = (float) int11 * mAdapter.getPageWidth( mCurItem );

                        int17 = (int) (100.0F * (1.0F + (float) Math.abs( int9 ) / (float16 + (float) mPageMargin)));
                    }
                    int18 = Math.min( int17, 600 );
                    mScroller.startScroll( int7, int8, int9, int10, int18 );
                    ViewCompat.postInvalidateOnAnimation( (View) this );
                }
            }
            if( boolean4 && mOnPageChangeListener != null )
                mOnPageChangeListener.a( int1 );
            if( boolean4 && mInternalPageChangeListener != null )
                mInternalPageChangeListener.a( int1 );
        }
        else
        {
            if( boolean4 && mOnPageChangeListener != null )
                mOnPageChangeListener.a( int1 );
            if( boolean4 && mInternalPageChangeListener != null )
                mInternalPageChangeListener.a( int1 );
            a( false );
            scrollTo( int6, 0 );
        }
    }

    private void a(int int1, boolean boolean2, boolean boolean3)
    {
        a( int1, boolean2, boolean3, 0 );
    }

    private void a(MotionEvent MotionEvent1)
    {
        int int2 = MotionEventCompat.getActionIndex( MotionEvent1 );

        if( MotionEventCompat.getPointerId( MotionEvent1, int2 ) == mActivePointerId )
        {
            int int3;

            if( int2 == 0 )
                int3 = 1;
            else
                int3 = 0;
            mLastMotionX = MotionEventCompat.getX( MotionEvent1, int3 );
            mActivePointerId = MotionEventCompat.getPointerId( MotionEvent1, int3 );
            if( mVelocityTracker != null )
                mVelocityTracker.clear();
        }
    }

    static void a(ReaderViewPager ReaderViewPager1, int int2)
    {
        ReaderViewPager1.b( 0 );
    }

    private void a(cs cs1, int int2, cs cs3)
    {
        int int4 = mAdapter.getCount();
        int int5 = e();
        float float6;
        int int7;
        float float8;
        int int9;
        float float10;
        float float11;
        int int12;
        float float13;
        int int14;
        int int15;
        int int17;
        int int21;

        if( int5 > 0 )
            float6 = (float) mPageMargin / (float) int5;
        else
            float6 = 0.0F;
        if( cs3 != null )
        {
            int int24 = cs3.b;

            if( int24 < cs1.b )
            {
                float float38 = float6 + (cs3.e + cs3.d);
                int int39 = int24 + 1;
                float float40 = float38;
                int int41 = 0;
                int int42;
                int int48;

                for( int42 = int39; int42 <= cs1.b && int41 < mItems.size(); int42 = int48 )
                {
                    cs cs43;
                    int int44;
                    float float45;
                    int int46;
                    float float47;

                    for( cs43 = (cs) mItems.get( int41 ); int42 > cs43.b && int41 < -1 + mItems.size(); cs43 = (cs) mItems.get( int41 ) )
                        ++int41;
                    int44 = int42;
                    float45 = float40;
                    int46 = int44;
                    while( int46 < cs43.b )
                    {
                        float float49 = float45 + (float6 + mAdapter.getPageWidth( int46 ));

                        ++int46;
                        float45 = float49;
                    }
                    cs43.e = float45;
                    float47 = float45 + (float6 + cs43.d);
                    int48 = int46 + 1;
                    float40 = float47;
                }
            }
            else if( int24 > cs1.b )
            {
                int int25 = -1 + mItems.size();
                float float26 = cs3.e;
                int int27 = int24 - 1;
                int int28 = int25;
                float float29 = float26;
                int int30;
                int int36;

                for( int30 = int27; int30 >= cs1.b && int28 >= 0; int30 = int36 )
                {
                    cs cs31;
                    int int32;
                    float float33;
                    int int34;
                    float float35;

                    for( cs31 = (cs) mItems.get( int28 ); int30 < cs31.b && int28 > 0; cs31 = (cs) mItems.get( int28 ) )
                        --int28;
                    int32 = int30;
                    float33 = float29;
                    int34 = int32;
                    while( int34 > cs31.b )
                    {
                        float float37 = float33 - (float6 + mAdapter.getPageWidth( int34 ));

                        --int34;
                        float33 = float37;
                    }
                    float35 = float33 - (float6 + cs31.d);
                    cs31.e = float35;
                    int36 = int34 - 1;
                    float29 = float35;
                }
            }
        }
        int7 = mItems.size();
        float8 = cs1.e;
        int9 = -1 + cs1.b;
        if( cs1.b == 0 )
            float10 = cs1.e;
        else
            float10 = -3.4028234663852886e+038F;
        mFirstOffset = float10;
        if( cs1.b == int4 - 1 )
            float11 = cs1.e + cs1.d - 1.0F;
        else
            float11 = 3.4028234663852886e+038F;
        mLastOffset = float11;
        for( int12 = int2 - 1; int12 >= 0; int12 = int21 )
        {
            cs cs20 = (cs) mItems.get( int12 );

            while( int9 > cs20.b )
            {
                PagerAdapter PagerAdapter22 = mAdapter;
                int int23 = int9 - 1;

                float8 -= float6 + PagerAdapter22.getPageWidth( int9 );
                int9 = int23;
            }
            float8 -= float6 + cs20.d;
            cs20.e = float8;
            if( cs20.b == 0 )
                mFirstOffset = float8;
            int21 = int12 - 1;
            --int9;
        }
        float13 = float6 + (cs1.e + cs1.d);
        int14 = 1 + cs1.b;
        for( int15 = int2 + 1; int15 < int7; int15 = int17 )
        {
            cs cs16 = (cs) mItems.get( int15 );

            while( int14 < cs16.b )
            {
                PagerAdapter PagerAdapter18 = mAdapter;
                int int19 = int14 + 1;

                float13 += float6 + PagerAdapter18.getPageWidth( int14 );
                int14 = int19;
            }
            if( cs16.b == int4 - 1 )
                mLastOffset = float13 + cs16.d - 1.0F;
            cs16.e = float13;
            float13 += float6 + cs16.d;
            int17 = int15 + 1;
            ++int14;
        }
        mNeedCalculatePageOffsets = false;
    }

    private void a(boolean boolean1)
    {
        int int2;
        int int3;
        int int4;

        if( mScrollState == 2 )
            int2 = 1;
        else
            int2 = 0;
        if( int2 != 0 )
        {
            int int6;
            int int7;
            int int8;
            int int9;

            b( false );
            mScroller.abortAnimation();
            int6 = getScrollX();
            int7 = getScrollY();
            int8 = mScroller.getCurrX();
            int9 = mScroller.getCurrY();
            if( int6 != int8 || int7 != int9 )
                scrollTo( int8, int9 );
        }
        mPopulatePending = false;
        int3 = 0;
        int4 = int2;
        while( int3 < mItems.size() )
        {
            cs cs5 = (cs) mItems.get( int3 );

            if( cs5.c )
            {
                cs5.c = false;
                int4 = 1;
            }
            ++int3;
        }
        if( int4 != 0 )
        {
            if( boolean1 )
                ViewCompat.postOnAnimation( (View) this, mEndScrollRunnable );
            else
            {
                mEndScrollRunnable.run();
                return;
            }
        }
    }

    private boolean a(float float1)
    {
        int int2 = 1;
        float float3 = mLastMotionX - float1;
        float float4;
        int int5;
        float float6;
        float float7;
        cs cs8;
        cs cs9;
        int int10;
        float float11;
        boolean boolean12;

        mLastMotionX = float1;
        float4 = float3 + (float) getScrollX();
        int5 = e();
        float6 = (float) int5 * mFirstOffset;
        float7 = (float) int5 * mLastOffset;
        cs8 = (cs) mItems.get( 0 );
        cs9 = (cs) mItems.get( -1 + mItems.size() );
        if( cs8.b != 0 )
        {
            float6 = cs8.e * (float) int5;
            int10 = 0;
        }
        else
            int10 = int2;
        if( cs9.b != -1 + mAdapter.getCount() )
        {
            float11 = cs9.e * (float) int5;
            int2 = 0;
        }
        else
            float11 = float7;
        if( float4 < float6 )
        {
            boolean12 = false;
            if( int10 != 0 )
            {
                float float14 = float6 - float4;

                boolean12 = mLeftEdge.onPull( Math.abs( float14 ) / (float) int5 );
            }
        }
        else if( float4 > float11 )
        {
            boolean12 = false;
            if( int2 != 0 )
            {
                float float15 = float4 - float11;

                boolean12 = mRightEdge.onPull( Math.abs( float15 ) / (float) int5 );
            }
            float6 = float11;
        }
        else
        {
            float6 = float4;
            boolean12 = false;
        }
        mLastMotionX += float6 - (float) (int) float6;
        scrollTo( (int) float6, getScrollY() );
        e( (int) float6 );
        return boolean12;
    }

    private boolean a(int int1, boolean boolean2, boolean boolean3, int int4)
    {
        if( mAdapter == null || mAdapter.getCount() <= 0 )
        {
            b( false );
            return false;
        }
        else if( !boolean3 && mCurItem == int1 && mItems.size() != 0 )
        {
            b( false );
            return false;
        }
        else
        {
            int int5;
            int int7;
            boolean boolean8;

            if( int1 < 0 )
                int1 = 0;
            else if( int1 >= mAdapter.getCount() )
                int1 = -1 + mAdapter.getCount();
            int5 = mOffscreenPageLimit;
            if( int1 > int5 + mCurItem || int1 < mCurItem - int5 )
            {
                int int6;

                for( int6 = 0; int6 < mItems.size(); ++int6 )
                    ((cs) mItems.get( int6 )).c = true;
            }
            int7 = mCurItem;
            boolean8 = false;
            if( int7 != int1 )
                boolean8 = true;
            if( mFirstLayout )
            {
                mCurItem = int1;
                if( boolean8 && mOnPageChangeListener != null )
                    mOnPageChangeListener.a( int1 );
                if( boolean8 && mInternalPageChangeListener != null )
                    mInternalPageChangeListener.a( int1 );
                requestLayout();
            }
            else
            {
                c( int1 );
                a( int1, boolean2, int4, boolean8 );
            }
            return boolean8;
        }
    }

    private boolean a(View View1, boolean boolean2, int int3, int int4, int int5)
    {
        if( View1 instanceof ViewGroup )
        {
            ViewGroup ViewGroup6 = (ViewGroup) View1;
            int int7 = View1.getScrollX();
            int int8 = View1.getScrollY();
            int int9;

            for( int9 = -1 + ViewGroup6.getChildCount(); int9 >= 0; --int9 )
            {
                View View10 = ViewGroup6.getChildAt( int9 );

                if( int4 + int7 >= View10.getLeft() && int4 + int7 < View10.getRight() && int5 + int8 >= View10.getTop() && int5 + int8 < View10.getBottom() && a( View10, true, int3, int4 + int7 - View10.getLeft(), int5 + int8 - View10.getTop() ) )
                    return true;
            }
        }
        if( !boolean2 || !android.support.v4.view.ViewCompat.canScrollHorizontally( View1, -int3 ) )
            return false;
        else
            return true;
    }

    static int b(ReaderViewPager ReaderViewPager1)
    {
        return ReaderViewPager1.mCurItem;
    }

    private cs b(View View1)
    {
        for( ;; )
        {
            ViewParent ViewParent2 = View1.getParent();

            if( ViewParent2 == this )
                return a( View1 );
            if( ViewParent2 == null || !( ViewParent2 instanceof View ) )
                return null;
            else
                View1 = (View) ViewParent2;
        }
    }

    private void b(int int1)
    {
        if( mScrollState != int1 )
        {
            mScrollState = int1;
            if( mPageTransformer$572aa01b != null )
            {
                int int2;
                int int3;
                int int4;

                if( int1 != 0 )
                    int2 = 1;
                else
                    int2 = 0;
                int3 = getChildCount();
                for( int4 = 0; int4 < int3; ++int4 )
                {
                    int int5;

                    if( int2 != 0 )
                        int5 = 2;
                    else
                        int5 = 0;
                    ViewCompat.setLayerType( getChildAt( int4 ), int5, null );
                }
            }
            if( mOnPageChangeListener != null )
            {
                mOnPageChangeListener.b( int1 );
                return;
            }
        }
    }

    private void b(boolean boolean1)
    {
        if( mScrollingCacheEnabled != boolean1 )
            mScrollingCacheEnabled = boolean1;
    }

    private void c(int int1)
    {
        int int2;
        cs cs3;

        if( mCurItem != int1 )
        {
            int int53;
            cs cs54;

            if( mCurItem < int1 )
                int53 = 66;
            else
                int53 = 17;
            cs54 = d( mCurItem );
            mCurItem = int1;
            cs3 = cs54;
            int2 = int53;
        }
        else
        {
            int2 = 2;
            cs3 = null;
        }
        if( mAdapter == null )
            f();
        else if( mPopulatePending )
        {
            f();
            return;
        }
        else if( getWindowToken() != null )
        {
            int int4;
            int int5;
            int int6;
            int int7;

            mAdapter.startUpdate( this );
            int4 = mOffscreenPageLimit;
            int5 = Math.max( 0, mCurItem - int4 );
            int6 = mAdapter.getCount();
            int7 = Math.min( int6 - 1, int4 + mCurItem );
            if( int6 != mExpectedAdapterCount )
            {
                String String51;

                try
                {
                    String String52 = getResources().getResourceName( getId() );
                }
                catch( Resources$NotFoundException NotFoundException50 )
                {
                    String51 = Integer.toHexString( getId() );
                }
                throw new IllegalStateException( new StringBuilder( "The application's PagerAdapter changed the adapter's contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: " ).append( mExpectedAdapterCount ).append( ", found: " ).append( int6 ).append( " Pager id: " ).append( String51 ).append( " Pager class: " ).append( getClass() ).append( " Problematic adapter: " ).append( mAdapter.getClass() ).toString() );
            }
            else
            {
                int int8 = 0;
                cs cs9;
                cs cs10;
                PagerAdapter PagerAdapter11;
                int int12;
                Object Object13;
                int int14;
                int int15;

label_139:
                {
                    while( int8 < mItems.size() )
                    {
                        cs9 = (cs) mItems.get( int8 );
                        if( cs9.b >= mCurItem )
                        {
                            if( cs9.b == mCurItem )
                                break label_139;
                            else
                                break;
                        }
                        else
                        {
                            ++int8;
                            continue;
                        }
                    }
                    cs9 = null;
                }
                if( cs9 == null && int6 > 0 )
                    cs10 = a( mCurItem, int8 );
                else
                    cs10 = cs9;
                if( cs10 != null )
                {
                    int int24 = int8 - 1;
                    cs cs25;
                    float float26;
                    int int27;
                    float float28;
                    int int29;
                    int int30;
                    int int31;
                    float float32;
                    int int33;

                    if( int24 >= 0 )
                        cs25 = (cs) mItems.get( int24 );
                    else
                        cs25 = null;
                    float26 = 2.0F - cs10.d + (float) getPaddingLeft() / (float) e();
                    int27 = -1 + mCurItem;
                    float28 = 0.0F;
                    int29 = int27;
                    int30 = int8;
                    int31 = int24;
                    while( int29 >= 0 )
                    {
                        if( float28 >= float26 && int29 < int5 )
                        {
                            if( cs25 == null )
                                break;
                            if( int29 == cs25.b && !cs25.c )
                            {
                                mItems.remove( int31 );
                                mAdapter.destroyItem( this, int29, cs25.a );
                                --int31;
                                --int30;
                                if( int31 >= 0 )
                                    cs25 = (cs) mItems.get( int31 );
                                else
                                    cs25 = null;
                            }
                        }
                        else if( cs25 != null && int29 == cs25.b )
                        {
                            float28 += cs25.d;
                            if( --int31 >= 0 )
                                cs25 = (cs) mItems.get( int31 );
                            else
                                cs25 = null;
                        }
                        else
                        {
                            float28 += a( int29, int31 + 1 ).d;
                            ++int30;
                            if( int31 >= 0 )
                                cs25 = (cs) mItems.get( int31 );
                            else
                                cs25 = null;
                        }
                        --int29;
                    }
                    float32 = cs10.d;
                    int33 = int30 + 1;
                    if( float32 < 2.0F )
                    {
                        cs cs34;
                        float float35;
                        int int36;

                        if( int33 < mItems.size() )
                            cs34 = (cs) mItems.get( int33 );
                        else
                            cs34 = null;
                        float35 = 2.0F + (float) getPaddingRight() / (float) e();
                        int36 = 1 + mCurItem;
                        while( int36 < int6 )
                        {
                            cs cs40;
                            float float41;
                            float float42;

                            if( float32 >= float35 && int36 > int7 )
                            {
                                if( cs34 == null )
                                    break;
                                if( int36 == cs34.b && !cs34.c )
                                {
                                    cs cs47;
                                    float float48;

                                    mItems.remove( int33 );
                                    mAdapter.destroyItem( this, int36, cs34.a );
                                    if( int33 < mItems.size() )
                                        cs47 = (cs) mItems.get( int33 );
                                    else
                                        cs47 = null;
                                    float48 = float32;
                                    cs40 = cs47;
                                    float41 = float48;
                                }
                                else
                                {
                                    float float45 = float32;

                                    cs40 = cs34;
                                    float41 = float45;
                                }
                            }
                            else if( cs34 != null && int36 == cs34.b )
                            {
                                float float43 = float32 + cs34.d;
                                cs cs44;

                                if( ++int33 < mItems.size() )
                                    cs44 = (cs) mItems.get( int33 );
                                else
                                    cs44 = null;
                                cs40 = cs44;
                                float41 = float43;
                            }
                            else
                            {
                                cs cs37 = a( int36, int33 );
                                float float38;
                                cs cs39;

                                ++int33;
                                float38 = float32 + cs37.d;
                                if( int33 < mItems.size() )
                                    cs39 = (cs) mItems.get( int33 );
                                else
                                    cs39 = null;
                                cs40 = cs39;
                                float41 = float38;
                            }
                            ++int36;
                            float42 = float41;
                            cs34 = cs40;
                            float32 = float42;
                        }
                    }
                    a( cs10, int30, cs3 );
                }
                PagerAdapter11 = mAdapter;
                int12 = mCurItem;
                if( cs10 != null )
                    Object13 = cs10.a;
                else
                    Object13 = null;
                PagerAdapter11.setPrimaryItem( this, int12, Object13 );
                mAdapter.finishUpdate( this );
                int14 = getChildCount();
                for( int15 = 0; int15 < int14; ++int15 )
                {
                    View View21 = getChildAt( int15 );
                    ct ct22 = (ct) View21.getLayoutParams();

                    ct22.f = int15;
                    if( !ct22.a && ct22.c == 0.0F )
                    {
                        cs cs23 = a( View21 );

                        if( cs23 != null )
                        {
                            ct22.c = cs23.d;
                            ct22.e = cs23.b;
                        }
                    }
                }
                f();
                if( hasFocus() )
                {
                    View View16 = findFocus();
                    cs cs17;

                    if( View16 != null )
                        cs17 = b( View16 );
                    else
                        cs17 = null;
                    if( cs17 == null || cs17.b != mCurItem )
                    {
                        int int18;

                        for( int18 = 0; int18 < getChildCount(); ++int18 )
                        {
                            View View19 = getChildAt( int18 );
                            cs cs20 = a( View19 );

                            if( cs20 != null && cs20.b == mCurItem && View19.requestFocus( int2 ) )
                                break;
                        }
                    }
                }
            }
        }
    }

    static int[] c()
    {
        return LAYOUT_ATTRS;
    }

    private cs d(int int1)
    {
        int int2 = 0;

        while( int2 < mItems.size() )
        {
            cs cs3 = (cs) mItems.get( int2 );

            if( cs3.b == int1 )
                return cs3;
            else
                ++int2;
        }
        return null;
    }

    private void d()
    {
        Context Context1;
        ViewConfiguration ViewConfiguration2;
        float float3;

        setWillNotDraw( false );
        setDescendantFocusability( 262144 );
        setFocusable( true );
        Context1 = getContext();
        mScroller = new Scroller( Context1, sInterpolator );
        ViewConfiguration2 = ViewConfiguration.get( Context1 );
        float3 = Context1.getResources().getDisplayMetrics().density;
        mTouchSlop = ViewConfigurationCompat.getScaledPagingTouchSlop( ViewConfiguration2 );
        mMinimumVelocity = (int) (400.0F * float3);
        mMaximumVelocity = ViewConfiguration2.getScaledMaximumFlingVelocity();
        mLeftEdge = new EdgeEffectCompat( Context1 );
        mRightEdge = new EdgeEffectCompat( Context1 );
        mFlingDistance = (int) (25.0F * float3);
        mCloseEnough = (int) (2.0F * float3);
        mDefaultGutterSize = (int) (16.0F * float3);
        ViewCompat.setAccessibilityDelegate( (View) this, (AccessibilityDelegateCompat) new cu( this ) );
        if( ViewCompat.getImportantForAccessibility( (View) this ) == 0 )
            ViewCompat.setImportantForAccessibility( (View) this, 1 );
    }

    private int e()
    {
        return getMeasuredWidth() - getPaddingLeft() - getPaddingRight();
    }

    private boolean e(int int1)
    {
        boolean boolean9;

        if( mItems.size() == 0 )
        {
            boolean boolean10;

            mCalledSuper = false;
            a( 0, 0.0F, 0 );
            boolean10 = mCalledSuper;
            boolean9 = false;
            if( !boolean10 )
                throw new IllegalStateException( "onPageScrolled did not call superclass implementation" );
        }
        else
        {
            cs cs2 = g();
            int int3 = e();
            int int4 = int3 + mPageMargin;
            float float5 = (float) mPageMargin / (float) int3;
            int int6 = cs2.b;
            float float7 = ((float) int1 / (float) int3 - cs2.e) / (float5 + cs2.d);
            int int8 = (int) (float7 * (float) int4);

            mCalledSuper = false;
            a( int6, float7, int8 );
            if( !mCalledSuper )
                throw new IllegalStateException( "onPageScrolled did not call superclass implementation" );
            else
                boolean9 = true;
        }
        return boolean9;
    }

    private void f()
    {
        if( mDrawingOrder != 0 )
        {
            int int1;
            int int2;

            if( mDrawingOrderedChildren == null )
                mDrawingOrderedChildren = new ArrayList();
            else
                mDrawingOrderedChildren.clear();
            int1 = getChildCount();
            for( int2 = 0; int2 < int1; ++int2 )
            {
                View View3 = getChildAt( int2 );

                mDrawingOrderedChildren.add( View3 );
            }
            Collections.sort( (List) mDrawingOrderedChildren, (Comparator) sPositionComparator );
        }
    }

    private boolean f(int int1)
    {
        Object Object2 = findFocus();
        Object Object3;
        View View4;
        boolean boolean5;

label_8:
        {
            if( Object2 == this )
                Object3 = null;
            else
            {
                if( Object2 != null )
                {
                    ViewParent ViewParent10 = ((View) Object2).getParent();
                    int int11;

label_65:
                    {
                        while( ViewParent10 instanceof ViewGroup )
                        {
                            if( ViewParent10 == this )
                            {
                                int11 = 1;
                                break label_65;
                            }
                            else
                                ViewParent10 = ViewParent10.getParent();
                        }
                        int11 = 0;
                    }
                    if( int11 == 0 )
                    {
                        StringBuilder StringBuilder12 = new StringBuilder();
                        Object Object14;

                        StringBuilder12.append( Object2.getClass().getSimpleName() );
                        for( Object14 = ((View) Object2).getParent(); Object14 instanceof ViewGroup; Object14 = ((ViewParent) Object14).getParent() )
                            StringBuilder12.append( " => " ).append( Object14.getClass().getSimpleName() );
                        Log.e( "ViewPager", new StringBuilder( "arrowScroll tried to find focus based on non-child current focused view " ).append( StringBuilder12.toString() ).toString() );
                        Object3 = null;
                        break label_8;
                    }
                }
                Object3 = Object2;
            }
        }
        View4 = FocusFinder.getInstance().findNextFocus( this, (View) Object3, int1 );
label_44:
        {
            if( View4 != null && View4 != Object3 )
            {
                if( int1 == 17 )
                {
                    int int8 = a( mTempRect, View4 ).left;
                    int int9 = a( mTempRect, (View) Object3 ).left;

                    if( Object3 != null && int8 >= int9 )
                        boolean5 = i();
                    else
                        boolean5 = View4.requestFocus();
                    break label_44;
                }
                else if( int1 == 66 )
                {
                    int int6 = a( mTempRect, View4 ).left;
                    int int7 = a( mTempRect, (View) Object3 ).left;

                    if( Object3 != null && int6 <= int7 )
                        boolean5 = j();
                    else
                        boolean5 = View4.requestFocus();
                    break label_44;
                }
            }
            else if( int1 == 17 || int1 == 1 )
            {
                boolean5 = i();
                break label_44;
            }
            else if( int1 == 66 || int1 == 2 )
            {
                boolean5 = j();
                break label_44;
            }
            boolean5 = false;
        }
        if( boolean5 )
            playSoundEffect( SoundEffectConstants.getContantForFocusDirection( int1 ) );
        return boolean5;
    }

    private cs g()
    {
        int int1 = e();
        float float2;
        float float3;
        float float4;
        float float5;
        int int6;
        int int7;
        int int8;
        cs cs9;

        if( int1 > 0 )
            float2 = (float) getScrollX() / (float) int1;
        else
            float2 = 0.0F;
        if( int1 > 0 )
            float3 = (float) mPageMargin / (float) int1;
        else
            float3 = 0.0F;
        float4 = 0.0F;
        float5 = 0.0F;
        int6 = -1;
        int7 = 0;
        int8 = 1;
        cs9 = null;
        while( int7 < mItems.size() )
        {
            cs cs10 = (cs) mItems.get( int7 );
            int int11;
            cs cs12;
            float float13;
            float float14;

            if( int8 == 0 && cs10.b != int6 + 1 )
            {
                cs cs18 = mTempItem;

                cs18.e = float3 + (float4 + float5);
                cs18.b = int6 + 1;
                cs18.d = mAdapter.getPageWidth( cs18.b );
                int11 = int7 - 1;
                cs12 = cs18;
            }
            else
            {
                int11 = int7;
                cs12 = cs10;
            }
            float13 = cs12.e;
            float14 = float3 + (float13 + cs12.d);
            if( int8 == 0 && float2 < float13 )
                break;
            if( float2 < float14 || int11 == -1 + mItems.size() )
            {
                cs9 = cs12;
                break;
            }
            else
            {
                int int15 = cs12.b;
                float float16 = cs12.d;
                int int17 = int11 + 1;

                float5 = float13;
                int6 = int15;
                float4 = float16;
                cs9 = cs12;
                int7 = int17;
                int8 = 0;
            }
        }
        return cs9;
    }

    private void h()
    {
        mIsBeingDragged = false;
        mIsUnableToDrag = false;
        if( mVelocityTracker != null )
        {
            mVelocityTracker.recycle();
            mVelocityTracker = null;
        }
    }

    private boolean i()
    {
        if( mCurItem <= 0 )
            return false;
        setCurrentItem( -1 + mCurItem, true );
        return true;
    }

    private boolean j()
    {
        if( mAdapter == null || mCurItem >= -1 + mAdapter.getCount() )
            return false;
        setCurrentItem( 1 + mCurItem, true );
        return true;
    }

    final void a()
    {
        int int1 = mAdapter.getCount();
        int int2;
        int int3;
        int int4;
        int int5;
        int int6;
        int int7;
        int int17;

        mExpectedAdapterCount = int1;
        if( mItems.size() < 1 + (mOffscreenPageLimit << 1) && mItems.size() < int1 )
            int2 = 1;
        else
            int2 = 0;
        int3 = mCurItem;
        int4 = 0;
        int5 = int3;
        int6 = int2;
        for( int7 = 0; int7 < mItems.size(); int7 = int17 )
        {
            cs cs11 = (cs) mItems.get( int7 );
            int int12 = mAdapter.getItemPosition( cs11.a );
            int int13;
            int int14;
            int int15;
            int int16;

label_105:
            {
                if( int12 != -1 )
                {
                    if( int12 == -2 )
                    {
                        int int19;

                        mItems.remove( int7 );
                        int19 = int7 - 1;
                        if( int4 == 0 )
                        {
                            mAdapter.startUpdate( this );
                            int4 = 1;
                        }
                        mAdapter.destroyItem( this, cs11.b, cs11.a );
                        if( mCurItem == cs11.b )
                        {
                            int int20 = Math.max( 0, Math.min( mCurItem, int1 - 1 ) );

                            int13 = int19;
                            int14 = int4;
                            int15 = int20;
                            int16 = 1;
                        }
                        else
                        {
                            int13 = int19;
                            int14 = int4;
                            int15 = int5;
                            int16 = 1;
                        }
                        break label_105;
                    }
                    else if( cs11.b != int12 )
                    {
                        if( cs11.b == mCurItem )
                            int5 = int12;
                        cs11.b = int12;
                        int13 = int7;
                        int14 = int4;
                        int15 = int5;
                        int16 = 1;
                        break label_105;
                    }
                }
                int13 = int7;
                int14 = int4;
                int15 = int5;
                int16 = int6;
            }
            int17 = int13 + 1;
            int6 = int16;
            int5 = int15;
            int4 = int14;
        }
        if( int4 != 0 )
            mAdapter.finishUpdate( this );
        Collections.sort( (List) mItems, COMPARATOR );
        if( int6 != 0 )
        {
            int int8 = getChildCount();
            int int9;

            for( int9 = 0; int9 < int8; ++int9 )
            {
                ct ct10 = (ct) getChildAt( int9 ).getLayoutParams();

                if( !ct10.a )
                    ct10.c = 0.0F;
            }
            a( int5, false, true );
            requestLayout();
        }
    }

    public final boolean a(int int1)
    {
        boolean boolean2;

        mPopulatePending = false;
        if( !mFirstLayout )
            boolean2 = true;
        else
            boolean2 = false;
        return a( int1, boolean2, false, 0 );
    }

    public void addFocusables(ArrayList ArrayList1, int int2, int int3)
    {
        int int4 = ArrayList1.size();
        int int5 = getDescendantFocusability();

        if( int5 != 393216 )
        {
            int int7;

            for( int7 = 0; int7 < getChildCount(); ++int7 )
            {
                View View8 = getChildAt( int7 );

                if( View8.getVisibility() == 0 )
                {
                    cs cs9 = a( View8 );

                    if( cs9 != null && cs9.b == mCurItem )
                        View8.addFocusables( ArrayList1, int2, int3 );
                }
            }
        }
        if( (int5 != 262144 || int4 == ArrayList1.size()) && isFocusable() && ((int3 & 0x1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) && ArrayList1 != null )
            ArrayList1.add( this );
    }

    public void addTouchables(ArrayList ArrayList1)
    {
        int int2;

        for( int2 = 0; int2 < getChildCount(); ++int2 )
        {
            View View3 = getChildAt( int2 );

            if( View3.getVisibility() == 0 )
            {
                cs cs4 = a( View3 );

                if( cs4 != null && cs4.b == mCurItem )
                    View3.addTouchables( ArrayList1 );
            }
        }
    }

    public void addView(View View1, int int2, ViewGroup$LayoutParams LayoutParams3)
    {
        ViewGroup$LayoutParams LayoutParams4;
        ct ct5;

        if( !checkLayoutParams( LayoutParams3 ) )
            LayoutParams4 = generateLayoutParams( LayoutParams3 );
        else
            LayoutParams4 = LayoutParams3;
        ct5 = (ct) LayoutParams4;
        ct5.a = ct5.a | View1 instanceof cr;
        if( mInLayout )
        {
            if( ct5 != null && ct5.a )
                throw new IllegalStateException( "Cannot add pager decor view during layout" );
            else
            {
                ct5.d = true;
                addViewInLayout( View1, int2, LayoutParams4 );
                return;
            }
        }
        else
        {
            super.addView( View1, int2, LayoutParams4 );
            return;
        }
    }

    final void b()
    {
        c( mCurItem );
    }

    protected boolean checkLayoutParams(ViewGroup$LayoutParams LayoutParams1)
    {
        if( LayoutParams1 instanceof ct && super.checkLayoutParams( LayoutParams1 ) )
            return true;
        else
            return false;
    }

    public void computeScroll()
    {
        if( !mScroller.isFinished() && mScroller.computeScrollOffset() )
        {
            int int1 = getScrollX();
            int int2 = getScrollY();
            int int3 = mScroller.getCurrX();
            int int4 = mScroller.getCurrY();

            if( int1 != int3 || int2 != int4 )
            {
                scrollTo( int3, int4 );
                if( !e( int3 ) )
                {
                    mScroller.abortAnimation();
                    scrollTo( 0, int4 );
                }
            }
            ViewCompat.postInvalidateOnAnimation( (View) this );
        }
        else
            a( true );
    }

    public boolean dispatchKeyEvent(KeyEvent KeyEvent1)
    {
        boolean boolean2;

        if( !super.dispatchKeyEvent( KeyEvent1 ) )
        {
            int int4;

label_12:
            {
                if( KeyEvent1.getAction() == 0 )
                {
                    boolean boolean3;

                    switch( KeyEvent1.getKeyCode() )
                    {
                        case 21:
                            boolean3 = f( 17 );
                            break label_12;
                        case 22:
                            boolean3 = f( 66 );
                            break label_12;
                        case 61:
                            if( Build$VERSION.SDK_INT >= 11 )
                            {
                                if( KeyEventCompat.hasNoModifiers( KeyEvent1 ) )
                                {
                                    boolean3 = f( 2 );
                                    break label_12;
                                }
                                else
                                {
                                    if( KeyEventCompat.hasModifiers( KeyEvent1, 1 ) )
                                    {
                                        boolean3 = f( 1 );
                                        break label_12;
                                    }
                                    break;
                                }
                            }
                            break;
                        default:
                            break;
                    }
                }
                int4 = 0;
            }
            boolean2 = false;
            if( int4 == 0 )
                return boolean2;
        }
        boolean2 = true;
        return boolean2;
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent AccessibilityEvent1)
    {
        int int2 = getChildCount();
        int int3 = 0;

        for( ;; )
        {
            boolean boolean4 = false;

            if( int3 < int2 )
            {
                View View5 = getChildAt( int3 );

                if( View5.getVisibility() == 0 )
                {
                    cs cs6 = a( View5 );

                    if( cs6 != null && cs6.b == mCurItem && View5.dispatchPopulateAccessibilityEvent( AccessibilityEvent1 ) )
                    {
                        boolean4 = true;
                        return boolean4;
                    }
                }
                ++int3;
                continue;
            }
        }
    }

    public void draw(Canvas Canvas1)
    {
        int int2;
        int int4;

        super.draw( Canvas1 );
        int2 = ViewCompat.getOverScrollMode( (View) this );
        if( int2 == 0 || int2 == 1 && mAdapter != null && mAdapter.getCount() > 1 )
        {
            boolean boolean3 = mLeftEdge.isFinished();

            int4 = 0;
            if( !boolean3 )
            {
                int int8 = Canvas1.save();
                int int9 = getHeight() - getPaddingTop() - getPaddingBottom();
                int int10 = getWidth();

                Canvas1.rotate( 270.0F );
                Canvas1.translate( (float) (-int9 + getPaddingTop()), mFirstOffset * (float) int10 );
                mLeftEdge.setSize( int9, int10 );
                int4 = 0x0 | mLeftEdge.draw( Canvas1 );
                Canvas1.restoreToCount( int8 );
            }
            if( !mRightEdge.isFinished() )
            {
                int int5 = Canvas1.save();
                int int6 = getWidth();
                int int7 = getHeight() - getPaddingTop() - getPaddingBottom();

                Canvas1.rotate( 90.0F );
                Canvas1.translate( (float) -(getPaddingTop()), -(1.0F + mLastOffset) * (float) int6 );
                mRightEdge.setSize( int7, int6 );
                int4 = int4 | mRightEdge.draw( Canvas1 );
                Canvas1.restoreToCount( int5 );
            }
        }
        else
        {
            mLeftEdge.finish();
            mRightEdge.finish();
            int4 = 0;
        }
        if( int4 != 0 )
            ViewCompat.postInvalidateOnAnimation( (View) this );
    }

    protected void drawableStateChanged()
    {
        Drawable Drawable1;

        super.drawableStateChanged();
        Drawable1 = mMarginDrawable;
        if( Drawable1 != null && Drawable1.isStateful() )
            Drawable1.setState( getDrawableState() );
    }

    protected ViewGroup$LayoutParams generateDefaultLayoutParams()
    {
        return (ViewGroup$LayoutParams) new ct();
    }

    public ViewGroup$LayoutParams generateLayoutParams(AttributeSet AttributeSet1)
    {
        return (ViewGroup$LayoutParams) new ct( getContext(), AttributeSet1 );
    }

    protected ViewGroup$LayoutParams generateLayoutParams(ViewGroup$LayoutParams LayoutParams1)
    {
        return generateDefaultLayoutParams();
    }

    protected int getChildDrawingOrder(int int1, int int2)
    {
        if( mDrawingOrder == 2 )
            int2 = int1 - 1 - int2;
        return ((ct) ((View) mDrawingOrderedChildren.get( int2 )).getLayoutParams()).f;
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        mFirstLayout = true;
    }

    protected void onDetachedFromWindow()
    {
        removeCallbacks( mEndScrollRunnable );
        super.onDetachedFromWindow();
    }

    protected void onDraw(Canvas Canvas1)
    {
        super.onDraw( Canvas1 );
        if( mPageMargin > 0 && mMarginDrawable != null && mItems.size() > 0 && mAdapter != null )
        {
            int int2 = getScrollX();
            int int3 = getWidth();
            float float4 = (float) mPageMargin / (float) int3;
            cs cs5 = (cs) mItems.get( 0 );
            float float6 = cs5.e;
            int int7 = mItems.size();
            int int8 = cs5.b;
            int int9 = ((cs) mItems.get( int7 - 1 )).b;
            int int10 = 0;
            int int11;

            for( int11 = int8; int11 < int9; ++int11 )
            {
                float float13;

                while( int11 > cs5.b && int10 < int7 )
                {
                    ArrayList ArrayList14 = mItems;

                    ++int10;
                    cs5 = (cs) ArrayList14.get( int10 );
                }
                if( int11 == cs5.b )
                {
                    float13 = (cs5.e + cs5.d) * (float) int3;
                    float6 = float4 + (cs5.e + cs5.d);
                }
                else
                {
                    float float12 = mAdapter.getPageWidth( int11 );

                    float13 = (float6 + float12) * (float) int3;
                    float6 += float12 + float4;
                }
                if( float13 + (float) mPageMargin > (float) int2 )
                {
                    mMarginDrawable.setBounds( (int) float13, mTopPageBounds, (int) (0.5F + (float13 + (float) mPageMargin)), mBottomPageBounds );
                    mMarginDrawable.draw( Canvas1 );
                }
                if( float13 > (float) (int2 + int3) )
                    break;
            }
        }
    }

    public boolean onInterceptTouchEvent(MotionEvent MotionEvent1)
    {
        int int2 = 0xFF & MotionEvent1.getAction();

        if( int2 == 3 || int2 == 1 )
        {
            mIsBeingDragged = false;
            mIsUnableToDrag = false;
            mActivePointerId = -1;
            if( mVelocityTracker != null )
            {
                mVelocityTracker.recycle();
                mVelocityTracker = null;
            }
        }
        else
        {
            if( int2 != 0 )
            {
                if( mIsBeingDragged )
                    return true;
                else if( mIsUnableToDrag )
                    return false;
            }
            switch( int2 )
            {
                case 2:
                    int int6 = mActivePointerId;

                    if( int6 != -1 )
                    {
                        int int7 = MotionEventCompat.findPointerIndex( MotionEvent1, int6 );
                        float float8 = MotionEventCompat.getX( MotionEvent1, int7 );
                        float float9 = float8 - mLastMotionX;
                        float float10 = Math.abs( float9 );
                        float float11 = MotionEventCompat.getY( MotionEvent1, int7 );
                        float float12 = Math.abs( float11 - mInitialMotionY );

                        if( float9 != 0.0F )
                        {
                            float float14 = mLastMotionX;
                            int int15;

                            if( float14 < (float) mGutterSize && float9 > 0.0F || float14 > (float) (getWidth() - mGutterSize) && float9 < 0.0F )
                                int15 = 1;
                            else
                                int15 = 0;
                            if( int15 == 0 && a( (View) this, false, (int) float9, (int) float8, (int) float11 ) )
                            {
                                mLastMotionX = float8;
                                mLastMotionY = float11;
                                mIsUnableToDrag = true;
                                return false;
                            }
                        }
                        if( float10 > (float) mTouchSlop && 0.5F * float10 > float12 )
                        {
                            float float13;

                            mIsBeingDragged = true;
                            b( 1 );
                            if( float9 > 0.0F )
                                float13 = mInitialMotionX + (float) mTouchSlop;
                            else
                                float13 = mInitialMotionX - (float) mTouchSlop;
                            mLastMotionX = float13;
                            mLastMotionY = float11;
                            b( true );
                        }
                        else if( float12 > (float) mTouchSlop )
                            mIsUnableToDrag = true;
                        if( mIsBeingDragged && a( float8 ) )
                        {
                            ViewCompat.postInvalidateOnAnimation( (View) this );
                            break;
                        }
                        break;
                    }
                    break;
                case 0:
                    float float3 = MotionEvent1.getX();
                    float float4;

                    mInitialMotionX = float3;
                    mLastMotionX = float3;
                    float4 = MotionEvent1.getY();
                    mInitialMotionY = float4;
                    mLastMotionY = float4;
                    mActivePointerId = MotionEventCompat.getPointerId( MotionEvent1, 0 );
                    mIsUnableToDrag = false;
                    mScroller.computeScrollOffset();
                    if( mScrollState != 2 || Math.abs( mScroller.getFinalX() - mScroller.getCurrX() ) <= mCloseEnough )
                    {
                        a( false );
                        mIsBeingDragged = false;
                        break;
                    }
                    break;
                case 6:
                    a( MotionEvent1 );
                    break;
                default:
                    break;
            }
            if( mVelocityTracker == null )
                mVelocityTracker = VelocityTracker.obtain();
            mVelocityTracker.addMovement( MotionEvent1 );
            return mIsBeingDragged;
        }
    }

    protected void onLayout(boolean boolean1, int int2, int int3, int int4, int int5)
    {
        int int6 = getChildCount();
        int int7 = int4 - int2;
        int int8 = int5 - int3;
        int int9 = getPaddingLeft();
        int int10 = getPaddingTop();
        int int11 = getPaddingRight();
        int int12 = getPaddingBottom();
        int int13 = getScrollX();
        int int14 = 0;
        int int15 = 0;
        int int16;
        int int17;

        while( int15 < int6 )
        {
            View View22 = getChildAt( int15 );
            int int23;
            int int24;
            int int25;
            int int26;

label_100:
            {
                if( View22.getVisibility() != 8 )
                {
                    ct ct27 = (ct) View22.getLayoutParams();

                    if( ct27.a )
                    {
                        int int28 = 0x7 & ct27.b;
                        int int29 = 0x70 & ct27.b;
                        int int31;
                        int int32;
                        int int34;
                        int int35;
                        int int36;

                        switch( int28 )
                        {
                            case 2:
                            case 4:
                            default:
                                int31 = int9;
                                break;
                            case 3:
                                int int41 = int9 + View22.getMeasuredWidth();

                                int31 = int9;
                                int9 = int41;
                                break;
                            case 1:
                                int31 = Math.max( (int7 - View22.getMeasuredWidth()) / 2, int9 );
                                break;
                            case 5:
                                int int30 = int7 - int11 - View22.getMeasuredWidth();

                                int11 += View22.getMeasuredWidth();
                                int31 = int30;
                                break;
                        }
                        switch( int29 )
                        {
                            default:
                                int int40;

                                int32 = int10;
                                int40 = int12;
                                int34 = int10;
                                int35 = int40;
                                break;
                            case 48:
                                int int38 = int10 + View22.getMeasuredHeight();
                                int int39 = int10;

                                int35 = int12;
                                int34 = int38;
                                int32 = int39;
                                break;
                            case 16:
                                int int37;

                                int32 = Math.max( (int8 - View22.getMeasuredHeight()) / 2, int10 );
                                int37 = int12;
                                int34 = int10;
                                int35 = int37;
                                break;
                            case 80:
                                int int33;

                                int32 = int8 - int12 - View22.getMeasuredHeight();
                                int33 = int12 + View22.getMeasuredHeight();
                                int34 = int10;
                                int35 = int33;
                                break;
                        }
                        int36 = int31 + int13;
                        View22.layout( int36, int32, int36 + View22.getMeasuredWidth(), int32 + View22.getMeasuredHeight() );
                        int23 = int14 + 1;
                        int24 = int34;
                        int12 = int35;
                        int25 = int11;
                        int26 = int9;
                        break label_100;
                    }
                }
                int23 = int14;
                int24 = int10;
                int25 = int11;
                int26 = int9;
            }
            ++int15;
            int9 = int26;
            int11 = int25;
            int10 = int24;
            int14 = int23;
        }
        int16 = int7 - int9 - int11;
        for( int17 = 0; int17 < int6; ++int17 )
        {
            View View18 = getChildAt( int17 );

            if( View18.getVisibility() != 8 )
            {
                ct ct19 = (ct) View18.getLayoutParams();

                if( !ct19.a )
                {
                    cs cs20 = a( View18 );

                    if( cs20 != null )
                    {
                        int int21 = int9 + (int) ((float) int16 * cs20.e);

                        if( ct19.d )
                        {
                            ct19.d = false;
                            View18.measure( View$MeasureSpec.makeMeasureSpec( (int) ((float) int16 * ct19.c), 1073741824 ), View$MeasureSpec.makeMeasureSpec( int8 - int10 - int12, 1073741824 ) );
                        }
                        View18.layout( int21, int10, int21 + View18.getMeasuredWidth(), int10 + View18.getMeasuredHeight() );
                    }
                }
            }
        }
        mTopPageBounds = int10;
        mBottomPageBounds = int8 - int12;
        mDecorChildCount = int14;
        if( mFirstLayout )
            a( mCurItem, false, 0, false );
        mFirstLayout = false;
    }

    protected void onMeasure(int int1, int int2)
    {
        int int3;
        int int4;
        int int5;
        int int6;
        int int7;
        int int8;
        int int9;

        setMeasuredDimension( getDefaultSize( 0, int1 ), getDefaultSize( 0, int2 ) );
        int3 = getMeasuredWidth();
        mGutterSize = Math.min( int3 / 10, mDefaultGutterSize );
        int4 = int3 - getPaddingLeft() - getPaddingRight();
        int5 = getMeasuredHeight() - getPaddingTop() - getPaddingBottom();
        int6 = getChildCount();
        for( int7 = 0; int7 < int6; ++int7 )
        {
            View View12 = getChildAt( int7 );

            if( View12.getVisibility() != 8 )
            {
                ct ct13 = (ct) View12.getLayoutParams();

                if( ct13 != null && ct13.a )
                {
                    int int14 = 0x7 & ct13.b;
                    int int15 = 0x70 & ct13.b;
                    int int16 = -2147483648;
                    int int17 = -2147483648;
                    int int18;
                    int int19;
                    int int20;
                    int int21;
                    int int22;

                    if( int15 == 48 || int15 == 80 )
                        int18 = 1;
                    else
                        int18 = 0;
                    if( int14 == 3 || int14 == 5 )
                        int19 = 1;
                    else
                        int19 = 0;
                    if( int18 != 0 )
                        int16 = 1073741824;
                    else if( int19 != 0 )
                        int17 = 1073741824;
                    if( ct13.width != -2 )
                    {
                        int20 = 1073741824;
                        if( ct13.width != -1 )
                            int21 = ct13.width;
                        else
                            int21 = int4;
                    }
                    else
                    {
                        int20 = int16;
                        int21 = int4;
                    }
label_121:
                    {
                        if( ct13.height != -2 )
                        {
                            int17 = 1073741824;
                            if( ct13.height != -1 )
                            {
                                int22 = ct13.height;
                                break label_121;
                            }
                        }
                        int22 = int5;
                    }
                    View12.measure( View$MeasureSpec.makeMeasureSpec( int21, int20 ), View$MeasureSpec.makeMeasureSpec( int22, int17 ) );
                    if( int18 != 0 )
                        int5 -= View12.getMeasuredHeight();
                    else if( int19 != 0 )
                        int4 -= View12.getMeasuredWidth();
                }
            }
        }
        mChildWidthMeasureSpec = View$MeasureSpec.makeMeasureSpec( int4, 1073741824 );
        mChildHeightMeasureSpec = View$MeasureSpec.makeMeasureSpec( int5, 1073741824 );
        mInLayout = true;
        b();
        mInLayout = false;
        int8 = getChildCount();
        for( int9 = 0; int9 < int8; ++int9 )
        {
            View View10 = getChildAt( int9 );

            if( View10.getVisibility() != 8 )
            {
                ct ct11 = (ct) View10.getLayoutParams();

                if( ct11 == null || !ct11.a )
                    View10.measure( View$MeasureSpec.makeMeasureSpec( (int) ((float) int4 * ct11.c), 1073741824 ), mChildHeightMeasureSpec );
            }
        }
    }

    protected boolean onRequestFocusInDescendants(int int1, Rect Rect2)
    {
        int int3 = -1;
        int int4 = getChildCount();
        int int5;

        if( (int1 & 0x2) != 0 )
        {
            int3 = 1;
            int5 = 0;
        }
        else
        {
            int5 = int4 - 1;
            int4 = int3;
        }
        while( int5 != int4 )
        {
            View View6 = getChildAt( int5 );

            if( View6.getVisibility() == 0 )
            {
                cs cs7 = a( View6 );

                if( cs7 != null && cs7.b == mCurItem && View6.requestFocus( int1, Rect2 ) )
                    return true;
            }
            int5 += int3;
        }
        return false;
    }

    public void onRestoreInstanceState(Parcelable Parcelable1)
    {
        if( !( Parcelable1 instanceof ReaderViewPager$SavedState ) )
            super.onRestoreInstanceState( Parcelable1 );
        else
        {
            ReaderViewPager$SavedState SavedState2 = (ReaderViewPager$SavedState) Parcelable1;

            super.onRestoreInstanceState( SavedState2.getSuperState() );
            if( mAdapter != null )
            {
                mAdapter.restoreState( SavedState2.b, SavedState2.c );
                a( SavedState2.a, false, true );
            }
            else
            {
                mRestoredCurItem = SavedState2.a;
                mRestoredAdapterState = SavedState2.b;
                mRestoredClassLoader = SavedState2.c;
            }
        }
    }

    public Parcelable onSaveInstanceState()
    {
        Object Object1 = new ReaderViewPager$SavedState( super.onSaveInstanceState() );

        ((ReaderViewPager$SavedState) Object1).a = mCurItem;
        if( mAdapter != null )
            ((ReaderViewPager$SavedState) Object1).b = mAdapter.saveState();
        return (Parcelable) Object1;
    }

    protected void onSizeChanged(int int1, int int2, int int3, int int4)
    {
        super.onSizeChanged( int1, int2, int3, int4 );
        if( int1 != int3 )
            a( int1, int3, mPageMargin, mPageMargin );
    }

    public boolean onTouchEvent(MotionEvent MotionEvent1)
    {
        if( mFakeDragging )
            return true;
        else if( MotionEvent1.getAction() == 0 && MotionEvent1.getEdgeFlags() != 0 )
            return false;
        else if( mAdapter == null || mAdapter.getCount() == 0 )
            return false;
        else
        {
            int int2;
            int int3;

            if( mVelocityTracker == null )
                mVelocityTracker = VelocityTracker.obtain();
            mVelocityTracker.addMovement( MotionEvent1 );
            int2 = 0xFF & MotionEvent1.getAction();
            int3 = 0;
            switch( int2 )
            {
                case 0:
                    float float26;
                    float float27;

                    mScroller.abortAnimation();
                    mPopulatePending = false;
                    b();
                    mIsBeingDragged = true;
                    b( 1 );
                    float26 = MotionEvent1.getX();
                    mInitialMotionX = float26;
                    mLastMotionX = float26;
                    float27 = MotionEvent1.getY();
                    mInitialMotionY = float27;
                    mLastMotionY = float27;
                    mActivePointerId = MotionEventCompat.getPointerId( MotionEvent1, 0 );
                    int3 = 0;
                    break;
                case 2:
                    boolean boolean19;

                    if( !mIsBeingDragged )
                    {
                        int int20 = MotionEventCompat.findPointerIndex( MotionEvent1, mActivePointerId );
                        float float21 = MotionEventCompat.getX( MotionEvent1, int20 );
                        float float22 = Math.abs( float21 - mLastMotionX );
                        float float23 = MotionEventCompat.getY( MotionEvent1, int20 );
                        float float24 = Math.abs( float23 - mLastMotionY );

                        if( float22 > (float) mTouchSlop && float22 > float24 )
                        {
                            float float25;

                            mIsBeingDragged = true;
                            if( float21 - mInitialMotionX > 0.0F )
                                float25 = mInitialMotionX + (float) mTouchSlop;
                            else
                                float25 = mInitialMotionX - (float) mTouchSlop;
                            mLastMotionX = float25;
                            mLastMotionY = float23;
                            b( 1 );
                            b( true );
                        }
                    }
                    boolean19 = mIsBeingDragged;
                    int3 = 0;
                    if( boolean19 )
                    {
                        int3 = 0x0 | a( MotionEventCompat.getX( MotionEvent1, MotionEventCompat.findPointerIndex( MotionEvent1, mActivePointerId ) ) );
                        break;
                    }
                    break;
                case 1:
                    boolean boolean6 = mIsBeingDragged;

                    int3 = 0;
                    if( boolean6 )
                    {
                        VelocityTracker VelocityTracker7 = mVelocityTracker;
                        int int8;
                        int int9;
                        int int10;
                        cs cs11;
                        int int12;
                        float float13;
                        int int15;

                        VelocityTracker7.computeCurrentVelocity( 1000, (float) mMaximumVelocity );
                        int8 = (int) VelocityTrackerCompat.getXVelocity( VelocityTracker7, mActivePointerId );
                        mPopulatePending = true;
                        int9 = e();
                        int10 = getScrollX();
                        cs11 = g();
                        int12 = cs11.b;
                        float13 = ((float) int10 / (float) int9 - cs11.e) / cs11.d;
                        if( Math.abs( (int) (MotionEventCompat.getX( MotionEvent1, MotionEventCompat.findPointerIndex( MotionEvent1, mActivePointerId ) ) - mInitialMotionX) ) > mFlingDistance && Math.abs( int8 ) > mMinimumVelocity )
                        {
                            if( int8 <= 0 )
                                ++int12;
                            int15 = int12;
                        }
                        else
                        {
                            float float14;

                            if( int12 >= mCurItem )
                                float14 = 0.40000000596046448F;
                            else
                                float14 = 0.60000002384185791F;
                            int15 = (int) (float14 + (float13 + (float) int12));
                        }
                        if( mItems.size() > 0 )
                        {
                            cs cs17 = (cs) mItems.get( 0 );
                            cs cs18 = (cs) mItems.get( -1 + mItems.size() );

                            int15 = Math.max( cs17.b, Math.min( int15, cs18.b ) );
                        }
                        a( int15, true, true, int8 );
                        mActivePointerId = -1;
                        h();
                        int3 = mLeftEdge.onRelease() | mRightEdge.onRelease();
                        break;
                    }
                    break;
                case 3:
                    boolean boolean5 = mIsBeingDragged;

                    int3 = 0;
                    if( boolean5 )
                    {
                        a( mCurItem, true, 0, false );
                        mActivePointerId = -1;
                        h();
                        int3 = mLeftEdge.onRelease() | mRightEdge.onRelease();
                        break;
                    }
                    break;
                case 5:
                    int int4 = MotionEventCompat.getActionIndex( MotionEvent1 );

                    mLastMotionX = MotionEventCompat.getX( MotionEvent1, int4 );
                    mActivePointerId = MotionEventCompat.getPointerId( MotionEvent1, int4 );
                    int3 = 0;
                    break;
                case 6:
                    a( MotionEvent1 );
                    mLastMotionX = MotionEventCompat.getX( MotionEvent1, MotionEventCompat.findPointerIndex( MotionEvent1, mActivePointerId ) );
                    int3 = 0;
                    break;
                case 4:
                default:
                    break;
            }
            if( int3 != 0 )
                ViewCompat.postInvalidateOnAnimation( (View) this );
            return true;
        }
    }

    public void removeView(View View1)
    {
        if( mInLayout )
            removeViewInLayout( View1 );
        else
            super.removeView( View1 );
    }

    public void setAdapter(PagerAdapter PagerAdapter1)
    {
        if( mAdapter != null )
        {
            int int3;
            int int4;

            mAdapter.unregisterDataSetObserver( (DataSetObserver) mObserver );
            mAdapter.startUpdate( this );
            for( int3 = 0; int3 < mItems.size(); ++int3 )
            {
                cs cs5 = (cs) mItems.get( int3 );

                mAdapter.destroyItem( this, cs5.b, cs5.a );
            }
            mAdapter.finishUpdate( this );
            mItems.clear();
            for( int4 = 0; int4 < getChildCount(); ++int4 )
            {
                if( !((ct) getChildAt( int4 ).getLayoutParams()).a )
                {
                    removeViewAt( int4 );
                    --int4;
                }
            }
            mCurItem = 0;
            scrollTo( 0, 0 );
        }
        mAdapter = PagerAdapter1;
        mExpectedAdapterCount = 0;
        if( mAdapter != null )
        {
            boolean boolean2;

            if( mObserver == null )
                mObserver = new cx( this, (byte) 0 );
            mAdapter.registerDataSetObserver( (DataSetObserver) mObserver );
            mPopulatePending = false;
            boolean2 = mFirstLayout;
            mFirstLayout = true;
            mExpectedAdapterCount = mAdapter.getCount();
            if( mRestoredCurItem >= 0 )
            {
                mAdapter.restoreState( mRestoredAdapterState, mRestoredClassLoader );
                a( mRestoredCurItem, false, true );
                mRestoredCurItem = -1;
                mRestoredAdapterState = null;
                mRestoredClassLoader = null;
            }
            else
            {
                if( !boolean2 )
                    b();
                else
                    requestLayout();
                return;
            }
        }
    }

    public void setCurrentItem(int int1, boolean boolean2)
    {
        mPopulatePending = false;
        a( int1, boolean2, false );
    }

    public void setOffscreenPageLimit(int int1)
    {
        if( int1 <= 0 )
        {
            Log.w( "ViewPager", new StringBuilder( "Requested offscreen page limit " ).append( int1 ).append( " too small; defaulting to 1" ).toString() );
            int1 = 1;
        }
        if( int1 != mOffscreenPageLimit )
        {
            mOffscreenPageLimit = int1;
            b();
        }
    }

    public void setOnPageChangeListener(cw cw1)
    {
        mOnPageChangeListener = cw1;
    }

    public void setPageMargin(int int1)
    {
        int int2 = mPageMargin;
        int int3;

        mPageMargin = int1;
        int3 = getWidth();
        a( int3, int3, int1, int2 );
        requestLayout();
    }

    public void setPageMarginDrawable(int int1)
    {
        setPageMarginDrawable( getContext().getResources().getDrawable( int1 ) );
    }

    public void setPageMarginDrawable(Drawable Drawable1)
    {
        boolean boolean2;

        mMarginDrawable = Drawable1;
        if( Drawable1 != null )
            refreshDrawableState();
        if( Drawable1 == null )
            boolean2 = true;
        else
            boolean2 = false;
        setWillNotDraw( boolean2 );
        invalidate();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public void setPageTransformer$7c662580(boolean boolean1, K K2)
    {
    }

    protected boolean verifyDrawable(Drawable Drawable1)
    {
        if( super.verifyDrawable( Drawable1 ) || Drawable1 == mMarginDrawable )
            return true;
        else
            return false;
    }
}
