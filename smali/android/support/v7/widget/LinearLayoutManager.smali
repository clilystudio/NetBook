.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/ao;
.source "SourceFile"


# instance fields
.field a:Landroid/support/v7/widget/Z;

.field private d:I

.field private e:Landroid/support/v7/widget/J;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:I

.field private l:I

.field private m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field private n:Landroid/support/v7/widget/H;


# direct methods
.method private constructor <init>(IZ)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Landroid/support/v7/widget/ao;-><init>()V

    .line 94
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    .line 101
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    .line 108
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:Z

    .line 114
    iput-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    .line 126
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 130
    iput-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 136
    new-instance v0, Landroid/support/v7/widget/H;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/H;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/H;

    .line 9324
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 9325
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-eq v3, v0, :cond_0

    .line 9328
    iput v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    .line 9329
    iput-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    .line 9330
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()V

    .line 9372
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Ljava/lang/String;)V

    .line 9373
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eq v1, v0, :cond_1

    .line 9376
    iput-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    .line 9377
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()V

    .line 156
    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(IZ)V

    .line 145
    return-void
.end method

.method private a(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;Z)I
    .locals 3

    .prologue
    .line 842
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v0

    sub-int/2addr v0, p1

    .line 844
    if-lez v0, :cond_1

    .line 845
    neg-int v0, v0

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I

    move-result v0

    neg-int v0, v0

    .line 850
    add-int v1, p1, v0

    .line 851
    if-eqz p4, :cond_0

    .line 853
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->d()I

    move-result v2

    sub-int v1, v2, v1

    .line 854
    if-lez v1, :cond_0

    .line 855
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Z;->a(I)V

    .line 856
    add-int/2addr v0, v1

    .line 859
    :cond_0
    :goto_0
    return v0

    .line 847
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/J;Landroid/support/v7/widget/aw;Z)I
    .locals 12

    .prologue
    .line 1315
    iget v6, p2, Landroid/support/v7/widget/J;->c:I

    .line 1316
    iget v0, p2, Landroid/support/v7/widget/J;->g:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 1318
    iget v0, p2, Landroid/support/v7/widget/J;->c:I

    if-gez v0, :cond_0

    .line 1319
    iget v0, p2, Landroid/support/v7/widget/J;->g:I

    iget v1, p2, Landroid/support/v7/widget/J;->c:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/J;->g:I

    .line 1321
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/J;)V

    .line 1323
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/J;->c:I

    iget v1, p2, Landroid/support/v7/widget/J;->h:I

    add-int/2addr v0, v1

    .line 1324
    new-instance v7, Landroid/support/v7/widget/I;

    invoke-direct {v7}, Landroid/support/v7/widget/I;-><init>()V

    move v5, v0

    .line 1325
    :goto_0
    if-lez v5, :cond_5

    .line 18942
    iget v0, p2, Landroid/support/v7/widget/J;->d:I

    if-ltz v0, :cond_6

    iget v0, p2, Landroid/support/v7/widget/J;->d:I

    invoke-virtual {p3}, Landroid/support/v7/widget/aw;->d()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v0, 0x1

    .line 1325
    :goto_1
    if-eqz v0, :cond_5

    .line 19188
    const/4 v0, 0x0

    iput v0, v7, Landroid/support/v7/widget/I;->a:I

    .line 19189
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/support/v7/widget/I;->b:Z

    .line 19190
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/support/v7/widget/I;->c:Z

    .line 19191
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/support/v7/widget/I;->d:Z

    .line 19364
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/J;->a(Landroid/support/v7/widget/ar;)Landroid/view/View;

    move-result-object v8

    .line 19365
    if-nez v8, :cond_7

    .line 19371
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/support/v7/widget/I;->b:Z

    .line 1328
    :goto_2
    iget-boolean v0, v7, Landroid/support/v7/widget/I;->b:Z

    if-nez v0, :cond_5

    .line 1331
    iget v0, p2, Landroid/support/v7/widget/J;->b:I

    iget v1, v7, Landroid/support/v7/widget/I;->a:I

    iget v2, p2, Landroid/support/v7/widget/J;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/J;->b:I

    .line 1338
    iget-boolean v0, v7, Landroid/support/v7/widget/I;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget-object v0, v0, Landroid/support/v7/widget/J;->j:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1340
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/J;->c:I

    iget v1, v7, Landroid/support/v7/widget/I;->a:I

    sub-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/J;->c:I

    .line 1342
    iget v0, v7, Landroid/support/v7/widget/I;->a:I

    sub-int v0, v5, v0

    .line 1345
    :goto_3
    iget v1, p2, Landroid/support/v7/widget/J;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_4

    .line 1346
    iget v1, p2, Landroid/support/v7/widget/J;->g:I

    iget v2, v7, Landroid/support/v7/widget/I;->a:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/support/v7/widget/J;->g:I

    .line 1347
    iget v1, p2, Landroid/support/v7/widget/J;->c:I

    if-gez v1, :cond_3

    .line 1348
    iget v1, p2, Landroid/support/v7/widget/J;->g:I

    iget v2, p2, Landroid/support/v7/widget/J;->c:I

    add-int/2addr v1, v2

    iput v1, p2, Landroid/support/v7/widget/J;->g:I

    .line 1350
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/J;)V

    .line 1352
    :cond_4
    if-eqz p4, :cond_13

    iget-boolean v1, v7, Landroid/support/v7/widget/I;->d:Z

    if-eqz v1, :cond_13

    .line 1359
    :cond_5
    iget v0, p2, Landroid/support/v7/widget/J;->c:I

    sub-int v0, v6, v0

    return v0

    .line 18942
    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    .line 19374
    :cond_7
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    .line 19375
    iget-object v1, p2, Landroid/support/v7/widget/J;->j:Ljava/util/List;

    if-nez v1, :cond_c

    .line 19376
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    iget v1, p2, Landroid/support/v7/widget/J;->f:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_a

    const/4 v1, 0x1

    :goto_4
    if-ne v2, v1, :cond_b

    .line 19378
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;)V

    .line 20685
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ap;

    .line 20687
    iget-object v2, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 20688
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x0

    .line 20689
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x0

    .line 20691
    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->i()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->k()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->m()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v1, Landroid/support/v7/widget/ap;->leftMargin:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/support/v7/widget/ap;->rightMargin:I

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    iget v9, v1, Landroid/support/v7/widget/ap;->width:I

    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->c()Z

    move-result v10

    invoke-static {v4, v3, v9, v10}, Landroid/support/v7/widget/ao;->a(IIIZ)I

    move-result v3

    .line 20695
    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->j()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->l()I

    move-result v9

    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->n()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v1, Landroid/support/v7/widget/ap;->topMargin:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/support/v7/widget/ap;->bottomMargin:I

    add-int/2addr v9, v10

    add-int/2addr v2, v9

    iget v1, v1, Landroid/support/v7/widget/ap;->height:I

    invoke-virtual {p0}, Landroid/support/v7/widget/ao;->d()Z

    move-result v9

    invoke-static {v4, v2, v1, v9}, Landroid/support/v7/widget/ao;->a(IIIZ)I

    move-result v1

    .line 20699
    invoke-virtual {v8, v3, v1}, Landroid/view/View;->measure(II)V

    .line 19391
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/Z;->c(Landroid/view/View;)I

    move-result v1

    iput v1, v7, Landroid/support/v7/widget/I;->a:I

    .line 19393
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 19394
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 19395
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->i()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->m()I

    move-result v2

    sub-int/2addr v1, v2

    .line 19396
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2, v8}, Landroid/support/v7/widget/Z;->d(Landroid/view/View;)I

    move-result v2

    sub-int v2, v1, v2

    .line 19401
    :goto_6
    iget v3, p2, Landroid/support/v7/widget/J;->f:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_10

    .line 19402
    iget v4, p2, Landroid/support/v7/widget/J;->b:I

    .line 19403
    iget v3, p2, Landroid/support/v7/widget/J;->b:I

    iget v9, v7, Landroid/support/v7/widget/I;->a:I

    sub-int/2addr v3, v9

    move v11, v3

    move v3, v2

    move v2, v11

    .line 19422
    :goto_7
    iget v9, v0, Landroid/support/v7/widget/ap;->leftMargin:I

    add-int/2addr v3, v9

    iget v9, v0, Landroid/support/v7/widget/ap;->topMargin:I

    add-int/2addr v2, v9

    iget v9, v0, Landroid/support/v7/widget/ap;->rightMargin:I

    sub-int/2addr v1, v9

    iget v9, v0, Landroid/support/v7/widget/ap;->bottomMargin:I

    sub-int/2addr v4, v9

    invoke-static {v8, v3, v2, v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;IIII)V

    .line 21452
    iget-object v1, v0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v1}, Landroid/support/v7/widget/ay;->m()Z

    move-result v1

    .line 19430
    if-nez v1, :cond_8

    .line 21463
    iget-object v0, v0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->k()Z

    move-result v0

    .line 19430
    if-eqz v0, :cond_9

    .line 19431
    :cond_8
    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/support/v7/widget/I;->c:Z

    .line 19433
    :cond_9
    invoke-virtual {v8}, Landroid/view/View;->isFocusable()Z

    move-result v0

    iput-boolean v0, v7, Landroid/support/v7/widget/I;->d:Z

    goto/16 :goto_2

    .line 19376
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_4

    .line 19380
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;I)V

    goto/16 :goto_5

    .line 19383
    :cond_c
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    iget v1, p2, Landroid/support/v7/widget/J;->f:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_d

    const/4 v1, 0x1

    :goto_8
    if-ne v2, v1, :cond_e

    .line 19996
    const/4 v1, -0x1

    invoke-virtual {p0, v8, v1}, Landroid/support/v7/widget/ao;->a(Landroid/view/View;I)V

    goto/16 :goto_5

    .line 19383
    :cond_d
    const/4 v1, 0x0

    goto :goto_8

    .line 19387
    :cond_e
    const/4 v1, 0x0

    invoke-virtual {p0, v8, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;I)V

    goto/16 :goto_5

    .line 19398
    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->k()I

    move-result v2

    .line 19399
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/Z;->d(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_6

    .line 19405
    :cond_10
    iget v3, p2, Landroid/support/v7/widget/J;->b:I

    .line 19406
    iget v4, p2, Landroid/support/v7/widget/J;->b:I

    iget v9, v7, Landroid/support/v7/widget/I;->a:I

    add-int/2addr v4, v9

    move v11, v3

    move v3, v2

    move v2, v11

    goto :goto_7

    .line 19409
    :cond_11
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->l()I

    move-result v2

    .line 19410
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1, v8}, Landroid/support/v7/widget/Z;->d(Landroid/view/View;)I

    move-result v1

    add-int v4, v2, v1

    .line 19412
    iget v1, p2, Landroid/support/v7/widget/J;->f:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_12

    .line 19413
    iget v1, p2, Landroid/support/v7/widget/J;->b:I

    .line 19414
    iget v3, p2, Landroid/support/v7/widget/J;->b:I

    iget v9, v7, Landroid/support/v7/widget/I;->a:I

    sub-int/2addr v3, v9

    goto :goto_7

    .line 19416
    :cond_12
    iget v3, p2, Landroid/support/v7/widget/J;->b:I

    .line 19417
    iget v1, p2, Landroid/support/v7/widget/J;->b:I

    iget v9, v7, Landroid/support/v7/widget/I;->a:I

    add-int/2addr v1, v9

    goto/16 :goto_7

    :cond_13
    move v5, v0

    goto/16 :goto_0

    :cond_14
    move v0, v5

    goto/16 :goto_3
.end method

.method private a(III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1574
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 1577
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v5

    .line 1578
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v6

    .line 1579
    if-le p2, p1, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 1580
    :goto_1
    if-eq p1, p2, :cond_3

    .line 1581
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v3

    .line 1582
    invoke-static {v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v0

    .line 1583
    if-ltz v0, :cond_6

    if-ge v0, p3, :cond_6

    .line 1584
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    .line 22452
    iget-object v0, v0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->m()Z

    move-result v0

    .line 1584
    if-eqz v0, :cond_1

    .line 1585
    if-nez v4, :cond_6

    move-object v0, v2

    .line 1580
    :goto_2
    add-int/2addr p1, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 1579
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 1588
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 1590
    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    .line 1591
    goto :goto_2

    .line 1598
    :cond_3
    if-eqz v2, :cond_5

    move-object v3, v2

    :cond_4
    :goto_3
    return-object v3

    :cond_5
    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method private a(IIZZ)Landroid/view/View;
    .locals 7

    .prologue
    .line 1683
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 1684
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v3

    .line 1685
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v4

    .line 1686
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 1687
    :goto_0
    const/4 v2, 0x0

    .line 1688
    :goto_1
    if-eq p1, p2, :cond_3

    .line 1689
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v1

    .line 1690
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v5

    .line 1691
    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v6, v1}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v6

    .line 1692
    if-ge v5, v4, :cond_4

    if-le v6, v3, :cond_4

    .line 1693
    if-eqz p3, :cond_0

    .line 1694
    if-lt v5, v3, :cond_2

    if-gt v6, v4, :cond_2

    .line 1704
    :cond_0
    :goto_2
    return-object v1

    .line 1686
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1696
    :cond_2
    if-eqz p4, :cond_4

    if-nez v2, :cond_4

    .line 1688
    :goto_3
    add-int/2addr p1, v0

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    .line 1704
    goto :goto_2

    :cond_4
    move-object v1, v2

    goto :goto_3
.end method

.method private a(ZZ)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1502
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    .line 1503
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1506
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private a(IIZLandroid/support/v7/widget/aw;)V
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x1

    .line 1112
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    invoke-direct {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/aw;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/J;->h:I

    .line 1113
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput p1, v2, Landroid/support/v7/widget/J;->f:I

    .line 1115
    if-ne p1, v1, :cond_2

    .line 1116
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v3, v2, Landroid/support/v7/widget/J;->h:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v4}, Landroid/support/v7/widget/Z;->g()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/J;->h:I

    .line 1118
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v2

    .line 1120
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v4, :cond_1

    :goto_0
    iput v0, v3, Landroid/support/v7/widget/J;->e:I

    .line 1122
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v3, v3, Landroid/support/v7/widget/J;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/J;->d:I

    .line 1123
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/J;->b:I

    .line 1125
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1}, Landroid/support/v7/widget/Z;->d()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1138
    :goto_1
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput p2, v1, Landroid/support/v7/widget/J;->c:I

    .line 1139
    if-eqz p3, :cond_0

    .line 1140
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v2, v1, Landroid/support/v7/widget/J;->c:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/support/v7/widget/J;->c:I

    .line 1142
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput v0, v1, Landroid/support/v7/widget/J;->g:I

    .line 1143
    return-void

    :cond_1
    move v0, v1

    .line 1120
    goto :goto_0

    .line 1129
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v2

    .line 1130
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v4, v3, Landroid/support/v7/widget/J;->h:I

    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v5}, Landroid/support/v7/widget/Z;->c()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/J;->h:I

    .line 1131
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v4, :cond_3

    :goto_2
    iput v1, v3, Landroid/support/v7/widget/J;->e:I

    .line 1133
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    invoke-static {v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v3, v3, Landroid/support/v7/widget/J;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Landroid/support/v7/widget/J;->d:I

    .line 1134
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/J;->b:I

    .line 1135
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1}, Landroid/support/v7/widget/Z;->c()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v1, v0

    .line 1131
    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/H;)V
    .locals 2

    .prologue
    .line 888
    iget v0, p1, Landroid/support/v7/widget/H;->a:I

    iget v1, p1, Landroid/support/v7/widget/H;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    .line 889
    return-void
.end method

.method private a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/J;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1291
    iget-boolean v0, p2, Landroid/support/v7/widget/J;->a:Z

    if-nez v0, :cond_1

    .line 18234
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/J;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_5

    .line 1295
    iget v0, p2, Landroid/support/v7/widget/J;->g:I

    .line 17250
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v2

    .line 17251
    if-ltz v0, :cond_0

    .line 17258
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v3}, Landroid/support/v7/widget/Z;->e()I

    move-result v3

    sub-int/2addr v3, v0

    .line 17259
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 17260
    :goto_1
    if-ge v0, v2, :cond_0

    .line 17261
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v4

    .line 17262
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 17263
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/ar;II)V

    goto :goto_0

    .line 17260
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 17268
    :cond_3
    add-int/lit8 v0, v2, -0x1

    :goto_2
    if-ltz v0, :cond_0

    .line 17269
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v1

    .line 17270
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v1

    if-ge v1, v3, :cond_4

    .line 17271
    add-int/lit8 v1, v2, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/ar;II)V

    goto :goto_0

    .line 17268
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1297
    :cond_5
    iget v2, p2, Landroid/support/v7/widget/J;->g:I

    .line 18211
    if-ltz v2, :cond_0

    .line 18220
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v3

    .line 18221
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_7

    .line 18222
    add-int/lit8 v0, v3, -0x1

    :goto_3
    if-ltz v0, :cond_0

    .line 18223
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v1

    .line 18224
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v1

    if-le v1, v2, :cond_6

    .line 18225
    add-int/lit8 v1, v3, -0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/ar;II)V

    goto :goto_0

    .line 18222
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    move v0, v1

    .line 18230
    :goto_4
    if-ge v0, v3, :cond_0

    .line 18231
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v4

    .line 18232
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v5, v4}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v4

    if-le v4, v2, :cond_8

    .line 18233
    invoke-direct {p0, p1, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/ar;II)V

    goto :goto_0

    .line 18230
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private b(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;Z)I
    .locals 4

    .prologue
    .line 867
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v0

    sub-int v0, p1, v0

    .line 869
    if-lez v0, :cond_1

    .line 871
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I

    move-result v0

    neg-int v0, v0

    .line 875
    add-int v1, p1, v0

    .line 876
    if-eqz p4, :cond_0

    .line 878
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->c()I

    move-result v2

    sub-int/2addr v1, v2

    .line 879
    if-lez v1, :cond_0

    .line 880
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    neg-int v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/Z;->a(I)V

    .line 881
    sub-int/2addr v0, v1

    .line 884
    :cond_0
    :goto_0
    return v0

    .line 873
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(ZZ)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1520
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    .line 1521
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v1

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 1524
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/H;)V
    .locals 2

    .prologue
    .line 902
    iget v0, p1, Landroid/support/v7/widget/H;->a:I

    iget v1, p1, Landroid/support/v7/widget/H;->b:I

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 903
    return-void
.end method

.method private b(Landroid/support/v7/widget/ar;II)V
    .locals 1

    .prologue
    .line 1185
    if-ne p2, p3, :cond_1

    .line 1200
    :cond_0
    return-void

    .line 1191
    :cond_1
    if-le p3, p2, :cond_2

    .line 1192
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_0

    .line 1193
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/ar;)V

    .line 1192
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1196
    :cond_2
    :goto_1
    if-le p2, p3, :cond_0

    .line 1197
    invoke-virtual {p0, p2, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/ar;)V

    .line 1196
    add-int/lit8 p2, p2, -0x1

    goto :goto_1
.end method

.method private d(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1146
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v2

    .line 1168
    :goto_0
    return p1

    .line 1149
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput-boolean v1, v0, Landroid/support/v7/widget/J;->a:Z

    .line 1150
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 1151
    if-lez p1, :cond_2

    move v0, v1

    .line 1152
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1153
    invoke-direct {p0, v0, v3, v1, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/aw;)V

    .line 1154
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v1, v1, Landroid/support/v7/widget/J;->g:I

    .line 1155
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    invoke-direct {p0, p2, v4, p3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/J;Landroid/support/v7/widget/aw;Z)I

    move-result v4

    add-int/2addr v1, v4

    .line 1156
    if-gez v1, :cond_3

    move p1, v2

    .line 1160
    goto :goto_0

    .line 1151
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 1162
    :cond_3
    if-le v3, v1, :cond_4

    mul-int p1, v0, v1

    .line 1163
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Z;->a(I)V

    .line 1167
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput p1, v0, Landroid/support/v7/widget/J;->i:I

    goto :goto_0
.end method

.method private d(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1542
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->f(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private e(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1559
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->f(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private f(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1564
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->d()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private f(II)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 892
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->d()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/J;->c:I

    .line 893
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/J;->e:I

    .line 895
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput p1, v0, Landroid/support/v7/widget/J;->d:I

    .line 896
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput v1, v0, Landroid/support/v7/widget/J;->f:I

    .line 897
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput p2, v0, Landroid/support/v7/widget/J;->b:I

    .line 898
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/J;->g:I

    .line 899
    return-void

    :cond_0
    move v0, v1

    .line 893
    goto :goto_0
.end method

.method private g(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p1}, Landroid/support/v7/widget/aw;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->f()I

    move-result v0

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)Landroid/view/View;
    .locals 3

    .prologue
    .line 1568
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->d()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(III)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private g(II)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 906
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->c()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/J;->c:I

    .line 907
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput p1, v0, Landroid/support/v7/widget/J;->d:I

    .line 908
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/J;->e:I

    .line 910
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput v1, v0, Landroid/support/v7/widget/J;->f:I

    .line 911
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput p2, v0, Landroid/support/v7/widget/J;->b:I

    .line 912
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/J;->g:I

    .line 914
    return-void

    :cond_0
    move v0, v1

    .line 908
    goto :goto_0
.end method

.method private h(Landroid/support/v7/widget/aw;)I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1046
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    :goto_0
    return v4

    .line 1049
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 1050
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/aw;Landroid/support/v7/widget/Z;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/ao;ZZ)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private i(Landroid/support/v7/widget/aw;)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1057
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 1061
    :goto_0
    return v4

    .line 1060
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 1061
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/aw;Landroid/support/v7/widget/Z;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/ao;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private j(Landroid/support/v7/widget/aw;)I
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1068
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    :goto_0
    return v4

    .line 1071
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 1072
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    if-nez v0, :cond_1

    move v4, v3

    :cond_1
    invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->j:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/a;->b(Landroid/support/v7/widget/aw;Landroid/support/v7/widget/Z;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/ao;Z)I

    move-result v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private q()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 340
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->r()Z

    move-result v1

    if-nez v1, :cond_2

    .line 341
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    .line 343
    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    .line 345
    return-void

    .line 343
    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->g:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 917
    .line 15967
    iget-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 917
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    if-nez v0, :cond_0

    .line 16935
    new-instance v0, Landroid/support/v7/widget/J;

    invoke-direct {v0}, Landroid/support/v7/widget/J;-><init>()V

    .line 922
    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    .line 924
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    if-nez v0, :cond_1

    .line 925
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/Z;->a(Landroid/support/v7/widget/ao;I)Landroid/support/v7/widget/Z;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    .line 927
    :cond_1
    return-void
.end method

.method private t()Landroid/view/View;
    .locals 1

    .prologue
    .line 1480
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()Landroid/view/View;
    .locals 1

    .prologue
    .line 1490
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I
    .locals 2

    .prologue
    .line 997
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 998
    const/4 v0, 0x0

    .line 1000
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 1017
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final a()Landroid/support/v7/widget/ap;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 179
    new-instance v0, Landroid/support/v7/widget/ap;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ap;-><init>(II)V

    return-object v0
.end method

.method public final a(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    .line 386
    if-nez v0, :cond_1

    .line 387
    const/4 v0, 0x0

    .line 398
    :cond_0
    :goto_0
    return-object v0

    .line 389
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v1

    .line 390
    sub-int v1, p1, v1

    .line 391
    if-ltz v1, :cond_2

    if-ge v1, v0, :cond_2

    .line 392
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    .line 393
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 398
    :cond_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/ao;->a(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 260
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 261
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 262
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->g()V

    .line 269
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ar;)V
    .locals 0

    .prologue
    .line 213
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/ao;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ar;)V

    .line 218
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)V
    .locals 12

    .prologue
    .line 464
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    .line 468
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 469
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/J;->a:Z

    .line 471
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()V

    .line 473
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/H;

    .line 10092
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/H;->a:I

    .line 10093
    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/H;->b:I

    .line 10094
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v7/widget/H;->c:Z

    .line 474
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/H;

    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/H;->c:Z

    .line 476
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/H;

    .line 10756
    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    .line 10757
    :cond_1
    const/4 v0, 0x0

    .line 10687
    :goto_0
    if-nez v0, :cond_4

    .line 11715
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 12480
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_19

    .line 12481
    const/4 v0, 0x0

    .line 11719
    :cond_2
    :goto_1
    if-eqz v0, :cond_1d

    invoke-static {v1, v0, p2}, Landroid/support/v7/widget/H;->a(Landroid/support/v7/widget/H;Landroid/view/View;Landroid/support/v7/widget/aw;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 13123
    iget-object v2, v1, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->b()I

    move-result v2

    .line 13124
    if-ltz v2, :cond_1b

    .line 13125
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/H;->a(Landroid/view/View;)V

    .line 11721
    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 10694
    :goto_3
    if-nez v0, :cond_4

    .line 10703
    invoke-virtual {v1}, Landroid/support/v7/widget/H;->a()V

    .line 10704
    const/4 v0, 0x0

    iput v0, v1, Landroid/support/v7/widget/H;->a:I

    .line 485
    :cond_4
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->g(Landroid/support/v7/widget/aw;)I

    move-result v0

    .line 488
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v1, v1, Landroid/support/v7/widget/J;->i:I

    if-ltz v1, :cond_25

    .line 490
    const/4 v1, 0x0

    .line 495
    :goto_4
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->c()I

    move-result v2

    add-int/2addr v1, v2

    .line 496
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->g()I

    move-result v2

    add-int/2addr v0, v2

    .line 497
    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_5

    .line 502
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(I)Landroid/view/View;

    move-result-object v2

    .line 503
    if-eqz v2, :cond_5

    .line 506
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v3, :cond_26

    .line 507
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v3}, Landroid/support/v7/widget/Z;->d()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v2

    sub-int v2, v3, v2

    .line 509
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    sub-int/2addr v2, v3

    .line 515
    :goto_5
    if-lez v2, :cond_27

    .line 516
    add-int/2addr v1, v2

    .line 525
    :cond_5
    :goto_6
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ar;)V

    .line 527
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/H;

    iget-boolean v2, v2, Landroid/support/v7/widget/H;->c:Z

    if-eqz v2, :cond_28

    .line 529
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/H;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/H;)V

    .line 530
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput v1, v2, Landroid/support/v7/widget/J;->h:I

    .line 531
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/J;Landroid/support/v7/widget/aw;Z)I

    .line 532
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v1, v1, Landroid/support/v7/widget/J;->b:I

    .line 533
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v3, v2, Landroid/support/v7/widget/J;->d:I

    .line 534
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v2, v2, Landroid/support/v7/widget/J;->c:I

    if-lez v2, :cond_6

    .line 535
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v2, v2, Landroid/support/v7/widget/J;->c:I

    add-int/2addr v0, v2

    .line 538
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/H;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/H;)V

    .line 539
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput v0, v2, Landroid/support/v7/widget/J;->h:I

    .line 540
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v2, v0, Landroid/support/v7/widget/J;->d:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v4, v4, Landroid/support/v7/widget/J;->e:I

    add-int/2addr v2, v4

    iput v2, v0, Landroid/support/v7/widget/J;->d:I

    .line 541
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/J;Landroid/support/v7/widget/aw;Z)I

    .line 542
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v2, v0, Landroid/support/v7/widget/J;->b:I

    .line 544
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v0, v0, Landroid/support/v7/widget/J;->c:I

    if-lez v0, :cond_34

    .line 546
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v0, v0, Landroid/support/v7/widget/J;->c:I

    .line 547
    invoke-direct {p0, v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 548
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput v0, v1, Landroid/support/v7/widget/J;->h:I

    .line 549
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/J;Landroid/support/v7/widget/aw;Z)I

    .line 550
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v0, v0, Landroid/support/v7/widget/J;->b:I

    :goto_7
    move v1, v0

    move v0, v2

    .line 582
    :cond_7
    :goto_8
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v2

    if-lez v2, :cond_33

    .line 586
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v2, :cond_2a

    .line 587
    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;Z)I

    move-result v2

    .line 588
    add-int/2addr v1, v2

    .line 589
    add-int/2addr v0, v2

    .line 590
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;Z)I

    move-result v2

    .line 591
    add-int/2addr v1, v2

    .line 592
    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    .line 13636
    :goto_9
    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->f()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 603
    :cond_8
    :goto_a
    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 604
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    .line 605
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 606
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->a()V

    .line 608
    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 613
    return-void

    .line 10760
    :cond_a
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    if-ltz v0, :cond_b

    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->d()I

    move-result v2

    if-lt v0, v2, :cond_c

    .line 10761
    :cond_b
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    .line 10762
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    .line 10766
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 10771
    :cond_c
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    iput v0, v1, Landroid/support/v7/widget/H;->a:I

    .line 10772
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 10775
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    iput-boolean v0, v1, Landroid/support/v7/widget/H;->c:Z

    .line 10776
    iget-boolean v0, v1, Landroid/support/v7/widget/H;->c:Z

    if-eqz v0, :cond_d

    .line 10777
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/H;->b:I

    .line 10783
    :goto_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 10780
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/H;->b:I

    goto :goto_b

    .line 10786
    :cond_e
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_17

    .line 10787
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(I)Landroid/view/View;

    move-result-object v0

    .line 10788
    if-eqz v0, :cond_13

    .line 10789
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/Z;->c(Landroid/view/View;)I

    move-result v2

    .line 10790
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v3}, Landroid/support/v7/widget/Z;->f()I

    move-result v3

    if-le v2, v3, :cond_f

    .line 10792
    invoke-virtual {v1}, Landroid/support/v7/widget/H;->a()V

    .line 10834
    :goto_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 10795
    :cond_f
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v3}, Landroid/support/v7/widget/Z;->c()I

    move-result v3

    sub-int/2addr v2, v3

    .line 10797
    if-gez v2, :cond_10

    .line 10798
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v0

    iput v0, v1, Landroid/support/v7/widget/H;->b:I

    .line 10799
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/support/v7/widget/H;->c:Z

    goto :goto_c

    .line 10802
    :cond_10
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    .line 10804
    if-gez v2, :cond_11

    .line 10805
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v0

    iput v0, v1, Landroid/support/v7/widget/H;->b:I

    .line 10806
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/support/v7/widget/H;->c:Z

    goto :goto_c

    .line 10809
    :cond_11
    iget-boolean v2, v1, Landroid/support/v7/widget/H;->c:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->b()I

    move-result v2

    add-int/2addr v0, v2

    :goto_d
    iput v0, v1, Landroid/support/v7/widget/H;->b:I

    .line 10822
    :goto_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 10809
    :cond_12
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_d

    .line 10814
    :cond_13
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-lez v0, :cond_14

    .line 10816
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v0

    .line 10817
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    if-ge v2, v0, :cond_15

    const/4 v0, 0x1

    :goto_f
    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-ne v0, v2, :cond_16

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, v1, Landroid/support/v7/widget/H;->c:Z

    .line 10820
    :cond_14
    invoke-virtual {v1}, Landroid/support/v7/widget/H;->a()V

    goto :goto_e

    .line 10817
    :cond_15
    const/4 v0, 0x0

    goto :goto_f

    :cond_16
    const/4 v0, 0x0

    goto :goto_10

    .line 10825
    :cond_17
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    iput-boolean v0, v1, Landroid/support/v7/widget/H;->c:Z

    .line 10827
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eqz v0, :cond_18

    .line 10828
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/H;->b:I

    goto/16 :goto_c

    .line 10831
    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v0

    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/support/v7/widget/H;->b:I

    goto/16 :goto_c

    .line 12483
    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 12484
    if-eqz v0, :cond_1a

    iget-object v2, p0, Landroid/support/v7/widget/ao;->b:Landroid/support/v7/widget/q;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/q;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12485
    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 13128
    :cond_1b
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v3

    iput v3, v1, Landroid/support/v7/widget/H;->a:I

    .line 13129
    iget-boolean v3, v1, Landroid/support/v7/widget/H;->c:Z

    if-eqz v3, :cond_1c

    .line 13130
    iget-object v3, v1, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v3}, Landroid/support/v7/widget/Z;->d()I

    move-result v3

    sub-int v2, v3, v2

    .line 13131
    iget-object v3, v1, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v3

    .line 13132
    sub-int/2addr v2, v3

    .line 13133
    iget-object v3, v1, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v3}, Landroid/support/v7/widget/Z;->d()I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, v1, Landroid/support/v7/widget/H;->b:I

    .line 13135
    if-lez v2, :cond_3

    .line 13136
    iget-object v3, v1, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/Z;->c(Landroid/view/View;)I

    move-result v3

    .line 13137
    iget v4, v1, Landroid/support/v7/widget/H;->b:I

    sub-int v3, v4, v3

    .line 13138
    iget-object v4, v1, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v4}, Landroid/support/v7/widget/Z;->c()I

    move-result v4

    .line 13139
    iget-object v5, v1, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v0, v4

    .line 13141
    const/4 v5, 0x0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v4

    .line 13142
    sub-int v0, v3, v0

    .line 13143
    if-gez v0, :cond_3

    .line 13145
    iget v3, v1, Landroid/support/v7/widget/H;->b:I

    neg-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v3

    iput v0, v1, Landroid/support/v7/widget/H;->b:I

    goto/16 :goto_2

    .line 13149
    :cond_1c
    iget-object v3, v1, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v3

    .line 13150
    iget-object v4, v1, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v4}, Landroid/support/v7/widget/Z;->c()I

    move-result v4

    sub-int v4, v3, v4

    .line 13151
    iput v3, v1, Landroid/support/v7/widget/H;->b:I

    .line 13152
    if-lez v4, :cond_3

    .line 13153
    iget-object v5, v1, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/Z;->c(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 13155
    iget-object v5, v1, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v5}, Landroid/support/v7/widget/Z;->d()I

    move-result v5

    sub-int v2, v5, v2

    .line 13157
    iget-object v5, v1, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v5, v5, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v0

    sub-int v0, v2, v0

    .line 13159
    iget-object v2, v1, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->d()I

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v2, v0

    .line 13161
    sub-int/2addr v0, v3

    .line 13162
    if-gez v0, :cond_3

    .line 13163
    iget v2, v1, Landroid/support/v7/widget/H;->b:I

    neg-int v0, v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v2, v0

    iput v0, v1, Landroid/support/v7/widget/H;->b:I

    goto/16 :goto_2

    .line 11723
    :cond_1d
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    if-eqz v0, :cond_1f

    .line 11748
    :cond_1e
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 11726
    :cond_1f
    iget-boolean v0, v1, Landroid/support/v7/widget/H;->c:Z

    if-eqz v0, :cond_22

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)Landroid/view/View;

    move-result-object v0

    .line 11729
    :goto_11
    if-eqz v0, :cond_1e

    .line 11730
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/H;->a(Landroid/view/View;)V

    .line 11733
    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->a()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->f()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 11735
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v3}, Landroid/support/v7/widget/Z;->d()I

    move-result v3

    if-ge v2, v3, :cond_20

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->c()I

    move-result v2

    if-ge v0, v2, :cond_23

    :cond_20
    const/4 v0, 0x1

    .line 11740
    :goto_12
    if-eqz v0, :cond_21

    .line 11741
    iget-boolean v0, v1, Landroid/support/v7/widget/H;->c:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v0

    :goto_13
    iput v0, v1, Landroid/support/v7/widget/H;->b:I

    .line 11746
    :cond_21
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 11726
    :cond_22
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    .line 11735
    :cond_23
    const/4 v0, 0x0

    goto :goto_12

    .line 11741
    :cond_24
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v0

    goto :goto_13

    .line 493
    :cond_25
    const/4 v1, 0x0

    move v11, v1

    move v1, v0

    move v0, v11

    goto/16 :goto_4

    .line 511
    :cond_26
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v3}, Landroid/support/v7/widget/Z;->c()I

    move-result v3

    sub-int/2addr v2, v3

    .line 513
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->l:I

    sub-int v2, v3, v2

    goto/16 :goto_5

    .line 518
    :cond_27
    sub-int/2addr v0, v2

    goto/16 :goto_6

    .line 554
    :cond_28
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/H;

    invoke-direct {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/H;)V

    .line 555
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput v0, v2, Landroid/support/v7/widget/J;->h:I

    .line 556
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/J;Landroid/support/v7/widget/aw;Z)I

    .line 557
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v0, v0, Landroid/support/v7/widget/J;->b:I

    .line 558
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v2, v2, Landroid/support/v7/widget/J;->d:I

    .line 559
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v3, v3, Landroid/support/v7/widget/J;->c:I

    if-lez v3, :cond_29

    .line 560
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v3, v3, Landroid/support/v7/widget/J;->c:I

    add-int/2addr v1, v3

    .line 563
    :cond_29
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->n:Landroid/support/v7/widget/H;

    invoke-direct {p0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/support/v7/widget/H;)V

    .line 564
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput v1, v3, Landroid/support/v7/widget/J;->h:I

    .line 565
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v3, v1, Landroid/support/v7/widget/J;->d:I

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v4, v4, Landroid/support/v7/widget/J;->e:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/support/v7/widget/J;->d:I

    .line 566
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, p2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/J;Landroid/support/v7/widget/aw;Z)I

    .line 567
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v1, v1, Landroid/support/v7/widget/J;->b:I

    .line 569
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v3, v3, Landroid/support/v7/widget/J;->c:I

    if-lez v3, :cond_7

    .line 570
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v3, v3, Landroid/support/v7/widget/J;->c:I

    .line 572
    invoke-direct {p0, v2, v0}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    .line 573
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput v3, v0, Landroid/support/v7/widget/J;->h:I

    .line 574
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/J;Landroid/support/v7/widget/aw;Z)I

    .line 575
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iget v0, v0, Landroid/support/v7/widget/J;->b:I

    goto/16 :goto_8

    .line 594
    :cond_2a
    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;Z)I

    move-result v2

    .line 595
    add-int/2addr v1, v2

    .line 596
    add-int/2addr v0, v2

    .line 597
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;Z)I

    move-result v2

    .line 598
    add-int/2addr v1, v2

    .line 599
    add-int/2addr v0, v2

    move v2, v1

    move v1, v0

    goto/16 :goto_9

    .line 13641
    :cond_2b
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 13642
    invoke-virtual {p1}, Landroid/support/v7/widget/ar;->b()Ljava/util/List;

    move-result-object v7

    .line 13643
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 13644
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v9

    .line 13645
    const/4 v0, 0x0

    move v6, v0

    :goto_14
    if-ge v6, v8, :cond_2f

    .line 13646
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ay;

    .line 13647
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->m()Z

    move-result v3

    if-nez v3, :cond_32

    .line 13650
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->c()I

    move-result v3

    .line 13651
    if-ge v3, v9, :cond_2c

    const/4 v3, 0x1

    :goto_15
    iget-boolean v10, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    if-eq v3, v10, :cond_2d

    const/4 v3, -0x1

    .line 13653
    :goto_16
    const/4 v10, -0x1

    if-ne v3, v10, :cond_2e

    .line 13654
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    iget-object v0, v0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/Z;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v5

    move v3, v0

    move v0, v4

    .line 13645
    :goto_17
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v5, v3

    move v4, v0

    goto :goto_14

    .line 13651
    :cond_2c
    const/4 v3, 0x0

    goto :goto_15

    :cond_2d
    const/4 v3, 0x1

    goto :goto_16

    .line 13656
    :cond_2e
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    iget-object v0, v0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/Z;->c(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v4

    move v3, v5

    goto :goto_17

    .line 13664
    :cond_2f
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput-object v7, v0, Landroid/support/v7/widget/J;->j:Ljava/util/List;

    .line 13665
    if-lez v5, :cond_30

    .line 13666
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v0

    .line 13667
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->g(II)V

    .line 13668
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput v5, v0, Landroid/support/v7/widget/J;->h:I

    .line 13669
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    const/4 v2, 0x0

    iput v2, v0, Landroid/support/v7/widget/J;->c:I

    .line 13670
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    .line 13983
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/J;->a(Landroid/support/v7/widget/ay;)V

    .line 13671
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/J;Landroid/support/v7/widget/aw;Z)I

    .line 13674
    :cond_30
    if-lez v4, :cond_31

    .line 13675
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v0

    .line 13676
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->f(II)V

    .line 13677
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput v4, v0, Landroid/support/v7/widget/J;->h:I

    .line 13678
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/J;->c:I

    .line 13679
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    .line 14983
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/J;->a(Landroid/support/v7/widget/ay;)V

    .line 13680
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/J;Landroid/support/v7/widget/aw;Z)I

    .line 13682
    :cond_31
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/J;->j:Ljava/util/List;

    goto/16 :goto_a

    :cond_32
    move v0, v4

    move v3, v5

    goto :goto_17

    :cond_33
    move v2, v1

    move v1, v0

    goto/16 :goto_9

    :cond_34
    move v0, v1

    goto/16 :goto_7
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    .line 222
    invoke-super {p0, p1}, Landroid/support/v7/widget/ao;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 223
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v2

    .line 9620
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    invoke-direct {p0, v3, v0, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 9621
    if-nez v0, :cond_1

    move v0, v1

    .line 226
    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 9660
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v1, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZZ)Landroid/view/View;

    move-result-object v0

    .line 9661
    if-nez v0, :cond_2

    .line 227
    :goto_1
    invoke-virtual {v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    .line 229
    :cond_0
    return-void

    .line 9621
    :cond_1
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 9661
    :cond_2
    invoke-static {v0}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 1174
    invoke-super {p0, p1}, Landroid/support/v7/widget/ao;->a(Ljava/lang/String;)V

    .line 1176
    :cond_0
    return-void
.end method

.method public final b(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-nez v0, :cond_0

    .line 1010
    const/4 v0, 0x0

    .line 1012
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 1022
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->h(Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final b()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 233
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    .line 255
    :goto_0
    return-object v0

    .line 236
    :cond_0
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 237
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v1

    if-lez v1, :cond_2

    .line 238
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 239
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->h:Z

    xor-int/2addr v1, v2

    .line 240
    iput-boolean v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->c:Z

    .line 241
    if-eqz v1, :cond_1

    .line 242
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v1

    .line 243
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->d()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    .line 245
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0

    .line 247
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v1

    .line 248
    invoke-static {v1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    .line 249
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->b:I

    goto :goto_0

    .line 10055
    :cond_2
    const/4 v1, -0x1

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->a:I

    goto :goto_0
.end method

.method public final c(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 1027
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final c(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/high16 v6, -0x80000000

    .line 1710
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->q()V

    .line 1711
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->h()I

    move-result v1

    if-nez v1, :cond_1

    .line 1748
    :cond_0
    :goto_0
    return-object v0

    .line 23447
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v3, v6

    .line 1716
    :goto_1
    if-eq v3, v6, :cond_0

    .line 1719
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 1721
    if-ne v3, v4, :cond_6

    .line 1722
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->e(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 1726
    :goto_2
    if-eqz v2, :cond_0

    .line 1733
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->s()V

    .line 1734
    const v1, 0x3ea8f5c3    # 0.33f

    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v7}, Landroid/support/v7/widget/Z;->f()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v1, v7

    float-to-int v1, v1

    .line 1735
    invoke-direct {p0, v3, v1, v8, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(IIZLandroid/support/v7/widget/aw;)V

    .line 1736
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput v6, v1, Landroid/support/v7/widget/J;->g:I

    .line 1737
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    iput-boolean v8, v1, Landroid/support/v7/widget/J;->a:Z

    .line 1738
    iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->e:Landroid/support/v7/widget/J;

    invoke-direct {p0, p2, v1, p3, v5}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/J;Landroid/support/v7/widget/aw;Z)I

    .line 1740
    if-ne v3, v4, :cond_7

    .line 1741
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->t()Landroid/view/View;

    move-result-object v1

    .line 1745
    :goto_3
    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 1748
    goto :goto_0

    :sswitch_0
    move v3, v4

    .line 23449
    goto :goto_1

    :sswitch_1
    move v3, v5

    .line 23451
    goto :goto_1

    .line 23453
    :sswitch_2
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-ne v1, v5, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_1

    .line 23456
    :sswitch_3
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-ne v1, v5, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v6

    goto :goto_1

    .line 23459
    :sswitch_4
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-nez v1, :cond_4

    move v3, v4

    goto :goto_1

    :cond_4
    move v3, v6

    goto :goto_1

    .line 23462
    :sswitch_5
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-nez v1, :cond_5

    move v3, v5

    goto :goto_1

    :cond_5
    move v3, v6

    goto :goto_1

    .line 1724
    :cond_6
    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->d(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    goto :goto_2

    .line 1743
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->u()Landroid/view/View;

    move-result-object v1

    goto :goto_3

    .line 23447
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 1032
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->i(Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 284
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->d:I

    return v0
.end method

.method public final e(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 1037
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final f(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 1042
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->j(Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 1817
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->m:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
