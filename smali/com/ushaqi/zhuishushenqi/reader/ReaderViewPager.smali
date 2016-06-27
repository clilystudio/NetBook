.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;
.super Landroid/view/ViewGroup;
.source "SourceFile"
# static fields
.field private static final CLOSE_ENOUGH:I = 0x2
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/cs;",
            ">;"
        }
    .end annotation
.end field
.field private static final DEBUG:Z = false
.field private static final DEFAULT_GUTTER_SIZE:I = 0x10
.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1
.field private static final DRAW_ORDER_DEFAULT:I = 0x0
.field private static final DRAW_ORDER_FORWARD:I = 0x1
.field private static final DRAW_ORDER_REVERSE:I = 0x2
.field private static final INVALID_POINTER:I = -0x1
.field private static final LAYOUT_ATTRS:[I
.field private static final MAX_SETTLE_DURATION:I = 0x258
.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19
.field private static final MIN_FLING_VELOCITY:I = 0x190
.field private static final TAG:Ljava/lang/String; = "ViewPager"
.field private static final USE_CACHE:Z
.field private static final sInterpolator:Landroid/view/animation/Interpolator;
.field private static final sPositionComparator:Lcom/ushaqi/zhuishushenqi/reader/cz;
# instance fields
.field private mActivePointerId:I
.field private mAdapter:Landroid/support/v4/view/PagerAdapter;
.field private mAdapterChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cv;
.field private mBottomPageBounds:I
.field private mCalledSuper:Z
.field private mChildHeightMeasureSpec:I
.field private mChildWidthMeasureSpec:I
.field private mCloseEnough:I
.field private mCurItem:I
.field private mDecorChildCount:I
.field private mDefaultGutterSize:I
.field private mDrawingOrder:I
.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field
.field private final mEndScrollRunnable:Ljava/lang/Runnable;
.field private mExpectedAdapterCount:I
.field private mFakeDragBeginTime:J
.field private mFakeDragging:Z
.field private mFirstLayout:Z
.field private mFirstOffset:F
.field private mFlingDistance:I
.field private mGutterSize:I
.field private mIgnoreGutter:Z
.field private mInLayout:Z
.field private mInitialMotionX:F
.field private mInitialMotionY:F
.field private mInternalPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;
.field private mIsBeingDragged:Z
.field private mIsUnableToDrag:Z
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ushaqi/zhuishushenqi/reader/cs;",
            ">;"
        }
    .end annotation
.end field
.field private mLastMotionX:F
.field private mLastMotionY:F
.field private mLastOffset:F
.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;
.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;
.field private mMaximumVelocity:I
.field private mMinimumVelocity:I
.field private mNeedCalculatePageOffsets:Z
.field private mObserver:Lcom/ushaqi/zhuishushenqi/reader/cx;
.field private mOffscreenPageLimit:I
.field private mOnPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;
.field private mPageMargin:I
.field private mPageTransformer$572aa01b:Landroid/support/design/widget/K;
.field private mPopulatePending:Z
.field private mRestoredAdapterState:Landroid/os/Parcelable;
.field private mRestoredClassLoader:Ljava/lang/ClassLoader;
.field private mRestoredCurItem:I
.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;
.field private mScrollState:I
.field private mScroller:Landroid/widget/Scroller;
.field private mScrollingCacheEnabled:Z
.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
.field private final mTempItem:Lcom/ushaqi/zhuishushenqi/reader/cs;
.field private final mTempRect:Landroid/graphics/Rect;
.field private mTopPageBounds:I
.field private mTouchSlop:I
.field private mVelocityTracker:Landroid/view/VelocityTracker;
# direct methods
.method static constructor <clinit>()V
    .locals 3
    .prologue
    v0 = 0x1;
    new-array v0, v0, [I
    v1 = 0x0;
    v2 = 0x10100b3;
    v0[v1] = v2;
    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->LAYOUT_ATTRS:[I
    v0 = new co();
    v0.<init>();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->COMPARATOR:Ljava/util/Comparator;
    v0 = new cp();
    v0.<init>();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->sInterpolator:Landroid/view/animation/Interpolator;
    v0 = new cz();
    v0.<init>();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->sPositionComparator:Lcom/ushaqi/zhuishushenqi/reader/cz;
    return;
.end method
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .prologue
    v4 = 0x0;
    v3 = 0x1;
    v2 = 0x0;
    v1 = -0x1;
    p0.<init>(p1);
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems = v0;
    v0 = new cs();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempItem = v0;
    v0 = new Rect();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredCurItem = v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredAdapterState = v4;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredClassLoader = v4;
    v0 = -0x800001;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstOffset = v0;
    v0 = 0x7f7fffff    # Float.MAX_VALUE;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit = v3;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout = v3;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mNeedCalculatePageOffsets = v2;
    v0 = new cq();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mEndScrollRunnable = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollState = v2;
    p0.d();
    return;
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .prologue
    v4 = 0x0;
    v3 = 0x1;
    v2 = 0x0;
    v1 = -0x1;
    p0.<init>(p1, p2);
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems = v0;
    v0 = new cs();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempItem = v0;
    v0 = new Rect();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredCurItem = v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredAdapterState = v4;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredClassLoader = v4;
    v0 = -0x800001;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstOffset = v0;
    v0 = 0x7f7fffff    # Float.MAX_VALUE;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit = v3;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout = v3;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mNeedCalculatePageOffsets = v2;
    v0 = new cq();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mEndScrollRunnable = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollState = v2;
    p0.d();
    return;
.end method
.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .prologue
    v0 = 0x0;
    if (p1 != 0) {
//       if-nez p1, :cond_2
    }
    v1 = new Rect();
    v1.<init>();
    :goto_0
    if (p2 != 0) {
//       if-nez p2, :cond_0
    }
    v1.set(v0, v0, v0, v0);
    v0 = v1;
    :goto_1
    return v0;
    :cond_0
    v0 = p2.getLeft();
    v1.Landroid/graphics/Rect;->left = v0;
    v0 = p2.getRight();
    v1.Landroid/graphics/Rect;->right = v0;
    v0 = p2.getTop();
    v1.Landroid/graphics/Rect;->top = v0;
    v0 = p2.getBottom();
    v1.Landroid/graphics/Rect;->bottom = v0;
    v0 = p2.getParent();
    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    if (v0 == p0) {
//       if-eq v0, p0, :cond_1
    }
    check-cast v0, Landroid/view/ViewGroup;
    v2 = v1.Landroid/graphics/Rect;->left;
    v3 = v0.getLeft();
    v2 += v3;
    v1.Landroid/graphics/Rect;->left = v2;
    v2 = v1.Landroid/graphics/Rect;->right;
    v3 = v0.getRight();
    v2 += v3;
    v1.Landroid/graphics/Rect;->right = v2;
    v2 = v1.Landroid/graphics/Rect;->top;
    v3 = v0.getTop();
    v2 += v3;
    v1.Landroid/graphics/Rect;->top = v2;
    v2 = v1.Landroid/graphics/Rect;->bottom;
    v3 = v0.getBottom();
    v2 += v3;
    v1.Landroid/graphics/Rect;->bottom = v2;
    v0 = v0.getParent();
    goto :goto_2
    :cond_1
    v0 = v1;
    goto :goto_1
    :cond_2
    v1 = p1;
    goto :goto_0
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    return v0;
.end method
.method private a(II)Lcom/ushaqi/zhuishushenqi/reader/cs;
    .locals 2
    .prologue
    v0 = new cs();
    v0.<init>();
    v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b = p1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v1 = v1.instantiateItem(p0, p1);
    v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->a = v1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v1 = v1.getPageWidth(p1);
    v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->d = v1;
    if (p2 < 0) {
//       if-ltz p2, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v1 = v1.size();
    if (p2 < v1) {
//       if-lt p2, v1, :cond_1
    }
    :cond_0
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v1.add(v0);
    :goto_0
    return v0;
    :cond_1
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v1.add(p2, v0);
    goto :goto_0
.end method
.method private a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/reader/cs;
    .locals 4
    .prologue
    v0 = 0x0;
    v1 = v0;
    :goto_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.size();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v3 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->a;
    v2 = v2.isViewFromObject(p1, v3);
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    :goto_1
    return v0;
    :cond_0
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_0
    :cond_1
    v0 = 0x0;
    goto :goto_1
.end method
.method private a(IFI)V
    .locals 11
    .prologue
    v3 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDecorChildCount;
    if (v0 <= 0) {
//       if-lez v0, :cond_1
    }
    v5 = p0.getScrollX();
    v1 = p0.getPaddingLeft();
    v2 = p0.getPaddingRight();
    v6 = p0.getWidth();
    v7 = p0.getChildCount();
    v4 = v3;
    :goto_0
    if (v4 >= v7) {
//       if-ge v4, v7, :cond_1
    }
    v8 = p0.getChildAt(v4);
    v0 = v8.getLayoutParams();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;
    v9 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
    if (v9 == 0) {
//       if-eqz v9, :cond_4
    }
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->b;
    v0 = v0 & 0x7;
    packed-switch v0, :pswitch_data_0
    :pswitch_0
    v0 = v1;
    v10 = v2;
    v2 = v1;
    v1 = v10;
    :goto_1
    v0 += v5;
    v9 = v8.getLeft();
    v0 -= v9;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v8.offsetLeftAndRight(v0);
    :cond_0
    :goto_2
    v0 = v4 + 0x1;
    v4 = v0;
    v10 = v1;
    v1 = v2;
    v2 = v10;
    goto :goto_0
    :pswitch_1
    v0 = v8.getWidth();
    v0 += v1;
    v10 = v1;
    v1 = v2;
    v2 = v0;
    v0 = v10;
    goto :goto_1
    :pswitch_2
    v0 = v8.getMeasuredWidth();
    v0 = v6 - v0;
    v0 = v0 / 0x2;
    v0 = Ljava/lang/Math.max(v0, v1);
    v10 = v2;
    v2 = v1;
    v1 = v10;
    goto :goto_1
    :pswitch_3
    v0 = v6 - v2;
    v9 = v8.getMeasuredWidth();
    v0 -= v9;
    v9 = v8.getMeasuredWidth();
    v2 += v9;
    v10 = v2;
    v2 = v1;
    v1 = v10;
    goto :goto_1
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageTransformer$572aa01b;
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    p0.getScrollX();
    v2 = p0.getChildCount();
    v1 = v3;
    :goto_3
    if (v1 >= v2) {
//       if-ge v1, v2, :cond_3
    }
    v3 = p0.getChildAt(v1);
    v0 = v3.getLayoutParams();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v3.getLeft();
    p0.e();
    :cond_2
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_3
    :cond_3
    v0 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCalledSuper = v0;
    return;
    :cond_4
    v10 = v2;
    v2 = v1;
    v1 = v10;
    goto :goto_2
    nop
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
.method private a(IIII)V
    .locals 6
    .prologue
    v2 = 0x0;
    if (p2 <= 0) {
//       if-lez p2, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.isEmpty();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p0.getPaddingLeft();
    v0 = p1 - v0;
    v1 = p0.getPaddingRight();
    v0 -= v1;
    v0 += p3;
    v1 = p0.getPaddingLeft();
    v1 = p2 - v1;
    v3 = p0.getPaddingRight();
    v1 -= v3;
    v1 += p4;
    v3 = p0.getScrollX();
    int-to-float v3, v3
    int-to-float v1, v1
    v1 = v3 / v1;
    int-to-float v0, v0
    v0 *= v1;
    float-to-int v1, v0
    v0 = p0.getScrollY();
    p0.scrollTo(v1, v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v0 = v0.isFinished();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v0 = v0.getDuration();
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v3 = v3.timePassed();
    v5 = v0 - v3;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v3 = p0.d(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v3 = v3.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    int-to-float v4, p1
    v3 *= v4;
    float-to-int v3, v3
    v4 = v2;
    v0.startScroll(..v5);
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v0 = p0.d(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset;
    v0 = Ljava/lang/Math.min(v0, v1);
    :goto_1
    v1 = p0.getPaddingLeft();
    v1 = p1 - v1;
    v3 = p0.getPaddingRight();
    v1 -= v3;
    int-to-float v1, v1
    v0 *= v1;
    float-to-int v0, v0
    v1 = p0.getScrollX();
    if (v0 == v1) {
//       if-eq v0, v1, :cond_0
    }
    p0.a(v2);
    v1 = p0.getScrollY();
    p0.scrollTo(v0, v1);
    goto :goto_0
    :cond_2
    v0 = 0x0;
    goto :goto_1
.end method
.method private a(IZIZ)V
    .locals 12
    .prologue
    v1 = p0.d(p1);
    v0 = 0x0;
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = p0.e();
    int-to-float v0, v0
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstOffset;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset;
    v1 = Ljava/lang/Math.min(v1, v3);
    v1 = Ljava/lang/Math.max(v2, v1);
    v0 *= v1;
    float-to-int v0, v0
    :cond_0
    if (p2 == 0) {
//       if-eqz p2, :cond_6
    }
    v1 = p0.getChildCount();
    if (v1 != 0) {
//       if-nez v1, :cond_3
    }
    v0 = 0x0;
    p0.b(v0);
    :goto_0
    if (p4 == 0) {
//       if-eqz p4, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener;
    v0.a(p1);
    :cond_1
    if (p4 == 0) {
//       if-eqz p4, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInternalPageChangeListener;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInternalPageChangeListener;
    v0.a(p1);
    :cond_2
    :goto_1
    return;
    :cond_3
    v1 = p0.getScrollX();
    v2 = p0.getScrollY();
    v3 = v0 - v1;
    rv4 = v2 - 0x0;
    if (v3 != 0) {
//       if-nez v3, :cond_4
    }
    if (v4 != 0) {
//       if-nez v4, :cond_4
    }
    v0 = 0x0;
    p0.a(v0);
    p0.b();
    v0 = 0x0;
    p0.b(v0);
    goto :goto_0
    :cond_4
    v0 = 0x1;
    p0.b(v0);
    v0 = 0x2;
    p0.b(v0);
    v0 = p0.e();
    v5 = v0 / 0x2;
    v6 = 0x3f800000    # 1.0f;
    v7 = 0x3f800000    # 1.0f;
    v8 = Ljava/lang/Math.abs(v3);
    int-to-float v8, v8
    v7 *= v8;
    int-to-float v8, v0
    v7 /= v8;
    v6 = Ljava/lang/Math.min(v6, v7);
    int-to-float v7, v5
    int-to-float v5, v5
    v8 = 0x3f000000    # 0.5f;
    v6 -= v8;
    float-to-double v8, v6
    v10 = 0x3fde28c7460698c7L    # 0.4712389167638204;
    v8 *= v10;
    double-to-float v6, v8
    float-to-double v8, v6
    v8 = Ljava/lang/Math.sin(v8, v9);
    double-to-float v6, v8
    v5 *= v6;
    v5 += v7;
    v6 = Ljava/lang/Math.abs(p3);
    if (v6 <= 0) {
//       if-lez v6, :cond_5
    }
    v0 = 0x447a0000    # 1000.0f;
    int-to-float v6, v6
    v5 /= v6;
    v5 = Ljava/lang/Math.abs(v5);
    v0 *= v5;
    v0 = Ljava/lang/Math.round(v0);
    v0 = v0 * 0x4;
    :goto_2
    v5 = 0x258;
    v5 = Ljava/lang/Math.min(v0, v5);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v0.startScroll(..v5);
    Landroid/support/v4/view/ViewCompat.postInvalidateOnAnimation(p0);
    goto/16 :goto_0
    :cond_5
    int-to-float v0, v0
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v5 = v5.getPageWidth(v6);
    v0 *= v5;
    v5 = Ljava/lang/Math.abs(v3);
    int-to-float v5, v5
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin;
    int-to-float v6, v6
    v0 += v6;
    v0 = v5 / v0;
    v5 = 0x3f800000    # 1.0f;
    v0 += v5;
    v5 = 0x42c80000    # 100.0f;
    v0 *= v5;
    float-to-int v0, v0
    goto :goto_2
    :cond_6
    if (p4 == 0) {
//       if-eqz p4, :cond_7
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener;
    if (v1 == 0) {
//       if-eqz v1, :cond_7
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener;
    v1.a(p1);
    :cond_7
    if (p4 == 0) {
//       if-eqz p4, :cond_8
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInternalPageChangeListener;
    if (v1 == 0) {
//       if-eqz v1, :cond_8
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInternalPageChangeListener;
    v1.a(p1);
    :cond_8
    v1 = 0x0;
    p0.a(v1);
    v1 = 0x0;
    p0.scrollTo(v0, v1);
    goto/16 :goto_1
.end method
.method private a(IZZ)V
    .locals 1
    .prologue
    v0 = 0x0;
    p0.a(p1, p2, p3, v0);
    return;
.end method
.method private a(Landroid/view/MotionEvent;)V
    .locals 3
    .prologue
    v0 = Landroid/support/v4/view/MotionEventCompat.getActionIndex(p1);
    v1 = Landroid/support/v4/view/MotionEventCompat.getPointerId(p1, v0);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
    if (v1 != v2) {
//       if-ne v1, v2, :cond_0
    }
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = 0x1;
    :goto_0
    v1 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v1;
    v0 = Landroid/support/v4/view/MotionEventCompat.getPointerId(p1, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    v0.clear();
    :cond_0
    return;
    :cond_1
    v0 = 0x0;
    goto :goto_0
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;I)V
    .locals 1
    .prologue
    v0 = 0x0;
    p0.b(v0);
    return;
.end method
.method private a(Lcom/ushaqi/zhuishushenqi/reader/cs;ILcom/ushaqi/zhuishushenqi/reader/cs;)V
    .locals 12
    .prologue
    v4 = 0x0;
    v10 = 0x3f800000    # 1.0f;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v7 = v0.getCount();
    v0 = p0.e();
    if (v0 <= 0) {
//       if-lez v0, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin;
    int-to-float v1, v1
    int-to-float v0, v0
    v0 = v1 / v0;
    v6 = v0;
    :goto_0
    if (p3 == 0) {
//       if-eqz p3, :cond_4
    }
    v0 = p3.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v1 = p1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_2
    }
    v1 = p3.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v2 = p3.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v1 += v2;
    v1 += v6;
    v0 = v0 + 0x1;
    v2 = v1;
    v3 = v4;
    v1 = v0;
    :goto_1
    v0 = p1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v1 > v0) {
//       if-gt v1, v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.size();
    if (v3 >= v0) {
//       if-ge v3, v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v3);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    :goto_2
    v5 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v1 <= v5) {
//       if-le v1, v5, :cond_e
    }
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v5 = v5.size();
    v5 = v5 + -0x1;
    if (v3 >= v5) {
//       if-ge v3, v5, :cond_e
    }
    v3 = v3 + 0x1;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v3);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    goto :goto_2
    :cond_0
    v0 = 0x0;
    v6 = v0;
    goto :goto_0
    :goto_3
    v5 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v2 >= v5) {
//       if-ge v2, v5, :cond_1
    }
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v5 = v5.getPageWidth(v2);
    v5 += v6;
    v5 += v1;
    v1 = v2 + 0x1;
    v2 = v1;
    v1 = v5;
    goto :goto_3
    :cond_1
    v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->e = v1;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v0 += v6;
    v1 += v0;
    v0 = v2 + 0x1;
    v2 = v1;
    v1 = v0;
    goto :goto_1
    :cond_2
    v1 = p1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v0 <= v1) {
//       if-le v0, v1, :cond_4
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v1 = v1.size();
    v2 = v1 + -0x1;
    v1 = p3.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v0 = v0 + -0x1;
    v3 = v2;
    v2 = v1;
    v1 = v0;
    :goto_4
    v0 = p1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v1 < v0) {
//       if-lt v1, v0, :cond_4
    }
    if (v3 < 0) {
//       if-ltz v3, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v3);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    :goto_5
    v5 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v1 >= v5) {
//       if-ge v1, v5, :cond_d
    }
    if (v3 <= 0) {
//       if-lez v3, :cond_d
    }
    v3 = v3 + -0x1;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v3);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    goto :goto_5
    :goto_6
    v5 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v2 <= v5) {
//       if-le v2, v5, :cond_3
    }
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v5 = v5.getPageWidth(v2);
    v5 += v6;
    v5 = v1 - v5;
    v1 = v2 + -0x1;
    v2 = v1;
    v1 = v5;
    goto :goto_6
    :cond_3
    v5 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v5 += v6;
    v1 -= v5;
    v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->e = v1;
    v0 = v2 + -0x1;
    v2 = v1;
    v1 = v0;
    goto :goto_4
    :cond_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v8 = v0.size();
    v1 = p1.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v0 = p1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v2 = v0 + -0x1;
    v0 = p1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v0 != 0) {
//       if-nez v0, :cond_5
    }
    v0 = p1.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    :goto_7
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstOffset = v0;
    v0 = p1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v3 = v7 + -0x1;
    if (v0 != v3) {
//       if-ne v0, v3, :cond_6
    }
    v0 = p1.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v3 = p1.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v0 += v3;
    v0 -= v10;
    :goto_8
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset = v0;
    v0 = p2 + -0x1;
    v5 = v0;
    :goto_9
    if (v5 < 0) {
//       if-ltz v5, :cond_9
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v5);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    :goto_a
    v3 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v2 <= v3) {
//       if-le v2, v3, :cond_7
    }
    v9 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v3 = v2 + -0x1;
    v2 = v9.getPageWidth(v2);
    v2 += v6;
    v1 -= v2;
    v2 = v3;
    goto :goto_a
    :cond_5
    v0 = -0x800001;
    goto :goto_7
    :cond_6
    v0 = 0x7f7fffff    # Float.MAX_VALUE;
    goto :goto_8
    :cond_7
    v3 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v3 += v6;
    v1 -= v3;
    v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->e = v1;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v0 != 0) {
//       if-nez v0, :cond_8
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstOffset = v1;
    :cond_8
    v0 = v5 + -0x1;
    v2 = v2 + -0x1;
    v5 = v0;
    goto :goto_9
    :cond_9
    v0 = p1.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v1 = p1.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v0 += v1;
    v1 = v0 + v6;
    v0 = p1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v2 = v0 + 0x1;
    v0 = p2 + 0x1;
    v5 = v0;
    :goto_b
    if (v5 >= v8) {
//       if-ge v5, v8, :cond_c
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v5);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    :goto_c
    v3 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v2 >= v3) {
//       if-ge v2, v3, :cond_a
    }
    v9 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v3 = v2 + 0x1;
    v2 = v9.getPageWidth(v2);
    v2 += v6;
    v1 += v2;
    v2 = v3;
    goto :goto_c
    :cond_a
    v3 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v9 = v7 + -0x1;
    if (v3 != v9) {
//       if-ne v3, v9, :cond_b
    }
    v3 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v3 += v1;
    v3 -= v10;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset = v3;
    :cond_b
    v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->e = v1;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v0 += v6;
    v1 += v0;
    v0 = v5 + 0x1;
    v2 = v2 + 0x1;
    v5 = v0;
    goto :goto_b
    :cond_c
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mNeedCalculatePageOffsets = v4;
    return;
    :cond_d
    v11 = v1;
    v1 = v2;
    v2 = v11;
    goto/16 :goto_6
    :cond_e
    v11 = v1;
    v1 = v2;
    v2 = v11;
    goto/16 :goto_3
.end method
.method private a(Z)V
    .locals 7
    .prologue
    v4 = 0x1;
    v2 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollState;
    v1 = 0x2;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_3
    }
    v0 = v4;
    :goto_0
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    p0.b(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v1.abortAnimation();
    v1 = p0.getScrollX();
    v3 = p0.getScrollY();
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v5 = v5.getCurrX();
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v6 = v6.getCurrY();
    if (v1 != v5) {
//       if-ne v1, v5, :cond_0
    }
    if (v3 == v6) {
//       if-eq v3, v6, :cond_1
    }
    :cond_0
    p0.scrollTo(v5, v6);
    :cond_1
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending = v2;
    v1 = v2;
    v3 = v0;
    :goto_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.size();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v5 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->c;
    if (v5 == 0) {
//       if-eqz v5, :cond_2
    }
    v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->c = v2;
    v3 = v4;
    :cond_2
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_1
    :cond_3
    v0 = v2;
    goto :goto_0
    :cond_4
    if (v3 == 0) {
//       if-eqz v3, :cond_5
    }
    if (p1 == 0) {
//       if-eqz p1, :cond_6
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mEndScrollRunnable;
    Landroid/support/v4/view/ViewCompat.postOnAnimation(p0, v0);
    :cond_5
    :goto_2
    return;
    :cond_6
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mEndScrollRunnable;
    v0.run();
    goto :goto_2
.end method
.method private a(F)Z
    .locals 10
    .prologue
    v3 = 0x1;
    v2 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX;
    v0 -= p1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = p1;
    v1 = p0.getScrollX();
    int-to-float v1, v1
    v5 = v1 + v0;
    v7 = p0.e();
    int-to-float v0, v7
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstOffset;
    v4 = v0 * v1;
    int-to-float v0, v7
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset;
    v6 = v0 * v1;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v2);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v8 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v8 = v8.size();
    v8 = v8 + -0x1;
    v1 = v1.get(v8);
    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v8 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v8 == 0) {
//       if-eqz v8, :cond_5
    }
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    int-to-float v4, v7
    v0 *= v4;
    v4 = v0;
    v0 = v2;
    :goto_0
    v8 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v9 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v9 = v9.getCount();
    v9 = v9 + -0x1;
    if (v8 == v9) {
//       if-eq v8, v9, :cond_4
    }
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    int-to-float v3, v7
    v1 *= v3;
    v3 = v2;
    :goto_1
    cmpg-float v6, v5, v4
    if (v6 >= 0) {
//       if-gez v6, :cond_1
    }
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v4 - v5;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge;
    v0 = Ljava/lang/Math.abs(v0);
    int-to-float v2, v7
    v0 /= v2;
    v2 = v1.onPull(v0);
    :cond_0
    :goto_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX;
    float-to-int v1, v4
    int-to-float v1, v1
    v1 = v4 - v1;
    v0 += v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v0;
    float-to-int v0, v4
    v1 = p0.getScrollY();
    p0.scrollTo(v0, v1);
    float-to-int v0, v4
    p0.e(v0);
    return v2
    :cond_1
    cmpl-float v0, v5, v1
    if (v0 <= 0) {
//       if-lez v0, :cond_3
    }
    if (v3 == 0) {
//       if-eqz v3, :cond_2
    }
    v0 = v5 - v1;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge;
    v0 = Ljava/lang/Math.abs(v0);
    int-to-float v3, v7
    v0 /= v3;
    v2 = v2.onPull(v0);
    :cond_2
    v4 = v1;
    goto :goto_2
    :cond_3
    v4 = v5;
    goto :goto_2
    :cond_4
    v1 = v6;
    goto :goto_1
    :cond_5
    v0 = v3;
    goto :goto_0
.end method
.method private a(IZZI)Z
    .locals 4
    .prologue
    v3 = 0x1;
    v1 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v0 = v0.getCount();
    if (v0 > 0) {
//       if-gtz v0, :cond_1
    }
    :cond_0
    p0.b(v1);
    :goto_0
    return v1
    :cond_1
    if (p3 != 0) {
//       if-nez p3, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v0 != p1) {
//       if-ne v0, p1, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.size();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    p0.b(v1);
    goto :goto_0
    :cond_2
    if (p1 >= 0) {
//       if-gez p1, :cond_5
    }
    p1 = v1;
    :cond_3
    :goto_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v2 += v0;
    if (p1 > v2) {
//       if-gt p1, v2, :cond_4
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v0 = v2 - v0;
    if (p1 >= v0) {
//       if-ge p1, v0, :cond_6
    }
    :cond_4
    v2 = v1;
    :goto_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.size();
    if (v2 >= v0) {
//       if-ge v2, v0, :cond_6
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v2);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->c = v3;
    v0 = v2 + 0x1;
    v2 = v0;
    goto :goto_2
    :cond_5
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v0 = v0.getCount();
    if (p1 < v0) {
//       if-lt p1, v0, :cond_3
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v0 = v0.getCount();
    p1 = v0 + -0x1;
    goto :goto_1
    :cond_6
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v0 == p1) {
//       if-eq v0, p1, :cond_7
    }
    v1 = v3;
    :cond_7
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout;
    if (v0 == 0) {
//       if-eqz v0, :cond_a
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem = p1;
    if (v1 == 0) {
//       if-eqz v1, :cond_8
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener;
    if (v0 == 0) {
//       if-eqz v0, :cond_8
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener;
    v0.a(p1);
    :cond_8
    if (v1 == 0) {
//       if-eqz v1, :cond_9
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInternalPageChangeListener;
    if (v0 == 0) {
//       if-eqz v0, :cond_9
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInternalPageChangeListener;
    v0.a(p1);
    :cond_9
    p0.requestLayout();
    goto :goto_0
    :cond_a
    p0.c(p1);
    p0.a(p1, p2, p4, v1);
    goto :goto_0
.end method
.method private a(Landroid/view/View;ZIII)Z
    .locals 10
    .prologue
    v2 = 0x1;
    instance-of v0, p1, Landroid/view/ViewGroup;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v6 = p1;
    check-cast v6, Landroid/view/ViewGroup;
    v8 = p1.getScrollX();
    v9 = p1.getScrollY();
    v0 = v6.getChildCount();
    v0 = v0 + -0x1;
    v7 = v0;
    :goto_0
    if (v7 < 0) {
//       if-ltz v7, :cond_2
    }
    v1 = v6.getChildAt(v7);
    v0 = p4 + v8;
    v3 = v1.getLeft();
    if (v0 < v3) {
//       if-lt v0, v3, :cond_1
    }
    v0 = p4 + v8;
    v3 = v1.getRight();
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_1
    }
    v0 = p5 + v9;
    v3 = v1.getTop();
    if (v0 < v3) {
//       if-lt v0, v3, :cond_1
    }
    v0 = p5 + v9;
    v3 = v1.getBottom();
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_1
    }
    v0 = p4 + v8;
    v3 = v1.getLeft();
    v4 = v0 - v3;
    v0 = p5 + v9;
    v3 = v1.getTop();
    v5 = v0 - v3;
    v0 = p0;
    v3 = p3;
    v0 = v0.a(..v5);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    :goto_1
    return v2
    :cond_1
    v0 = v7 + -0x1;
    v7 = v0;
    goto :goto_0
    :cond_2
    if (p2 == 0) {
//       if-eqz p2, :cond_3
    }
    neg-int v0, p3
    v0 = Landroid/support/v4/view/ViewCompat.canScrollHorizontally(p1, v0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    :cond_3
    v2 = 0x0;
    goto :goto_1
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    return v0
.end method
.method private b(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/reader/cs;
    .locals 2
    .prologue
    :goto_0
    v0 = p1.getParent();
    if (v0 == p0) {
//       if-eq v0, p0, :cond_2
    }
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    instance-of v1, v0, Landroid/view/View;
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    :cond_0
    v0 = 0x0;
    :goto_1
    return v0;
    :cond_1
    check-cast v0, Landroid/view/View;
    p1 = v0;
    goto :goto_0
    :cond_2
    v0 = p0.a(p1);
    goto :goto_1
.end method
.method private b(I)V
    .locals 7
    .prologue
    v1 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollState;
    if (v0 != p1) {
//       if-ne v0, p1, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollState = p1;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageTransformer$572aa01b;
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    if (p1 == 0) {
//       if-eqz p1, :cond_2
    }
    v0 = 0x1;
    :goto_1
    v4 = p0.getChildCount();
    v3 = v1;
    :goto_2
    if (v3 >= v4) {
//       if-ge v3, v4, :cond_4
    }
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v2 = 0x2;
    :goto_3
    v5 = p0.getChildAt(v3);
    v6 = 0x0;
    Landroid/support/v4/view/ViewCompat.setLayerType(v5, v2, v6);
    v2 = v3 + 0x1;
    v3 = v2;
    goto :goto_2
    :cond_2
    v0 = v1;
    goto :goto_1
    :cond_3
    v2 = v1;
    goto :goto_3
    :cond_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener;
    v0.b(p1);
    goto :goto_0
.end method
.method private b(Z)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollingCacheEnabled;
    if (v0 == p1) {
//       if-eq v0, p1, :cond_0
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollingCacheEnabled = p1;
    :cond_0
    return;
.end method
.method private c(I)V
    .locals 17
    .prologue
    v3 = 0x0;
    v2 = 0x2;
    v0 = p0;
    v4 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v0 = p1;
    if (v4 == v0) {
//       if-eq v4, v0, :cond_1f
    }
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v0 = p1;
    if (v2 >= v0) {
//       if-ge v2, v0, :cond_1
    }
    v2 = 0x42;
    :goto_0
    v0 = p0;
    v3 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v0 = p0;
    v3 = v0.d(v3);
    v0 = p1;
    v1 = p0;
    v1.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem = v0;
    v4 = v3;
    v3 = v2;
    :goto_1
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    if (v2 != 0) {
//       if-nez v2, :cond_2
    }
    p0.f();
    :cond_0
    :goto_2
    return;
    :cond_1
    v2 = 0x11;
    goto :goto_0
    :cond_2
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending;
    if (v2 == 0) {
//       if-eqz v2, :cond_3
    }
    p0.f();
    goto :goto_2
    :cond_3
    v2 = p0.getWindowToken();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v0 = p0;
    v2.startUpdate(v0);
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit;
    v5 = 0x0;
    v0 = p0;
    v6 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v6 -= v2;
    v10 = Ljava/lang/Math.max(v5, v6);
    v0 = p0;
    v5 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v11 = v5.getCount();
    v5 = v11 + -0x1;
    v0 = p0;
    v6 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v2 += v6;
    v12 = Ljava/lang/Math.min(v5, v2);
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mExpectedAdapterCount;
    if (v11 == v2) {
//       if-eq v11, v2, :cond_4
    }
    :try_start_0
    v2 = p0.getResources();
    v3 = p0.getId();
    v2.getResourceName(v3);
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v2
    :goto_3
    v3 = new IllegalStateException();
    v4 = new StringBuilder();
    v5 = "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: ";
    v4.<init>(v5);
    v0 = p0;
    v5 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mExpectedAdapterCount;
    v4 = v4.append(v5);
    v5 = ", found: ";
    v4 = v4.append(v5);
    v4 = v4.append(v11);
    v5 = " Pager id: ";
    v4 = v4.append(v5);
    v2 = v4.append(v2);
    v4 = " Pager class: ";
    v2 = v2.append(v4);
    v4 = p0.getClass();
    v2 = v2.append(v4);
    v4 = " Problematic adapter: ";
    v2 = v2.append(v4);
    v0 = p0;
    v4 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v4 = v4.getClass();
    v2 = v2.append(v4);
    v2 = v2.toString();
    v3.<init>(v2);
    throw v3
    :catch_0
    move-exception v2
    v2 = p0.getId();
    v2 = Ljava/lang/Integer.toHexString(v2);
    goto :goto_3
    :cond_4
    v6 = 0x0;
    v2 = 0x0;
    v5 = v2;
    :goto_4
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2.size();
    if (v5 >= v2) {
//       if-ge v5, v2, :cond_1e
    }
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2.get(v5);
    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v7 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v0 = p0;
    v8 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v7 < v8) {
//       if-lt v7, v8, :cond_6
    }
    v7 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v0 = p0;
    v8 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v7 != v8) {
//       if-ne v7, v8, :cond_1e
    }
    :goto_5
    if (v2 != 0) {
//       if-nez v2, :cond_1d
    }
    if (v11 <= 0) {
//       if-lez v11, :cond_1d
    }
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v0 = p0;
    v2 = v0.a(v2, v5);
    v9 = v2;
    :goto_6
    if (v9 == 0) {
//       if-eqz v9, :cond_15
    }
    v8 = 0x0;
    v7 = v5 + -0x1;
    if (v7 < 0) {
//       if-ltz v7, :cond_7
    }
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2.get(v7);
    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;
    :goto_7
    v6 = 0x40000000    # 2.0f;
    v13 = v9.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v6 -= v13;
    v13 = p0.getPaddingLeft();
    int-to-float v13, v13
    v14 = p0.e();
    int-to-float v14, v14
    v13 /= v14;
    v13 += v6;
    v0 = p0;
    v6 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v6 = v6 + -0x1;
    v15 = v6;
    v6 = v8;
    v8 = v15;
    v16 = v7;
    v7 = v5;
    v5 = v16;
    :goto_8
    if (v8 < 0) {
//       if-ltz v8, :cond_d
    }
    cmpl-float v14, v6, v13
    if (v14 < 0) {
//       if-ltz v14, :cond_9
    }
    if (v8 >= v10) {
//       if-ge v8, v10, :cond_9
    }
    if (v2 == 0) {
//       if-eqz v2, :cond_d
    }
    v14 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v8 != v14) {
//       if-ne v8, v14, :cond_5
    }
    v14 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->c;
    if (v14 != 0) {
//       if-nez v14, :cond_5
    }
    v0 = p0;
    v14 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v14.remove(v5);
    v0 = p0;
    v14 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v2 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->a;
    v0 = p0;
    v14.destroyItem(v0, v8, v2);
    v5 = v5 + -0x1;
    v7 = v7 + -0x1;
    if (v5 < 0) {
//       if-ltz v5, :cond_8
    }
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2.get(v5);
    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;
    :cond_5
    :goto_9
    v8 = v8 + -0x1;
    goto :goto_8
    :cond_6
    v2 = v5 + 0x1;
    v5 = v2;
    goto/16 :goto_4
    :cond_7
    v2 = 0x0;
    goto :goto_7
    :cond_8
    v2 = 0x0;
    goto :goto_9
    :cond_9
    if (v2 == 0) {
//       if-eqz v2, :cond_b
    }
    v14 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v8 != v14) {
//       if-ne v8, v14, :cond_b
    }
    v2 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v6 += v2;
    v5 = v5 + -0x1;
    if (v5 < 0) {
//       if-ltz v5, :cond_a
    }
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2.get(v5);
    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;
    goto :goto_9
    :cond_a
    v2 = 0x0;
    goto :goto_9
    :cond_b
    v2 = v5 + 0x1;
    v0 = p0;
    v2 = v0.a(v8, v2);
    v2 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v6 += v2;
    v7 = v7 + 0x1;
    if (v5 < 0) {
//       if-ltz v5, :cond_c
    }
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2.get(v5);
    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;
    goto :goto_9
    :cond_c
    v2 = 0x0;
    goto :goto_9
    :cond_d
    v5 = v9.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v6 = v7 + 0x1;
    v2 = 0x40000000    # 2.0f;
    cmpg-float v2, v5, v2
    if (v2 >= 0) {
//       if-gez v2, :cond_14
    }
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2.size();
    if (v6 >= v2) {
//       if-ge v6, v2, :cond_e
    }
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2.get(v6);
    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;
    :goto_a
    v8 = p0.getPaddingRight();
    int-to-float v8, v8
    v10 = p0.e();
    int-to-float v10, v10
    v8 /= v10;
    v10 = 0x40000000    # 2.0f;
    v10 += v8;
    v0 = p0;
    v8 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v8 = v8 + 0x1;
    :goto_b
    if (v8 >= v11) {
//       if-ge v8, v11, :cond_14
    }
    cmpl-float v13, v5, v10
    if (v13 < 0) {
//       if-ltz v13, :cond_10
    }
    if (v8 <= v12) {
//       if-le v8, v12, :cond_10
    }
    if (v2 == 0) {
//       if-eqz v2, :cond_14
    }
    v13 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v8 != v13) {
//       if-ne v8, v13, :cond_1c
    }
    v13 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->c;
    if (v13 != 0) {
//       if-nez v13, :cond_1c
    }
    v0 = p0;
    v13 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v13.remove(v6);
    v0 = p0;
    v13 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v2 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->a;
    v0 = p0;
    v13.destroyItem(v0, v8, v2);
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2.size();
    if (v6 >= v2) {
//       if-ge v6, v2, :cond_f
    }
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2.get(v6);
    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;
    :goto_c
    v15 = v5;
    v5 = v2;
    v2 = v15;
    :goto_d
    v8 = v8 + 0x1;
    v15 = v2;
    v2 = v5;
    v5 = v15;
    goto :goto_b
    :cond_e
    v2 = 0x0;
    goto :goto_a
    :cond_f
    v2 = 0x0;
    goto :goto_c
    :cond_10
    if (v2 == 0) {
//       if-eqz v2, :cond_12
    }
    v13 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v8 != v13) {
//       if-ne v8, v13, :cond_12
    }
    v2 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v5 += v2;
    v6 = v6 + 0x1;
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2.size();
    if (v6 >= v2) {
//       if-ge v6, v2, :cond_11
    }
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2.get(v6);
    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;
    :goto_e
    v15 = v5;
    v5 = v2;
    v2 = v15;
    goto :goto_d
    :cond_11
    v2 = 0x0;
    goto :goto_e
    :cond_12
    v0 = p0;
    v2 = v0.a(v8, v6);
    v6 = v6 + 0x1;
    v2 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v5 += v2;
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2.size();
    if (v6 >= v2) {
//       if-ge v6, v2, :cond_13
    }
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2.get(v6);
    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;
    :goto_f
    v15 = v5;
    v5 = v2;
    v2 = v15;
    goto :goto_d
    :cond_13
    v2 = 0x0;
    goto :goto_f
    :cond_14
    v0 = p0;
    v0.a(v9, v7, v4);
    :cond_15
    v0 = p0;
    v4 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v0 = p0;
    v5 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v9 == 0) {
//       if-eqz v9, :cond_17
    }
    v2 = v9.Lcom/ushaqi/zhuishushenqi/reader/cs;->a;
    :goto_10
    v0 = p0;
    v4.setPrimaryItem(v0, v5, v2);
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v0 = p0;
    v2.finishUpdate(v0);
    v5 = p0.getChildCount();
    v2 = 0x0;
    v4 = v2;
    :goto_11
    if (v4 >= v5) {
//       if-ge v4, v5, :cond_18
    }
    v0 = p0;
    v6 = v0.getChildAt(v4);
    v2 = v6.getLayoutParams();
    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/ct;
    v2.Lcom/ushaqi/zhuishushenqi/reader/ct;->f = v4;
    v7 = v2.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
    if (v7 != 0) {
//       if-nez v7, :cond_16
    }
    v7 = v2.Lcom/ushaqi/zhuishushenqi/reader/ct;->c;
    v8 = 0x0;
    cmpl-float v7, v7, v8
    if (v7 != 0) {
//       if-nez v7, :cond_16
    }
    v0 = p0;
    v6 = v0.a(v6);
    if (v6 == 0) {
//       if-eqz v6, :cond_16
    }
    v7 = v6.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v2.Lcom/ushaqi/zhuishushenqi/reader/ct;->c = v7;
    v6 = v6.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v2.Lcom/ushaqi/zhuishushenqi/reader/ct;->e = v6;
    :cond_16
    v2 = v4 + 0x1;
    v4 = v2;
    goto :goto_11
    :cond_17
    v2 = 0x0;
    goto :goto_10
    :cond_18
    p0.f();
    v2 = p0.hasFocus();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v2 = p0.findFocus();
    if (v2 == 0) {
//       if-eqz v2, :cond_1b
    }
    v0 = p0;
    v2 = v0.b(v2);
    :goto_12
    if (v2 == 0) {
//       if-eqz v2, :cond_19
    }
    v2 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v0 = p0;
    v4 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v2 == v4) {
//       if-eq v2, v4, :cond_0
    }
    :cond_19
    v2 = 0x0;
    :goto_13
    v4 = p0.getChildCount();
    if (v2 >= v4) {
//       if-ge v2, v4, :cond_0
    }
    v0 = p0;
    v4 = v0.getChildAt(v2);
    v0 = p0;
    v5 = v0.a(v4);
    if (v5 == 0) {
//       if-eqz v5, :cond_1a
    }
    v5 = v5.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v0 = p0;
    v6 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v5 != v6) {
//       if-ne v5, v6, :cond_1a
    }
    v4 = v4.requestFocus(v3);
    if (v4 != 0) {
//       if-nez v4, :cond_0
    }
    :cond_1a
    v2 = v2 + 0x1;
    goto :goto_13
    :cond_1b
    v2 = 0x0;
    goto :goto_12
    :cond_1c
    v15 = v5;
    v5 = v2;
    v2 = v15;
    goto/16 :goto_d
    :cond_1d
    v9 = v2;
    goto/16 :goto_6
    :cond_1e
    v2 = v6;
    goto/16 :goto_5
    :cond_1f
    v4 = v3;
    v3 = v2;
    goto/16 :goto_1
.end method
.method static synthetic c()[I
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->LAYOUT_ATTRS;
    return v0;
.end method
.method private d(I)Lcom/ushaqi/zhuishushenqi/reader/cs;
    .locals 3
    .prologue
    v0 = 0x0;
    v1 = v0;
    :goto_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.size();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v2 != p1) {
//       if-ne v2, p1, :cond_0
    }
    :goto_1
    return v0;
    :cond_0
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_0
    :cond_1
    v0 = 0x0;
    goto :goto_1
.end method
.method private d()V
    .locals 5
    .prologue
    v4 = 0x1;
    v0 = 0x0;
    p0.setWillNotDraw(v0);
    v0 = 0x40000;
    p0.setDescendantFocusability(v0);
    p0.setFocusable(v4);
    v0 = p0.getContext();
    v1 = new Scroller();
    v2 = Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->sInterpolator;
    v1.<init>(v0, v2);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller = v1;
    v1 = Landroid/view/ViewConfiguration.get(v0);
    v2 = v0.getResources();
    v2 = v2.getDisplayMetrics();
    v2 = v2.Landroid/util/DisplayMetrics;->density;
    v3 = Landroid/support/v4/view/ViewConfigurationCompat.getScaledPagingTouchSlop(v1);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop = v3;
    v3 = 0x43c80000    # 400.0f;
    v3 *= v2;
    float-to-int v3, v3
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMinimumVelocity = v3;
    v1 = v1.getScaledMaximumFlingVelocity();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMaximumVelocity = v1;
    v1 = new EdgeEffectCompat();
    v1.<init>(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge = v1;
    v1 = new EdgeEffectCompat();
    v1.<init>(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge = v1;
    v0 = 0x41c80000    # 25.0f;
    v0 *= v2;
    float-to-int v0, v0
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFlingDistance = v0;
    v0 = 0x40000000    # 2.0f;
    v0 *= v2;
    float-to-int v0, v0
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCloseEnough = v0;
    v0 = 0x41800000    # 16.0f;
    v0 *= v2;
    float-to-int v0, v0
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDefaultGutterSize = v0;
    v0 = new cu();
    v0.<init>(p0);
    Landroid/support/v4/view/ViewCompat.setAccessibilityDelegate(p0, v0);
    v0 = Landroid/support/v4/view/ViewCompat.getImportantForAccessibility(p0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    Landroid/support/v4/view/ViewCompat.setImportantForAccessibility(p0, v4);
    :cond_0
    return;
.end method
.method private e()I
    .locals 2
    .prologue
    v0 = p0.getMeasuredWidth();
    v1 = p0.getPaddingLeft();
    v0 -= v1;
    v1 = p0.getPaddingRight();
    v0 -= v1;
    return v0
.end method
.method private e(I)Z
    .locals 7
    .prologue
    v0 = 0x0;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v1 = v1.size();
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCalledSuper = v0;
    v1 = 0x0;
    p0.a(v0, v1, v0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCalledSuper;
    if (v1 != 0) {
//       if-nez v1, :cond_2
    }
    v0 = new IllegalStateException();
    v1 = "onPageScrolled did not call superclass implementation";
    v0.<init>(v1);
    throw v0
    :cond_0
    v1 = p0.g();
    v2 = p0.e();
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin;
    v3 += v2;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin;
    int-to-float v4, v4
    int-to-float v5, v2
    v4 /= v5;
    v5 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    int-to-float v6, p1
    int-to-float v2, v2
    v2 = v6 / v2;
    v6 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v2 -= v6;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v1 += v4;
    v1 = v2 / v1;
    int-to-float v2, v3
    v2 *= v1;
    float-to-int v2, v2
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCalledSuper = v0;
    p0.a(v5, v1, v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCalledSuper;
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = new IllegalStateException();
    v1 = "onPageScrolled did not call superclass implementation";
    v0.<init>(v1);
    throw v0
    :cond_1
    v0 = 0x1;
    :cond_2
    return v0
.end method
.method private f()V
    .locals 4
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrder;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrderedChildren;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrderedChildren = v0;
    :goto_0
    v1 = p0.getChildCount();
    v0 = 0x0;
    :goto_1
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_1
    }
    v2 = p0.getChildAt(v0);
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrderedChildren;
    v3.add(v2);
    v0 = v0 + 0x1;
    goto :goto_1
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrderedChildren;
    v0.clear();
    goto :goto_0
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrderedChildren;
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->sPositionComparator;
    Ljava/util/Collections.sort(v0, v1);
    :cond_2
    return;
.end method
.method private f(I)Z
    .locals 9
    .prologue
    v1 = 0x0;
    v8 = 0x42;
    v7 = 0x11;
    v4 = 0x1;
    v3 = 0x0;
    v2 = p0.findFocus();
    if (v2 != p0) {
//       if-ne v2, p0, :cond_1
    }
    v0 = v1;
    :goto_0
    v1 = invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;
    v1 = v1.findNextFocus(p0, v0, p1);
    if (v1 == 0) {
//       if-eqz v1, :cond_7
    }
    if (v1 == v0) {
//       if-eq v1, v0, :cond_7
    }
    if (p1 != v7) {
//       if-ne p1, v7, :cond_5
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect;
    v2 = p0.a(v2, v1);
    v2 = v2.Landroid/graphics/Rect;->left;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect;
    v3 = p0.a(v3, v0);
    v3 = v3.Landroid/graphics/Rect;->left;
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    if (v2 < v3) {
//       if-lt v2, v3, :cond_4
    }
    v0 = p0.i();
    :goto_1
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = Landroid/view/SoundEffectConstants.getContantForFocusDirection(p1);
    p0.playSoundEffect(v1);
    :cond_0
    return v0
    :cond_1
    if (v2 == 0) {
//       if-eqz v2, :cond_c
    }
    v0 = v2.getParent();
    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;
    if (v5 == 0) {
//       if-eqz v5, :cond_d
    }
    if (v0 != p0) {
//       if-ne v0, p0, :cond_2
    }
    v0 = v4;
    :goto_3
    if (v0 != 0) {
//       if-nez v0, :cond_c
    }
    v5 = new StringBuilder();
    v5.<init>();
    v0 = v2.getClass();
    v0 = v0.getSimpleName();
    v5.append(v0);
    v0 = v2.getParent();
    :goto_4
    instance-of v2, v0, Landroid/view/ViewGroup;
    if (v2 == 0) {
//       if-eqz v2, :cond_3
    }
    v2 = " => ";
    v2 = v5.append(v2);
    v6 = v0.getClass();
    v6 = v6.getSimpleName();
    v2.append(v6);
    v0 = v0.getParent();
    goto :goto_4
    :cond_2
    v0 = v0.getParent();
    goto :goto_2
    :cond_3
    v0 = "ViewPager";
    v2 = new StringBuilder();
    v6 = "arrowScroll tried to find focus based on non-child current focused view ";
    v2.<init>(v6);
    v5 = v5.toString();
    v2 = v2.append(v5);
    v2 = v2.toString();
    Landroid/util/Log.e(v0, v2);
    v0 = v1;
    goto/16 :goto_0
    :cond_4
    v0 = v1.requestFocus();
    goto :goto_1
    :cond_5
    if (p1 != v8) {
//       if-ne p1, v8, :cond_b
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect;
    v2 = p0.a(v2, v1);
    v2 = v2.Landroid/graphics/Rect;->left;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect;
    v3 = p0.a(v3, v0);
    v3 = v3.Landroid/graphics/Rect;->left;
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    if (v2 > v3) {
//       if-gt v2, v3, :cond_6
    }
    v0 = p0.j();
    goto/16 :goto_1
    :cond_6
    v0 = v1.requestFocus();
    goto/16 :goto_1
    :cond_7
    if (p1 == v7) {
//       if-eq p1, v7, :cond_8
    }
    if (p1 != v4) {
//       if-ne p1, v4, :cond_9
    }
    :cond_8
    v0 = p0.i();
    goto/16 :goto_1
    :cond_9
    if (p1 == v8) {
//       if-eq p1, v8, :cond_a
    }
    v0 = 0x2;
    if (p1 != v0) {
//       if-ne p1, v0, :cond_b
    }
    :cond_a
    v0 = p0.j();
    goto/16 :goto_1
    :cond_b
    v0 = v3;
    goto/16 :goto_1
    :cond_c
    v0 = v2;
    goto/16 :goto_0
    :cond_d
    v0 = v3;
    goto/16 :goto_3
.end method
.method private g()Lcom/ushaqi/zhuishushenqi/reader/cs;
    .locals 13
    .prologue
    v3 = 0x0;
    v2 = 0x0;
    v1 = p0.e();
    if (v1 <= 0) {
//       if-lez v1, :cond_3
    }
    v0 = p0.getScrollX();
    int-to-float v0, v0
    int-to-float v4, v1
    v0 /= v4;
    v9 = v0;
    :goto_0
    if (v1 <= 0) {
//       if-lez v1, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin;
    int-to-float v0, v0
    int-to-float v1, v1
    v0 /= v1;
    v1 = v0;
    :goto_1
    v5 = -0x1;
    v4 = 0x1;
    v0 = 0x0;
    v6 = v2;
    v7 = v2;
    v8 = v5;
    v2 = v3;
    v5 = v4;
    v4 = v0;
    :goto_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.size();
    if (v2 >= v0) {
//       if-ge v2, v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v2);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    if (v5 != 0) {
//       if-nez v5, :cond_6
    }
    v10 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v11 = v8 + 0x1;
    if (v10 == v11) {
//       if-eq v10, v11, :cond_6
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempItem;
    v6 += v7;
    v6 += v1;
    v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->e = v6;
    v6 = v8 + 0x1;
    v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b = v6;
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v7 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v6 = v6.getPageWidth(v7);
    v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->d = v6;
    v2 = v2 + -0x1;
    v12 = v0;
    v0 = v2;
    v2 = v12;
    :goto_3
    v6 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v7 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v7 += v6;
    v7 += v1;
    if (v5 != 0) {
//       if-nez v5, :cond_0
    }
    cmpl-float v5, v9, v6
    if (v5 < 0) {
//       if-ltz v5, :cond_2
    }
    :cond_0
    cmpg-float v4, v9, v7
    if (v4 < 0) {
//       if-ltz v4, :cond_1
    }
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v4 = v4.size();
    v4 = v4 + -0x1;
    if (v0 != v4) {
//       if-ne v0, v4, :cond_5
    }
    :cond_1
    v4 = v2;
    :cond_2
    return v4;
    :cond_3
    v9 = v2;
    goto :goto_0
    :cond_4
    v1 = v2;
    goto :goto_1
    :cond_5
    v5 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v4 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v0 = v0 + 0x1;
    v7 = v6;
    v8 = v5;
    v5 = v3;
    v6 = v4;
    v4 = v2;
    v2 = v0;
    goto :goto_2
    :cond_6
    v12 = v0;
    v0 = v2;
    v2 = v12;
    goto :goto_3
.end method
.method private h()V
    .locals 1
    .prologue
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    v0.recycle();
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker = v0;
    :cond_0
    return;
.end method
.method private i()Z
    .locals 2
    .prologue
    v0 = 0x1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v1 <= 0) {
//       if-lez v1, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v1 = v1 + -0x1;
    p0.setCurrentItem(v1, v0);
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method private j()Z
    .locals 3
    .prologue
    v0 = 0x1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v2 = v2.getCount();
    v2 = v2 + -0x1;
    if (v1 >= v2) {
//       if-ge v1, v2, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v1 = v1 + 0x1;
    p0.setCurrentItem(v1, v0);
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
# virtual methods
.method final a()V
    .locals 10
    .prologue
    v1 = 0x1;
    v2 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v8 = v0.getCount();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mExpectedAdapterCount = v8;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.size();
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit;
    v3 = v3 << 0x1;
    v3 = v3 + 0x1;
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.size();
    if (v0 >= v8) {
//       if-ge v0, v8, :cond_1
    }
    v0 = v1;
    :goto_0
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v4 = v2;
    v5 = v3;
    v6 = v0;
    v3 = v2;
    :goto_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.size();
    if (v3 >= v0) {
//       if-ge v3, v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v3);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v7 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v9 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->a;
    v7 = v7.getItemPosition(v9);
    v9 = -0x1;
    if (v7 == v9) {
//       if-eq v7, v9, :cond_9
    }
    v9 = -0x2;
    if (v7 != v9) {
//       if-ne v7, v9, :cond_2
    }
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v6.remove(v3);
    v3 = v3 + -0x1;
    if (v4 != 0) {
//       if-nez v4, :cond_0
    }
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v4.startUpdate(p0);
    v4 = v1;
    :cond_0
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v7 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v9 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->a;
    v6.destroyItem(p0, v7, v9);
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v6 != v0) {
//       if-ne v6, v0, :cond_a
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v5 = v8 + -0x1;
    v0 = Ljava/lang/Math.min(v0, v5);
    v5 = Ljava/lang/Math.max(v2, v0);
    v0 = v3;
    v3 = v4;
    v4 = v5;
    v5 = v1;
    :goto_2
    v0 = v0 + 0x1;
    v6 = v5;
    v5 = v4;
    v4 = v3;
    v3 = v0;
    goto :goto_1
    :cond_1
    v0 = v2;
    goto :goto_0
    :cond_2
    v9 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v9 == v7) {
//       if-eq v9, v7, :cond_9
    }
    v6 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v9 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v6 != v9) {
//       if-ne v6, v9, :cond_3
    }
    v5 = v7;
    :cond_3
    v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b = v7;
    v0 = v3;
    v3 = v4;
    v4 = v5;
    v5 = v1;
    goto :goto_2
    :cond_4
    if (v4 == 0) {
//       if-eqz v4, :cond_5
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v0.finishUpdate(p0);
    :cond_5
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v3 = Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->COMPARATOR;
    Ljava/util/Collections.sort(v0, v3);
    if (v6 == 0) {
//       if-eqz v6, :cond_8
    }
    v4 = p0.getChildCount();
    v3 = v2;
    :goto_3
    if (v3 >= v4) {
//       if-ge v3, v4, :cond_7
    }
    v0 = p0.getChildAt(v3);
    v0 = v0.getLayoutParams();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;
    v6 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
    if (v6 != 0) {
//       if-nez v6, :cond_6
    }
    v6 = 0x0;
    v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->c = v6;
    :cond_6
    v0 = v3 + 0x1;
    v3 = v0;
    goto :goto_3
    :cond_7
    p0.a(v5, v2, v1);
    p0.requestLayout();
    :cond_8
    return;
    :cond_9
    v0 = v3;
    v3 = v4;
    v4 = v5;
    v5 = v6;
    goto :goto_2
    :cond_a
    v0 = v3;
    v3 = v4;
    v4 = v5;
    v5 = v1;
    goto :goto_2
.end method
.method public final a(I)Z
    .locals 2
    .prologue
    v1 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending = v1;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = 0x1;
    :goto_0
    v0 = p0.a(p1, v0, v1, v1);
    return v0
    :cond_0
    v0 = v1;
    goto :goto_0
.end method
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation
    .prologue
    v1 = p1.size();
    v2 = p0.getDescendantFocusability();
    v0 = 0x60000;
    if (v2 == v0) {
//       if-eq v2, v0, :cond_1
    }
    v0 = 0x0;
    :goto_0
    v3 = p0.getChildCount();
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_1
    }
    v3 = p0.getChildAt(v0);
    v4 = v3.getVisibility();
    if (v4 != 0) {
//       if-nez v4, :cond_0
    }
    v4 = p0.a(v3);
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    v4 = v4.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v4 != v5) {
//       if-ne v4, v5, :cond_0
    }
    v3.addFocusables(p1, p2, p3);
    :cond_0
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_1
    v0 = 0x40000;
    if (v2 != v0) {
//       if-ne v2, v0, :cond_2
    }
    v0 = p1.size();
    if (v1 != v0) {
//       if-ne v1, v0, :cond_3
    }
    :cond_2
    v0 = p0.isFocusable();
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    :cond_3
    :goto_1
    return;
    :cond_4
    v0 = p3 & 0x1;
    v1 = 0x1;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_5
    }
    v0 = p0.isInTouchMode();
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.isFocusableInTouchMode();
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    :cond_5
    if (p1 == 0) {
//       if-eqz p1, :cond_3
    }
    p1.add(p0);
    goto :goto_1
.end method
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
    .prologue
    v0 = 0x0;
    :goto_0
    v1 = p0.getChildCount();
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_1
    }
    v1 = p0.getChildAt(v0);
    v2 = v1.getVisibility();
    if (v2 != 0) {
//       if-nez v2, :cond_0
    }
    v2 = p0.a(v1);
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v2 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v2 != v3) {
//       if-ne v2, v3, :cond_0
    }
    v1.addTouchables(p1);
    :cond_0
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_1
    return;
.end method
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .prologue
    v0 = p0.checkLayoutParams(p3);
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v1 = p0.generateLayoutParams(p3);
    :goto_0
    v0 = v1;
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
    instance-of v3, p1, Lcom/ushaqi/zhuishushenqi/reader/cr;
    v2 |= v3;
    v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->a = v2;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInLayout;
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v0 = new IllegalStateException();
    v1 = "Cannot add pager decor view during layout";
    v0.<init>(v1);
    throw v0
    :cond_0
    v2 = 0x1;
    v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->d = v2;
    p0.addViewInLayout(p1, p2, v1);
    :goto_1
    return;
    :cond_1
    Landroid/view/ViewGroup.addView(p0, p1, p2, v1);
    goto :goto_1
    :cond_2
    v1 = p3;
    goto :goto_0
.end method
.method final b()V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    p0.c(v0);
    return;
.end method
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .prologue
    instance-of v0, p1, Lcom/ushaqi/zhuishushenqi/reader/ct;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = Landroid/view/ViewGroup.checkLayoutParams(p0, p1);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = 0x1;
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public computeScroll()V
    .locals 4
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v0 = v0.isFinished();
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v0 = v0.computeScrollOffset();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.getScrollX();
    v1 = p0.getScrollY();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v2 = v2.getCurrX();
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v3 = v3.getCurrY();
    if (v0 != v2) {
//       if-ne v0, v2, :cond_0
    }
    if (v1 == v3) {
//       if-eq v1, v3, :cond_1
    }
    :cond_0
    p0.scrollTo(v2, v3);
    v0 = p0.e(v2);
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v0.abortAnimation();
    v0 = 0x0;
    p0.scrollTo(v0, v3);
    :cond_1
    Landroid/support/v4/view/ViewCompat.postInvalidateOnAnimation(p0);
    :goto_0
    return;
    :cond_2
    v0 = 0x1;
    p0.a(v0);
    goto :goto_0
.end method
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .prologue
    v0 = 0x0;
    v1 = 0x1;
    v2 = Landroid/view/ViewGroup.dispatchKeyEvent(p0, p1);
    if (v2 != 0) {
//       if-nez v2, :cond_1
    }
    v2 = p1.getAction();
    if (v2 != 0) {
//       if-nez v2, :cond_0
    }
    v2 = p1.getKeyCode();
    sparse-switch v2, :sswitch_data_0
    :cond_0
    v2 = v0;
    :goto_0
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    :cond_1
    v0 = v1;
    :cond_2
    return v0
    :sswitch_0
    v2 = 0x11;
    v2 = p0.f(v2);
    goto :goto_0
    :sswitch_1
    v2 = 0x42;
    v2 = p0.f(v2);
    goto :goto_0
    :sswitch_2
    v2 = Landroid/os/Build$VERSION;->SDK_INT;
    v3 = 0xb;
    if (v2 < v3) {
//       if-lt v2, v3, :cond_0
    }
    v2 = Landroid/support/v4/view/KeyEventCompat.hasNoModifiers(p1);
    if (v2 == 0) {
//       if-eqz v2, :cond_3
    }
    v2 = 0x2;
    v2 = p0.f(v2);
    goto :goto_0
    :cond_3
    v2 = Landroid/support/v4/view/KeyEventCompat.hasModifiers(p1, v1);
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v2 = p0.f(v1);
    goto :goto_0
    nop
    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_2
    .end sparse-switch
.end method
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6
    .prologue
    v0 = 0x0;
    v2 = p0.getChildCount();
    v1 = v0;
    :goto_0
    if (v1 >= v2) {
//       if-ge v1, v2, :cond_0
    }
    v3 = p0.getChildAt(v1);
    v4 = v3.getVisibility();
    if (v4 != 0) {
//       if-nez v4, :cond_1
    }
    v4 = p0.a(v3);
    if (v4 == 0) {
//       if-eqz v4, :cond_1
    }
    v4 = v4.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v4 != v5) {
//       if-ne v4, v5, :cond_1
    }
    v3 = v3.dispatchPopulateAccessibilityEvent(p1);
    if (v3 == 0) {
//       if-eqz v3, :cond_1
    }
    v0 = 0x1;
    :cond_0
    return v0
    :cond_1
    v1 = v1 + 0x1;
    goto :goto_0
.end method
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .prologue
    v2 = 0x1;
    Landroid/view/ViewGroup.draw(p0, p1);
    v0 = 0x0;
    v1 = Landroid/support/v4/view/ViewCompat.getOverScrollMode(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    if (v1 != v2) {
//       if-ne v1, v2, :cond_4
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    if (v1 == 0) {
//       if-eqz v1, :cond_4
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v1 = v1.getCount();
    if (v1 <= v2) {
//       if-le v1, v2, :cond_4
    }
    :cond_0
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge;
    v1 = v1.isFinished();
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    v1 = p1.save();
    v0 = p0.getHeight();
    v2 = p0.getPaddingTop();
    v0 -= v2;
    v2 = p0.getPaddingBottom();
    v0 -= v2;
    v2 = p0.getWidth();
    v3 = 0x43870000    # 270.0f;
    p1.rotate(v3);
    neg-int v3, v0
    v4 = p0.getPaddingTop();
    v3 += v4;
    int-to-float v3, v3
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstOffset;
    int-to-float v5, v2
    v4 *= v5;
    p1.translate(v3, v4);
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge;
    v3.setSize(v0, v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge;
    v0 = v0.draw(p1);
    v0 = v0 | 0x0;
    p1.restoreToCount(v1);
    :cond_1
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge;
    v1 = v1.isFinished();
    if (v1 != 0) {
//       if-nez v1, :cond_2
    }
    v1 = p1.save();
    v2 = p0.getWidth();
    v3 = p0.getHeight();
    v4 = p0.getPaddingTop();
    v3 -= v4;
    v4 = p0.getPaddingBottom();
    v3 -= v4;
    v4 = 0x42b40000    # 90.0f;
    p1.rotate(v4);
    v4 = p0.getPaddingTop();
    neg-int v4, v4
    int-to-float v4, v4
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset;
    v6 = 0x3f800000    # 1.0f;
    v5 += v6;
    neg-float v5, v5
    int-to-float v6, v2
    v5 *= v6;
    p1.translate(v4, v5);
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge;
    v4.setSize(v3, v2);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge;
    v2 = v2.draw(p1);
    v0 |= v2;
    p1.restoreToCount(v1);
    :cond_2
    :goto_0
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    Landroid/support/v4/view/ViewCompat.postInvalidateOnAnimation(p0);
    :cond_3
    return;
    :cond_4
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge;
    v1.finish();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge;
    v1.finish();
    goto :goto_0
.end method
.method protected drawableStateChanged()V
    .locals 2
    .prologue
    Landroid/view/ViewGroup.drawableStateChanged(p0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMarginDrawable;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = v0.isStateful();
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1 = p0.getDrawableState();
    v0.setState(v1);
    :cond_0
    return;
.end method
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .prologue
    v0 = new ct();
    v0.<init>();
    return v0;
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .prologue
    v0 = new ct();
    v1 = p0.getContext();
    v0.<init>(v1, p1);
    return v0;
.end method
.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .prologue
    v0 = p0.generateDefaultLayoutParams();
    return v0;
.end method
.method protected getChildDrawingOrder(II)I
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrder;
    v1 = 0x2;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_0
    }
    v0 = p1 + -0x1;
    p2 = v0 - p2;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrderedChildren;
    v0 = v0.get(p2);
    check-cast v0, Landroid/view/View;
    v0 = v0.getLayoutParams();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->f;
    return v0
.end method
.method protected onAttachedToWindow()V
    .locals 1
    .prologue
    Landroid/view/ViewGroup.onAttachedToWindow(p0);
    v0 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout = v0;
    return;
.end method
.method protected onDetachedFromWindow()V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mEndScrollRunnable;
    p0.removeCallbacks(v0);
    Landroid/view/ViewGroup.onDetachedFromWindow(p0);
    return;
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .prologue
    Landroid/view/ViewGroup.onDraw(p0 .. p1);
    v0 = p0;
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin;
    if (v1 <= 0) {
//       if-lez v1, :cond_3
    }
    v0 = p0;
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMarginDrawable;
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v0 = p0;
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v1 = v1.size();
    if (v1 <= 0) {
//       if-lez v1, :cond_3
    }
    v0 = p0;
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v6 = p0.getScrollX();
    v7 = p0.getWidth();
    v0 = p0;
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin;
    int-to-float v1, v1
    int-to-float v2, v7
    v8 = v1 / v2;
    v5 = 0x0;
    v0 = p0;
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = 0x0;
    v1 = v1.get(v2);
    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v4 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v9 = v2.size();
    v3 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v0 = p0;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v10 = v9 + -0x1;
    v2 = v2.get(v10);
    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v10 = v2.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v2 = v5;
    v5 = v3;
    :goto_0
    if (v5 >= v10) {
//       if-ge v5, v10, :cond_3
    }
    :goto_1
    v3 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v5 <= v3) {
//       if-le v5, v3, :cond_0
    }
    if (v2 >= v9) {
//       if-ge v2, v9, :cond_0
    }
    v0 = p0;
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v2 = v2 + 0x1;
    v1 = v1.get(v2);
    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/cs;
    goto :goto_1
    :cond_0
    v3 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    if (v5 != v3) {
//       if-ne v5, v3, :cond_2
    }
    v3 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v4 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v3 += v4;
    int-to-float v4, v7
    v3 *= v4;
    v4 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v11 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v4 += v11;
    v4 += v8;
    :goto_2
    v0 = p0;
    v11 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin;
    int-to-float v11, v11
    v11 += v3;
    int-to-float v12, v6
    cmpl-float v11, v11, v12
    if (v11 <= 0) {
//       if-lez v11, :cond_1
    }
    v0 = p0;
    v11 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMarginDrawable;
    float-to-int v12, v3
    v0 = p0;
    v13 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTopPageBounds;
    v0 = p0;
    v14 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin;
    int-to-float v14, v14
    v14 += v3;
    v15 = 0x3f000000    # 0.5f;
    v14 += v15;
    float-to-int v14, v14
    v0 = p0;
    v15 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mBottomPageBounds;
    v11.setBounds(v12, v13, v14, v15);
    v0 = p0;
    v11 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMarginDrawable;
    v0 = p1;
    v11.draw(v0);
    :cond_1
    v11 = v6 + v7;
    int-to-float v11, v11
    cmpl-float v3, v3, v11
    if (v3 > 0) {
//       if-gtz v3, :cond_3
    }
    v3 = v5 + 0x1;
    v5 = v3;
    goto :goto_0
    :cond_2
    v0 = p0;
    v3 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v11 = v3.getPageWidth(v5);
    v3 = v4 + v11;
    int-to-float v12, v7
    v3 *= v12;
    v11 += v8;
    v4 += v11;
    goto :goto_2
    :cond_3
    return;
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .prologue
    v3 = -0x1;
    v12 = 0x0;
    v6 = 0x1;
    v2 = 0x0;
    v0 = p1.getAction();
    v0 = v0 & 0xff;
    v1 = 0x3;
    if (v0 == v1) {
//       if-eq v0, v1, :cond_0
    }
    if (v0 != v6) {
//       if-ne v0, v6, :cond_2
    }
    :cond_0
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged = v2;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag = v2;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v3;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    v0.recycle();
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker = v0;
    :cond_1
    :goto_0
    return v2
    :cond_2
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged;
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v2 = v6;
    goto :goto_0
    :cond_3
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag;
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    :cond_4
    sparse-switch v0, :sswitch_data_0
    :cond_5
    :goto_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    if (v0 != 0) {
//       if-nez v0, :cond_6
    }
    v0 = invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker = v0;
    :cond_6
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    v0.addMovement(p1);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged;
    goto :goto_0
    :sswitch_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
    if (v0 == v3) {
//       if-eq v0, v3, :cond_5
    }
    v0 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v0);
    v7 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX;
    v8 = v7 - v1;
    v9 = Ljava/lang/Math.abs(v8);
    v10 = Landroid/support/v4/view/MotionEventCompat.getY(p1, v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionY;
    v0 = v10 - v0;
    v11 = Ljava/lang/Math.abs(v0);
    cmpl-float v0, v8, v12
    if (v0 == 0) {
//       if-eqz v0, :cond_a
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mGutterSize;
    int-to-float v1, v1
    cmpg-float v1, v0, v1
    if (v1 >= 0) {
//       if-gez v1, :cond_7
    }
    cmpl-float v1, v8, v12
    if (v1 > 0) {
//       if-gtz v1, :cond_8
    }
    :cond_7
    v1 = p0.getWidth();
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mGutterSize;
    v1 -= v3;
    int-to-float v1, v1
    cmpl-float v0, v0, v1
    if (v0 <= 0) {
//       if-lez v0, :cond_9
    }
    cmpg-float v0, v8, v12
    if (v0 >= 0) {
//       if-gez v0, :cond_9
    }
    :cond_8
    v0 = v6;
    :goto_2
    if (v0 != 0) {
//       if-nez v0, :cond_a
    }
    float-to-int v3, v8
    float-to-int v4, v7
    float-to-int v5, v10
    v0 = p0;
    v1 = p0;
    v0 = v0.a(..v5);
    if (v0 == 0) {
//       if-eqz v0, :cond_a
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v7;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY = v10;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag = v6;
    goto :goto_0
    :cond_9
    v0 = v2;
    goto :goto_2
    :cond_a
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
    int-to-float v0, v0
    cmpl-float v0, v9, v0
    if (v0 <= 0) {
//       if-lez v0, :cond_d
    }
    v0 = 0x3f000000    # 0.5f;
    v0 *= v9;
    cmpl-float v0, v0, v11
    if (v0 <= 0) {
//       if-lez v0, :cond_d
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged = v6;
    p0.b(v6);
    cmpl-float v0, v8, v12
    if (v0 <= 0) {
//       if-lez v0, :cond_c
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
    int-to-float v1, v1
    v0 += v1;
    :goto_3
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY = v10;
    p0.b(v6);
    :cond_b
    :goto_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged;
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.a(v7);
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    Landroid/support/v4/view/ViewCompat.postInvalidateOnAnimation(p0);
    goto/16 :goto_1
    :cond_c
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
    int-to-float v1, v1
    v0 -= v1;
    goto :goto_3
    :cond_d
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
    int-to-float v0, v0
    cmpl-float v0, v11, v0
    if (v0 <= 0) {
//       if-lez v0, :cond_b
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag = v6;
    goto :goto_4
    :sswitch_1
    v0 = p1.getX();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v0;
    v0 = p1.getY();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionY = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY = v0;
    v0 = Landroid/support/v4/view/MotionEventCompat.getPointerId(p1, v2);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag = v2;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v0.computeScrollOffset();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollState;
    v1 = 0x2;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_e
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v0 = v0.getFinalX();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v1 = v1.getCurrX();
    v0 -= v1;
    v0 = Ljava/lang/Math.abs(v0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCloseEnough;
    if (v0 > v1) {
//       if-gt v0, v1, :cond_5
    }
    :cond_e
    p0.a(v2);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged = v2;
    goto/16 :goto_1
    :sswitch_2
    p0.a(p1);
    goto/16 :goto_1
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
    .end sparse-switch
.end method
.method protected onLayout(ZIIII)V
    .locals 17
    .prologue
    v9 = p0.getChildCount();
    v10 = p4 - p2;
    v11 = p5 - p3;
    v6 = p0.getPaddingLeft();
    v2 = p0.getPaddingTop();
    v5 = p0.getPaddingRight();
    v3 = p0.getPaddingBottom();
    v12 = p0.getScrollX();
    v4 = 0x0;
    v1 = 0x0;
    v8 = v1;
    :goto_0
    if (v8 >= v9) {
//       if-ge v8, v9, :cond_0
    }
    v0 = p0;
    v13 = v0.getChildAt(v8);
    v1 = v13.getVisibility();
    v7 = 0x8;
    if (v1 == v7) {
//       if-eq v1, v7, :cond_5
    }
    v1 = v13.getLayoutParams();
    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/ct;
    v7 = v1.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
    if (v7 == 0) {
//       if-eqz v7, :cond_5
    }
    v7 = v1.Lcom/ushaqi/zhuishushenqi/reader/ct;->b;
    v7 = v7 & 0x7;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/ct;->b;
    v14 = v1 & 0x70;
    packed-switch v7, :pswitch_data_0
    :pswitch_0
    v7 = v6;
    :goto_1
    sparse-switch v14, :sswitch_data_0
    v1 = v2;
    v16 = v3;
    v3 = v2;
    v2 = v16;
    :goto_2
    v7 += v12;
    v14 = v13.getMeasuredWidth();
    v14 += v7;
    v15 = v13.getMeasuredHeight();
    v15 += v1;
    v13.layout(v7, v1, v14, v15);
    v1 = v4 + 0x1;
    v4 = v3;
    v3 = v2;
    v2 = v5;
    v5 = v6;
    :goto_3
    v6 = v8 + 0x1;
    v8 = v6;
    v6 = v5;
    v5 = v2;
    v2 = v4;
    v4 = v1;
    goto :goto_0
    :pswitch_1
    v1 = v13.getMeasuredWidth();
    v1 += v6;
    v7 = v6;
    v6 = v1;
    goto :goto_1
    :pswitch_2
    v1 = v13.getMeasuredWidth();
    v1 = v10 - v1;
    v1 = v1 / 0x2;
    v1 = Ljava/lang/Math.max(v1, v6);
    v7 = v1;
    goto :goto_1
    :pswitch_3
    v1 = v10 - v5;
    v7 = v13.getMeasuredWidth();
    v1 -= v7;
    v7 = v13.getMeasuredWidth();
    v5 += v7;
    v7 = v1;
    goto :goto_1
    :sswitch_0
    v1 = v13.getMeasuredHeight();
    v1 += v2;
    v16 = v2;
    v2 = v3;
    v3 = v1;
    v1 = v16;
    goto :goto_2
    :sswitch_1
    v1 = v13.getMeasuredHeight();
    v1 = v11 - v1;
    v1 = v1 / 0x2;
    v1 = Ljava/lang/Math.max(v1, v2);
    v16 = v3;
    v3 = v2;
    v2 = v16;
    goto :goto_2
    :sswitch_2
    v1 = v11 - v3;
    v14 = v13.getMeasuredHeight();
    v1 -= v14;
    v14 = v13.getMeasuredHeight();
    v3 += v14;
    v16 = v3;
    v3 = v2;
    v2 = v16;
    goto :goto_2
    :cond_0
    v1 = v10 - v6;
    v7 = v1 - v5;
    v1 = 0x0;
    v5 = v1;
    :goto_4
    if (v5 >= v9) {
//       if-ge v5, v9, :cond_3
    }
    v0 = p0;
    v8 = v0.getChildAt(v5);
    v1 = v8.getVisibility();
    v10 = 0x8;
    if (v1 == v10) {
//       if-eq v1, v10, :cond_2
    }
    v1 = v8.getLayoutParams();
    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/ct;
    v10 = v1.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
    if (v10 != 0) {
//       if-nez v10, :cond_2
    }
    v0 = p0;
    v10 = v0.a(v8);
    if (v10 == 0) {
//       if-eqz v10, :cond_2
    }
    int-to-float v12, v7
    v10 = v10.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v10 *= v12;
    float-to-int v10, v10
    v10 += v6;
    v12 = v1.Lcom/ushaqi/zhuishushenqi/reader/ct;->d;
    if (v12 == 0) {
//       if-eqz v12, :cond_1
    }
    v12 = 0x0;
    v1.Lcom/ushaqi/zhuishushenqi/reader/ct;->d = v12;
    int-to-float v12, v7
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/ct;->c;
    v1 *= v12;
    float-to-int v1, v1
    v12 = 0x40000000    # 2.0f;
    v1 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v1, v12);
    v12 = v11 - v2;
    v12 -= v3;
    v13 = 0x40000000    # 2.0f;
    v12 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v12, v13);
    v8.measure(v1, v12);
    :cond_1
    v1 = v8.getMeasuredWidth();
    v1 += v10;
    v12 = v8.getMeasuredHeight();
    v12 += v2;
    v8.layout(v10, v2, v1, v12);
    :cond_2
    v1 = v5 + 0x1;
    v5 = v1;
    goto :goto_4
    :cond_3
    v0 = p0;
    v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTopPageBounds = v2;
    v1 = v11 - v3;
    v0 = p0;
    v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mBottomPageBounds = v1;
    v0 = p0;
    v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDecorChildCount = v4;
    v0 = p0;
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout;
    if (v1 == 0) {
//       if-eqz v1, :cond_4
    }
    v0 = p0;
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v2 = 0x0;
    v3 = 0x0;
    v4 = 0x0;
    v0 = p0;
    v0.a(v1, v2, v3, v4);
    :cond_4
    v1 = 0x0;
    v0 = p0;
    v0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout = v1;
    return;
    :cond_5
    v1 = v4;
    v4 = v2;
    v2 = v5;
    v5 = v6;
    goto/16 :goto_3
    nop
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method
.method protected onMeasure(II)V
    .locals 13
    .prologue
    v0 = 0x0;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager.getDefaultSize(v0, p1);
    v1 = 0x0;
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager.getDefaultSize(v1, p2);
    p0.setMeasuredDimension(v0, v1);
    v0 = p0.getMeasuredWidth();
    v1 = v0 / 0xa;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDefaultGutterSize;
    v1 = Ljava/lang/Math.min(v1, v2);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mGutterSize = v1;
    v1 = p0.getPaddingLeft();
    v0 -= v1;
    v1 = p0.getPaddingRight();
    v3 = v0 - v1;
    v0 = p0.getMeasuredHeight();
    v1 = p0.getPaddingTop();
    v0 -= v1;
    v1 = p0.getPaddingBottom();
    v5 = v0 - v1;
    v9 = p0.getChildCount();
    v0 = 0x0;
    v8 = v0;
    :goto_0
    if (v8 >= v9) {
//       if-ge v8, v9, :cond_8
    }
    v10 = p0.getChildAt(v8);
    v0 = v10.getVisibility();
    v1 = 0x8;
    if (v0 == v1) {
//       if-eq v0, v1, :cond_3
    }
    v0 = v10.getLayoutParams();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->b;
    v6 = v1 & 0x7;
    v1 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->b;
    v4 = v1 & 0x70;
    v2 = -0x80000000;
    v1 = -0x80000000;
    v7 = 0x30;
    if (v4 == v7) {
//       if-eq v4, v7, :cond_0
    }
    v7 = 0x50;
    if (v4 != v7) {
//       if-ne v4, v7, :cond_4
    }
    :cond_0
    v4 = 0x1;
    v7 = v4;
    :goto_1
    v4 = 0x3;
    if (v6 == v4) {
//       if-eq v6, v4, :cond_1
    }
    v4 = 0x5;
    if (v6 != v4) {
//       if-ne v6, v4, :cond_5
    }
    :cond_1
    v4 = 0x1;
    v6 = v4;
    :goto_2
    if (v7 == 0) {
//       if-eqz v7, :cond_6
    }
    v2 = 0x40000000    # 2.0f;
    :cond_2
    :goto_3
    v4 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->width;
    v11 = -0x2;
    if (v4 == v11) {
//       if-eq v4, v11, :cond_e
    }
    v4 = 0x40000000    # 2.0f;
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->width;
    v11 = -0x1;
    if (v2 == v11) {
//       if-eq v2, v11, :cond_d
    }
    v2 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->width;
    :goto_4
    v11 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->height;
    v12 = -0x2;
    if (v11 == v12) {
//       if-eq v11, v12, :cond_c
    }
    v1 = 0x40000000    # 2.0f;
    v11 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->height;
    v12 = -0x1;
    if (v11 == v12) {
//       if-eq v11, v12, :cond_c
    }
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->height;
    :goto_5
    v2 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v2, v4);
    v0 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v0, v1);
    v10.measure(v2, v0);
    if (v7 == 0) {
//       if-eqz v7, :cond_7
    }
    v0 = v10.getMeasuredHeight();
    v5 -= v0;
    :cond_3
    :goto_6
    v0 = v8 + 0x1;
    v8 = v0;
    goto :goto_0
    :cond_4
    v4 = 0x0;
    v7 = v4;
    goto :goto_1
    :cond_5
    v4 = 0x0;
    v6 = v4;
    goto :goto_2
    :cond_6
    if (v6 == 0) {
//       if-eqz v6, :cond_2
    }
    v1 = 0x40000000    # 2.0f;
    goto :goto_3
    :cond_7
    if (v6 == 0) {
//       if-eqz v6, :cond_3
    }
    v0 = v10.getMeasuredWidth();
    v3 -= v0;
    goto :goto_6
    :cond_8
    v0 = 0x40000000    # 2.0f;
    v0 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v3, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mChildWidthMeasureSpec = v0;
    v0 = 0x40000000    # 2.0f;
    v0 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v5, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mChildHeightMeasureSpec = v0;
    v0 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInLayout = v0;
    p0.b();
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInLayout = v0;
    v2 = p0.getChildCount();
    v0 = 0x0;
    v1 = v0;
    :goto_7
    if (v1 >= v2) {
//       if-ge v1, v2, :cond_b
    }
    v4 = p0.getChildAt(v1);
    v0 = v4.getVisibility();
    v5 = 0x8;
    if (v0 == v5) {
//       if-eq v0, v5, :cond_a
    }
    v0 = v4.getLayoutParams();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;
    if (v0 == 0) {
//       if-eqz v0, :cond_9
    }
    v5 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
    if (v5 != 0) {
//       if-nez v5, :cond_a
    }
    :cond_9
    int-to-float v5, v3
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->c;
    v0 *= v5;
    float-to-int v0, v0
    v5 = 0x40000000    # 2.0f;
    v0 = Landroid/view/View$MeasureSpec.makeMeasureSpec(v0, v5);
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mChildHeightMeasureSpec;
    v4.measure(v0, v5);
    :cond_a
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_7
    :cond_b
    return;
    :cond_c
    v0 = v5;
    goto :goto_5
    :cond_d
    v2 = v3;
    goto/16 :goto_4
    :cond_e
    v4 = v2;
    v2 = v3;
    goto/16 :goto_4
.end method
.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8
    .prologue
    v2 = 0x1;
    v4 = 0x0;
    v1 = -0x1;
    v0 = p0.getChildCount();
    v3 = p1 & 0x2;
    if (v3 == 0) {
//       if-eqz v3, :cond_0
    }
    v1 = v2;
    v3 = v4;
    :goto_0
    if (v3 == v0) {
//       if-eq v3, v0, :cond_2
    }
    v5 = p0.getChildAt(v3);
    v6 = v5.getVisibility();
    if (v6 != 0) {
//       if-nez v6, :cond_1
    }
    v6 = p0.a(v5);
    if (v6 == 0) {
//       if-eqz v6, :cond_1
    }
    v6 = v6.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v7 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v6 != v7) {
//       if-ne v6, v7, :cond_1
    }
    v5 = v5.requestFocus(p1, p2);
    if (v5 == 0) {
//       if-eqz v5, :cond_1
    }
    :goto_1
    return v2
    :cond_0
    v0 = v0 + -0x1;
    v3 = v0;
    v0 = v1;
    goto :goto_0
    :cond_1
    v3 += v1;
    goto :goto_0
    :cond_2
    v2 = v4;
    goto :goto_1
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .prologue
    instance-of v0, p1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    Landroid/view/ViewGroup.onRestoreInstanceState(p0, p1);
    :goto_0
    return;
    :cond_0
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;
    v0 = p1.getSuperState();
    Landroid/view/ViewGroup.onRestoreInstanceState(p0, v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v1 = p1.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->b;
    v2 = p1.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->c;
    v0.restoreState(v1, v2);
    v0 = p1.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->a;
    v1 = 0x0;
    v2 = 0x1;
    p0.a(v0, v1, v2);
    goto :goto_0
    :cond_1
    v0 = p1.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->a;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredCurItem = v0;
    v0 = p1.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->b;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredAdapterState = v0;
    v0 = p1.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->c;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredClassLoader = v0;
    goto :goto_0
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .prologue
    v0 = Landroid/view/ViewGroup.onSaveInstanceState(p0);
    v1 = new ReaderViewPager$SavedState();
    v1.<init>(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    v1.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->a = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v0 = v0.saveState();
    v1.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->b = v0;
    :cond_0
    return v1;
.end method
.method protected onSizeChanged(IIII)V
    .locals 2
    .prologue
    Landroid/view/ViewGroup.onSizeChanged(p0, p1, p2, p3, p4);
    if (p1 == p3) {
//       if-eq p1, p3, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin;
    p0.a(p1, p3, v0, v1);
    :cond_0
    return;
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .prologue
    v7 = -0x1;
    v4 = 0x0;
    v3 = 0x1;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFakeDragging;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v3;
    :goto_0
    return v0
    :cond_0
    v0 = p1.getAction();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p1.getEdgeFlags();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = v4;
    goto :goto_0
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v0 = v0.getCount();
    if (v0 != 0) {
//       if-nez v0, :cond_3
    }
    :cond_2
    v0 = v4;
    goto :goto_0
    :cond_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    v0 = invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker = v0;
    :cond_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    v0.addMovement(p1);
    v0 = p1.getAction();
    v0 = v0 & 0xff;
    packed-switch v0, :pswitch_data_0
    :cond_5
    :goto_1
    :pswitch_0
    if (v4 == 0) {
//       if-eqz v4, :cond_6
    }
    Landroid/support/v4/view/ViewCompat.postInvalidateOnAnimation(p0);
    :cond_6
    v0 = v3;
    goto :goto_0
    :pswitch_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller;
    v0.abortAnimation();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending = v4;
    p0.b();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged = v3;
    p0.b(v3);
    v0 = p1.getX();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v0;
    v0 = p1.getY();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionY = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY = v0;
    v0 = Landroid/support/v4/view/MotionEventCompat.getPointerId(p1, v4);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v0;
    goto :goto_1
    :pswitch_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged;
    if (v0 != 0) {
//       if-nez v0, :cond_7
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
    v0 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v0);
    v1 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX;
    v2 = v1 - v2;
    v2 = Ljava/lang/Math.abs(v2);
    v5 = Landroid/support/v4/view/MotionEventCompat.getY(p1, v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY;
    v0 = v5 - v0;
    v0 = Ljava/lang/Math.abs(v0);
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
    int-to-float v6, v6
    cmpl-float v6, v2, v6
    if (v6 <= 0) {
//       if-lez v6, :cond_7
    }
    cmpl-float v0, v2, v0
    if (v0 <= 0) {
//       if-lez v0, :cond_7
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged = v3;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
    v0 = v1 - v0;
    v1 = 0x0;
    cmpl-float v0, v0, v1
    if (v0 <= 0) {
//       if-lez v0, :cond_8
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
    int-to-float v1, v1
    v0 += v1;
    :goto_2
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY = v5;
    p0.b(v3);
    p0.b(v3);
    :cond_7
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged;
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
    v0 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v0);
    v0 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
    v0 = p0.a(v0);
    v4 = v0 | 0x0;
    goto/16 :goto_1
    :cond_8
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop;
    int-to-float v1, v1
    v0 -= v1;
    goto :goto_2
    :pswitch_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged;
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker;
    v1 = 0x3e8;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMaximumVelocity;
    int-to-float v2, v2
    v0.computeCurrentVelocity(v1, v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
    v0 = Landroid/support/v4/view/VelocityTrackerCompat.getXVelocity(v0, v1);
    float-to-int v5, v0
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending = v3;
    v1 = p0.e();
    v2 = p0.getScrollX();
    v6 = p0.g();
    v0 = v6.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    int-to-float v2, v2
    int-to-float v1, v1
    v1 = v2 / v1;
    v2 = v6.Lcom/ushaqi/zhuishushenqi/reader/cs;->e;
    v1 -= v2;
    v2 = v6.Lcom/ushaqi/zhuishushenqi/reader/cs;->d;
    v2 = v1 / v2;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
    v1 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v1);
    v1 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v1);
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX;
    v1 -= v6;
    float-to-int v1, v1
    v1 = Ljava/lang/Math.abs(v1);
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFlingDistance;
    if (v1 <= v6) {
//       if-le v1, v6, :cond_b
    }
    v1 = Ljava/lang/Math.abs(v5);
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMinimumVelocity;
    if (v1 <= v6) {
//       if-le v1, v6, :cond_b
    }
    if (v5 <= 0) {
//       if-lez v5, :cond_a
    }
    :goto_3
    v2 = v0;
    :goto_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.size();
    if (v0 <= 0) {
//       if-lez v0, :cond_9
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v4);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v4 = v4.size();
    v4 = v4 + -0x1;
    v1 = v1.get(v4);
    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v1 = Ljava/lang/Math.min(v2, v1);
    v2 = Ljava/lang/Math.max(v0, v1);
    :cond_9
    p0.a(v2, v3, v3, v5);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v7;
    p0.h();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge;
    v0 = v0.onRelease();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge;
    v1 = v1.onRelease();
    v4 = v0 | v1;
    goto/16 :goto_1
    :cond_a
    v0 = v0 + 0x1;
    goto :goto_3
    :cond_b
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    if (v0 < v1) {
//       if-lt v0, v1, :cond_c
    }
    v1 = 0x3ecccccd    # 0.4f;
    :goto_5
    int-to-float v0, v0
    v0 += v2;
    v0 += v1;
    float-to-int v0, v0
    v2 = v0;
    goto :goto_4
    :cond_c
    v1 = 0x3f19999a    # 0.6f;
    goto :goto_5
    :pswitch_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged;
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem;
    p0.a(v0, v3, v4, v4);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v7;
    p0.h();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge;
    v0 = v0.onRelease();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge;
    v1 = v1.onRelease();
    v4 = v0 | v1;
    goto/16 :goto_1
    :pswitch_5
    v0 = Landroid/support/v4/view/MotionEventCompat.getActionIndex(p1);
    v1 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v1;
    v0 = Landroid/support/v4/view/MotionEventCompat.getPointerId(p1, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId = v0;
    goto/16 :goto_1
    :pswitch_6
    p0.a(p1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId;
    v0 = Landroid/support/v4/view/MotionEventCompat.findPointerIndex(p1, v0);
    v0 = Landroid/support/v4/view/MotionEventCompat.getX(p1, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX = v0;
    goto/16 :goto_1
    nop
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
.method public removeView(Landroid/view/View;)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInLayout;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    p0.removeViewInLayout(p1);
    :goto_0
    return;
    :cond_0
    Landroid/view/ViewGroup.removeView(p0, p1);
    goto :goto_0
.end method
.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 7
    .prologue
    v6 = 0x0;
    v5 = 0x1;
    v2 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mObserver;
    v0.unregisterDataSetObserver(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v0.startUpdate(p0);
    v1 = v2;
    :goto_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.size();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0 = v0.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v4 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->b;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/cs;->a;
    v3.destroyItem(p0, v4, v0);
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_0
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v0.finishUpdate(p0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems;
    v0.clear();
    v1 = v2;
    :goto_1
    v0 = p0.getChildCount();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_2
    }
    v0 = p0.getChildAt(v1);
    v0 = v0.getLayoutParams();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/ct;->a;
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    p0.removeViewAt(v1);
    v1 = v1 + -0x1;
    :cond_1
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_1
    :cond_2
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem = v2;
    p0.scrollTo(v2, v2);
    :cond_3
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter = p1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mExpectedAdapterCount = v2;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mObserver;
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    v0 = new cx();
    v0.<init>(p0, v2);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mObserver = v0;
    :cond_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mObserver;
    v0.registerDataSetObserver(v1);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending = v2;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout = v5;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v1 = v1.getCount();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mExpectedAdapterCount = v1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredCurItem;
    if (v1 < 0) {
//       if-ltz v1, :cond_6
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredAdapterState;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredClassLoader;
    v0.restoreState(v1, v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredCurItem;
    p0.a(v0, v2, v5);
    v0 = -0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredCurItem = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredAdapterState = v6;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredClassLoader = v6;
    :cond_5
    :goto_2
    return;
    :cond_6
    if (v0 != 0) {
//       if-nez v0, :cond_7
    }
    p0.b();
    goto :goto_2
    :cond_7
    p0.requestLayout();
    goto :goto_2
.end method
.method public setCurrentItem(IZ)V
    .locals 1
    .prologue
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending = v0;
    p0.a(p1, p2, v0);
    return;
.end method
.method public setOffscreenPageLimit(I)V
    .locals 3
    .prologue
    if (p1 > 0) {
//       if-gtz p1, :cond_0
    }
    v0 = "ViewPager";
    v1 = new StringBuilder();
    v2 = "Requested offscreen page limit ";
    v1.<init>(v2);
    v1 = v1.append(p1);
    v2 = " too small; defaulting to 1";
    v1 = v1.append(v2);
    v1 = v1.toString();
    Landroid/util/Log.w(v0, v1);
    p1 = 0x1;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit;
    if (p1 == v0) {
//       if-eq p1, v0, :cond_1
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit = p1;
    p0.b();
    :cond_1
    return;
.end method
.method public setOnPageChangeListener(Lcom/ushaqi/zhuishushenqi/reader/cw;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener = p1;
    return;
.end method
.method public setPageMargin(I)V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin = p1;
    v1 = p0.getWidth();
    p0.a(v1, v1, p1, v0);
    p0.requestLayout();
    return;
.end method
.method public setPageMarginDrawable(I)V
    .locals 1
    .prologue
    v0 = p0.getContext();
    v0 = v0.getResources();
    v0 = v0.getDrawable(p1);
    p0.setPageMarginDrawable(v0);
    return;
.end method
.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMarginDrawable = p1;
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    p0.refreshDrawableState();
    :cond_0
    if (p1 != 0) {
//       if-nez p1, :cond_1
    }
    v0 = 0x1;
    :goto_0
    p0.setWillNotDraw(v0);
    p0.invalidate();
    return;
    :cond_1
    v0 = 0x0;
    goto :goto_0
.end method
.method public setPageTransformer$7c662580(ZLandroid/support/design/widget/K;)V
    .locals 9
    .prologue
    v1 = 0x1;
    v2 = 0x0;
    v0 = Landroid/os/Build$VERSION;->SDK_INT;
    v3 = 0xb;
    if (v0 < v3) {
//       if-lt v0, v3, :cond_3
    }
    if (p2 == 0) {
//       if-eqz p2, :cond_4
    }
    v0 = v1;
    :goto_0
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageTransformer$572aa01b;
    if (v3 == 0) {
//       if-eqz v3, :cond_5
    }
    v3 = v1;
    :goto_1
    if (v0 == v3) {
//       if-eq v0, v3, :cond_6
    }
    v3 = v1;
    :goto_2
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageTransformer$572aa01b = p2;
    v4 = Landroid/os/Build$VERSION;->SDK_INT;
    v5 = 0x7;
    if (v4 < v5) {
//       if-lt v4, v5, :cond_1
    }
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mSetChildrenDrawingOrderEnabled;
    if (v4 != 0) {
//       if-nez v4, :cond_0
    }
    :try_start_0
    v4 = Landroid/view/ViewGroup;;
    v5 = "setChildrenDrawingOrderEnabled";
    v6 = 0x1;
    new-array v6, v6, [Ljava/lang/Class;
    v7 = 0x0;
    v8 = Ljava/lang/Boolean;->TYPE;
    v6[v7] = v8;
    v4 = v4.getDeclaredMethod(v5, v6);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mSetChildrenDrawingOrderEnabled = v4;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    :cond_0
    :goto_3
    :try_start_1
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mSetChildrenDrawingOrderEnabled;
    v5 = 0x1;
    new-array v5, v5, [Ljava/lang/Object;
    v6 = 0x0;
    v7 = Ljava/lang/Boolean.valueOf(v0);
    v5[v6] = v7;
    v4.invoke(p0, v5);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    :cond_1
    :goto_4
    if (v0 == 0) {
//       if-eqz v0, :cond_7
    }
    if (p1 == 0) {
//       if-eqz p1, :cond_2
    }
    v1 = 0x2;
    :cond_2
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrder = v1;
    :goto_5
    if (v3 == 0) {
//       if-eqz v3, :cond_3
    }
    p0.b();
    :cond_3
    return;
    :cond_4
    v0 = v2;
    goto :goto_0
    :cond_5
    v3 = v2;
    goto :goto_1
    :cond_6
    v3 = v2;
    goto :goto_2
    :catch_0
    move-exception v4
    v5 = "ViewPager";
    v6 = "Can\'t find setChildrenDrawingOrderEnabled";
    Landroid/util/Log.e(v5, v6, v4);
    goto :goto_3
    :catch_1
    move-exception v4
    v5 = "ViewPager";
    v6 = "Error changing children drawing order";
    Landroid/util/Log.e(v5, v6, v4);
    goto :goto_4
    :cond_7
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrder = v2;
    goto :goto_5
.end method
.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .prologue
    v0 = Landroid/view/ViewGroup.verifyDrawable(p0, p1);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMarginDrawable;
    if (p1 != v0) {
//       if-ne p1, v0, :cond_1
    }
    :cond_0
    v0 = 0x1;
    :goto_0
    return v0
    :cond_1
    v0 = 0x0;
    goto :goto_0
.end method
