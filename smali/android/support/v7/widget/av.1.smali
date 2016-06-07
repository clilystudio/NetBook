.class public Landroid/support/v7/widget/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nostra13/universalimageloader/a/b/a;


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field final synthetic e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

.field f:[I

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/nostra13/universalimageloader/a/b/a;

.field private final i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 6064
    iget-object v0, p0, Landroid/support/v7/widget/av;->h:Lcom/nostra13/universalimageloader/a/b/a;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/a/b/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3784
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/av;->a:I

    .line 3785
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/av;->b:I

    .line 3786
    iput-boolean v1, p0, Landroid/support/v7/widget/av;->c:Z

    .line 3787
    iput-boolean v1, p0, Landroid/support/v7/widget/av;->d:Z

    .line 3788
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 3796
    iget-boolean v0, p0, Landroid/support/v7/widget/av;->c:Z

    if-eqz v0, :cond_0

    .line 3797
    iget-object v0, p0, Landroid/support/v7/widget/av;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/av;->b:I

    .line 3801
    :goto_0
    return-void

    .line 3799
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/av;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/av;->b:I

    goto :goto_0
.end method

.method a(II)V
    .locals 4

    .prologue
    .line 5446
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 5455
    :cond_0
    return-void

    .line 5449
    :cond_1
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/av;->e(I)V

    .line 5450
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    add-int v1, p1, p2

    iget-object v2, p0, Landroid/support/v7/widget/av;->f:[I

    iget-object v3, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5452
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    iget-object v1, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v1, v1

    sub-int/2addr v1, p2

    iget-object v2, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v2, v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 5458
    iget-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5461
    add-int v2, p1, p2

    .line 5462
    iget-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 5463
    iget-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 5464
    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    if-lt v3, p1, :cond_2

    .line 5467
    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    if-ge v3, v2, :cond_3

    .line 5468
    iget-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5462
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5470
    :cond_3
    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    sub-int/2addr v3, p2

    iput v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    goto :goto_1
.end method

.method a(ILandroid/support/v7/widget/aR;)V
    .locals 2

    .prologue
    .line 5414
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/av;->e(I)V

    .line 5415
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    iget v1, p2, Landroid/support/v7/widget/aR;->d:I

    aput v1, v0, p1

    .line 5416
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 7034
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/av;->b(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 9034
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/av;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 5

    .prologue
    .line 6047
    iget-object v2, p0, Landroid/support/v7/widget/av;->h:Lcom/nostra13/universalimageloader/a/b/a;

    monitor-enter v2

    .line 6048
    const/4 v1, 0x0

    .line 6049
    :try_start_0
    iget-object v0, p0, Landroid/support/v7/widget/av;->h:Lcom/nostra13/universalimageloader/a/b/a;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/a/b/a;->d()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6050
    iget-object v4, p0, Landroid/support/v7/widget/av;->i:Ljava/util/Comparator;

    invoke-interface {v4, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_0

    .line 6055
    :goto_0
    if-eqz v0, :cond_1

    .line 6056
    iget-object v1, p0, Landroid/support/v7/widget/av;->h:Lcom/nostra13/universalimageloader/a/b/a;

    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/a/b/a;->a(Ljava/lang/Object;)V

    .line 6058
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6059
    iget-object v0, p0, Landroid/support/v7/widget/av;->h:Lcom/nostra13/universalimageloader/a/b/a;

    invoke-interface {v0, p1, p2}, Lcom/nostra13/universalimageloader/a/b/a;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 6058
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method b(I)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 4388
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    if-nez v0, :cond_0

    move v0, v1

    .line 4401
    :goto_0
    return v0

    .line 4391
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    move v0, v1

    .line 4392
    goto :goto_0

    .line 4505
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 4508
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/av;->f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 4510
    if-eqz v0, :cond_2

    .line 4511
    iget-object v2, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4514
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 4515
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_6

    .line 4516
    iget-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 4517
    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    if-lt v0, p1, :cond_3

    .line 4522
    :goto_2
    if-eq v2, v1, :cond_4

    .line 4523
    iget-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 4524
    iget-object v3, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4525
    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 4395
    :goto_3
    if-ne v0, v1, :cond_5

    .line 4396
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    iget-object v2, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v2, v2

    invoke-static {v0, p1, v2, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 4397
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v0, v0

    goto :goto_0

    .line 4515
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v0, v1

    .line 4527
    goto :goto_3

    .line 4400
    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/av;->f:[I

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, p1, v3, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 4401
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_2
.end method

.method public synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8034
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/av;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method b()V
    .locals 1

    .prologue
    .line 3791
    iget-boolean v0, p0, Landroid/support/v7/widget/av;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/av;->b:I

    .line 3793
    return-void

    .line 3791
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/av;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v0

    goto :goto_0
.end method

.method b(II)V
    .locals 4

    .prologue
    .line 5476
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 5485
    :cond_0
    return-void

    .line 5479
    :cond_1
    add-int v0, p1, p2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/av;->e(I)V

    .line 5480
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    iget-object v1, p0, Landroid/support/v7/widget/av;->f:[I

    add-int v2, p1, p2

    iget-object v3, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v3, v3

    sub-int/2addr v3, p1

    sub-int/2addr v3, p2

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5482
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    add-int v1, p1, p2

    const/4 v2, -0x1

    invoke-static {v0, p1, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 5488
    iget-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 5491
    iget-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 5492
    iget-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 5493
    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    if-lt v2, p1, :cond_2

    .line 5496
    iget v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    add-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 5491
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 6069
    iget-object v0, p0, Landroid/support/v7/widget/av;->h:Lcom/nostra13/universalimageloader/a/b/a;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/a/b/a;->a(Ljava/lang/Object;)V

    .line 6070
    return-void
.end method

.method c(I)I
    .locals 1

    .prologue
    .line 5406
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 5407
    :cond_0
    const/4 v0, -0x1

    .line 5409
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    aget v0, v0, p1

    goto :goto_0
.end method

.method c()V
    .locals 2

    .prologue
    .line 5439
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    if-eqz v0, :cond_0

    .line 5440
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 5442
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    .line 5443
    return-void
.end method

.method d(I)I
    .locals 1

    .prologue
    .line 5419
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v0, v0

    .line 5420
    :goto_0
    if-gt v0, p1, :cond_0

    .line 5421
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5423
    :cond_0
    return v0
.end method

.method public d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6079
    iget-object v0, p0, Landroid/support/v7/widget/av;->h:Lcom/nostra13/universalimageloader/a/b/a;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/a/b/a;->d()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10021
    const/4 v0, 0x0

    return-object v0
.end method

.method e(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 5427
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    if-nez v0, :cond_1

    .line 5428
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    .line 5429
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([II)V

    .line 5436
    :cond_0
    :goto_0
    return-void

    .line 5430
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 5431
    iget-object v0, p0, Landroid/support/v7/widget/av;->f:[I

    .line 5432
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/av;->d(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v7/widget/av;->f:[I

    .line 5433
    iget-object v1, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5434
    iget-object v1, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v0, v0

    iget-object v2, p0, Landroid/support/v7/widget/av;->f:[I

    array-length v2, v2

    invoke-static {v1, v0, v2, v3}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_0
.end method

.method public f(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 5554
    iget-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    if-nez v0, :cond_1

    move-object v0, v1

    .line 5563
    :cond_0
    :goto_0
    return-object v0

    .line 5557
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    .line 5558
    iget-object v0, p0, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    .line 5559
    iget v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    if-eq v3, p1, :cond_0

    .line 5557
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 5563
    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 10029
    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10037
    const/4 v0, 0x0

    return-object v0
.end method
