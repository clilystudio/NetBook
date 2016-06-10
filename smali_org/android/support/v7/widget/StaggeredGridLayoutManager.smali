.class public final Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/ao;
.source "SourceFile"


# instance fields
.field a:Landroid/support/v7/widget/Z;

.field private d:Landroid/support/v7/widget/Z;

.field private e:I

.field private f:Landroid/support/v7/widget/F;

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field private n:I

.field private o:I

.field private p:I

.field private final q:Landroid/graphics/Rect;

.field private final r:Landroid/support/v7/widget/av;

.field private s:Z

.field private final t:Ljava/lang/Runnable;


# direct methods
.method private static a(III)I
    .locals 2

    .prologue
    .line 1030
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return p0

    .line 1033
    :cond_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1034
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000

    if-ne v0, v1, :cond_0

    .line 1035
    :cond_2
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    sub-int/2addr v1, p1

    sub-int/2addr v1, p2

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/F;Landroid/support/v7/widget/aw;)I
    .locals 13

    .prologue
    .line 1392
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/BitSet;->set(IIZ)V

    .line 1397
    iget v0, p2, Landroid/support/v7/widget/F;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 1398
    iget v0, p2, Landroid/support/v7/widget/F;->f:I

    iget v1, p2, Landroid/support/v7/widget/F;->a:I

    add-int/2addr v0, v1

    move v2, v0

    .line 1403
    :goto_0
    iget v0, p2, Landroid/support/v7/widget/F;->d:I

    .line 1410
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v0

    move v3, v0

    .line 1413
    :goto_1
    const/4 v0, 0x0

    .line 20076
    :goto_2
    iget v1, p2, Landroid/support/v7/widget/F;->b:I

    if-ltz v1, :cond_8

    iget v1, p2, Landroid/support/v7/widget/F;->b:I

    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/aw;->d()I

    move-result v4

    if-ge v1, v4, :cond_8

    const/4 v1, 0x1

    .line 1414
    :goto_3
    if-eqz v1, :cond_15

    const/4 v1, 0x0

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 20086
    iget v0, p2, Landroid/support/v7/widget/F;->b:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ar;->b(I)Landroid/view/View;

    move-result-object v7

    .line 20087
    iget v0, p2, Landroid/support/v7/widget/F;->b:I

    iget v1, p2, Landroid/support/v7/widget/F;->c:I

    add-int/2addr v0, v1

    iput v0, p2, Landroid/support/v7/widget/F;->b:I

    .line 1416
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 20480
    iget-object v1, v0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v1}, Landroid/support/v7/widget/ay;->c()I

    move-result v4

    .line 1418
    const/4 v1, 0x0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/av;->c(I)I

    move-result v1

    .line 1420
    const/4 v5, -0x1

    if-ne v1, v5, :cond_9

    const/4 v1, 0x1

    move v6, v1

    .line 1421
    :goto_4
    if-eqz v6, :cond_c

    .line 20779
    iget v1, p2, Landroid/support/v7/widget/F;->d:I

    .line 21770
    const/4 v5, -0x1

    if-ne v1, v5, :cond_a

    const/4 v1, 0x1

    :goto_5
    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eq v1, v5, :cond_0

    .line 20790
    :cond_0
    iget v1, p2, Landroid/support/v7/widget/F;->d:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_b

    .line 20793
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1}, Landroid/support/v7/widget/Z;->c()I

    .line 20802
    const/4 v1, 0x0

    .line 1423
    :goto_6
    const/4 v5, 0x0

    invoke-virtual {v5, v4, v1}, Landroid/support/v7/widget/av;->a(ILandroid/support/v7/widget/aR;)V

    move-object v4, v1

    .line 1434
    :goto_7
    iput-object v4, v0, Landroid/support/v7/widget/aO;->e:Landroid/support/v7/widget/aR;

    .line 1435
    iget v1, p2, Landroid/support/v7/widget/F;->d:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_d

    .line 1436
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)V

    .line 22004
    :goto_8
    iget v5, v0, Landroid/support/v7/widget/aO;->width:I

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:I

    .line 22011
    if-gez v5, :cond_e

    move v5, v1

    .line 22004
    :goto_9
    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:I

    .line 22020
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q:Landroid/graphics/Rect;

    .line 22871
    iget-object v9, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-nez v9, :cond_f

    .line 22872
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 22021
    :goto_a
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aO;

    .line 22022
    iget v9, v1, Landroid/support/v7/widget/aO;->leftMargin:I

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v10

    iget v10, v1, Landroid/support/v7/widget/aO;->rightMargin:I

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    invoke-static {v5, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v5

    .line 22024
    iget v9, v1, Landroid/support/v7/widget/aO;->topMargin:I

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v10

    iget v1, v1, Landroid/support/v7/widget/aO;->bottomMargin:I

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v10

    invoke-static {v8, v9, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v1

    .line 22026
    invoke-virtual {v7, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1444
    iget v1, p2, Landroid/support/v7/widget/F;->d:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_10

    .line 1445
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/aR;->b(I)I

    move-result v5

    .line 1447
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1, v7}, Landroid/support/v7/widget/Z;->c(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v5

    .line 1448
    if-eqz v6, :cond_1

    .line 23542
    :cond_1
    :goto_b
    iget v6, p2, Landroid/support/v7/widget/F;->d:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_11

    .line 23546
    iget-object v6, v0, Landroid/support/v7/widget/aO;->e:Landroid/support/v7/widget/aR;

    .line 24261
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 24181
    iput-object v6, v0, Landroid/support/v7/widget/aO;->e:Landroid/support/v7/widget/aR;

    .line 24182
    const/4 v8, 0x0

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24183
    const/high16 v8, -0x80000000

    iput v8, v6, Landroid/support/v7/widget/aR;->b:I

    .line 24184
    const/4 v8, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 24185
    const/high16 v8, -0x80000000

    iput v8, v6, Landroid/support/v7/widget/aR;->a:I

    .line 24452
    :cond_2
    iget-object v8, v0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v8}, Landroid/support/v7/widget/ay;->m()Z

    move-result v8

    .line 24187
    if-nez v8, :cond_3

    .line 24463
    iget-object v0, v0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->k()Z

    move-result v0

    .line 24187
    if-eqz v0, :cond_4

    .line 24188
    :cond_3
    iget v0, v6, Landroid/support/v7/widget/aR;->c:I

    iget-object v8, v6, Landroid/support/v7/widget/aR;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/Z;->c(Landroid/view/View;)I

    move-result v8

    add-int/2addr v0, v8

    iput v0, v6, Landroid/support/v7/widget/aR;->c:I

    .line 1491
    :cond_4
    :goto_c
    iget v0, v4, Landroid/support/v7/widget/aR;->d:I

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    mul-int/2addr v0, v6

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Landroid/support/v7/widget/Z;

    invoke-virtual {v6}, Landroid/support/v7/widget/Z;->c()I

    move-result v6

    add-int/2addr v6, v0

    .line 1494
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Landroid/support/v7/widget/Z;

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/Z;->c(Landroid/view/View;)I

    move-result v0

    add-int v8, v6, v0

    .line 25608
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 25615
    iget v9, v0, Landroid/support/v7/widget/aO;->leftMargin:I

    add-int/2addr v5, v9

    iget v9, v0, Landroid/support/v7/widget/aO;->topMargin:I

    add-int/2addr v6, v9

    iget v9, v0, Landroid/support/v7/widget/aO;->rightMargin:I

    sub-int/2addr v1, v9

    iget v0, v0, Landroid/support/v7/widget/aO;->bottomMargin:I

    sub-int v0, v8, v0

    invoke-static {v7, v5, v6, v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1504
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iget v0, v0, Landroid/support/v7/widget/F;->d:I

    .line 26257
    iget v1, v4, Landroid/support/v7/widget/aR;->c:I

    .line 25630
    const/4 v5, -0x1

    if-ne v0, v5, :cond_14

    .line 25631
    invoke-virtual {v4}, Landroid/support/v7/widget/aR;->a()I

    move-result v0

    .line 25632
    add-int/2addr v0, v1

    if-gt v0, v2, :cond_5

    .line 25633
    const/4 v0, 0x0

    iget v1, v4, Landroid/support/v7/widget/aR;->d:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/BitSet;->set(IZ)V

    .line 1506
    :cond_5
    :goto_d
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/F;)V

    .line 1507
    const/4 v0, 0x1

    .line 1508
    goto/16 :goto_2

    .line 1400
    :cond_6
    iget v0, p2, Landroid/support/v7/widget/F;->e:I

    iget v1, p2, Landroid/support/v7/widget/F;->a:I

    sub-int/2addr v0, v1

    move v2, v0

    goto/16 :goto_0

    .line 1410
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v0

    move v3, v0

    goto/16 :goto_1

    .line 20076
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1420
    :cond_9
    const/4 v1, 0x0

    move v6, v1

    goto/16 :goto_4

    .line 21770
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 20806
    :cond_b
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1}, Landroid/support/v7/widget/Z;->d()I

    .line 20815
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 1431
    :cond_c
    const/4 v1, 0x0

    move-object v4, v1

    goto/16 :goto_7

    .line 1438
    :cond_d
    const/4 v1, 0x0

    invoke-virtual {p0, v7, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;I)V

    goto/16 :goto_8

    .line 22014
    :cond_e
    const/high16 v1, 0x40000000

    invoke-static {v5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move v5, v1

    goto/16 :goto_9

    .line 22875
    :cond_f
    iget-object v9, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v9, v7}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v9

    .line 22876
    invoke-virtual {v1, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_a

    .line 1456
    :cond_10
    invoke-virtual {v4, v3}, Landroid/support/v7/widget/aR;->a(I)I

    move-result v1

    .line 1458
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v5, v7}, Landroid/support/v7/widget/Z;->c(Landroid/view/View;)I

    move-result v5

    sub-int v5, v1, v5

    goto/16 :goto_b

    .line 23552
    :cond_11
    iget-object v6, v0, Landroid/support/v7/widget/aO;->e:Landroid/support/v7/widget/aR;

    .line 25261
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 25168
    iput-object v6, v0, Landroid/support/v7/widget/aO;->e:Landroid/support/v7/widget/aR;

    .line 25169
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 25170
    const/high16 v8, -0x80000000

    iput v8, v6, Landroid/support/v7/widget/aR;->a:I

    .line 25171
    const/4 v8, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_12

    .line 25172
    const/high16 v8, -0x80000000

    iput v8, v6, Landroid/support/v7/widget/aR;->b:I

    .line 25452
    :cond_12
    iget-object v8, v0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v8}, Landroid/support/v7/widget/ay;->m()Z

    move-result v8

    .line 25174
    if-nez v8, :cond_13

    .line 25463
    iget-object v0, v0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->k()Z

    move-result v0

    .line 25174
    if-eqz v0, :cond_4

    .line 25175
    :cond_13
    iget v0, v6, Landroid/support/v7/widget/aR;->c:I

    iget-object v8, v6, Landroid/support/v7/widget/aR;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v8, v8, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v8, v7}, Landroid/support/v7/widget/Z;->c(Landroid/view/View;)I

    move-result v8

    add-int/2addr v0, v8

    iput v0, v6, Landroid/support/v7/widget/aR;->c:I

    goto/16 :goto_c

    .line 25636
    :cond_14
    invoke-virtual {v4}, Landroid/support/v7/widget/aR;->b()I

    move-result v0

    .line 25637
    sub-int/2addr v0, v1

    if-lt v0, v2, :cond_5

    .line 25638
    const/4 v0, 0x0

    iget v1, v4, Landroid/support/v7/widget/aR;->d:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_d

    .line 1509
    :cond_15
    if-nez v0, :cond_16

    .line 1510
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/F;)V

    .line 1513
    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iget v0, v0, Landroid/support/v7/widget/F;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 1514
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v0

    .line 26655
    const/4 v1, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/aR;->a(I)I

    move-result v0

    .line 1515
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1}, Landroid/support/v7/widget/Z;->c()I

    move-result v1

    sub-int v0, v1, v0

    .line 1520
    :goto_e
    if-lez v0, :cond_18

    iget v1, p2, Landroid/support/v7/widget/F;->a:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_f
    return v0

    .line 1517
    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v0

    .line 26686
    const/4 v1, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/aR;->b(I)I

    move-result v0

    .line 1518
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1}, Landroid/support/v7/widget/Z;->d()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_e

    .line 1520
    :cond_18
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private a(ZZ)Landroid/view/View;
    .locals 8

    .prologue
    .line 1183
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e()V

    .line 1184
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v3

    .line 1185
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v4

    .line 1186
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v5

    .line 1187
    const/4 v1, 0x0

    .line 1188
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    .line 1189
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    .line 1190
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v6

    .line 1191
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v7

    .line 1192
    if-le v7, v3, :cond_3

    if-ge v6, v4, :cond_3

    .line 1195
    if-ge v6, v3, :cond_0

    if-nez p1, :cond_1

    .line 1204
    :cond_0
    :goto_1
    return-object v0

    .line 1200
    :cond_1
    if-nez v1, :cond_3

    .line 1188
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1204
    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private a(ILandroid/support/v7/widget/aw;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1270
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iput v1, v0, Landroid/support/v7/widget/F;->a:I

    .line 1271
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iput p1, v0, Landroid/support/v7/widget/F;->b:I

    .line 18726
    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->t(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1287
    :goto_0
    if-eqz v0, :cond_1

    .line 1288
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->c()I

    move-result v2

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/support/v7/widget/F;->e:I

    .line 1289
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->d()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/F;->f:I

    .line 1294
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 18726
    goto :goto_0

    .line 1291
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v2}, Landroid/support/v7/widget/Z;->e()I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/support/v7/widget/F;->f:I

    .line 1292
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    neg-int v1, v1

    iput v1, v0, Landroid/support/v7/widget/F;->e:I

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/ar;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x80000000

    const/4 v5, 0x0

    .line 1708
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-lez v0, :cond_0

    .line 1709
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v2

    .line 1710
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 1711
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 1723
    iget-object v1, v0, Landroid/support/v7/widget/aO;->e:Landroid/support/v7/widget/aR;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 1733
    :cond_0
    return-void

    .line 1726
    :cond_1
    iget-object v3, v0, Landroid/support/v7/widget/aO;->e:Landroid/support/v7/widget/aR;

    .line 28244
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 28261
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aO;

    .line 28246
    iput-object v5, v1, Landroid/support/v7/widget/aO;->e:Landroid/support/v7/widget/aR;

    .line 28247
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 28248
    iput v6, v3, Landroid/support/v7/widget/aR;->b:I

    .line 28452
    :cond_2
    iget-object v4, v1, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v4}, Landroid/support/v7/widget/ay;->m()Z

    move-result v4

    .line 28250
    if-nez v4, :cond_3

    .line 28463
    iget-object v1, v1, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v1}, Landroid/support/v7/widget/ay;->k()Z

    move-result v1

    .line 28250
    if-eqz v1, :cond_4

    .line 28251
    :cond_3
    iget v1, v3, Landroid/support/v7/widget/aR;->c:I

    iget-object v4, v3, Landroid/support/v7/widget/aR;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v4, v0}, Landroid/support/v7/widget/Z;->c(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, v3, Landroid/support/v7/widget/aR;->c:I

    .line 28253
    :cond_4
    iput v6, v3, Landroid/support/v7/widget/aR;->a:I

    .line 1728
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/ar;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/F;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 1558
    iget v0, p2, Landroid/support/v7/widget/F;->a:I

    if-nez v0, :cond_1

    .line 1560
    iget v0, p2, Landroid/support/v7/widget/F;->d:I

    if-ne v0, v1, :cond_0

    .line 1561
    iget v0, p2, Landroid/support/v7/widget/F;->f:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/ar;I)V

    .line 1591
    :goto_0
    return-void

    .line 1563
    :cond_0
    iget v0, p2, Landroid/support/v7/widget/F;->e:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ar;I)V

    goto :goto_0

    .line 1568
    :cond_1
    iget v0, p2, Landroid/support/v7/widget/F;->d:I

    if-ne v0, v1, :cond_3

    .line 1570
    iget v0, p2, Landroid/support/v7/widget/F;->e:I

    iget v1, p2, Landroid/support/v7/widget/F;->e:I

    .line 27644
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/aR;->a(I)I

    move-result v1

    .line 1570
    sub-int/2addr v0, v1

    .line 1572
    if-gez v0, :cond_2

    .line 1573
    iget v0, p2, Landroid/support/v7/widget/F;->f:I

    .line 1577
    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/ar;I)V

    goto :goto_0

    .line 1575
    :cond_2
    iget v1, p2, Landroid/support/v7/widget/F;->f:I

    iget v2, p2, Landroid/support/v7/widget/F;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_1

    .line 1580
    :cond_3
    iget v0, p2, Landroid/support/v7/widget/F;->f:I

    .line 27697
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/aR;->b(I)I

    move-result v0

    .line 1580
    iget v1, p2, Landroid/support/v7/widget/F;->f:I

    sub-int/2addr v0, v1

    .line 1582
    if-gez v0, :cond_4

    .line 1583
    iget v0, p2, Landroid/support/v7/widget/F;->e:I

    .line 1587
    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ar;I)V

    goto :goto_0

    .line 1585
    :cond_4
    iget v1, p2, Landroid/support/v7/widget/F;->e:I

    iget v2, p2, Landroid/support/v7/widget/F;->a:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_2
.end method

.method private a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;Z)V
    .locals 2

    .prologue
    .line 1239
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v0

    .line 16686
    const/4 v1, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/aR;->b(I)I

    move-result v0

    .line 1240
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1}, Landroid/support/v7/widget/Z;->d()I

    move-result v1

    sub-int v0, v1, v0

    .line 1242
    if-lez v0, :cond_0

    .line 1243
    neg-int v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I

    move-result v1

    neg-int v1, v1

    .line 1247
    sub-int/2addr v0, v1

    .line 1248
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1249
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Z;->a(I)V

    .line 1251
    :cond_0
    return-void
.end method

.method private b(ZZ)Landroid/view/View;
    .locals 7

    .prologue
    .line 1214
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e()V

    .line 1215
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v3

    .line 1216
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v4

    .line 1217
    const/4 v1, 0x0

    .line 1218
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    .line 1219
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    .line 1220
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v5

    .line 1221
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v6

    .line 1222
    if-le v6, v3, :cond_3

    if-ge v5, v4, :cond_3

    .line 1225
    if-le v6, v4, :cond_0

    if-nez p1, :cond_1

    .line 1234
    :cond_0
    :goto_1
    return-object v0

    .line 1230
    :cond_1
    if-nez v1, :cond_3

    .line 1218
    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1234
    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private b(III)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1348
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()I

    move-result v0

    move v2, v0

    .line 1352
    :goto_0
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 1353
    if-ge p1, p2, :cond_2

    .line 1354
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    move v0, p1

    .line 1365
    :goto_1
    invoke-virtual {v3, v0}, Landroid/support/v7/widget/av;->b(I)I

    .line 1366
    packed-switch p3, :pswitch_data_0

    .line 1380
    :goto_2
    :pswitch_0
    if-gt v1, v2, :cond_4

    .line 1388
    :cond_0
    :goto_3
    return-void

    .line 1348
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 1357
    :cond_2
    add-int/lit8 v0, p1, 0x1

    move v1, v0

    move v0, p2

    .line 1358
    goto :goto_1

    .line 1362
    :cond_3
    add-int v0, p1, p2

    move v1, v0

    move v0, p1

    goto :goto_1

    .line 1368
    :pswitch_1
    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/av;->b(II)V

    goto :goto_2

    .line 1371
    :pswitch_2
    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/av;->a(II)V

    goto :goto_2

    .line 1375
    :pswitch_3
    invoke-virtual {v3, p1, v4}, Landroid/support/v7/widget/av;->a(II)V

    .line 1376
    invoke-virtual {v3, p2, v4}, Landroid/support/v7/widget/av;->b(II)V

    goto :goto_2

    .line 1384
    :cond_4
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v1

    .line 1385
    :goto_4
    if-gt v0, v1, :cond_0

    .line 1386
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    goto :goto_3

    .line 1384
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()I

    move-result v1

    goto :goto_4

    .line 1366
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private b(Landroid/support/v7/widget/ar;I)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/high16 v8, -0x80000000

    const/4 v7, 0x0

    .line 1736
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    .line 1738
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 1739
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v3

    .line 1740
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 1741
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aO;

    .line 1753
    iget-object v1, v0, Landroid/support/v7/widget/aO;->e:Landroid/support/v7/widget/aR;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v9, :cond_1

    .line 1763
    :cond_0
    return-void

    .line 1756
    :cond_1
    iget-object v4, v0, Landroid/support/v7/widget/aO;->e:Landroid/support/v7/widget/aR;

    .line 29230
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 29231
    add-int/lit8 v0, v5, -0x1

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 29261
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/aO;

    .line 29233
    iput-object v7, v1, Landroid/support/v7/widget/aO;->e:Landroid/support/v7/widget/aR;

    .line 29452
    iget-object v6, v1, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v6}, Landroid/support/v7/widget/ay;->m()Z

    move-result v6

    .line 29234
    if-nez v6, :cond_2

    .line 29463
    iget-object v1, v1, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v1}, Landroid/support/v7/widget/ay;->k()Z

    move-result v1

    .line 29234
    if-eqz v1, :cond_3

    .line 29235
    :cond_2
    iget v1, v4, Landroid/support/v7/widget/aR;->c:I

    iget-object v6, v4, Landroid/support/v7/widget/aR;->e:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v6, v6, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/Z;->c(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, v4, Landroid/support/v7/widget/aR;->c:I

    .line 29237
    :cond_3
    if-ne v5, v9, :cond_4

    .line 29238
    iput v8, v4, Landroid/support/v7/widget/aR;->a:I

    .line 29240
    :cond_4
    iput v8, v4, Landroid/support/v7/widget/aR;->b:I

    .line 1758
    invoke-virtual {p0, v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/ar;)V

    .line 1738
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;Z)V
    .locals 2

    .prologue
    .line 1255
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v0

    .line 17655
    const/4 v1, 0x0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/aR;->a(I)I

    move-result v0

    .line 1256
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1}, Landroid/support/v7/widget/Z;->c()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1258
    if-lez v0, :cond_0

    .line 1259
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I

    move-result v1

    .line 1263
    sub-int/2addr v0, v1

    .line 1264
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1265
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Z;->a(I)V

    .line 1267
    :cond_0
    return-void
.end method

.method private d(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I
    .locals 3

    .prologue
    .line 1903
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e()V

    .line 1906
    if-lez p1, :cond_0

    .line 1907
    const/4 v0, 0x1

    .line 1908
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()I

    move-result v1

    .line 1913
    :goto_0
    invoke-direct {p0, v1, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/aw;)V

    .line 1914
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)V

    .line 1915
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iget v2, v2, Landroid/support/v7/widget/F;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/F;->b:I

    .line 1916
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1917
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iput v1, v0, Landroid/support/v7/widget/F;->a:I

    .line 1918
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/F;Landroid/support/v7/widget/aw;)I

    move-result v0

    .line 1920
    if-ge v1, v0, :cond_1

    .line 1931
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Z;->a(I)V

    .line 1933
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Z

    .line 1934
    return p1

    .line 1910
    :cond_0
    const/4 v0, -0x1

    .line 1911
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v1

    goto :goto_0

    .line 1922
    :cond_1
    if-gez p1, :cond_2

    .line 1923
    neg-int p1, v0

    goto :goto_1

    :cond_2
    move p1, v0

    .line 1925
    goto :goto_1
.end method

.method private e()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    if-nez v0, :cond_0

    .line 513
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v7/widget/Z;->a(Landroid/support/v7/widget/ao;I)Landroid/support/v7/widget/Z;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    .line 514
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v7/widget/Z;->a(Landroid/support/v7/widget/ao;I)Landroid/support/v7/widget/Z;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Landroid/support/v7/widget/Z;

    .line 516
    new-instance v0, Landroid/support/v7/widget/F;

    invoke-direct {v0}, Landroid/support/v7/widget/F;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    .line 518
    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1297
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iput p1, v2, Landroid/support/v7/widget/F;->d:I

    .line 1298
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-ne p1, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    :goto_1
    iput v0, v3, Landroid/support/v7/widget/F;->c:I

    .line 1300
    return-void

    .line 1298
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private g(Landroid/support/v7/widget/aw;)I
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 933
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 937
    :goto_0
    return v5

    .line 936
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e()V

    .line 937
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-direct {p0, v3, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v3, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/aw;Landroid/support/v7/widget/Z;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/ao;ZZ)I

    move-result v5

    goto :goto_0
.end method

.method private h(Landroid/support/v7/widget/aw;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 954
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 958
    :goto_0
    return v5

    .line 957
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e()V

    .line 958
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-direct {p0, v3, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v3, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/a;->a(Landroid/support/v7/widget/aw;Landroid/support/v7/widget/Z;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/ao;Z)I

    move-result v5

    goto :goto_0
.end method

.method private i(Landroid/support/v7/widget/aw;)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 975
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-nez v0, :cond_0

    .line 979
    :goto_0
    return v5

    .line 978
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e()V

    .line 979
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-direct {p0, v3, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v3, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v3

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/a;->b(Landroid/support/v7/widget/aw;Landroid/support/v7/widget/Z;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/ao;Z)I

    move-result v5

    goto :goto_0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 527
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r()Z

    move-result v0

    if-nez v0, :cond_0

    .line 528
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:Z

    .line 530
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    .line 532
    return-void

    .line 530
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 535
    .line 9967
    iget-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 535
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private s()I
    .locals 1

    .prologue
    .line 1938
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    .line 1939
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private t()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1943
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v1

    .line 1944
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 1832
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 929
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final a()Landroid/support/v7/widget/ap;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 1982
    new-instance v0, Landroid/support/v7/widget/aO;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/aO;-><init>(II)V

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/ap;
    .locals 1

    .prologue
    .line 1988
    new-instance v0, Landroid/support/v7/widget/aO;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/aO;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ap;
    .locals 1

    .prologue
    .line 1993
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 1994
    new-instance v0, Landroid/support/v7/widget/aO;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/aO;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1996
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/aO;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/aO;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 1325
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1326
    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1043
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1044
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1045
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    .line 1049
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ar;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t:Ljava/lang/Runnable;

    .line 9679
    iget-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 9680
    iget-object v1, p0, Landroid/support/v7/widget/ao;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 292
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)V
    .locals 10

    .prologue
    const/high16 v9, -0x80000000

    const/4 v8, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 551
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e()V

    .line 552
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r:Landroid/support/v7/widget/av;

    .line 553
    invoke-virtual {v5}, Landroid/support/v7/widget/av;->a()V

    .line 555
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_d

    .line 10640
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-lez v0, :cond_0

    .line 10641
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-nez v0, :cond_b

    .line 10659
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    .line 10660
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 11435
    invoke-virtual {p0, v8}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 11436
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    if-eq v3, v0, :cond_1

    .line 11437
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 11439
    :cond_1
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:Z

    .line 11440
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    .line 10661
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()V

    .line 10663
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v0, v4, :cond_c

    .line 10664
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 10665
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/av;->c:Z

    .line 10669
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    if-le v0, v1, :cond_2

    .line 10670
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    iput-object v0, v8, Landroid/support/v7/widget/av;->f:[I

    .line 10671
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    iput-object v0, v8, Landroid/support/v7/widget/av;->g:Ljava/util/List;

    .line 11703
    :cond_2
    :goto_2
    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v0, v4, :cond_e

    :cond_3
    move v0, v2

    .line 11676
    :goto_3
    if-nez v0, :cond_5

    .line 12694
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Z

    if-eqz v0, :cond_23

    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->d()I

    move-result v6

    .line 12970
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_4
    if-ltz v3, :cond_22

    .line 12971
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    .line 12972
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)I

    move-result v0

    .line 12973
    if-ltz v0, :cond_21

    if-ge v0, v6, :cond_21

    .line 12694
    :cond_4
    :goto_5
    iput v0, v5, Landroid/support/v7/widget/av;->a:I

    .line 12697
    iput v9, v5, Landroid/support/v7/widget/av;->b:I

    .line 564
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_7

    .line 565
    iget-boolean v0, v5, Landroid/support/v7/widget/av;->c:Z

    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Z

    if-ne v0, v3, :cond_6

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r()Z

    move-result v0

    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    if-eq v0, v3, :cond_7

    .line 567
    :cond_6
    invoke-virtual {v8}, Landroid/support/v7/widget/av;->c()V

    .line 568
    iput-boolean v1, v5, Landroid/support/v7/widget/av;->d:Z

    .line 572
    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 588
    :cond_8
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ar;)V

    .line 589
    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s:Z

    .line 14782
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->f()I

    move-result v0

    div-int/lit8 v0, v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 14783
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->f()I

    move-result v0

    const/high16 v3, 0x40000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    .line 14789
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    const/high16 v3, 0x40000000

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:I

    .line 14790
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:I

    .line 591
    iget v0, v5, Landroid/support/v7/widget/av;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/aw;)V

    .line 592
    iget-boolean v0, v5, Landroid/support/v7/widget/av;->c:Z

    if-eqz v0, :cond_26

    .line 594
    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)V

    .line 595
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/F;Landroid/support/v7/widget/aw;)I

    .line 597
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)V

    .line 598
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iget v3, v5, Landroid/support/v7/widget/av;->a:I

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iget v6, v6, Landroid/support/v7/widget/F;->c:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/support/v7/widget/F;->b:I

    .line 599
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/F;Landroid/support/v7/widget/aw;)I

    .line 610
    :goto_6
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-lez v0, :cond_9

    .line 611
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v0, :cond_27

    .line 612
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;Z)V

    .line 613
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;Z)V

    .line 620
    :cond_9
    :goto_7
    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->a()Z

    move-result v0

    if-nez v0, :cond_a

    .line 628
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 629
    iput v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    .line 631
    :cond_a
    iget-boolean v0, v5, Landroid/support/v7/widget/av;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Z

    .line 632
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    .line 633
    iput-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 634
    return-void

    .line 10655
    :cond_b
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 10722
    iput-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    .line 10723
    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 10724
    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 10725
    iput-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 10726
    iput-object v8, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 10656
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    iput v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    goto/16 :goto_0

    .line 10667
    :cond_c
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/av;->c:Z

    goto/16 :goto_1

    .line 558
    :cond_d
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->q()V

    .line 559
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/av;->c:Z

    goto/16 :goto_2

    .line 11707
    :cond_e
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ltz v0, :cond_f

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->d()I

    move-result v3

    if-lt v0, v3, :cond_10

    .line 11708
    :cond_f
    iput v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 11709
    iput v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    move v0, v2

    .line 11710
    goto/16 :goto_3

    .line 11713
    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v0, v4, :cond_11

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-gtz v0, :cond_20

    .line 11716
    :cond_11
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)Landroid/view/View;

    move-result-object v3

    .line 11717
    if-eqz v3, :cond_19

    .line 11720
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()I

    move-result v0

    :goto_8
    iput v0, v5, Landroid/support/v7/widget/av;->a:I

    .line 11723
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-eq v0, v9, :cond_14

    .line 11724
    iget-boolean v0, v5, Landroid/support/v7/widget/av;->c:Z

    if-eqz v0, :cond_13

    .line 11725
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v0

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    sub-int/2addr v0, v6

    .line 11727
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v5, Landroid/support/v7/widget/av;->b:I

    :goto_9
    move v0, v1

    .line 11733
    goto/16 :goto_3

    .line 11720
    :cond_12
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v0

    goto :goto_8

    .line 11729
    :cond_13
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v0

    iget v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    add-int/2addr v0, v6

    .line 11731
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, v5, Landroid/support/v7/widget/av;->b:I

    goto :goto_9

    .line 11737
    :cond_14
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Z;->c(Landroid/view/View;)I

    move-result v0

    .line 11738
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v6}, Landroid/support/v7/widget/Z;->f()I

    move-result v6

    if-le v0, v6, :cond_16

    .line 11740
    iget-boolean v0, v5, Landroid/support/v7/widget/av;->c:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v0

    :goto_a
    iput v0, v5, Landroid/support/v7/widget/av;->b:I

    :goto_b
    move v0, v1

    .line 11778
    goto/16 :goto_3

    .line 11740
    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v0

    goto :goto_a

    .line 11746
    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v0

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v6}, Landroid/support/v7/widget/Z;->c()I

    move-result v6

    sub-int/2addr v0, v6

    .line 11748
    if-gez v0, :cond_17

    .line 11749
    neg-int v0, v0

    iput v0, v5, Landroid/support/v7/widget/av;->b:I

    goto :goto_b

    .line 11752
    :cond_17
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v0

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v6, v3}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v0, v3

    .line 11754
    if-gez v0, :cond_18

    .line 11755
    iput v0, v5, Landroid/support/v7/widget/av;->b:I

    goto :goto_b

    .line 11759
    :cond_18
    iput v9, v5, Landroid/support/v7/widget/av;->b:I

    goto :goto_b

    .line 11763
    :cond_19
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    iput v0, v5, Landroid/support/v7/widget/av;->a:I

    .line 11764
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-ne v0, v9, :cond_1f

    .line 11765
    iget v0, v5, Landroid/support/v7/widget/av;->a:I

    .line 11842
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v3

    if-nez v3, :cond_1b

    .line 11843
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v0, :cond_1a

    move v0, v1

    .line 11767
    :goto_c
    if-ne v0, v1, :cond_1e

    move v0, v1

    :goto_d
    iput-boolean v0, v5, Landroid/support/v7/widget/av;->c:Z

    .line 11768
    invoke-virtual {v5}, Landroid/support/v7/widget/av;->b()V

    .line 11772
    :goto_e
    iput-boolean v1, v5, Landroid/support/v7/widget/av;->d:Z

    goto :goto_b

    :cond_1a
    move v0, v4

    .line 11843
    goto :goto_c

    .line 11845
    :cond_1b
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v3

    .line 11846
    if-ge v0, v3, :cond_1c

    move v0, v1

    :goto_f
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eq v0, v3, :cond_1d

    move v0, v4

    goto :goto_c

    :cond_1c
    move v0, v2

    goto :goto_f

    :cond_1d
    move v0, v1

    goto :goto_c

    :cond_1e
    move v0, v2

    .line 11767
    goto :goto_d

    .line 11770
    :cond_1f
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/av;->a(I)V

    goto :goto_e

    .line 11775
    :cond_20
    iput v9, v5, Landroid/support/v7/widget/av;->b:I

    .line 11776
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    iput v0, v5, Landroid/support/v7/widget/av;->a:I

    goto :goto_b

    .line 12970
    :cond_21
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto/16 :goto_4

    :cond_22
    move v0, v2

    .line 12694
    goto/16 :goto_5

    :cond_23
    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->d()I

    move-result v6

    .line 13953
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v7

    move v3, v2

    .line 13954
    :goto_10
    if-ge v3, v7, :cond_25

    .line 13955
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)Landroid/view/View;

    move-result-object v0

    .line 13956
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)I

    move-result v0

    .line 13957
    if-ltz v0, :cond_24

    if-lt v0, v6, :cond_4

    .line 13954
    :cond_24
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_10

    :cond_25
    move v0, v2

    .line 13961
    goto/16 :goto_5

    .line 602
    :cond_26
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)V

    .line 603
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/F;Landroid/support/v7/widget/aw;)I

    .line 605
    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)V

    .line 606
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iget v3, v5, Landroid/support/v7/widget/av;->a:I

    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    iget v6, v6, Landroid/support/v7/widget/F;->c:I

    add-int/2addr v3, v6

    iput v3, v0, Landroid/support/v7/widget/F;->b:I

    .line 607
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/F;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/F;Landroid/support/v7/widget/aw;)I

    goto/16 :goto_6

    .line 615
    :cond_27
    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;Z)V

    .line 616
    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;Z)V

    goto/16 :goto_7
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1126
    invoke-super {p0, p1}, Landroid/support/v7/widget/ao;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1127
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-lez v0, :cond_0

    .line 1128
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 1130
    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v1

    .line 1131
    invoke-direct {p0, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v2

    .line 1132
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 1145
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)I

    move-result v1

    .line 1136
    invoke-static {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)I

    move-result v2

    .line 1137
    if-ge v1, v2, :cond_2

    .line 1138
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1139
    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_0

    .line 1141
    :cond_2
    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1142
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 487
    invoke-super {p0, p1}, Landroid/support/v7/widget/ao;->a(Ljava/lang/String;)V

    .line 489
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ap;)Z
    .locals 1

    .prologue
    .line 2002
    instance-of v0, p1, Landroid/support/v7/widget/aO;

    return v0
.end method

.method public final b(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 1838
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 1162
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 945
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g(Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final b()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1053
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1054
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    .line 1099
    :goto_0
    return-object v0

    .line 1056
    :cond_0
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1057
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 1058
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 1059
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    iput-boolean v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    .line 1066
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 1069
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    move-result v0

    if-lez v0, :cond_4

    .line 1070
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e()V

    .line 1071
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()I

    move-result v0

    :goto_1
    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 15153
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, v4, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(ZZ)Landroid/view/View;

    move-result-object v0

    .line 15155
    :goto_2
    if-nez v0, :cond_3

    move v0, v1

    .line 1073
    :goto_3
    iput v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1074
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 1075
    new-array v0, v3, [I

    iput-object v0, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    :goto_4
    move-object v0, v2

    .line 1099
    goto :goto_0

    .line 1071
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()I

    move-result v0

    goto :goto_1

    .line 15153
    :cond_2
    invoke-direct {p0, v4, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ZZ)Landroid/view/View;

    move-result-object v0

    goto :goto_2

    .line 15155
    :cond_3
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)I

    move-result v0

    goto :goto_3

    .line 1092
    :cond_4
    iput v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 1093
    iput v1, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1094
    iput v3, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    goto :goto_4
.end method

.method public final b(II)V
    .locals 1

    .prologue
    .line 1320
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1321
    return-void
.end method

.method public final b(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 1105
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1106
    instance-of v1, v0, Landroid/support/v7/widget/aO;

    if-nez v1, :cond_0

    .line 1107
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/ao;->a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1122
    :goto_0
    return-void

    .line 1110
    :cond_0
    check-cast v0, Landroid/support/v7/widget/aO;

    .line 16078
    iget-object v1, v0, Landroid/support/v7/widget/aO;->e:Landroid/support/v7/widget/aR;

    if-nez v1, :cond_1

    move v0, v2

    .line 1112
    :goto_1
    const/4 v1, 0x1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 16081
    :cond_1
    iget-object v0, v0, Landroid/support/v7/widget/aO;->e:Landroid/support/v7/widget/aR;

    iget v0, v0, Landroid/support/v7/widget/aR;->d:I

    goto :goto_1
.end method

.method public final c(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 1173
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/ao;->c(Landroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final c(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 950
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 1304
    invoke-super {p0, p1}, Landroid/support/v7/widget/ao;->c(I)V

    .line 1308
    return-void
.end method

.method public final c(II)V
    .locals 1

    .prologue
    .line 1341
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1342
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1826
    const/4 v0, 0x1

    return v0
.end method

.method public final d(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 966
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 1312
    invoke-super {p0, p1}, Landroid/support/v7/widget/ao;->d(I)V

    .line 1316
    return-void
.end method

.method public final d(II)V
    .locals 1

    .prologue
    .line 1336
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(III)V

    .line 1337
    return-void
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 1821
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 971
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final e(I)V
    .locals 0

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 9235
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()I

    .line 284
    :cond_0
    return-void
.end method

.method public final f(Landroid/support/v7/widget/aw;)I
    .locals 1

    .prologue
    .line 987
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/aw;)I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 1330
    const/4 v0, 0x0

    invoke-virtual {v0}, Landroid/support/v7/widget/av;->c()V

    .line 1331
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    .line 1332
    return-void
.end method
