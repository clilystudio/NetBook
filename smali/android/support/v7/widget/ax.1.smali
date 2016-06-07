.class final Landroid/support/v7/widget/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/support/v4/widget/ScrollerCompat;

.field private d:Landroid/view/animation/Interpolator;

.field private e:Z

.field private f:Z

.field private synthetic g:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3746
    iput-object p1, p0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3737
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->h()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ax;->d:Landroid/view/animation/Interpolator;

    .line 3741
    iput-boolean v1, p0, Landroid/support/v7/widget/ax;->e:Z

    .line 3744
    iput-boolean v1, p0, Landroid/support/v7/widget/ax;->f:Z

    .line 3747
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->h()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ax;->c:Landroid/support/v4/widget/ScrollerCompat;

    .line 3748
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 3891
    iget-boolean v0, p0, Landroid/support/v7/widget/ax;->e:Z

    if-eqz v0, :cond_0

    .line 3892
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ax;->f:Z

    .line 3897
    :goto_0
    return-void

    .line 3894
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3895
    iget-object v0, p0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 9

    .prologue
    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    .line 3900
    iget-object v0, p0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3901
    iput v1, p0, Landroid/support/v7/widget/ax;->b:I

    iput v1, p0, Landroid/support/v7/widget/ax;->a:I

    .line 3902
    iget-object v0, p0, Landroid/support/v7/widget/ax;->c:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 3904
    invoke-virtual {p0}, Landroid/support/v7/widget/ax;->a()V

    .line 3905
    return-void
.end method

.method public final a(IIII)V
    .locals 12

    .prologue
    .line 3912
    .line 4922
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 4923
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 4924
    if-le v2, v3, :cond_1

    const/4 v0, 0x1

    .line 4925
    :goto_0
    const/4 v1, 0x0

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 4926
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 4927
    if-eqz v0, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 4928
    :goto_1
    div-int/lit8 v6, v1, 0x2

    .line 4929
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v8, v1

    div-float/2addr v5, v8

    invoke-static {v7, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 4930
    int-to-float v7, v6

    int-to-float v6, v6

    .line 5916
    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v5, v8

    .line 5917
    float-to-double v8, v5

    const-wide v10, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v8, v10

    double-to-float v5, v8

    .line 5918
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 4930
    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 4934
    if-lez v4, :cond_3

    .line 4935
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 4940
    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 5944
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->h()Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 5948
    iget-object v1, p0, Landroid/support/v7/widget/ax;->d:Landroid/view/animation/Interpolator;

    if-eq v1, v0, :cond_0

    .line 5949
    iput-object v0, p0, Landroid/support/v7/widget/ax;->d:Landroid/view/animation/Interpolator;

    .line 5950
    iget-object v1, p0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ax;->c:Landroid/support/v4/widget/ScrollerCompat;

    .line 5952
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 5953
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ax;->b:I

    iput v0, p0, Landroid/support/v7/widget/ax;->a:I

    .line 5954
    iget-object v0, p0, Landroid/support/v7/widget/ax;->c:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 5955
    invoke-virtual {p0}, Landroid/support/v7/widget/ax;->a()V

    .line 3913
    return-void

    .line 4924
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 4927
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    .line 4937
    :cond_3
    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    int-to-float v0, v0

    .line 4938
    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_4
    move v0, v3

    .line 4937
    goto :goto_3
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 3959
    iget-object v0, p0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3960
    iget-object v0, p0, Landroid/support/v7/widget/ax;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 3961
    return-void
.end method

.method public final run()V
    .locals 18

    .prologue
    .line 3752
    .line 4879
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v7/widget/ax;->f:Z

    .line 4880
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v7/widget/ax;->e:Z

    .line 3753
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)V

    .line 3756
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/ax;->c:Landroid/support/v4/widget/ScrollerCompat;

    .line 3757
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ao;

    .line 3758
    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3759
    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v9

    .line 3760
    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v10

    .line 3761
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/ax;->a:I

    sub-int v11, v9, v1

    .line 3762
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/ax;->b:I

    sub-int v12, v10, v1

    .line 3763
    const/4 v4, 0x0

    .line 3764
    const/4 v2, 0x0

    .line 3765
    move-object/from16 v0, p0

    iput v9, v0, Landroid/support/v7/widget/ax;->a:I

    .line 3766
    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/v7/widget/ax;->b:I

    .line 3767
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 3768
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ah;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 3769
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 3770
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)V

    .line 3771
    const-string v5, "RV Scroll"

    invoke-static {v5}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 3772
    if-eqz v11, :cond_0

    .line 3773
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ao;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/ar;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v3, v11, v4, v5}, Landroid/support/v7/widget/ao;->a(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I

    move-result v4

    .line 3774
    sub-int v3, v11, v4

    .line 3776
    :cond_0
    if-eqz v12, :cond_1

    .line 3777
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ao;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->a:Landroid/support/v7/widget/ar;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/aw;

    invoke-virtual {v1, v12, v2, v5}, Landroid/support/v7/widget/ao;->b(ILandroid/support/v7/widget/ar;Landroid/support/v7/widget/aw;)I

    move-result v2

    .line 3778
    sub-int v1, v12, v2

    .line 3780
    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 3781
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3783
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/q;

    invoke-virtual {v5}, Landroid/support/v7/widget/q;->a()I

    move-result v6

    .line 3784
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_4

    .line 3785
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/q;

    invoke-virtual {v7, v5}, Landroid/support/v7/widget/q;->b(I)Landroid/view/View;

    move-result-object v7

    .line 3786
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v13, v7}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ay;

    move-result-object v13

    .line 3787
    if-eqz v13, :cond_3

    iget-object v14, v13, Landroid/support/v7/widget/ay;->h:Landroid/support/v7/widget/ay;

    if-eqz v14, :cond_3

    .line 3788
    iget-object v13, v13, Landroid/support/v7/widget/ay;->h:Landroid/support/v7/widget/ay;

    iget-object v13, v13, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    .line 3789
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v14

    .line 3790
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    .line 3791
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v15

    if-ne v14, v15, :cond_2

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v15

    if-eq v7, v15, :cond_3

    .line 3793
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v15

    add-int/2addr v15, v14

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v16, v16, v7

    move/from16 v0, v16

    invoke-virtual {v13, v14, v7, v15, v0}, Landroid/view/View;->layout(IIII)V

    .line 3784
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3800
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/support/v7/widget/RecyclerView;)V

    .line 3801
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    :cond_5
    move/from16 v17, v3

    move v3, v2

    move/from16 v2, v17

    .line 3816
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3817
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 3819
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    .line 3821
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5, v11, v12}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3823
    :cond_7
    if-nez v2, :cond_8

    if-eqz v1, :cond_d

    .line 3824
    :cond_8
    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v5

    float-to-int v6, v5

    .line 3826
    const/4 v5, 0x0

    .line 3827
    if-eq v2, v9, :cond_1e

    .line 3828
    if-gez v2, :cond_16

    neg-int v5, v6

    :goto_1
    move v7, v5

    .line 3831
    :goto_2
    const/4 v5, 0x0

    .line 3832
    if-eq v1, v10, :cond_1d

    .line 3833
    if-gez v1, :cond_18

    neg-int v6, v6

    .line 3836
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v5

    const/4 v13, 0x2

    if-eq v5, v13, :cond_a

    .line 3838
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v7, v6}, Landroid/support/v7/widget/RecyclerView;->a(II)V

    .line 3840
    :cond_a
    if-nez v7, :cond_b

    if-eq v2, v9, :cond_b

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v2

    if-nez v2, :cond_d

    :cond_b
    if-nez v6, :cond_c

    if-eq v1, v10, :cond_c

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v1

    if-nez v1, :cond_d

    .line 3842
    :cond_c
    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 3845
    :cond_d
    if-nez v4, :cond_e

    if-eqz v3, :cond_f

    .line 3846
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v4, v3}, Landroid/support/v7/widget/RecyclerView;->c(II)V

    .line 3849
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 3850
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 3853
    :cond_10
    if-eqz v12, :cond_19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ao;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->d()Z

    move-result v1

    if-eqz v1, :cond_19

    if-ne v3, v12, :cond_19

    const/4 v1, 0x1

    move v2, v1

    .line 3855
    :goto_4
    if-eqz v11, :cond_1a

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ao;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/ao;->c()Z

    move-result v1

    if-eqz v1, :cond_1a

    if-ne v4, v11, :cond_1a

    const/4 v1, 0x1

    .line 3857
    :goto_5
    if-nez v11, :cond_11

    if-eqz v12, :cond_12

    :cond_11
    if-nez v1, :cond_12

    if-eqz v2, :cond_1b

    :cond_12
    const/4 v1, 0x1

    .line 3860
    :goto_6
    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_13

    if-nez v1, :cond_1c

    .line 3861
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ax;->g:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4884
    :cond_14
    :goto_7
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v7/widget/ax;->e:Z

    .line 4885
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/ax;->f:Z

    if-eqz v1, :cond_15

    .line 4886
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ax;->a()V

    .line 3876
    :cond_15
    return-void

    .line 3828
    :cond_16
    if-lez v2, :cond_17

    move v5, v6

    goto/16 :goto_1

    :cond_17
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3833
    :cond_18
    if-gtz v1, :cond_9

    const/4 v6, 0x0

    goto/16 :goto_3

    .line 3853
    :cond_19
    const/4 v1, 0x0

    move v2, v1

    goto :goto_4

    .line 3855
    :cond_1a
    const/4 v1, 0x0

    goto :goto_5

    .line 3857
    :cond_1b
    const/4 v1, 0x0

    goto :goto_6

    .line 3863
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ax;->a()V

    goto :goto_7

    :cond_1d
    move v6, v5

    goto/16 :goto_3

    :cond_1e
    move v7, v5

    goto/16 :goto_2
.end method
