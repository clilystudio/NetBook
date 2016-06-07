.class final Lcom/handmark/pulltorefresh/library/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/view/animation/Interpolator;

.field private final b:I

.field private final c:I

.field private final d:J

.field private e:Lcom/handmark/pulltorefresh/library/l;

.field private f:Z

.field private g:J

.field private h:I

.field private synthetic i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/l;)V
    .locals 2

    .prologue
    .line 1698
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/m;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/m;->f:Z

    .line 1694
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/handmark/pulltorefresh/library/m;->g:J

    .line 1695
    const/4 v0, -0x1

    iput v0, p0, Lcom/handmark/pulltorefresh/library/m;->h:I

    .line 1699
    iput p2, p0, Lcom/handmark/pulltorefresh/library/m;->c:I

    .line 1700
    iput p3, p0, Lcom/handmark/pulltorefresh/library/m;->b:I

    .line 1701
    invoke-static {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->d(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/m;->a:Landroid/view/animation/Interpolator;

    .line 1702
    iput-wide p4, p0, Lcom/handmark/pulltorefresh/library/m;->d:J

    .line 1703
    iput-object p6, p0, Lcom/handmark/pulltorefresh/library/m;->e:Lcom/handmark/pulltorefresh/library/l;

    .line 1704
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1744
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/m;->f:Z

    .line 1745
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/m;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1746
    return-void
.end method

.method public final run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 1713
    iget-wide v0, p0, Lcom/handmark/pulltorefresh/library/m;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1714
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/handmark/pulltorefresh/library/m;->g:J

    .line 1734
    :goto_0
    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/m;->f:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/handmark/pulltorefresh/library/m;->b:I

    iget v1, p0, Lcom/handmark/pulltorefresh/library/m;->h:I

    if-eq v0, v1, :cond_2

    .line 1735
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/m;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-static {v0, p0}, Lcom/handmark/pulltorefresh/library/internal/e;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1741
    :cond_0
    :goto_1
    return-void

    .line 1722
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/handmark/pulltorefresh/library/m;->g:J

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    iget-wide v2, p0, Lcom/handmark/pulltorefresh/library/m;->d:J

    div-long/2addr v0, v2

    .line 1724
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1726
    iget v2, p0, Lcom/handmark/pulltorefresh/library/m;->c:I

    iget v3, p0, Lcom/handmark/pulltorefresh/library/m;->b:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/m;->a:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 1728
    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v2

    .line 1726
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1729
    iget v1, p0, Lcom/handmark/pulltorefresh/library/m;->c:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/m;->h:I

    .line 1730
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/m;->i:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    iget v1, p0, Lcom/handmark/pulltorefresh/library/m;->h:I

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(I)V

    goto :goto_0

    .line 1737
    :cond_2
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/m;->e:Lcom/handmark/pulltorefresh/library/l;

    if-eqz v0, :cond_0

    .line 1738
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/m;->e:Lcom/handmark/pulltorefresh/library/l;

    invoke-interface {v0}, Lcom/handmark/pulltorefresh/library/l;->a()V

    goto :goto_1
.end method
