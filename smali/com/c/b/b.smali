.class final Lcom/c/b/b;
.super Lcom/c/b/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Z

.field private d:J

.field private e:Z

.field private f:Landroid/view/animation/Interpolator;

.field private g:Z

.field private h:Lcom/c/a/b;

.field private i:Lcom/c/b/d;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Runnable;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/c/a/a;",
            "Lcom/c/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-direct {p0}, Lcom/c/b/a;-><init>()V

    .line 47
    iput-boolean v2, p0, Lcom/c/b/b;->c:Z

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/c/b/b;->d:J

    .line 60
    iput-boolean v2, p0, Lcom/c/b/b;->e:Z

    .line 73
    iput-boolean v2, p0, Lcom/c/b/b;->g:Z

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/b/b;->h:Lcom/c/a/b;

    .line 85
    new-instance v0, Lcom/c/b/d;

    invoke-direct {v0, p0, v2}, Lcom/c/b/d;-><init>(Lcom/c/b/b;B)V

    iput-object v0, p0, Lcom/c/b/b;->i:Lcom/c/b/d;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/b/b;->j:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Lcom/c/b/c;

    invoke-direct {v0, p0}, Lcom/c/b/c;-><init>(Lcom/c/b/b;)V

    iput-object v0, p0, Lcom/c/b/b;->k:Ljava/lang/Runnable;

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/c/b/b;->l:Ljava/util/HashMap;

    .line 207
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/c/b/b;->a:Ljava/lang/ref/WeakReference;

    .line 208
    return-void
.end method

.method static synthetic a(Lcom/c/b/b;Lcom/c/a/b;)Lcom/c/a/b;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/b/b;->h:Lcom/c/a/b;

    return-object v0
.end method

.method private a(IF)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 467
    .line 1591
    iget-object v0, p0, Lcom/c/b/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1592
    if-eqz v0, :cond_0

    .line 1593
    sparse-switch p1, :sswitch_data_0

    .line 1626
    :cond_0
    const/4 v0, 0x0

    move v3, v0

    .line 468
    :goto_0
    sub-float v7, p2, v3

    .line 2495
    iget-object v0, p0, Lcom/c/b/b;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2496
    const/4 v4, 0x0

    .line 2497
    iget-object v0, p0, Lcom/c/b/b;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2498
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    .line 2499
    iget-object v1, p0, Lcom/c/b/b;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/b/f;

    .line 3156
    iget v2, v1, Lcom/c/b/f;->a:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/c/b/f;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 3157
    iget-object v2, v1, Lcom/c/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v5

    .line 3158
    :goto_1
    if-ge v6, v9, :cond_5

    .line 3159
    iget-object v2, v1, Lcom/c/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/c/b/e;

    .line 3160
    iget v2, v2, Lcom/c/b/e;->a:I

    if-ne v2, p1, :cond_4

    .line 3161
    iget-object v2, v1, Lcom/c/b/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3162
    iget v2, v1, Lcom/c/b/f;->a:I

    xor-int/lit8 v6, p1, -0x1

    and-int/2addr v2, v6

    iput v2, v1, Lcom/c/b/f;->a:I

    .line 3163
    const/4 v2, 0x1

    .line 2500
    :goto_2
    if-eqz v2, :cond_1

    .line 2505
    iget v1, v1, Lcom/c/b/f;->a:I

    if-nez v1, :cond_1

    .line 2512
    :goto_3
    if-eqz v0, :cond_2

    .line 2513
    invoke-virtual {v0}, Lcom/c/a/a;->b()V

    .line 2517
    :cond_2
    new-instance v0, Lcom/c/b/e;

    invoke-direct {v0, p1, v3, v7}, Lcom/c/b/e;-><init>(IFF)V

    .line 2518
    iget-object v1, p0, Lcom/c/b/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2519
    iget-object v0, p0, Lcom/c/b/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2520
    if-eqz v0, :cond_3

    .line 2521
    iget-object v1, p0, Lcom/c/b/b;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2522
    iget-object v1, p0, Lcom/c/b/b;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 470
    :cond_3
    return-void

    .line 1596
    :sswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1599
    :sswitch_1
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1602
    :sswitch_2
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1605
    :sswitch_3
    invoke-virtual {v0}, Landroid/view/View;->getRotationX()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1608
    :sswitch_4
    invoke-virtual {v0}, Landroid/view/View;->getRotationY()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1611
    :sswitch_5
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1614
    :sswitch_6
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1617
    :sswitch_7
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1620
    :sswitch_8
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1623
    :sswitch_9
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 3158
    :cond_4
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_1

    :cond_5
    move v2, v5

    .line 3167
    goto :goto_2

    :cond_6
    move-object v0, v4

    goto :goto_3

    .line 1593
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method static synthetic a(Lcom/c/b/b;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/c/b/b;->b()V

    return-void
.end method

.method static synthetic a(Lcom/c/b/b;IF)V
    .locals 1

    .prologue
    .line 28
    .line 3536
    iget-object v0, p0, Lcom/c/b/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3537
    if-eqz v0, :cond_0

    .line 3538
    sparse-switch p1, :sswitch_data_0

    .line 3574
    :cond_0
    :goto_0
    return-void

    .line 3541
    :sswitch_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 3545
    :sswitch_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 3549
    :sswitch_2
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 3553
    :sswitch_3
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationX(F)V

    goto :goto_0

    .line 3557
    :sswitch_4
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationY(F)V

    goto :goto_0

    .line 3561
    :sswitch_5
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    goto :goto_0

    .line 3565
    :sswitch_6
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 3569
    :sswitch_7
    invoke-virtual {v0, p2}, Landroid/view/View;->setX(F)V

    goto :goto_0

    .line 3573
    :sswitch_8
    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 3577
    :sswitch_9
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 3538
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method

.method static synthetic b(Lcom/c/b/b;)Lcom/c/a/b;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/c/b/b;->h:Lcom/c/a/b;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 429
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Lcom/c/a/w;->a([F)Lcom/c/a/w;

    move-result-object v4

    .line 430
    iget-object v0, p0, Lcom/c/b/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 432
    iget-object v2, p0, Lcom/c/b/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 434
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v1

    move v3, v1

    .line 435
    :goto_0
    if-ge v2, v5, :cond_0

    .line 436
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/b/e;

    .line 437
    iget v1, v1, Lcom/c/b/e;->a:I

    or-int/2addr v3, v1

    .line 435
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/c/b/b;->l:Ljava/util/HashMap;

    new-instance v2, Lcom/c/b/f;

    invoke-direct {v2, v3, v0}, Lcom/c/b/f;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v0, p0, Lcom/c/b/b;->i:Lcom/c/b/d;

    invoke-virtual {v4, v0}, Lcom/c/a/w;->a(Lcom/c/a/D;)V

    .line 441
    iget-object v0, p0, Lcom/c/b/b;->i:Lcom/c/b/d;

    invoke-virtual {v4, v0}, Lcom/c/a/w;->a(Lcom/c/a/b;)V

    .line 442
    iget-boolean v0, p0, Lcom/c/b/b;->e:Z

    if-eqz v0, :cond_1

    .line 443
    iget-wide v0, p0, Lcom/c/b/b;->d:J

    invoke-virtual {v4, v0, v1}, Lcom/c/a/w;->b(J)V

    .line 445
    :cond_1
    iget-boolean v0, p0, Lcom/c/b/b;->c:Z

    if-eqz v0, :cond_2

    .line 446
    iget-wide v0, p0, Lcom/c/b/b;->b:J

    invoke-virtual {v4, v0, v1}, Lcom/c/a/w;->a(J)Lcom/c/a/w;

    .line 448
    :cond_2
    iget-boolean v0, p0, Lcom/c/b/b;->g:Z

    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lcom/c/b/b;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v0}, Lcom/c/a/w;->a(Landroid/view/animation/Interpolator;)V

    .line 451
    :cond_3
    invoke-virtual {v4}, Lcom/c/a/w;->a()V

    .line 452
    return-void
.end method

.method static synthetic c(Lcom/c/b/b;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/c/b/b;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/c/b/b;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/c/b/b;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public final a(F)Lcom/c/b/a;
    .locals 1

    .prologue
    .line 329
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/c/b/b;->a(IF)V

    .line 330
    return-object p0
.end method

.method public final a(J)Lcom/c/b/a;
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 219
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/b/b;->c:Z

    .line 224
    iput-wide v4, p0, Lcom/c/b/b;->b:J

    .line 225
    return-object p0
.end method

.method public final a(Landroid/view/animation/Interpolator;)Lcom/c/b/a;
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/b/b;->g:Z

    .line 271
    iput-object p1, p0, Lcom/c/b/b;->f:Landroid/view/animation/Interpolator;

    .line 272
    return-object p0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/c/b/b;->b()V

    .line 284
    return-void
.end method

.method public final b(F)Lcom/c/b/a;
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/c/b/b;->a(IF)V

    .line 378
    return-object p0
.end method

.method public final b(J)Lcom/c/b/a;
    .locals 3

    .prologue
    .line 259
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/b/b;->e:Z

    .line 264
    iput-wide p1, p0, Lcom/c/b/b;->d:J

    .line 265
    return-object p0
.end method

.method public final c(F)Lcom/c/b/a;
    .locals 1

    .prologue
    .line 413
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Lcom/c/b/b;->a(IF)V

    .line 414
    return-object p0
.end method
