.class final Lcom/c/b/h;
.super Lcom/c/b/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/c/b/a/a;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Z

.field private e:J

.field private f:Z

.field private g:Landroid/view/animation/Interpolator;

.field private h:Z

.field private i:Lcom/c/a/b;

.field private j:Lcom/c/b/j;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/b/k;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/c/a/a;",
            "Lcom/c/b/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-direct {p0}, Lcom/c/b/a;-><init>()V

    .line 53
    iput-boolean v2, p0, Lcom/c/b/h;->d:Z

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/c/b/h;->e:J

    .line 66
    iput-boolean v2, p0, Lcom/c/b/h;->f:Z

    .line 79
    iput-boolean v2, p0, Lcom/c/b/h;->h:Z

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/b/h;->i:Lcom/c/a/b;

    .line 91
    new-instance v0, Lcom/c/b/j;

    invoke-direct {v0, p0, v2}, Lcom/c/b/j;-><init>(Lcom/c/b/h;B)V

    iput-object v0, p0, Lcom/c/b/h;->j:Lcom/c/b/j;

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/b/h;->k:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Lcom/c/b/i;

    invoke-direct {v0, p0}, Lcom/c/b/i;-><init>(Lcom/c/b/h;)V

    iput-object v0, p0, Lcom/c/b/h;->l:Ljava/lang/Runnable;

    .line 186
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/c/b/h;->m:Ljava/util/HashMap;

    .line 213
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/c/b/h;->b:Ljava/lang/ref/WeakReference;

    .line 214
    invoke-static {p1}, Lcom/c/b/a/a;->a(Landroid/view/View;)Lcom/c/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    .line 215
    return-void
.end method

.method static synthetic a(Lcom/c/b/h;Lcom/c/a/b;)Lcom/c/a/b;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/b/h;->i:Lcom/c/a/b;

    return-object v0
.end method

.method private a(IF)V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 474
    .line 1595
    sparse-switch p1, :sswitch_data_0

    .line 1627
    const/4 v0, 0x0

    move v3, v0

    .line 475
    :goto_0
    sub-float v7, p2, v3

    .line 2502
    iget-object v0, p0, Lcom/c/b/h;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2503
    const/4 v4, 0x0

    .line 2504
    iget-object v0, p0, Lcom/c/b/h;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 2505
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/a;

    .line 2506
    iget-object v1, p0, Lcom/c/b/h;->m:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/b/l;

    .line 3162
    iget v2, v1, Lcom/c/b/l;->a:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/c/b/l;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 3163
    iget-object v2, v1, Lcom/c/b/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v5

    .line 3164
    :goto_1
    if-ge v6, v9, :cond_4

    .line 3165
    iget-object v2, v1, Lcom/c/b/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/c/b/k;

    .line 3166
    iget v2, v2, Lcom/c/b/k;->a:I

    if-ne v2, p1, :cond_3

    .line 3167
    iget-object v2, v1, Lcom/c/b/l;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3168
    iget v2, v1, Lcom/c/b/l;->a:I

    xor-int/lit8 v6, p1, -0x1

    and-int/2addr v2, v6

    iput v2, v1, Lcom/c/b/l;->a:I

    .line 3169
    const/4 v2, 0x1

    .line 2507
    :goto_2
    if-eqz v2, :cond_0

    .line 2512
    iget v1, v1, Lcom/c/b/l;->a:I

    if-nez v1, :cond_0

    .line 2519
    :goto_3
    if-eqz v0, :cond_1

    .line 2520
    invoke-virtual {v0}, Lcom/c/a/a;->b()V

    .line 2524
    :cond_1
    new-instance v0, Lcom/c/b/k;

    invoke-direct {v0, p1, v3, v7}, Lcom/c/b/k;-><init>(IFF)V

    .line 2525
    iget-object v1, p0, Lcom/c/b/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2526
    iget-object v0, p0, Lcom/c/b/h;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2527
    if-eqz v0, :cond_2

    .line 2528
    iget-object v1, p0, Lcom/c/b/h;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2529
    iget-object v1, p0, Lcom/c/b/h;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 477
    :cond_2
    return-void

    .line 1598
    :sswitch_0
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0}, Lcom/c/b/a/a;->g()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1601
    :sswitch_1
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0}, Lcom/c/b/a/a;->h()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1604
    :sswitch_2
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0}, Lcom/c/b/a/a;->b()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1607
    :sswitch_3
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0}, Lcom/c/b/a/a;->c()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1610
    :sswitch_4
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0}, Lcom/c/b/a/a;->d()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1613
    :sswitch_5
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0}, Lcom/c/b/a/a;->e()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1616
    :sswitch_6
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0}, Lcom/c/b/a/a;->f()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1619
    :sswitch_7
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0}, Lcom/c/b/a/a;->i()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1622
    :sswitch_8
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0}, Lcom/c/b/a/a;->j()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 1625
    :sswitch_9
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0}, Lcom/c/b/a/a;->a()F

    move-result v0

    move v3, v0

    goto/16 :goto_0

    .line 3164
    :cond_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto/16 :goto_1

    :cond_4
    move v2, v5

    .line 3173
    goto/16 :goto_2

    :cond_5
    move-object v0, v4

    goto/16 :goto_3

    .line 1595
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

.method static synthetic a(Lcom/c/b/h;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/c/b/h;->b()V

    return-void
.end method

.method static synthetic a(Lcom/c/b/h;IF)V
    .locals 1

    .prologue
    .line 29
    .line 3543
    sparse-switch p1, :sswitch_data_0

    .line 3579
    :goto_0
    return-void

    .line 3546
    :sswitch_0
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0, p2}, Lcom/c/b/a/a;->g(F)V

    goto :goto_0

    .line 3550
    :sswitch_1
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0, p2}, Lcom/c/b/a/a;->h(F)V

    goto :goto_0

    .line 3554
    :sswitch_2
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0, p2}, Lcom/c/b/a/a;->b(F)V

    goto :goto_0

    .line 3558
    :sswitch_3
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0, p2}, Lcom/c/b/a/a;->c(F)V

    goto :goto_0

    .line 3562
    :sswitch_4
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0, p2}, Lcom/c/b/a/a;->d(F)V

    goto :goto_0

    .line 3566
    :sswitch_5
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0, p2}, Lcom/c/b/a/a;->e(F)V

    goto :goto_0

    .line 3570
    :sswitch_6
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0, p2}, Lcom/c/b/a/a;->f(F)V

    goto :goto_0

    .line 3574
    :sswitch_7
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0, p2}, Lcom/c/b/a/a;->i(F)V

    goto :goto_0

    .line 3578
    :sswitch_8
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0, p2}, Lcom/c/b/a/a;->j(F)V

    goto :goto_0

    .line 3582
    :sswitch_9
    iget-object v0, p0, Lcom/c/b/h;->a:Lcom/c/b/a/a;

    invoke-virtual {v0, p2}, Lcom/c/b/a/a;->a(F)V

    goto :goto_0

    .line 3543
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

.method static synthetic b(Lcom/c/b/h;)Lcom/c/a/b;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/c/b/h;->i:Lcom/c/a/b;

    return-object v0
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 436
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Lcom/c/a/w;->a([F)Lcom/c/a/w;

    move-result-object v4

    .line 437
    iget-object v0, p0, Lcom/c/b/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 439
    iget-object v2, p0, Lcom/c/b/h;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 441
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v1

    move v3, v1

    .line 442
    :goto_0
    if-ge v2, v5, :cond_0

    .line 443
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/b/k;

    .line 444
    iget v1, v1, Lcom/c/b/k;->a:I

    or-int/2addr v3, v1

    .line 442
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 446
    :cond_0
    iget-object v1, p0, Lcom/c/b/h;->m:Ljava/util/HashMap;

    new-instance v2, Lcom/c/b/l;

    invoke-direct {v2, v3, v0}, Lcom/c/b/l;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lcom/c/b/h;->j:Lcom/c/b/j;

    invoke-virtual {v4, v0}, Lcom/c/a/w;->a(Lcom/c/a/D;)V

    .line 448
    iget-object v0, p0, Lcom/c/b/h;->j:Lcom/c/b/j;

    invoke-virtual {v4, v0}, Lcom/c/a/w;->a(Lcom/c/a/b;)V

    .line 449
    iget-boolean v0, p0, Lcom/c/b/h;->f:Z

    if-eqz v0, :cond_1

    .line 450
    iget-wide v0, p0, Lcom/c/b/h;->e:J

    invoke-virtual {v4, v0, v1}, Lcom/c/a/w;->b(J)V

    .line 452
    :cond_1
    iget-boolean v0, p0, Lcom/c/b/h;->d:Z

    if-eqz v0, :cond_2

    .line 453
    iget-wide v0, p0, Lcom/c/b/h;->c:J

    invoke-virtual {v4, v0, v1}, Lcom/c/a/w;->a(J)Lcom/c/a/w;

    .line 455
    :cond_2
    iget-boolean v0, p0, Lcom/c/b/h;->h:Z

    if-eqz v0, :cond_3

    .line 456
    iget-object v0, p0, Lcom/c/b/h;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v0}, Lcom/c/a/w;->a(Landroid/view/animation/Interpolator;)V

    .line 458
    :cond_3
    invoke-virtual {v4}, Lcom/c/a/w;->a()V

    .line 459
    return-void
.end method

.method static synthetic c(Lcom/c/b/h;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/c/b/h;->m:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lcom/c/b/h;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/c/b/h;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public final a(F)Lcom/c/b/a;
    .locals 1

    .prologue
    .line 336
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/c/b/h;->a(IF)V

    .line 337
    return-object p0
.end method

.method public final a(J)Lcom/c/b/a;
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 226
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    .line 227
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

    .line 230
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/b/h;->d:Z

    .line 231
    iput-wide v4, p0, Lcom/c/b/h;->c:J

    .line 232
    return-object p0
.end method

.method public final a(Landroid/view/animation/Interpolator;)Lcom/c/b/a;
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/b/h;->h:Z

    .line 278
    iput-object p1, p0, Lcom/c/b/h;->g:Landroid/view/animation/Interpolator;

    .line 279
    return-object p0
.end method

.method public final a()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/c/b/h;->b()V

    .line 291
    return-void
.end method

.method public final b(F)Lcom/c/b/a;
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/c/b/h;->a(IF)V

    .line 385
    return-object p0
.end method

.method public final b(J)Lcom/c/b/a;
    .locals 3

    .prologue
    .line 266
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 267
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

    .line 270
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/b/h;->f:Z

    .line 271
    iput-wide p1, p0, Lcom/c/b/h;->e:J

    .line 272
    return-object p0
.end method

.method public final c(F)Lcom/c/b/a;
    .locals 1

    .prologue
    .line 420
    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Lcom/c/b/h;->a(IF)V

    .line 421
    return-object p0
.end method
