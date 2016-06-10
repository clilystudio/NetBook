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
    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->LAYOUT_ATTRS:[I

    .line 122
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/co;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/co;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 129
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cp;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/cp;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 229
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cz;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/cz;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->sPositionComparator:Lcom/ushaqi/zhuishushenqi/reader/cz;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 351
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/cs;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempItem:Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 143
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredCurItem:I

    .line 144
    iput-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 145
    iput-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 157
    const v0, -0x800001

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstOffset:F

    .line 158
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset:F

    .line 167
    iput v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit:I

    .line 186
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    .line 213
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout:Z

    .line 214
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mNeedCalculatePageOffsets:Z

    .line 247
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cq;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/cq;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 254
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollState:I

    .line 352
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->d()V

    .line 353
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 356
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/cs;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempItem:Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 143
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredCurItem:I

    .line 144
    iput-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 145
    iput-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 157
    const v0, -0x800001

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstOffset:F

    .line 158
    const v0, 0x7f7fffff

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset:F

    .line 167
    iput v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit:I

    .line 186
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    .line 213
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout:Z

    .line 214
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mNeedCalculatePageOffsets:Z

    .line 247
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cq;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/cq;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 254
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollState:I

    .line 357
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->d()V

    .line 358
    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2568
    if-nez p1, :cond_2

    .line 2569
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 2571
    :goto_0
    if-nez p2, :cond_0

    .line 2572
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, v1

    .line 2590
    :goto_1
    return-object v0

    .line 2575
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2576
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 2577
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 2578
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 2580
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2581
    :goto_2
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    if-eq v0, p0, :cond_1

    .line 2582
    check-cast v0, Landroid/view/ViewGroup;

    .line 2583
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2584
    iget v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 2585
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2586
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 2588
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    .line 2590
    goto :goto_1

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method private a(II)Lcom/ushaqi/zhuishushenqi/reader/cs;
    .locals 2

    .prologue
    .line 849
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/cs;-><init>()V

    .line 850
    iput p1, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    .line 851
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->a:Ljava/lang/Object;

    .line 852
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    .line 853
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 854
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 858
    :goto_0
    return-object v0

    .line 856
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/reader/cs;
    .locals 4

    .prologue
    .line 1345
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1346
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 1347
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1351
    :goto_1
    return-object v0

    .line 1345
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1351
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(IFI)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 1691
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDecorChildCount:I

    if-lez v0, :cond_1

    .line 1692
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollX()I

    move-result v5

    .line 1693
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingLeft()I

    move-result v1

    .line 1694
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingRight()I

    move-result v2

    .line 1695
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getWidth()I

    move-result v6

    .line 1696
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v7

    move v4, v3

    .line 1697
    :goto_0
    if-ge v4, v7, :cond_1

    .line 1698
    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1699
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;

    .line 1700
    iget-boolean v9, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    if-eqz v9, :cond_4

    .line 1702
    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->b:I

    and-int/lit8 v0, v0, 0x7

    .line 1704
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v1

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1721
    :goto_1
    add-int/2addr v0, v5

    .line 1723
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1724
    if-eqz v0, :cond_0

    .line 1725
    invoke-virtual {v8, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1697
    :cond_0
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_0

    .line 1710
    :pswitch_1
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    .line 1711
    goto :goto_1

    .line 1713
    :pswitch_2
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v10, v2

    move v2, v1

    move v1, v10

    .line 1715
    goto :goto_1

    .line 1717
    :pswitch_3
    sub-int v0, v6, v2

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v0, v9

    .line 1718
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_1

    .line 1737
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageTransformer$572aa01b:Landroid/support/design/widget/K;

    if-eqz v0, :cond_3

    .line 1738
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollX()I

    .line 1739
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v2

    move v1, v3

    .line 1740
    :goto_3
    if-ge v1, v2, :cond_3

    .line 1741
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1742
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;

    .line 1744
    iget-boolean v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    if-nez v0, :cond_2

    .line 1746
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->e()I

    .line 1740
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1751
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCalledSuper:Z

    .line 1752
    return-void

    :cond_4
    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_2

    .line 1704
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
    const/4 v2, 0x0

    .line 1487
    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1488
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1489
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    add-int/2addr v1, p4

    .line 1491
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollX()I

    move-result v3

    .line 1492
    int-to-float v3, v3

    int-to-float v1, v1

    div-float v1, v3, v1

    .line 1493
    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v1, v0

    .line 1495
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollY()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->scrollTo(II)V

    .line 1496
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getDuration()I

    move-result v0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->timePassed()I

    move-result v3

    sub-int v5, v0, v3

    .line 1499
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->d(I)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v3

    .line 1500
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    iget v3, v3, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    int-to-float v4, p1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1513
    :cond_0
    :goto_0
    return-void

    .line 1504
    :cond_1
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->d(I)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v0

    .line 1505
    if-eqz v0, :cond_2

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1507
    :goto_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1508
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollX()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1509
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Z)V

    .line 1510
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->scrollTo(II)V

    goto :goto_0

    .line 1505
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(IZIZ)V
    .locals 12

    .prologue
    .line 577
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->d(I)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v1

    .line 578
    const/4 v0, 0x0

    .line 579
    if-eqz v1, :cond_0

    .line 580
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->e()I

    move-result v0

    .line 581
    int-to-float v0, v0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstOffset:F

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset:F

    .line 582
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 581
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 584
    :cond_0
    if-eqz p2, :cond_6

    .line 3808
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 3810
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Z)V

    .line 586
    :goto_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    invoke-interface {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/cw;->a(I)V

    .line 589
    :cond_1
    if-eqz p4, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInternalPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInternalPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    invoke-interface {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/cw;->a(I)V

    .line 602
    :cond_2
    :goto_1
    return-void

    .line 3813
    :cond_3
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollX()I

    move-result v1

    .line 3814
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollY()I

    move-result v2

    .line 3815
    sub-int v3, v0, v1

    .line 3816
    rsub-int/lit8 v4, v2, 0x0

    .line 3817
    if-nez v3, :cond_4

    if-nez v4, :cond_4

    .line 3818
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Z)V

    .line 3819
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b()V

    .line 3820
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(I)V

    goto :goto_0

    .line 3824
    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Z)V

    .line 3825
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(I)V

    .line 3827
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->e()I

    move-result v0

    .line 3828
    div-int/lit8 v5, v0, 0x2

    .line 3829
    const/high16 v6, 0x3f800000

    const/high16 v7, 0x3f800000

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    int-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 3830
    int-to-float v7, v5

    int-to-float v5, v5

    .line 4785
    const/high16 v8, 0x3f000000

    sub-float/2addr v6, v8

    .line 4786
    float-to-double v8, v6

    const-wide v10, 0x3fde28c7460698c7L

    mul-double/2addr v8, v10

    double-to-float v6, v8

    .line 4787
    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    .line 3831
    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 3834
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 3835
    if-lez v6, :cond_5

    .line 3836
    const/high16 v0, 0x447a0000

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 3842
    :goto_2
    const/16 v5, 0x258

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 3844
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 3845
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3838
    :cond_5
    int-to-float v0, v0

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    invoke-virtual {v5, v6}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    mul-float/2addr v0, v5

    .line 3839
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin:I

    int-to-float v6, v6

    add-float/2addr v0, v6

    div-float v0, v5, v0

    .line 3840
    const/high16 v5, 0x3f800000

    add-float/2addr v0, v5

    const/high16 v5, 0x42c80000

    mul-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_2

    .line 593
    :cond_6
    if-eqz p4, :cond_7

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    if-eqz v1, :cond_7

    .line 594
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    invoke-interface {v1, p1}, Lcom/ushaqi/zhuishushenqi/reader/cw;->a(I)V

    .line 596
    :cond_7
    if-eqz p4, :cond_8

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInternalPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    if-eqz v1, :cond_8

    .line 597
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInternalPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    invoke-interface {v1, p1}, Lcom/ushaqi/zhuishushenqi/reader/cw;->a(I)V

    .line 599
    :cond_8
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Z)V

    .line 600
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->scrollTo(II)V

    goto/16 :goto_1
.end method

.method private a(IZZ)V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(IZZI)Z

    .line 517
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 2388
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2389
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2390
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_0

    .line 2393
    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2394
    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    .line 2395
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    .line 2396
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2397
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2400
    :cond_0
    return-void

    .line 2393
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;I)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(I)V

    return-void
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/reader/cs;ILcom/ushaqi/zhuishushenqi/reader/cs;)V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/high16 v10, 0x3f800000

    .line 1140
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v7

    .line 1141
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->e()I

    move-result v0

    .line 1142
    if-lez v0, :cond_0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    move v6, v0

    .line 1144
    :goto_0
    if-eqz p3, :cond_4

    .line 1145
    iget v0, p3, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    .line 1147
    iget v1, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-ge v0, v1, :cond_2

    .line 1150
    iget v1, p3, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    iget v2, p3, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v1, v2

    add-float/2addr v1, v6

    .line 1151
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v3, v4

    move v1, v0

    .line 1152
    :goto_1
    iget v0, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-gt v1, v0, :cond_4

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 1153
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 1154
    :goto_2
    iget v5, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-le v1, v5, :cond_e

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_e

    .line 1155
    add-int/lit8 v3, v3, 0x1

    .line 1156
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    goto :goto_2

    .line 1142
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    .line 1158
    :goto_3
    iget v5, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-ge v2, v5, :cond_1

    .line 1161
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v6

    add-float/2addr v5, v1

    .line 1162
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v5

    goto :goto_3

    .line 1164
    :cond_1
    iput v1, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    .line 1165
    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v0, v6

    add-float/2addr v1, v0

    .line 1152
    add-int/lit8 v0, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 1167
    :cond_2
    iget v1, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-le v0, v1, :cond_4

    .line 1168
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    .line 1170
    iget v1, p3, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    .line 1171
    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    .line 1172
    :goto_4
    iget v0, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-lt v1, v0, :cond_4

    if-ltz v3, :cond_4

    .line 1173
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 1174
    :goto_5
    iget v5, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-ge v1, v5, :cond_d

    if-lez v3, :cond_d

    .line 1175
    add-int/lit8 v3, v3, -0x1

    .line 1176
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    goto :goto_5

    .line 1178
    :goto_6
    iget v5, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-le v2, v5, :cond_3

    .line 1181
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5, v2}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v6

    sub-float v5, v1, v5

    .line 1182
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v5

    goto :goto_6

    .line 1184
    :cond_3
    iget v5, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v5, v6

    sub-float/2addr v1, v5

    .line 1185
    iput v1, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    .line 1172
    add-int/lit8 v0, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_4

    .line 1191
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1192
    iget v1, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    .line 1193
    iget v0, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    add-int/lit8 v2, v0, -0x1

    .line 1194
    iget v0, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-nez v0, :cond_5

    iget v0, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    :goto_7
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstOffset:F

    .line 1195
    iget v0, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    add-int/lit8 v3, v7, -0x1

    if-ne v0, v3, :cond_6

    iget v0, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    iget v3, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v0, v3

    sub-float/2addr v0, v10

    :goto_8
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset:F

    .line 1198
    add-int/lit8 v0, p2, -0x1

    move v5, v0

    :goto_9
    if-ltz v5, :cond_9

    .line 1199
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 1200
    :goto_a
    iget v3, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-le v2, v3, :cond_7

    .line 1201
    iget-object v9, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v9, v2}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v2

    add-float/2addr v2, v6

    sub-float/2addr v1, v2

    move v2, v3

    goto :goto_a

    .line 1194
    :cond_5
    const v0, -0x800001

    goto :goto_7

    .line 1195
    :cond_6
    const v0, 0x7f7fffff

    goto :goto_8

    .line 1203
    :cond_7
    iget v3, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v3, v6

    sub-float/2addr v1, v3

    .line 1204
    iput v1, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    .line 1205
    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-nez v0, :cond_8

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstOffset:F

    .line 1198
    :cond_8
    add-int/lit8 v0, v5, -0x1

    add-int/lit8 v2, v2, -0x1

    move v5, v0

    goto :goto_9

    .line 1207
    :cond_9
    iget v0, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    iget v1, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v0, v1

    add-float v1, v0, v6

    .line 1208
    iget v0, p1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    add-int/lit8 v2, v0, 0x1

    .line 1210
    add-int/lit8 v0, p2, 0x1

    move v5, v0

    :goto_b
    if-ge v5, v8, :cond_c

    .line 1211
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 1212
    :goto_c
    iget v3, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-ge v2, v3, :cond_a

    .line 1213
    iget-object v9, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v9, v2}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v2

    add-float/2addr v2, v6

    add-float/2addr v1, v2

    move v2, v3

    goto :goto_c

    .line 1215
    :cond_a
    iget v3, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    add-int/lit8 v9, v7, -0x1

    if-ne v3, v9, :cond_b

    .line 1216
    iget v3, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v3, v1

    sub-float/2addr v3, v10

    iput v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset:F

    .line 1218
    :cond_b
    iput v1, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    .line 1219
    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v0, v6

    add-float/2addr v1, v0

    .line 1210
    add-int/lit8 v0, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    move v5, v0

    goto :goto_b

    .line 1222
    :cond_c
    iput-boolean v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mNeedCalculatePageOffsets:Z

    .line 1223
    return-void

    :cond_d
    move v11, v1

    move v1, v2

    move v2, v11

    goto/16 :goto_6

    :cond_e
    move v11, v1

    move v1, v2

    move v2, v11

    goto/16 :goto_3
.end method

.method private a(Z)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1755
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    move v0, v4

    .line 1756
    :goto_0
    if-eqz v0, :cond_1

    .line 1758
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Z)V

    .line 1759
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1760
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollX()I

    move-result v1

    .line 1761
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollY()I

    move-result v3

    .line 1762
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1763
    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1764
    if-ne v1, v5, :cond_0

    if-eq v3, v6, :cond_1

    .line 1765
    :cond_0
    invoke-virtual {p0, v5, v6}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->scrollTo(II)V

    .line 1768
    :cond_1
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending:Z

    move v1, v2

    move v3, v0

    .line 1769
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 1770
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 1771
    iget-boolean v5, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->c:Z

    if-eqz v5, :cond_2

    .line 1773
    iput-boolean v2, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->c:Z

    move v3, v4

    .line 1769
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 1755
    goto :goto_0

    .line 1776
    :cond_4
    if-eqz v3, :cond_5

    .line 1777
    if-eqz p1, :cond_6

    .line 1778
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1783
    :cond_5
    :goto_2
    return-void

    .line 1780
    :cond_6
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method

.method private a(F)Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2063
    .line 2065
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 2066
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    .line 2068
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 2069
    add-float v5, v1, v0

    .line 2070
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->e()I

    move-result v7

    .line 2072
    int-to-float v0, v7

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstOffset:F

    mul-float v4, v0, v1

    .line 2073
    int-to-float v0, v7

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset:F

    mul-float v6, v0, v1

    .line 2077
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 2078
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 2079
    iget v8, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-eqz v8, :cond_5

    .line 2081
    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    int-to-float v4, v7

    mul-float/2addr v0, v4

    move v4, v0

    move v0, v2

    .line 2083
    :goto_0
    iget v8, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    iget-object v9, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_4

    .line 2085
    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    int-to-float v3, v7

    mul-float/2addr v1, v3

    move v3, v2

    .line 2088
    :goto_1
    cmpg-float v6, v5, v4

    if-gez v6, :cond_1

    .line 2089
    if-eqz v0, :cond_0

    .line 2090
    sub-float v0, v4, v5

    .line 2091
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v2, v7

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    .line 2102
    :cond_0
    :goto_2
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    float-to-int v1, v4

    int-to-float v1, v1

    sub-float v1, v4, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    .line 2103
    float-to-int v0, v4

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->scrollTo(II)V

    .line 2104
    float-to-int v0, v4

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->e(I)Z

    .line 2106
    return v2

    .line 2094
    :cond_1
    cmpl-float v0, v5, v1

    if-lez v0, :cond_3

    .line 2095
    if-eqz v3, :cond_2

    .line 2096
    sub-float v0, v5, v1

    .line 2097
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-virtual {v2, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    :cond_2
    move v4, v1

    .line 2099
    goto :goto_2

    :cond_3
    move v4, v5

    goto :goto_2

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method private a(IZZI)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 532
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 533
    :cond_0
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Z)V

    .line 572
    :goto_0
    return v1

    .line 536
    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 537
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Z)V

    goto :goto_0

    .line 541
    :cond_2
    if-gez p1, :cond_5

    move p1, v1

    .line 546
    :cond_3
    :goto_1
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit:I

    .line 547
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    add-int/2addr v2, v0

    if-gt p1, v2, :cond_4

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    sub-int v0, v2, v0

    if-ge p1, v0, :cond_6

    :cond_4
    move v2, v1

    .line 551
    :goto_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 552
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    iput-boolean v3, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->c:Z

    .line 551
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 543
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_3

    .line 544
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1

    .line 555
    :cond_6
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    if-eq v0, p1, :cond_7

    move v1, v3

    .line 557
    :cond_7
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_a

    .line 560
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    .line 561
    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    if-eqz v0, :cond_8

    .line 562
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    invoke-interface {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/cw;->a(I)V

    .line 564
    :cond_8
    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInternalPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    if-eqz v0, :cond_9

    .line 565
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInternalPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    invoke-interface {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/cw;->a(I)V

    .line 567
    :cond_9
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->requestLayout()V

    goto :goto_0

    .line 569
    :cond_a
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->c(I)V

    .line 570
    invoke-direct {p0, p1, p2, p4, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(IZIZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;ZIII)Z
    .locals 10

    .prologue
    const/4 v2, 0x1

    .line 2439
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v6, p1

    .line 2440
    check-cast v6, Landroid/view/ViewGroup;

    .line 2441
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v8

    .line 2442
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v9

    .line 2443
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2445
    add-int/lit8 v0, v0, -0x1

    move v7, v0

    :goto_0
    if-ltz v7, :cond_2

    .line 2448
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2449
    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p4, v8

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p5, v9

    .line 2450
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    add-int v0, p5, v9

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge v0, v3, :cond_1

    add-int v0, p4, v8

    .line 2451
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v4, v0, v3

    add-int v0, p5, v9

    .line 2452
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v5, v0, v3

    move-object v0, p0

    move v3, p3

    .line 2451
    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2458
    :cond_0
    :goto_1
    return v2

    .line 2445
    :cond_1
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_0

    .line 2458
    :cond_2
    if-eqz p2, :cond_3

    neg-int v0, p3

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    return v0
.end method

.method private b(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/reader/cs;
    .locals 2

    .prologue
    .line 1356
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_2

    .line 1357
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_1

    .line 1358
    :cond_0
    const/4 v0, 0x0

    .line 1362
    :goto_1
    return-object v0

    .line 1360
    :cond_1
    check-cast v0, Landroid/view/View;

    move-object p1, v0

    goto :goto_0

    .line 1362
    :cond_2
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v0

    goto :goto_1
.end method

.method private b(I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 395
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollState:I

    .line 400
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageTransformer$572aa01b:Landroid/support/design/widget/K;

    if-eqz v0, :cond_4

    .line 402
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 2790
    :goto_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v4

    move v3, v1

    .line 2791
    :goto_2
    if-ge v3, v4, :cond_4

    .line 2792
    if-eqz v0, :cond_3

    const/4 v2, 0x2

    .line 2794
    :goto_3
    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 2791
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 402
    goto :goto_1

    :cond_3
    move v2, v1

    .line 2792
    goto :goto_3

    .line 404
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    invoke-interface {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/cw;->b(I)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 1

    .prologue
    .line 2413
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2414
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollingCacheEnabled:Z

    .line 2425
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 17

    .prologue
    .line 937
    const/4 v3, 0x0

    .line 938
    const/4 v2, 0x2

    .line 939
    move-object/from16 v0, p0

    iget v4, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    move/from16 v0, p1

    if-eq v4, v0, :cond_1f

    .line 940
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    move/from16 v0, p1

    if-ge v2, v0, :cond_1

    const/16 v2, 0x42

    .line 941
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->d(I)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v3

    .line 942
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    move-object v4, v3

    move v3, v2

    .line 945
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v2, :cond_2

    .line 946
    invoke-direct/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->f()V

    .line 1121
    :cond_0
    :goto_2
    return-void

    .line 940
    :cond_1
    const/16 v2, 0x11

    goto :goto_0

    .line 954
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending:Z

    if-eqz v2, :cond_3

    .line 956
    invoke-direct/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->f()V

    goto :goto_2

    .line 963
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 969
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit:I

    .line 970
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    sub-int/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 971
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v11

    .line 972
    add-int/lit8 v5, v11, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    add-int/2addr v2, v6

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 974
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mExpectedAdapterCount:I

    if-eq v11, v2, :cond_4

    .line 977
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 981
    :goto_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Pager id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Pager class: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 985
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Problematic adapter: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 986
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 979
    :catch_0
    move-exception v2

    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 991
    :cond_4
    const/4 v6, 0x0

    .line 992
    const/4 v2, 0x0

    move v5, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_1e

    .line 993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 994
    iget v7, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    if-lt v7, v8, :cond_6

    .line 995
    iget v7, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    if-ne v7, v8, :cond_1e

    .line 1000
    :goto_5
    if-nez v2, :cond_1d

    if-lez v11, :cond_1d

    .line 1001
    move-object/from16 v0, p0

    iget v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(II)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v2

    move-object v9, v2

    .line 1007
    :goto_6
    if-eqz v9, :cond_15

    .line 1008
    const/4 v8, 0x0

    .line 1009
    add-int/lit8 v7, v5, -0x1

    .line 1010
    if-ltz v7, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 1011
    :goto_7
    const/high16 v6, 0x40000000

    iget v13, v9, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    sub-float/2addr v6, v13

    .line 1012
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingLeft()I

    move-result v13

    int-to-float v13, v13

    invoke-direct/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->e()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    add-float/2addr v13, v6

    .line 1013
    move-object/from16 v0, p0

    iget v6, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    add-int/lit8 v6, v6, -0x1

    move v15, v6

    move v6, v8

    move v8, v15

    move/from16 v16, v7

    move v7, v5

    move/from16 v5, v16

    :goto_8
    if-ltz v8, :cond_d

    .line 1014
    cmpl-float v14, v6, v13

    if-ltz v14, :cond_9

    if-ge v8, v10, :cond_9

    .line 1015
    if-eqz v2, :cond_d

    .line 1018
    iget v14, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-ne v8, v14, :cond_5

    iget-boolean v14, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->c:Z

    if-nez v14, :cond_5

    .line 1019
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1020
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->a:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v8, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1025
    add-int/lit8 v5, v5, -0x1

    .line 1026
    add-int/lit8 v7, v7, -0x1

    .line 1027
    if-ltz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 1013
    :cond_5
    :goto_9
    add-int/lit8 v8, v8, -0x1

    goto :goto_8

    .line 992
    :cond_6
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto/16 :goto_4

    .line 1010
    :cond_7
    const/4 v2, 0x0

    goto :goto_7

    .line 1027
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 1029
    :cond_9
    if-eqz v2, :cond_b

    iget v14, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-ne v8, v14, :cond_b

    .line 1030
    iget v2, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v6, v2

    .line 1031
    add-int/lit8 v5, v5, -0x1

    .line 1032
    if-ltz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    goto :goto_9

    .line 1034
    :cond_b
    add-int/lit8 v2, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(II)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v2

    .line 1035
    iget v2, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v6, v2

    .line 1036
    add-int/lit8 v7, v7, 0x1

    .line 1037
    if-ltz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;

    goto :goto_9

    :cond_c
    const/4 v2, 0x0

    goto :goto_9

    .line 1041
    :cond_d
    iget v5, v9, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    .line 1042
    add-int/lit8 v6, v7, 0x1

    .line 1043
    const/high16 v2, 0x40000000

    cmpg-float v2, v5, v2

    if-gez v2, :cond_14

    .line 1044
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 1045
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingRight()I

    move-result v8

    int-to-float v8, v8

    invoke-direct/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->e()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    const/high16 v10, 0x40000000

    add-float/2addr v10, v8

    .line 1047
    move-object/from16 v0, p0

    iget v8, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    add-int/lit8 v8, v8, 0x1

    :goto_b
    if-ge v8, v11, :cond_14

    .line 1048
    cmpl-float v13, v5, v10

    if-ltz v13, :cond_10

    if-le v8, v12, :cond_10

    .line 1049
    if-eqz v2, :cond_14

    .line 1052
    iget v13, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-ne v8, v13, :cond_1c

    iget-boolean v13, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->c:Z

    if-nez v13, :cond_1c

    .line 1053
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1054
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->a:Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0, v8, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;

    :goto_c
    move v15, v5

    move-object v5, v2

    move v2, v15

    .line 1047
    :goto_d
    add-int/lit8 v8, v8, 0x1

    move v15, v2

    move-object v2, v5

    move v5, v15

    goto :goto_b

    .line 1044
    :cond_e
    const/4 v2, 0x0

    goto :goto_a

    .line 1059
    :cond_f
    const/4 v2, 0x0

    goto :goto_c

    .line 1061
    :cond_10
    if-eqz v2, :cond_12

    iget v13, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-ne v8, v13, :cond_12

    .line 1062
    iget v2, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v5, v2

    .line 1063
    add-int/lit8 v6, v6, 0x1

    .line 1064
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;

    :goto_e
    move v15, v5

    move-object v5, v2

    move v2, v15

    goto :goto_d

    :cond_11
    const/4 v2, 0x0

    goto :goto_e

    .line 1066
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(II)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v2

    .line 1067
    add-int/lit8 v6, v6, 0x1

    .line 1068
    iget v2, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v5, v2

    .line 1069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v6, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;

    :goto_f
    move v15, v5

    move-object v5, v2

    move v2, v15

    goto :goto_d

    :cond_13
    const/4 v2, 0x0

    goto :goto_f

    .line 1074
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7, v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Lcom/ushaqi/zhuishushenqi/reader/cs;ILcom/ushaqi/zhuishushenqi/reader/cs;)V

    .line 1084
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    if-eqz v9, :cond_17

    iget-object v2, v9, Lcom/ushaqi/zhuishushenqi/reader/cs;->a:Ljava/lang/Object;

    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v4, v0, v5, v2}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v5

    .line 1091
    const/4 v2, 0x0

    move v4, v2

    :goto_11
    if-ge v4, v5, :cond_18

    .line 1092
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1093
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/ct;

    .line 1094
    iput v4, v2, Lcom/ushaqi/zhuishushenqi/reader/ct;->f:I

    .line 1095
    iget-boolean v7, v2, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    if-nez v7, :cond_16

    iget v7, v2, Lcom/ushaqi/zhuishushenqi/reader/ct;->c:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_16

    .line 1097
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v6

    .line 1098
    if-eqz v6, :cond_16

    .line 1099
    iget v7, v6, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    iput v7, v2, Lcom/ushaqi/zhuishushenqi/reader/ct;->c:F

    .line 1100
    iget v6, v6, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    iput v6, v2, Lcom/ushaqi/zhuishushenqi/reader/ct;->e:I

    .line 1091
    :cond_16
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_11

    .line 1084
    :cond_17
    const/4 v2, 0x0

    goto :goto_10

    .line 1104
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->f()V

    .line 1106
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1107
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 1108
    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v2

    .line 1109
    :goto_12
    if-eqz v2, :cond_19

    iget v2, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    if-eq v2, v4, :cond_0

    .line 1110
    :cond_19
    const/4 v2, 0x0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 1111
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1112
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v5

    .line 1113
    if-eqz v5, :cond_1a

    iget v5, v5, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    if-ne v5, v6, :cond_1a

    .line 1114
    invoke-virtual {v4, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1110
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 1108
    :cond_1b
    const/4 v2, 0x0

    goto :goto_12

    :cond_1c
    move v15, v5

    move-object v5, v2

    move v2, v15

    goto/16 :goto_d

    :cond_1d
    move-object v9, v2

    goto/16 :goto_6

    :cond_1e
    move-object v2, v6

    goto/16 :goto_5

    :cond_1f
    move-object v4, v3

    move v3, v2

    goto/16 :goto_1
.end method

.method static synthetic c()[I
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private d(I)Lcom/ushaqi/zhuishushenqi/reader/cs;
    .locals 3

    .prologue
    .line 1366
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 1367
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 1368
    iget v2, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-ne v2, p1, :cond_0

    .line 1372
    :goto_1
    return-object v0

    .line 1366
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1372
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private d()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->setWillNotDraw(Z)V

    .line 362
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->setDescendantFocusability(I)V

    .line 363
    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->setFocusable(Z)V

    .line 364
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 365
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    .line 366
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 367
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 369
    invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v3

    iput v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop:I

    .line 370
    const/high16 v3, 0x43c80000

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMinimumVelocity:I

    .line 371
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMaximumVelocity:I

    .line 372
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 373
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 375
    const/high16 v0, 0x41c80000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFlingDistance:I

    .line 376
    const/high16 v0, 0x40000000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCloseEnough:I

    .line 377
    const/high16 v0, 0x41800000

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDefaultGutterSize:I

    .line 379
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cu;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/cu;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 381
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 383
    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 386
    :cond_0
    return-void
.end method

.method private e()I
    .locals 2

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private e(I)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1650
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1651
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCalledSuper:Z

    .line 1652
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(IFI)V

    .line 1653
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCalledSuper:Z

    if-nez v1, :cond_2

    .line 1654
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1659
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->g()Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v1

    .line 1660
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->e()I

    move-result v2

    .line 1661
    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin:I

    add-int/2addr v3, v2

    .line 1662
    iget v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin:I

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 1663
    iget v5, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    .line 1664
    int-to-float v6, p1

    int-to-float v2, v2

    div-float v2, v6, v2

    iget v6, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    sub-float/2addr v2, v6

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v1, v4

    div-float v1, v2, v1

    .line 1666
    int-to-float v2, v3

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1668
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCalledSuper:Z

    .line 1669
    invoke-direct {p0, v5, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(IFI)V

    .line 1670
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCalledSuper:Z

    if-nez v0, :cond_1

    .line 1671
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "onPageScrolled did not call superclass implementation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1674
    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 1124
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2

    .line 1125
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 1130
    :goto_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v1

    .line 1131
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 1132
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1133
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1135
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->sPositionComparator:Lcom/ushaqi/zhuishushenqi/reader/cz;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1137
    :cond_2
    return-void
.end method

.method private f(I)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/16 v8, 0x42

    const/16 v7, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2502
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 2503
    if-ne v2, p0, :cond_1

    move-object v0, v1

    .line 2530
    :goto_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2532
    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_7

    .line 2533
    if-ne p1, v7, :cond_5

    .line 2536
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2537
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2538
    if-eqz v0, :cond_4

    if-lt v2, v3, :cond_4

    .line 2539
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->i()Z

    move-result v0

    .line 2561
    :goto_1
    if-eqz v0, :cond_0

    .line 2562
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->playSoundEffect(I)V

    .line 2564
    :cond_0
    return v0

    .line 2505
    :cond_1
    if-eqz v2, :cond_c

    .line 2507
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_2
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    .line 2509
    if-ne v0, p0, :cond_2

    move v0, v4

    .line 2514
    :goto_3
    if-nez v0, :cond_c

    .line 2516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2517
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2518
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_4
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    .line 2520
    const-string v2, " => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 2508
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_2

    .line 2522
    :cond_3
    const-string v0, "ViewPager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2523
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2522
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2524
    goto/16 :goto_0

    .line 2541
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto :goto_1

    .line 2543
    :cond_5
    if-ne p1, v8, :cond_b

    .line 2546
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 2547
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2548
    if-eqz v0, :cond_6

    if-gt v2, v3, :cond_6

    .line 2549
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->j()Z

    move-result v0

    goto/16 :goto_1

    .line 2551
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    .line 2554
    :cond_7
    if-eq p1, v7, :cond_8

    if-ne p1, v4, :cond_9

    .line 2556
    :cond_8
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->i()Z

    move-result v0

    goto/16 :goto_1

    .line 2557
    :cond_9
    if-eq p1, v8, :cond_a

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    .line 2559
    :cond_a
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->j()Z

    move-result v0

    goto/16 :goto_1

    :cond_b
    move v0, v3

    goto/16 :goto_1

    :cond_c
    move-object v0, v2

    goto/16 :goto_0

    :cond_d
    move v0, v3

    goto/16 :goto_3
.end method

.method private g()Lcom/ushaqi/zhuishushenqi/reader/cs;
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2114
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->e()I

    move-result v1

    .line 2115
    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    int-to-float v4, v1

    div-float/2addr v0, v4

    move v9, v0

    .line 2116
    :goto_0
    if-lez v1, :cond_4

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin:I

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    move v1, v0

    .line 2117
    :goto_1
    const/4 v5, -0x1

    .line 2120
    const/4 v4, 0x1

    .line 2122
    const/4 v0, 0x0

    move v6, v2

    move v7, v2

    move v8, v5

    move v2, v3

    move v5, v4

    move-object v4, v0

    .line 2123
    :goto_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 2124
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 2126
    if-nez v5, :cond_6

    iget v10, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    add-int/lit8 v11, v8, 0x1

    if-eq v10, v11, :cond_6

    .line 2128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTempItem:Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 2129
    add-float/2addr v6, v7

    add-float/2addr v6, v1

    iput v6, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    .line 2130
    add-int/lit8 v6, v8, 0x1

    iput v6, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    .line 2131
    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v7, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    invoke-virtual {v6, v7}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v6

    iput v6, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    .line 2132
    add-int/lit8 v2, v2, -0x1

    move-object v12, v0

    move v0, v2

    move-object v2, v12

    .line 2134
    :goto_3
    iget v6, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    .line 2137
    iget v7, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v7, v6

    add-float/2addr v7, v1

    .line 2138
    if-nez v5, :cond_0

    cmpl-float v5, v9, v6

    if-ltz v5, :cond_2

    .line 2139
    :cond_0
    cmpg-float v4, v9, v7

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_5

    :cond_1
    move-object v4, v2

    .line 2152
    :cond_2
    return-object v4

    :cond_3
    move v9, v2

    .line 2115
    goto :goto_0

    :cond_4
    move v1, v2

    .line 2116
    goto :goto_1

    .line 2146
    :cond_5
    iget v5, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    .line 2148
    iget v4, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    .line 2123
    add-int/lit8 v0, v0, 0x1

    move v7, v6

    move v8, v5

    move v5, v3

    move v6, v4

    move-object v4, v2

    move v2, v0

    goto :goto_2

    :cond_6
    move-object v12, v0

    move v0, v2

    move-object v2, v12

    goto :goto_3
.end method

.method private h()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2403
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged:Z

    .line 2404
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag:Z

    .line 2406
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2407
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2408
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2410
    :cond_0
    return-void
.end method

.method private i()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2594
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    if-lez v1, :cond_0

    .line 2595
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->setCurrentItem(IZ)V

    .line 2598
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2602
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 2603
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->setCurrentItem(IZ)V

    .line 2606
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 864
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v8

    .line 865
    iput v8, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mExpectedAdapterCount:I

    .line 866
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit:I

    shl-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    .line 867
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v8, :cond_1

    move v0, v1

    .line 868
    :goto_0
    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    move v4, v2

    move v5, v3

    move v6, v0

    move v3, v2

    .line 871
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 872
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 873
    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v9, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->a:Ljava/lang/Object;

    invoke-virtual {v7, v9}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v7

    .line 875
    const/4 v9, -0x1

    if-eq v7, v9, :cond_9

    .line 879
    const/4 v9, -0x2

    if-ne v7, v9, :cond_2

    .line 880
    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 881
    add-int/lit8 v3, v3, -0x1

    .line 883
    if-nez v4, :cond_0

    .line 884
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v4, v1

    .line 888
    :cond_0
    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v7, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    iget-object v9, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->a:Ljava/lang/Object;

    invoke-virtual {v6, p0, v7, v9}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 891
    iget v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-ne v6, v0, :cond_a

    .line 893
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    add-int/lit8 v5, v8, -0x1

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 871
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v0

    goto :goto_1

    :cond_1
    move v0, v2

    .line 867
    goto :goto_0

    .line 899
    :cond_2
    iget v9, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-eq v9, v7, :cond_9

    .line 900
    iget v6, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    iget v9, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    if-ne v6, v9, :cond_3

    move v5, v7

    .line 905
    :cond_3
    iput v7, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    .line 906
    goto :goto_2

    .line 910
    :cond_4
    if-eqz v4, :cond_5

    .line 911
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 914
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v3, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 916
    if-eqz v6, :cond_8

    .line 918
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v4

    move v3, v2

    .line 919
    :goto_3
    if-ge v3, v4, :cond_7

    .line 920
    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 921
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;

    .line 922
    iget-boolean v6, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    if-nez v6, :cond_6

    .line 923
    const/4 v6, 0x0

    iput v6, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->c:F

    .line 919
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 927
    :cond_7
    invoke-direct {p0, v5, v2, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(IZZ)V

    .line 928
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->requestLayout()V

    .line 930
    :cond_8
    return-void

    :cond_9
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_2

    :cond_a
    move v0, v3

    move v3, v4

    move v4, v5

    move v5, v1

    goto :goto_2
.end method

.method public final a(I)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 496
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending:Z

    .line 497
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(IZZI)Z

    move-result v0

    return v0

    :cond_0
    move v0, v1

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
    .line 2614
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2616
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getDescendantFocusability()I

    move-result v2

    .line 2618
    const/high16 v0, 0x60000

    if-eq v2, v0, :cond_1

    .line 2619
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2620
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2621
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 2622
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v4

    .line 2623
    if-eqz v4, :cond_0

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    if-ne v4, v5, :cond_0

    .line 2624
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2619
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2634
    :cond_1
    const/high16 v0, 0x40000

    if-ne v2, v0, :cond_2

    .line 2637
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v1, v0, :cond_3

    .line 2640
    :cond_2
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2651
    :cond_3
    :goto_1
    return-void

    .line 2643
    :cond_4
    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2644
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2647
    :cond_5
    if-eqz p1, :cond_3

    .line 2648
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

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
    .line 2661
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2662
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2663
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2664
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v2

    .line 2665
    if-eqz v2, :cond_0

    iget v2, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    if-ne v2, v3, :cond_0

    .line 2666
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2661
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2670
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 1311
    invoke-virtual {p0, p3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1312
    invoke-virtual {p0, p3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 1314
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;

    .line 1315
    iget-boolean v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    instance-of v3, p1, Lcom/ushaqi/zhuishushenqi/reader/cr;

    or-int/2addr v2, v3

    iput-boolean v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    .line 1316
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInLayout:Z

    if-eqz v2, :cond_1

    .line 1317
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    if-eqz v2, :cond_0

    .line 1318
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add pager decor view during layout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1320
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->d:Z

    .line 1321
    invoke-virtual {p0, p1, p2, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1333
    :goto_1
    return-void

    .line 1323
    :cond_1
    invoke-super {p0, p1, p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    move-object v1, p3

    goto :goto_0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 933
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->c(I)V

    .line 934
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 2739
    instance-of v0, p1, Lcom/ushaqi/zhuishushenqi/reader/ct;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 4

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1627
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollX()I

    move-result v0

    .line 1628
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollY()I

    move-result v1

    .line 1629
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1630
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1632
    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    .line 1633
    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->scrollTo(II)V

    .line 1634
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1635
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1636
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->scrollTo(II)V

    .line 1641
    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1647
    :goto_0
    return-void

    .line 1646
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Z)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2464
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6477
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 6478
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v2, v0

    .line 2464
    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    .line 6480
    :sswitch_0
    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->f(I)Z

    move-result v2

    goto :goto_0

    .line 6483
    :sswitch_1
    const/16 v2, 0x42

    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->f(I)Z

    move-result v2

    goto :goto_0

    .line 6486
    :sswitch_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 6489
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6490
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->f(I)Z

    move-result v2

    goto :goto_0

    .line 6491
    :cond_3
    invoke-static {p1, v1}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6492
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->f(I)Z

    move-result v2

    goto :goto_0

    .line 6478
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
    const/4 v0, 0x0

    .line 2712
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v2

    move v1, v0

    .line 2713
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2714
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2715
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 2716
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v4

    .line 2717
    if-eqz v4, :cond_1

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    if-ne v4, v5, :cond_1

    .line 2718
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2719
    const/4 v0, 0x1

    .line 2724
    :cond_0
    return v0

    .line 2713
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 2177
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2178
    const/4 v0, 0x0

    .line 2180
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    .line 2181
    if-eqz v1, :cond_0

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 2183
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-le v1, v2, :cond_4

    .line 2184
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2185
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2186
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 2187
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getWidth()I

    move-result v2

    .line 2189
    const/high16 v3, 0x43870000

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2190
    neg-int v3, v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstOffset:F

    int-to-float v5, v2

    mul-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2191
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v3, v0, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2192
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 2193
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2195
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 2197
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getWidth()I

    move-result v2

    .line 2198
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2200
    const/high16 v4, 0x42b40000

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2201
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastOffset:F

    const/high16 v6, 0x3f800000

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2202
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2203
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 2204
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2211
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 2213
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2215
    :cond_3
    return-void

    .line 2207
    :cond_4
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 2208
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 773
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 774
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 775
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 778
    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2729
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ct;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/reader/ct;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 2744
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ct;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/reader/ct;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 2734
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    .prologue
    .line 661
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int p2, v0, p2

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->f:I

    .line 663
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1377
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout:Z

    .line 1379
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 391
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 392
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    .prologue
    .line 2219
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2222
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin:I

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_3

    .line 2223
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollX()I

    move-result v6

    .line 2224
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getWidth()I

    move-result v7

    .line 2226
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v2, v7

    div-float v8, v1, v2

    .line 2227
    const/4 v5, 0x0

    .line 2228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 2229
    iget v4, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    .line 2230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2231
    iget v3, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    .line 2232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ushaqi/zhuishushenqi/reader/cs;

    iget v10, v2, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    move v2, v5

    move v5, v3

    .line 2233
    :goto_0
    if-ge v5, v10, :cond_3

    .line 2234
    :goto_1
    iget v3, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-le v5, v3, :cond_0

    if-ge v2, v9, :cond_0

    .line 2235
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/cs;

    goto :goto_1

    .line 2239
    :cond_0
    iget v3, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    if-ne v5, v3, :cond_2

    .line 2240
    iget v3, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    iget v4, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v3, v4

    int-to-float v4, v7

    mul-float/2addr v3, v4

    .line 2241
    iget v4, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    iget v11, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    add-float/2addr v4, v11

    add-float/2addr v4, v8

    .line 2248
    :goto_2
    move-object/from16 v0, p0

    iget v11, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    int-to-float v12, v6

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    .line 2249
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v12, v3

    move-object/from16 v0, p0

    iget v13, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTopPageBounds:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin:I

    int-to-float v14, v14

    add-float/2addr v14, v3

    const/high16 v15, 0x3f000000

    add-float/2addr v14, v15

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mBottomPageBounds:I

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2251
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2254
    :cond_1
    add-int v11, v6, v7

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-gtz v3, :cond_3

    .line 2233
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 2243
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3, v5}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    .line 2244
    add-float v3, v4, v11

    int-to-float v12, v7

    mul-float/2addr v3, v12

    .line 2245
    add-float/2addr v11, v8

    add-float/2addr v4, v11

    goto :goto_2

    .line 2259
    :cond_3
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    const/4 v3, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1806
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1809
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-ne v0, v6, :cond_2

    .line 1812
    :cond_0
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged:Z

    .line 1813
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag:Z

    .line 1814
    iput v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    .line 1815
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 1816
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1817
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1937
    :cond_1
    :goto_0
    return v2

    .line 1824
    :cond_2
    if-eqz v0, :cond_4

    .line 1825
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged:Z

    if-eqz v1, :cond_3

    move v2, v6

    .line 1827
    goto :goto_0

    .line 1829
    :cond_3
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag:Z

    if-nez v1, :cond_1

    .line 1835
    :cond_4
    sparse-switch v0, :sswitch_data_0

    .line 1928
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_6

    .line 1929
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1931
    :cond_6
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1937
    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged:Z

    goto :goto_0

    .line 1846
    :sswitch_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    .line 1847
    if-eq v0, v3, :cond_5

    .line 1852
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1853
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 1854
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    sub-float v8, v7, v1

    .line 1855
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1856
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 1857
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionY:F

    sub-float v0, v10, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 1860
    cmpl-float v0, v8, v12

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    .line 5786
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mGutterSize:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_7

    cmpl-float v1, v8, v12

    if-gtz v1, :cond_8

    :cond_7
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mGutterSize:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    cmpg-float v0, v8, v12

    if-gez v0, :cond_9

    :cond_8
    move v0, v6

    .line 1860
    :goto_2
    if-nez v0, :cond_a

    float-to-int v3, v8

    float-to-int v4, v7

    float-to-int v5, v10

    move-object v0, p0

    move-object v1, p0

    .line 1861
    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1863
    iput v7, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    .line 1864
    iput v10, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY:F

    .line 1865
    iput-boolean v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag:Z

    goto :goto_0

    :cond_9
    move v0, v2

    .line 5786
    goto :goto_2

    .line 1868
    :cond_a
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v9, v0

    if-lez v0, :cond_d

    const/high16 v0, 0x3f000000

    mul-float/2addr v0, v9

    cmpl-float v0, v0, v11

    if-lez v0, :cond_d

    .line 1870
    iput-boolean v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged:Z

    .line 1871
    invoke-direct {p0, v6}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(I)V

    .line 1872
    cmpl-float v0, v8, v12

    if-lez v0, :cond_c

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_3
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    .line 1874
    iput v10, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY:F

    .line 1875
    invoke-direct {p0, v6}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Z)V

    .line 1884
    :cond_b
    :goto_4
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 1886
    invoke-direct {p0, v7}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1887
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1872
    :cond_c
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_3

    .line 1876
    :cond_d
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_b

    .line 1882
    iput-boolean v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag:Z

    goto :goto_4

    .line 1898
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    .line 1899
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY:F

    .line 1900
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    .line 1901
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsUnableToDrag:Z

    .line 1903
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1904
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    .line 1905
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCloseEnough:I

    if-gt v0, v1, :cond_5

    .line 1913
    :cond_e
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Z)V

    .line 1914
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged:Z

    goto/16 :goto_1

    .line 1924
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1835
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
    .line 1517
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v9

    .line 1518
    sub-int v10, p4, p2

    .line 1519
    sub-int v11, p5, p3

    .line 1520
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingLeft()I

    move-result v6

    .line 1521
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingTop()I

    move-result v2

    .line 1522
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingRight()I

    move-result v5

    .line 1523
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingBottom()I

    move-result v3

    .line 1524
    invoke-virtual/range {p0 .. p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollX()I

    move-result v12

    .line 1526
    const/4 v4, 0x0

    .line 1530
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_0

    .line 1531
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 1532
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v7, 0x8

    if-eq v1, v7, :cond_5

    .line 1533
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/ct;

    .line 1536
    iget-boolean v7, v1, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    if-eqz v7, :cond_5

    .line 1537
    iget v7, v1, Lcom/ushaqi/zhuishushenqi/reader/ct;->b:I

    and-int/lit8 v7, v7, 0x7

    .line 1538
    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/ct;->b:I

    and-int/lit8 v14, v1, 0x70

    .line 1539
    packed-switch v7, :pswitch_data_0

    :pswitch_0
    move v7, v6

    .line 1556
    :goto_1
    sparse-switch v14, :sswitch_data_0

    move v1, v2

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1573
    :goto_2
    add-int/2addr v7, v12

    .line 1575
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v7

    .line 1576
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v1

    .line 1574
    invoke-virtual {v13, v7, v1, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1577
    add-int/lit8 v1, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v5

    move v5, v6

    .line 1530
    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v5

    move v5, v2

    move v2, v4

    move v4, v1

    goto :goto_0

    .line 1545
    :pswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v6

    move v7, v6

    move v6, v1

    .line 1546
    goto :goto_1

    .line 1548
    :pswitch_2
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v10, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v7, v1

    .line 1550
    goto :goto_1

    .line 1552
    :pswitch_3
    sub-int v1, v10, v5

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1553
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v5, v7

    move v7, v1

    goto :goto_1

    .line 1562
    :sswitch_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v2

    move/from16 v16, v2

    move v2, v3

    move v3, v1

    move/from16 v1, v16

    .line 1563
    goto :goto_2

    .line 1565
    :sswitch_1
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, v11, v1

    div-int/lit8 v1, v1, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 1567
    goto :goto_2

    .line 1569
    :sswitch_2
    sub-int v1, v11, v3

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    sub-int/2addr v1, v14

    .line 1570
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v3, v14

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto :goto_2

    .line 1582
    :cond_0
    sub-int v1, v10, v6

    sub-int v7, v1, v5

    .line 1584
    const/4 v1, 0x0

    move v5, v1

    :goto_4
    if-ge v5, v9, :cond_3

    .line 1585
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1586
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v10, 0x8

    if-eq v1, v10, :cond_2

    .line 1587
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/ct;

    .line 1589
    iget-boolean v10, v1, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    if-nez v10, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1590
    int-to-float v12, v7

    iget v10, v10, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    mul-float/2addr v10, v12

    float-to-int v10, v10

    .line 1591
    add-int/2addr v10, v6

    .line 1593
    iget-boolean v12, v1, Lcom/ushaqi/zhuishushenqi/reader/ct;->d:Z

    if-eqz v12, :cond_1

    .line 1596
    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/ushaqi/zhuishushenqi/reader/ct;->d:Z

    .line 1597
    int-to-float v12, v7

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/ct;->c:F

    mul-float/2addr v1, v12

    float-to-int v1, v1

    const/high16 v12, 0x40000000

    invoke-static {v1, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1600
    sub-int v12, v11, v2

    sub-int/2addr v12, v3

    const/high16 v13, 0x40000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1603
    invoke-virtual {v8, v1, v12}, Landroid/view/View;->measure(II)V

    .line 1609
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v10

    .line 1610
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v2

    .line 1608
    invoke-virtual {v8, v10, v2, v1, v12}, Landroid/view/View;->layout(IIII)V

    .line 1584
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_4

    .line 1614
    :cond_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTopPageBounds:I

    .line 1615
    sub-int v1, v11, v3

    move-object/from16 v0, p0

    iput v1, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mBottomPageBounds:I

    .line 1616
    move-object/from16 v0, p0

    iput v4, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDecorChildCount:I

    .line 1618
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_4

    .line 1619
    move-object/from16 v0, p0

    iget v1, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(IZIZ)V

    .line 1621
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout:Z

    .line 1622
    return-void

    :cond_5
    move v1, v4

    move v4, v2

    move v2, v5

    move v5, v6

    goto/16 :goto_3

    .line 1539
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1556
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
    .line 1388
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getDefaultSize(II)I

    move-result v0

    const/4 v1, 0x0

    .line 1389
    invoke-static {v1, p2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getDefaultSize(II)I

    move-result v1

    .line 1388
    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->setMeasuredDimension(II)V

    .line 1391
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getMeasuredWidth()I

    move-result v0

    .line 1392
    div-int/lit8 v1, v0, 0xa

    .line 1393
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDefaultGutterSize:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mGutterSize:I

    .line 1396
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    .line 1397
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getPaddingBottom()I

    move-result v1

    sub-int v5, v0, v1

    .line 1404
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v9

    .line 1405
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_8

    .line 1406
    invoke-virtual {p0, v8}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1407
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 1408
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;

    .line 1409
    if-eqz v0, :cond_3

    iget-boolean v1, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    if-eqz v1, :cond_3

    .line 1410
    iget v1, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->b:I

    and-int/lit8 v6, v1, 0x7

    .line 1411
    iget v1, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->b:I

    and-int/lit8 v4, v1, 0x70

    .line 1412
    const/high16 v2, -0x80000000

    .line 1413
    const/high16 v1, -0x80000000

    .line 1414
    const/16 v7, 0x30

    if-eq v4, v7, :cond_0

    const/16 v7, 0x50

    if-ne v4, v7, :cond_4

    :cond_0
    const/4 v4, 0x1

    move v7, v4

    .line 1415
    :goto_1
    const/4 v4, 0x3

    if-eq v6, v4, :cond_1

    const/4 v4, 0x5

    if-ne v6, v4, :cond_5

    :cond_1
    const/4 v4, 0x1

    move v6, v4

    .line 1417
    :goto_2
    if-eqz v7, :cond_6

    .line 1418
    const/high16 v2, 0x40000000

    .line 1425
    :cond_2
    :goto_3
    iget v4, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->width:I

    const/4 v11, -0x2

    if-eq v4, v11, :cond_e

    .line 1426
    const/high16 v4, 0x40000000

    .line 1427
    iget v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->width:I

    const/4 v11, -0x1

    if-eq v2, v11, :cond_d

    .line 1428
    iget v2, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->width:I

    .line 1431
    :goto_4
    iget v11, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_c

    .line 1432
    const/high16 v1, 0x40000000

    .line 1433
    iget v11, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->height:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_c

    .line 1434
    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->height:I

    .line 1437
    :goto_5
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1438
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1439
    invoke-virtual {v10, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1441
    if-eqz v7, :cond_7

    .line 1442
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr v5, v0

    .line 1405
    :cond_3
    :goto_6
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 1414
    :cond_4
    const/4 v4, 0x0

    move v7, v4

    goto :goto_1

    .line 1415
    :cond_5
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2

    .line 1419
    :cond_6
    if-eqz v6, :cond_2

    .line 1420
    const/high16 v1, 0x40000000

    goto :goto_3

    .line 1443
    :cond_7
    if-eqz v6, :cond_3

    .line 1444
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v3, v0

    goto :goto_6

    .line 1450
    :cond_8
    const/high16 v0, 0x40000000

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mChildWidthMeasureSpec:I

    .line 1451
    const/high16 v0, 0x40000000

    invoke-static {v5, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mChildHeightMeasureSpec:I

    .line 1454
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInLayout:Z

    .line 1455
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b()V

    .line 1456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInLayout:Z

    .line 1459
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v2

    .line 1460
    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v2, :cond_b

    .line 1461
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1462
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v5, 0x8

    if-eq v0, v5, :cond_a

    .line 1466
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;

    .line 1467
    if-eqz v0, :cond_9

    iget-boolean v5, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    if-nez v5, :cond_a

    .line 1468
    :cond_9
    int-to-float v5, v3

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->c:F

    mul-float/2addr v0, v5

    float-to-int v0, v0

    const/high16 v5, 0x40000000

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1470
    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 1460
    :cond_a
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 1474
    :cond_b
    return-void

    :cond_c
    move v0, v5

    goto :goto_5

    :cond_d
    move v2, v3

    goto/16 :goto_4

    :cond_e
    move v4, v2

    move v2, v3

    goto/16 :goto_4
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 2681
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v0

    .line 2682
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_0

    move v1, v2

    move v3, v4

    .line 2691
    :goto_0
    if-eq v3, v0, :cond_2

    .line 2692
    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2693
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 2694
    invoke-direct {p0, v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/view/View;)Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v6

    .line 2695
    if-eqz v6, :cond_1

    iget v6, v6, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    iget v7, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    if-ne v6, v7, :cond_1

    .line 2696
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2702
    :goto_1
    return v2

    .line 2687
    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v0, v1

    .line 2689
    goto :goto_0

    .line 2691
    :cond_1
    add-int/2addr v3, v1

    goto :goto_0

    :cond_2
    move v2, v4

    .line 2702
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 1291
    instance-of v0, p1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;

    if-nez v0, :cond_0

    .line 1292
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1307
    :goto_0
    return-void

    .line 1296
    :cond_0
    check-cast p1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;

    .line 1297
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1299
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1300
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->b:Landroid/os/Parcelable;

    iget-object v2, p1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1301
    iget v0, p1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(IZZ)V

    goto :goto_0

    .line 1303
    :cond_1
    iget v0, p1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->a:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredCurItem:I

    .line 1304
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->b:Landroid/os/Parcelable;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1305
    iget-object v0, p1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->c:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1280
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1281
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;

    invoke-direct {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1282
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    iput v0, v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->a:I

    .line 1283
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    .line 1284
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager$SavedState;->b:Landroid/os/Parcelable;

    .line 1286
    :cond_0
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 1478
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1481
    if-eq p1, p3, :cond_0

    .line 1482
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin:I

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(IIII)V

    .line 1484
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1942
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_0

    move v0, v3

    .line 2059
    :goto_0
    return v0

    .line 1949
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 1952
    goto :goto_0

    .line 1955
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v4

    .line 1957
    goto :goto_0

    .line 1960
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_4

    .line 1961
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1963
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1965
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1968
    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2056
    :cond_5
    :goto_1
    :pswitch_0
    if-eqz v4, :cond_6

    .line 2057
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_6
    move v0, v3

    .line 2059
    goto :goto_0

    .line 1970
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1971
    iput-boolean v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending:Z

    .line 1972
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b()V

    .line 1973
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged:Z

    .line 1974
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(I)V

    .line 1977
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX:F

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    .line 1978
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionY:F

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY:F

    .line 1979
    invoke-static {p1, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    goto :goto_1

    .line 1983
    :pswitch_2
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged:Z

    if-nez v0, :cond_7

    .line 1984
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 1985
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 1986
    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1987
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1988
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1991
    iget v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_7

    cmpl-float v0, v2, v0

    if-lez v0, :cond_7

    .line 1993
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged:Z

    .line 1994
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX:F

    sub-float v0, v1, v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_2
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    .line 1996
    iput v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionY:F

    .line 1997
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(I)V

    .line 1998
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b(Z)V

    .line 2002
    :cond_7
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 2004
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 2006
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 2007
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(F)Z

    move-result v0

    or-int/lit8 v4, v0, 0x0

    .line 2008
    goto/16 :goto_1

    .line 1994
    :cond_8
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX:F

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 2011
    :pswitch_3
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 2012
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2013
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2014
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v5, v0

    .line 2016
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending:Z

    .line 2017
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->e()I

    move-result v1

    .line 2018
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getScrollX()I

    move-result v2

    .line 2019
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->g()Lcom/ushaqi/zhuishushenqi/reader/cs;

    move-result-object v6

    .line 2020
    iget v0, v6, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    .line 2021
    int-to-float v2, v2

    int-to-float v1, v1

    div-float v1, v2, v1

    iget v2, v6, Lcom/ushaqi/zhuishushenqi/reader/cs;->e:F

    sub-float/2addr v1, v2

    iget v2, v6, Lcom/ushaqi/zhuishushenqi/reader/cs;->d:F

    div-float v2, v1, v2

    .line 2022
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    .line 2023
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2024
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 2025
    iget v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInitialMotionX:F

    sub-float/2addr v1, v6

    float-to-int v1, v1

    .line 6157
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFlingDistance:I

    if-le v1, v6, :cond_b

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMinimumVelocity:I

    if-le v1, v6, :cond_b

    .line 6158
    if-lez v5, :cond_a

    :goto_3
    move v2, v0

    .line 6164
    :goto_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 6165
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 6166
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 6169
    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2028
    :cond_9
    invoke-direct {p0, v2, v3, v3, v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(IZZI)Z

    .line 2030
    iput v7, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    .line 2031
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->h()V

    .line 2032
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int v4, v0, v1

    .line 2033
    goto/16 :goto_1

    .line 6158
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 6160
    :cond_b
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    if-lt v0, v1, :cond_c

    const v1, 0x3ecccccd

    .line 6161
    :goto_5
    int-to-float v0, v0

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    move v2, v0

    goto :goto_4

    .line 6160
    :cond_c
    const v1, 0x3f19999a

    goto :goto_5

    .line 2036
    :pswitch_4
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_5

    .line 2037
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    invoke-direct {p0, v0, v3, v4, v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(IZIZ)V

    .line 2038
    iput v7, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    .line 2039
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->h()V

    .line 2040
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int v4, v0, v1

    goto/16 :goto_1

    .line 2044
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2045
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v1

    .line 2046
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    .line 2047
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    goto/16 :goto_1

    .line 2051
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(Landroid/view/MotionEvent;)V

    .line 2052
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mActivePointerId:I

    .line 2053
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 2052
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mLastMotionX:F

    goto/16 :goto_1

    .line 1968
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
    .line 1337
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mInLayout:Z

    if-eqz v0, :cond_0

    .line 1338
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->removeViewInLayout(Landroid/view/View;)V

    .line 1342
    :goto_0
    return-void

    .line 1340
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 415
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mObserver:Lcom/ushaqi/zhuishushenqi/reader/cx;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 417
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    move v1, v2

    .line 418
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/cs;

    .line 420
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v4, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->b:I

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/reader/cs;->a:Ljava/lang/Object;

    invoke-virtual {v3, p0, v4, v0}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 418
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 423
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v2

    .line 3461
    :goto_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 3462
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3463
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ct;

    .line 3464
    iget-boolean v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ct;->a:Z

    if-nez v0, :cond_1

    .line 3465
    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->removeViewAt(I)V

    .line 3466
    add-int/lit8 v1, v1, -0x1

    .line 3461
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 425
    :cond_2
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mCurItem:I

    .line 426
    invoke-virtual {p0, v2, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->scrollTo(II)V

    .line 430
    :cond_3
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 431
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mExpectedAdapterCount:I

    .line 433
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_5

    .line 434
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mObserver:Lcom/ushaqi/zhuishushenqi/reader/cx;

    if-nez v0, :cond_4

    .line 435
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cx;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/cx;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;B)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mObserver:Lcom/ushaqi/zhuishushenqi/reader/cx;

    .line 437
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mObserver:Lcom/ushaqi/zhuishushenqi/reader/cx;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 438
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending:Z

    .line 439
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout:Z

    .line 440
    iput-boolean v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mFirstLayout:Z

    .line 441
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mExpectedAdapterCount:I

    .line 442
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredCurItem:I

    if-ltz v1, :cond_6

    .line 443
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 444
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredCurItem:I

    invoke-direct {p0, v0, v2, v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(IZZ)V

    .line 445
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredCurItem:I

    .line 446
    iput-object v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 447
    iput-object v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 458
    :cond_5
    :goto_2
    return-void

    .line 448
    :cond_6
    if-nez v0, :cond_7

    .line 449
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b()V

    goto :goto_2

    .line 451
    :cond_7
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->requestLayout()V

    goto :goto_2
.end method

.method public setCurrentItem(IZ)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 507
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPopulatePending:Z

    .line 508
    invoke-direct {p0, p1, p2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(IZZ)V

    .line 509
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 3

    .prologue
    .line 707
    if-gtz p1, :cond_0

    .line 708
    const-string v0, "ViewPager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested offscreen page limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/4 p1, 0x1

    .line 712
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_1

    .line 713
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOffscreenPageLimit:I

    .line 714
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b()V

    .line 716
    :cond_1
    return-void
.end method

.method public setOnPageChangeListener(Lcom/ushaqi/zhuishushenqi/reader/cw;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mOnPageChangeListener:Lcom/ushaqi/zhuishushenqi/reader/cw;

    .line 612
    return-void
.end method

.method public setPageMargin(I)V
    .locals 2

    .prologue
    .line 727
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin:I

    .line 728
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageMargin:I

    .line 730
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getWidth()I

    move-result v1

    .line 731
    invoke-direct {p0, v1, v1, p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->a(IIII)V

    .line 733
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->requestLayout()V

    .line 734
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .locals 1

    .prologue
    .line 763
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 764
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 751
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 752
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->refreshDrawableState()V

    .line 753
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->setWillNotDraw(Z)V

    .line 754
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->invalidate()V

    .line 755
    return-void

    .line 753
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPageTransformer$7c662580(ZLandroid/support/design/widget/K;)V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 627
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_3

    .line 628
    if-eqz p2, :cond_4

    move v0, v1

    .line 629
    :goto_0
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageTransformer$572aa01b:Landroid/support/design/widget/K;

    if-eqz v3, :cond_5

    move v3, v1

    :goto_1
    if-eq v0, v3, :cond_6

    move v3, v1

    .line 630
    :goto_2
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mPageTransformer$572aa01b:Landroid/support/design/widget/K;

    .line 5642
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x7

    if-lt v4, v5, :cond_1

    .line 5643
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    if-nez v4, :cond_0

    .line 5645
    :try_start_0
    const-class v4, Landroid/view/ViewGroup;

    const-string v5, "setChildrenDrawingOrderEnabled"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5652
    :cond_0
    :goto_3
    :try_start_1
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 632
    :cond_1
    :goto_4
    if-eqz v0, :cond_7

    .line 633
    if-eqz p1, :cond_2

    const/4 v1, 0x2

    :cond_2
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrder:I

    .line 637
    :goto_5
    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->b()V

    .line 639
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 628
    goto :goto_0

    :cond_5
    move v3, v2

    .line 629
    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    .line 5647
    :catch_0
    move-exception v4

    .line 5648
    const-string v5, "ViewPager"

    const-string v6, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 5653
    :catch_1
    move-exception v4

    .line 5654
    const-string v5, "ViewPager"

    const-string v6, "Error changing children drawing order"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 635
    :cond_7
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mDrawingOrder:I

    goto :goto_5
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 768
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
