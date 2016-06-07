.class public final Landroid/support/design/widget/t;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field a:Lcom/xiaomi/mistatistic/sdk/a/r;

.field b:Z

.field public c:I

.field public d:I

.field public e:I

.field f:I

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field final i:Landroid/graphics/Rect;

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    const/4 v0, 0x0

    .line 2178
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2138
    iput-boolean v0, p0, Landroid/support/design/widget/t;->b:Z

    .line 2145
    iput v0, p0, Landroid/support/design/widget/t;->c:I

    .line 2151
    iput v0, p0, Landroid/support/design/widget/t;->d:I

    .line 2158
    iput v2, p0, Landroid/support/design/widget/t;->e:I

    .line 2164
    iput v2, p0, Landroid/support/design/widget/t;->f:I

    .line 2173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/t;->i:Landroid/graphics/Rect;

    .line 2179
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 2182
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2138
    iput-boolean v2, p0, Landroid/support/design/widget/t;->b:Z

    .line 2145
    iput v2, p0, Landroid/support/design/widget/t;->c:I

    .line 2151
    iput v2, p0, Landroid/support/design/widget/t;->d:I

    .line 2158
    iput v3, p0, Landroid/support/design/widget/t;->e:I

    .line 2164
    iput v3, p0, Landroid/support/design/widget/t;->f:I

    .line 2173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/t;->i:Landroid/graphics/Rect;

    .line 2184
    sget-object v0, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2187
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_android_layout_gravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/t;->c:I

    .line 2190
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_anchor:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/t;->f:I

    .line 2192
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_anchorGravity:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/t;->d:I

    .line 2196
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_keyline:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Landroid/support/design/widget/t;->e:I

    .line 2199
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/design/widget/t;->b:Z

    .line 2201
    iget-boolean v1, p0, Landroid/support/design/widget/t;->b:Z

    if-eqz v1, :cond_0

    .line 2202
    sget v1, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_behavior:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/a/r;

    move-result-object v1

    iput-object v1, p0, Landroid/support/design/widget/t;->a:Lcom/xiaomi/mistatistic/sdk/a/r;

    .line 2206
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2207
    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/t;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2210
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2138
    iput-boolean v0, p0, Landroid/support/design/widget/t;->b:Z

    .line 2145
    iput v0, p0, Landroid/support/design/widget/t;->c:I

    .line 2151
    iput v0, p0, Landroid/support/design/widget/t;->d:I

    .line 2158
    iput v1, p0, Landroid/support/design/widget/t;->e:I

    .line 2164
    iput v1, p0, Landroid/support/design/widget/t;->f:I

    .line 2173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/t;->i:Landroid/graphics/Rect;

    .line 2211
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2218
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2138
    iput-boolean v0, p0, Landroid/support/design/widget/t;->b:Z

    .line 2145
    iput v0, p0, Landroid/support/design/widget/t;->c:I

    .line 2151
    iput v0, p0, Landroid/support/design/widget/t;->d:I

    .line 2158
    iput v1, p0, Landroid/support/design/widget/t;->e:I

    .line 2164
    iput v1, p0, Landroid/support/design/widget/t;->f:I

    .line 2173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/t;->i:Landroid/graphics/Rect;

    .line 2219
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 2214
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2138
    iput-boolean v0, p0, Landroid/support/design/widget/t;->b:Z

    .line 2145
    iput v0, p0, Landroid/support/design/widget/t;->c:I

    .line 2151
    iput v0, p0, Landroid/support/design/widget/t;->d:I

    .line 2158
    iput v1, p0, Landroid/support/design/widget/t;->e:I

    .line 2164
    iput v1, p0, Landroid/support/design/widget/t;->f:I

    .line 2173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/t;->i:Landroid/graphics/Rect;

    .line 2215
    return-void
.end method


# virtual methods
.method public final a(Lcom/xiaomi/mistatistic/sdk/a/r;)V
    .locals 1

    .prologue
    .line 2269
    iget-object v0, p0, Landroid/support/design/widget/t;->a:Lcom/xiaomi/mistatistic/sdk/a/r;

    if-eq v0, p1, :cond_0

    .line 2270
    iput-object p1, p0, Landroid/support/design/widget/t;->a:Lcom/xiaomi/mistatistic/sdk/a/r;

    .line 2272
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/t;->b:Z

    .line 2274
    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 0

    .prologue
    .line 2351
    iput-boolean p1, p0, Landroid/support/design/widget/t;->k:Z

    .line 2352
    return-void
.end method

.method final a()Z
    .locals 1

    .prologue
    .line 2308
    iget-object v0, p0, Landroid/support/design/widget/t;->a:Lcom/xiaomi/mistatistic/sdk/a/r;

    if-nez v0, :cond_0

    .line 2309
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/t;->j:Z

    .line 2311
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/t;->j:Z

    return v0
.end method

.method final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 2326
    iget-boolean v0, p0, Landroid/support/design/widget/t;->j:Z

    if-eqz v0, :cond_0

    .line 2327
    const/4 v0, 0x1

    .line 2330
    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, Landroid/support/design/widget/t;->j:Z

    iget-object v0, p0, Landroid/support/design/widget/t;->a:Lcom/xiaomi/mistatistic/sdk/a/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/t;->a:Lcom/xiaomi/mistatistic/sdk/a/r;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/a/r;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v0

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/support/design/widget/t;->j:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 2379
    iget-object v0, p0, Landroid/support/design/widget/t;->h:Landroid/view/View;

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/t;->a:Lcom/xiaomi/mistatistic/sdk/a/r;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/design/widget/t;->a:Lcom/xiaomi/mistatistic/sdk/a/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaomi/mistatistic/sdk/a/r;->d(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2403
    iget v0, p0, Landroid/support/design/widget/t;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2404
    iput-object v2, p0, Landroid/support/design/widget/t;->h:Landroid/view/View;

    iput-object v2, p0, Landroid/support/design/widget/t;->g:Landroid/view/View;

    move-object v0, v2

    .line 2411
    :goto_0
    return-object v0

    .line 2408
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/t;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3469
    iget-object v0, p0, Landroid/support/design/widget/t;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iget v1, p0, Landroid/support/design/widget/t;->f:I

    if-eq v0, v1, :cond_3

    move v0, v3

    .line 2408
    :goto_1
    if-nez v0, :cond_2

    .line 4433
    :cond_1
    iget v0, p0, Landroid/support/design/widget/t;->f:I

    invoke-virtual {p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/t;->g:Landroid/view/View;

    .line 4434
    iget-object v0, p0, Landroid/support/design/widget/t;->g:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 4435
    iget-object v0, p0, Landroid/support/design/widget/t;->g:Landroid/view/View;

    .line 4436
    iget-object v1, p0, Landroid/support/design/widget/t;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 4437
    :goto_2
    if-eq v1, p1, :cond_b

    if-eqz v1, :cond_b

    .line 4439
    if-ne v1, p2, :cond_9

    .line 4440
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4441
    iput-object v2, p0, Landroid/support/design/widget/t;->h:Landroid/view/View;

    iput-object v2, p0, Landroid/support/design/widget/t;->g:Landroid/view/View;

    .line 2411
    :cond_2
    :goto_3
    iget-object v0, p0, Landroid/support/design/widget/t;->g:Landroid/view/View;

    goto :goto_0

    .line 3473
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/t;->g:Landroid/view/View;

    .line 3474
    iget-object v1, p0, Landroid/support/design/widget/t;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 3475
    :goto_4
    if-eq v1, p1, :cond_7

    .line 3477
    if-eqz v1, :cond_4

    if-ne v1, p2, :cond_5

    .line 3478
    :cond_4
    iput-object v2, p0, Landroid/support/design/widget/t;->h:Landroid/view/View;

    iput-object v2, p0, Landroid/support/design/widget/t;->g:Landroid/view/View;

    move v0, v3

    .line 3479
    goto :goto_1

    .line 3481
    :cond_5
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_6

    move-object v0, v1

    .line 3482
    check-cast v0, Landroid/view/View;

    .line 3476
    :cond_6
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_4

    .line 3485
    :cond_7
    iput-object v0, p0, Landroid/support/design/widget/t;->h:Landroid/view/View;

    .line 3486
    const/4 v0, 0x1

    goto :goto_1

    .line 4444
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4447
    :cond_9
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_a

    move-object v0, v1

    .line 4448
    check-cast v0, Landroid/view/View;

    .line 4438
    :cond_a
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_2

    .line 4451
    :cond_b
    iput-object v0, p0, Landroid/support/design/widget/t;->h:Landroid/view/View;

    goto :goto_3

    .line 4453
    :cond_c
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4454
    iput-object v2, p0, Landroid/support/design/widget/t;->h:Landroid/view/View;

    iput-object v2, p0, Landroid/support/design/widget/t;->g:Landroid/view/View;

    goto :goto_3

    .line 4457
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find CoordinatorLayout descendant view with id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Landroid/support/design/widget/t;->f:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to anchor view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final b()V
    .locals 1

    .prologue
    .line 2343
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/t;->j:Z

    .line 2344
    return-void
.end method

.method final b(Z)V
    .locals 0

    .prologue
    .line 2363
    iput-boolean p1, p0, Landroid/support/design/widget/t;->l:Z

    .line 2364
    return-void
.end method

.method final c()V
    .locals 1

    .prologue
    .line 2347
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/t;->k:Z

    .line 2348
    return-void
.end method

.method final d()Z
    .locals 1

    .prologue
    .line 2355
    iget-boolean v0, p0, Landroid/support/design/widget/t;->k:Z

    return v0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 2359
    iget-boolean v0, p0, Landroid/support/design/widget/t;->l:Z

    return v0
.end method

.method final f()V
    .locals 1

    .prologue
    .line 2367
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/design/widget/t;->l:Z

    .line 2368
    return-void
.end method
