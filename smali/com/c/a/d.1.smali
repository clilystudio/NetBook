.class public final Lcom/c/a/d;
.super Lcom/c/a/a;
.source "SourceFile"


# instance fields
.field b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/c/a/a;",
            "Lcom/c/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/j;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/c/a/f;

.field private i:Z

.field private j:J

.field private k:Lcom/c/a/w;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/c/a/a;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/d;->c:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/c/a/d;->d:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/d;->g:Z

    .line 89
    iput-object v2, p0, Lcom/c/a/d;->h:Lcom/c/a/f;

    .line 98
    iput-boolean v1, p0, Lcom/c/a/d;->b:Z

    .line 104
    iput-boolean v1, p0, Lcom/c/a/d;->i:Z

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/c/a/d;->j:J

    .line 110
    iput-object v2, p0, Lcom/c/a/d;->k:Lcom/c/a/w;

    .line 1012
    return-void
.end method

.method static synthetic a(Lcom/c/a/d;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/c/a/d;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/c/a/d;Z)Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/d;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/c/a/d;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/c/a/d;->d:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic c(Lcom/c/a/d;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/c/a/d;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f()Lcom/c/a/d;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 551
    invoke-super {p0}, Lcom/c/a/a;->e()Lcom/c/a/a;

    move-result-object v0

    check-cast v0, Lcom/c/a/d;

    .line 560
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/c/a/d;->g:Z

    .line 561
    iput-boolean v2, v0, Lcom/c/a/d;->b:Z

    .line 562
    iput-boolean v2, v0, Lcom/c/a/d;->i:Z

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/c/a/d;->c:Ljava/util/ArrayList;

    .line 564
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/c/a/d;->d:Ljava/util/HashMap;

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    .line 571
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 572
    iget-object v1, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/j;

    .line 573
    invoke-virtual {v1}, Lcom/c/a/j;->a()Lcom/c/a/j;

    move-result-object v2

    .line 574
    invoke-virtual {v4, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v1, v0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v1, v0, Lcom/c/a/d;->d:Ljava/util/HashMap;

    iget-object v6, v2, Lcom/c/a/j;->a:Lcom/c/a/a;

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iput-object v3, v2, Lcom/c/a/j;->b:Ljava/util/ArrayList;

    .line 579
    iput-object v3, v2, Lcom/c/a/j;->c:Ljava/util/ArrayList;

    .line 580
    iput-object v3, v2, Lcom/c/a/j;->e:Ljava/util/ArrayList;

    .line 581
    iput-object v3, v2, Lcom/c/a/j;->d:Ljava/util/ArrayList;

    .line 584
    iget-object v1, v2, Lcom/c/a/j;->a:Lcom/c/a/a;

    .line 4174
    iget-object v6, v1, Lcom/c/a/a;->a:Ljava/util/ArrayList;

    .line 585
    if-eqz v6, :cond_0

    .line 587
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v3

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    .line 588
    instance-of v8, v1, Lcom/c/a/f;

    if-eqz v8, :cond_1

    .line 589
    if-nez v2, :cond_2

    .line 590
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 592
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 595
    :cond_3
    if-eqz v2, :cond_0

    .line 596
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    .line 597
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 604
    :cond_4
    iget-object v1, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/j;

    .line 605
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/c/a/j;

    .line 606
    iget-object v3, v1, Lcom/c/a/j;->b:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 607
    iget-object v1, v1, Lcom/c/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/h;

    .line 608
    iget-object v3, v1, Lcom/c/a/h;->a:Lcom/c/a/j;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/c/a/j;

    .line 609
    new-instance v7, Lcom/c/a/h;

    iget v1, v1, Lcom/c/a/h;->b:I

    invoke-direct {v7, v3, v1}, Lcom/c/a/h;-><init>(Lcom/c/a/j;I)V

    .line 611
    invoke-virtual {v2, v7}, Lcom/c/a/j;->a(Lcom/c/a/h;)V

    goto :goto_2

    .line 616
    :cond_6
    return-object v0
.end method

.method private g()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 785
    iget-boolean v0, p0, Lcom/c/a/d;->g:Z

    if-eqz v0, :cond_7

    .line 786
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 787
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 788
    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v3

    .line 789
    :goto_0
    if-ge v1, v2, :cond_2

    .line 790
    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/j;

    .line 791
    iget-object v4, v0, Lcom/c/a/j;->b:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/c/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 792
    :cond_0
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 795
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 796
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 797
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v4, v3

    .line 798
    :goto_2
    if-ge v4, v7, :cond_5

    .line 799
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/j;

    .line 800
    iget-object v1, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    iget-object v1, v0, Lcom/c/a/j;->e:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 802
    iget-object v1, v0, Lcom/c/a/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v2, v3

    .line 803
    :goto_3
    if-ge v2, v8, :cond_4

    .line 804
    iget-object v1, v0, Lcom/c/a/j;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/j;

    .line 805
    iget-object v9, v1, Lcom/c/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 806
    iget-object v9, v1, Lcom/c/a/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 807
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 803
    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 798
    :cond_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 812
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 813
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 814
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 816
    :cond_6
    iput-boolean v3, p0, Lcom/c/a/d;->g:Z

    .line 817
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 818
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_7
    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v4, v3

    .line 826
    :goto_4
    if-ge v4, v5, :cond_b

    .line 827
    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/j;

    .line 828
    iget-object v1, v0, Lcom/c/a/j;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/c/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    .line 829
    iget-object v1, v0, Lcom/c/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v2, v3

    .line 830
    :goto_5
    if-ge v2, v6, :cond_a

    .line 831
    iget-object v1, v0, Lcom/c/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/h;

    .line 832
    iget-object v7, v0, Lcom/c/a/j;->d:Ljava/util/ArrayList;

    if-nez v7, :cond_8

    .line 833
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/c/a/j;->d:Ljava/util/ArrayList;

    .line 835
    :cond_8
    iget-object v7, v0, Lcom/c/a/j;->d:Ljava/util/ArrayList;

    iget-object v8, v1, Lcom/c/a/h;->a:Lcom/c/a/j;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 836
    iget-object v7, v0, Lcom/c/a/j;->d:Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/c/a/h;->a:Lcom/c/a/j;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    :cond_9
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5

    .line 842
    :cond_a
    iput-boolean v3, v0, Lcom/c/a/j;->f:Z

    .line 826
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    .line 845
    :cond_b
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    .line 451
    iput-boolean v2, p0, Lcom/c/a/d;->b:Z

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/d;->i:Z

    .line 456
    invoke-direct {p0}, Lcom/c/a/d;->g()V

    .line 458
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v2

    .line 459
    :goto_0
    if-ge v3, v5, :cond_3

    .line 460
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/j;

    .line 462
    iget-object v1, v0, Lcom/c/a/j;->a:Lcom/c/a/a;

    .line 3174
    iget-object v1, v1, Lcom/c/a/a;->a:Ljava/util/ArrayList;

    .line 463
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 464
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 467
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    .line 468
    instance-of v6, v1, Lcom/c/a/i;

    if-nez v6, :cond_1

    instance-of v6, v1, Lcom/c/a/f;

    if-eqz v6, :cond_0

    .line 470
    :cond_1
    iget-object v6, v0, Lcom/c/a/j;->a:Lcom/c/a/a;

    invoke-virtual {v6, v1}, Lcom/c/a/a;->b(Lcom/c/a/b;)V

    goto :goto_1

    .line 459
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 480
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 481
    :goto_2
    if-ge v4, v5, :cond_8

    .line 482
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/j;

    .line 483
    iget-object v1, p0, Lcom/c/a/d;->h:Lcom/c/a/f;

    if-nez v1, :cond_4

    .line 484
    new-instance v1, Lcom/c/a/f;

    invoke-direct {v1, p0, p0}, Lcom/c/a/f;-><init>(Lcom/c/a/d;Lcom/c/a/d;)V

    iput-object v1, p0, Lcom/c/a/d;->h:Lcom/c/a/f;

    .line 486
    :cond_4
    iget-object v1, v0, Lcom/c/a/j;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/c/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    .line 487
    :cond_5
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :goto_3
    iget-object v0, v0, Lcom/c/a/j;->a:Lcom/c/a/a;

    iget-object v1, p0, Lcom/c/a/d;->h:Lcom/c/a/f;

    invoke-virtual {v0, v1}, Lcom/c/a/a;->a(Lcom/c/a/b;)V

    .line 481
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2

    .line 489
    :cond_6
    iget-object v1, v0, Lcom/c/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v3, v2

    .line 490
    :goto_4
    if-ge v3, v7, :cond_7

    .line 491
    iget-object v1, v0, Lcom/c/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/h;

    .line 492
    iget-object v8, v1, Lcom/c/a/h;->a:Lcom/c/a/j;

    iget-object v8, v8, Lcom/c/a/j;->a:Lcom/c/a/a;

    new-instance v9, Lcom/c/a/i;

    iget v1, v1, Lcom/c/a/h;->b:I

    invoke-direct {v9, p0, v0, v1}, Lcom/c/a/i;-><init>(Lcom/c/a/d;Lcom/c/a/j;I)V

    invoke-virtual {v8, v9}, Lcom/c/a/a;->a(Lcom/c/a/b;)V

    .line 490
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 495
    :cond_7
    iget-object v1, v0, Lcom/c/a/j;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/c/a/j;->c:Ljava/util/ArrayList;

    goto :goto_3

    .line 500
    :cond_8
    cmp-long v0, v10, v10

    if-gtz v0, :cond_9

    .line 501
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/j;

    .line 502
    iget-object v3, v0, Lcom/c/a/j;->a:Lcom/c/a/a;

    invoke-virtual {v3}, Lcom/c/a/a;->a()V

    .line 503
    iget-object v3, p0, Lcom/c/a/d;->c:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/c/a/j;->a:Lcom/c/a/a;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 506
    :cond_9
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/c/a/w;->a([F)Lcom/c/a/w;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/d;->k:Lcom/c/a/w;

    .line 507
    iget-object v0, p0, Lcom/c/a/d;->k:Lcom/c/a/w;

    invoke-virtual {v0, v10, v11}, Lcom/c/a/w;->a(J)Lcom/c/a/w;

    .line 508
    iget-object v0, p0, Lcom/c/a/d;->k:Lcom/c/a/w;

    new-instance v1, Lcom/c/a/e;

    invoke-direct {v1, p0, v6}, Lcom/c/a/e;-><init>(Lcom/c/a/d;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/c/a/w;->a(Lcom/c/a/b;)V

    .line 524
    iget-object v0, p0, Lcom/c/a/d;->k:Lcom/c/a/w;

    invoke-virtual {v0}, Lcom/c/a/w;->a()V

    .line 526
    :cond_a
    iget-object v0, p0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 527
    iget-object v0, p0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 530
    :goto_6
    if-ge v3, v4, :cond_b

    .line 531
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    invoke-interface {v1, p0}, Lcom/c/a/b;->a(Lcom/c/a/a;)V

    .line 530
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    .line 534
    :cond_b
    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    cmp-long v0, v10, v10

    if-nez v0, :cond_c

    .line 537
    iput-boolean v2, p0, Lcom/c/a/d;->i:Z

    .line 538
    iget-object v0, p0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 539
    iget-object v0, p0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 542
    :goto_7
    if-ge v2, v3, :cond_c

    .line 543
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    invoke-interface {v1, p0}, Lcom/c/a/b;->b(Lcom/c/a/a;)V

    .line 542
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    .line 547
    :cond_c
    return-void

    .line 506
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final varargs a([Lcom/c/a/a;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 161
    iput-boolean v3, p0, Lcom/c/a/d;->g:Z

    .line 165
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v1, v0, :cond_1

    .line 166
    aget-object v2, p1, v1

    .line 1268
    if-eqz v2, :cond_0

    .line 1269
    iput-boolean v3, p0, Lcom/c/a/d;->g:Z

    .line 1270
    new-instance v0, Lcom/c/a/g;

    invoke-direct {v0, p0, v2}, Lcom/c/a/g;-><init>(Lcom/c/a/d;Lcom/c/a/a;)V

    .line 166
    :goto_1
    add-int/lit8 v2, v1, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Lcom/c/a/g;->a(Lcom/c/a/a;)Lcom/c/a/g;

    .line 165
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1272
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 170
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/d;->b:Z

    .line 1367
    iget-boolean v0, p0, Lcom/c/a/d;->i:Z

    .line 285
    if-eqz v0, :cond_4

    .line 286
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 288
    iget-object v0, p0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/c/a/b;

    .line 290
    invoke-interface {v1, p0}, Lcom/c/a/b;->c(Lcom/c/a/a;)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 293
    :goto_1
    iget-object v0, p0, Lcom/c/a/d;->k:Lcom/c/a/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/c/a/d;->k:Lcom/c/a/w;

    invoke-virtual {v0}, Lcom/c/a/w;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/c/a/d;->k:Lcom/c/a/w;

    invoke-virtual {v0}, Lcom/c/a/w;->b()V

    .line 302
    :cond_1
    if-eqz v1, :cond_3

    .line 303
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/b;

    .line 304
    invoke-interface {v0, p0}, Lcom/c/a/b;->b(Lcom/c/a/a;)V

    goto :goto_2

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 298
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/j;

    .line 299
    iget-object v0, v0, Lcom/c/a/j;->a:Lcom/c/a/a;

    invoke-virtual {v0}, Lcom/c/a/a;->b()V

    goto :goto_3

    .line 307
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/d;->i:Z

    .line 309
    :cond_4
    return-void

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/c/a/d;->b:Z

    .line 2367
    iget-boolean v0, p0, Lcom/c/a/d;->i:Z

    .line 320
    if-eqz v0, :cond_5

    .line 321
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/c/a/d;->g()V

    .line 324
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/j;

    .line 325
    iget-object v2, p0, Lcom/c/a/d;->h:Lcom/c/a/f;

    if-nez v2, :cond_0

    .line 326
    new-instance v2, Lcom/c/a/f;

    invoke-direct {v2, p0, p0}, Lcom/c/a/f;-><init>(Lcom/c/a/d;Lcom/c/a/d;)V

    iput-object v2, p0, Lcom/c/a/d;->h:Lcom/c/a/f;

    .line 328
    :cond_0
    iget-object v0, v0, Lcom/c/a/j;->a:Lcom/c/a/a;

    iget-object v2, p0, Lcom/c/a/d;->h:Lcom/c/a/f;

    invoke-virtual {v0, v2}, Lcom/c/a/a;->a(Lcom/c/a/b;)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/c/a/d;->k:Lcom/c/a/w;

    if-eqz v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/c/a/d;->k:Lcom/c/a/w;

    invoke-virtual {v0}, Lcom/c/a/w;->b()V

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/c/a/d;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/j;

    .line 336
    iget-object v0, v0, Lcom/c/a/j;->a:Lcom/c/a/a;

    invoke-virtual {v0}, Lcom/c/a/a;->c()V

    goto :goto_1

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 340
    iget-object v0, p0, Lcom/c/a/d;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 342
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/b;

    .line 343
    invoke-interface {v0, p0}, Lcom/c/a/b;->b(Lcom/c/a/a;)V

    goto :goto_2

    .line 346
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/d;->i:Z

    .line 348
    :cond_5
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/c/a/d;->f()Lcom/c/a/d;

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/c/a/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/j;

    .line 358
    iget-object v0, v0, Lcom/c/a/j;->a:Lcom/c/a/a;

    invoke-virtual {v0}, Lcom/c/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    const/4 v0, 0x1

    .line 362
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic e()Lcom/c/a/a;
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/c/a/d;->f()Lcom/c/a/d;

    move-result-object v0

    return-object v0
.end method
