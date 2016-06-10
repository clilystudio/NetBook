.class public Landroid/support/design/widget/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/design/widget/r;
    a = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation


# instance fields
.field a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:Landroid/support/v4/view/WindowInsetsCompat;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/design/widget/h;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 133
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    .line 117
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    .line 118
    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->setOrientation(I)V

    .line 136
    sget-object v0, Landroid/support/design/R$styleable;->AppBarLayout:[I

    sget v1, Landroid/support/design/R$style;->Widget_Design_AppBarLayout:I

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 138
    sget v1, Landroid/support/design/R$styleable;->AppBarLayout_elevation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->e:F

    .line 139
    sget v1, Landroid/support/design/R$styleable;->AppBarLayout_android_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    invoke-static {p0}, Landroid/support/design/widget/aP;->a(Landroid/view/View;)V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Ljava/util/List;

    .line 147
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->e:F

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 149
    new-instance v0, Landroid/support/design/widget/c;

    invoke-direct {v0, p0}, Landroid/support/design/widget/c;-><init>(Landroid/support/design/widget/AppBarLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 158
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)Landroid/support/design/widget/g;
    .locals 2

    .prologue
    .line 238
    new-instance v0, Landroid/support/design/widget/g;

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method private static a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/g;
    .locals 1

    .prologue
    .line 243
    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Landroid/support/design/widget/g;

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p0}, Landroid/support/design/widget/g;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 248
    :goto_0
    return-object v0

    .line 245
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 246
    new-instance v0, Landroid/support/design/widget/g;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p0}, Landroid/support/design/widget/g;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 248
    :cond_1
    new-instance v0, Landroid/support/design/widget/g;

    invoke-direct {v0, p0}, Landroid/support/design/widget/g;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/design/widget/AppBarLayout;)Ljava/util/List;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Landroid/support/design/widget/AppBarLayout;Landroid/support/v4/view/WindowInsetsCompat;)V
    .locals 3

    .prologue
    .line 96
    .line 2421
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    .line 2422
    iput-object p1, p0, Landroid/support/design/widget/AppBarLayout;->f:Landroid/support/v4/view/WindowInsetsCompat;

    .line 2425
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2426
    invoke-virtual {p0, v0}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2427
    invoke-static {v2, p1}, Landroid/support/v4/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 2428
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2425
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_0
    return-void
.end method

.method private static h()Landroid/support/design/widget/g;
    .locals 3

    .prologue
    .line 233
    new-instance v0, Landroid/support/design/widget/g;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/design/widget/g;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 261
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 262
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    .line 292
    :goto_0
    return v0

    .line 266
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v5

    move v4, v3

    move v2, v3

    :goto_1
    if-ge v4, v5, :cond_4

    .line 267
    invoke-virtual {p0, v4}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 268
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/g;

    .line 269
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 272
    :goto_2
    iget v0, v0, Landroid/support/design/widget/g;->a:I

    .line 274
    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_4

    .line 276
    add-int/2addr v2, v1

    .line 278
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 282
    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    .line 291
    :goto_3
    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->f:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->f:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    .line 292
    :goto_4
    sub-int/2addr v0, v1

    iput v0, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_2

    .line 266
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_3
    move v1, v3

    .line 291
    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method public final a(Landroid/support/design/widget/h;)V
    .locals 3

    .prologue
    .line 168
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/AppBarLayout;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 169
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 170
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 176
    :goto_1
    return-void

    .line 168
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final b(Landroid/support/design/widget/h;)V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 185
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 187
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/h;

    .line 188
    if-eq v0, p1, :cond_1

    if-nez v0, :cond_0

    .line 190
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 193
    :cond_2
    return-void
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->a()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->a()I

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 228
    instance-of v0, p1, Landroid/support/design/widget/g;

    return v0
.end method

.method final d()I
    .locals 7

    .prologue
    .line 310
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 312
    iget v2, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    .line 339
    :goto_0
    return v2

    .line 315
    :cond_0
    const/4 v2, 0x0

    .line 316
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_4

    .line 317
    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 318
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/g;

    .line 319
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 322
    :goto_2
    iget v0, v0, Landroid/support/design/widget/g;->a:I

    .line 324
    and-int/lit8 v5, v0, 0x5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3

    .line 326
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    .line 328
    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v2

    .line 316
    :goto_3
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    move v2, v0

    goto :goto_1

    .line 319
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_2

    .line 331
    :cond_2
    add-int v0, v2, v1

    goto :goto_3

    .line 333
    :cond_3
    if-gtz v2, :cond_4

    move v0, v2

    goto :goto_3

    .line 339
    :cond_4
    iput v2, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    goto :goto_0
.end method

.method final e()I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 346
    iget v1, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 348
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    .line 377
    :goto_0
    return v0

    .line 352
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v4

    move v3, v0

    move v2, v0

    :goto_1
    if-ge v3, v4, :cond_3

    .line 353
    invoke-virtual {p0, v3}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 354
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/g;

    .line 355
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 359
    :goto_2
    iget v0, v0, Landroid/support/design/widget/g;->a:I

    .line 361
    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_3

    .line 363
    add-int/2addr v2, v1

    .line 365
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 369
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    goto :goto_0

    .line 355
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_2

    .line 352
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 377
    :cond_3
    iput v2, p0, Landroid/support/design/widget/AppBarLayout;->d:I

    move v0, v2

    goto :goto_0
.end method

.method final f()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->f:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/AppBarLayout;->f:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 382
    :goto_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    .line 383
    if-eqz v2, :cond_2

    .line 385
    shl-int/lit8 v1, v2, 0x1

    add-int/2addr v1, v0

    .line 390
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v1

    .line 381
    goto :goto_0

    .line 389
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    .line 390
    if-lez v2, :cond_0

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    goto :goto_1
.end method

.method public final g()F
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Landroid/support/design/widget/AppBarLayout;->e:F

    return v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Landroid/support/design/widget/AppBarLayout;->h()Landroid/support/design/widget/g;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 95
    invoke-static {}, Landroid/support/design/widget/AppBarLayout;->h()Landroid/support/design/widget/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/util/AttributeSet;)Landroid/support/design/widget/g;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 95
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/g;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/util/AttributeSet;)Landroid/support/design/widget/g;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 95
    invoke-static {p1}, Landroid/support/design/widget/AppBarLayout;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/g;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 197
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 200
    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->b:I

    .line 201
    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    .line 202
    iput v1, p0, Landroid/support/design/widget/AppBarLayout;->c:I

    .line 204
    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->a:Z

    .line 205
    invoke-virtual {p0}, Landroid/support/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 206
    invoke-virtual {p0, v1}, Landroid/support/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/g;

    .line 1575
    iget-object v0, v0, Landroid/support/design/widget/g;->b:Landroid/view/animation/Interpolator;

    .line 210
    if-eqz v0, :cond_1

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/AppBarLayout;->a:Z

    .line 215
    :cond_0
    return-void

    .line 205
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 219
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AppBarLayout is always vertical and does not support horizontal orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 224
    return-void
.end method

.method public setTargetElevation(F)V
    .locals 0

    .prologue
    .line 408
    iput p1, p0, Landroid/support/design/widget/AppBarLayout;->e:F

    .line 409
    return-void
.end method
