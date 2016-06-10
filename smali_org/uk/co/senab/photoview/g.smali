.class final Luk/co/senab/photoview/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:J

.field private final d:F

.field private final e:F

.field private synthetic f:Luk/co/senab/photoview/d;


# direct methods
.method public constructor <init>(Luk/co/senab/photoview/d;FFFF)V
    .locals 2

    .prologue
    .line 1009
    iput-object p1, p0, Luk/co/senab/photoview/g;->f:Luk/co/senab/photoview/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    iput p4, p0, Luk/co/senab/photoview/g;->a:F

    .line 1011
    iput p5, p0, Luk/co/senab/photoview/g;->b:F

    .line 1012
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Luk/co/senab/photoview/g;->c:J

    .line 1013
    iput p2, p0, Luk/co/senab/photoview/g;->d:F

    .line 1014
    iput p3, p0, Luk/co/senab/photoview/g;->e:F

    .line 1015
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000

    .line 1019
    iget-object v0, p0, Luk/co/senab/photoview/g;->f:Luk/co/senab/photoview/d;

    invoke-virtual {v0}, Luk/co/senab/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 1020
    if-nez v0, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 2038
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Luk/co/senab/photoview/g;->c:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, v6

    iget-object v2, p0, Luk/co/senab/photoview/g;->f:Luk/co/senab/photoview/d;

    iget v2, v2, Luk/co/senab/photoview/d;->b:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 2039
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 2040
    sget-object v2, Luk/co/senab/photoview/d;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 1025
    iget v2, p0, Luk/co/senab/photoview/g;->d:F

    iget v3, p0, Luk/co/senab/photoview/g;->e:F

    iget v4, p0, Luk/co/senab/photoview/g;->d:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 1026
    iget-object v3, p0, Luk/co/senab/photoview/g;->f:Luk/co/senab/photoview/d;

    invoke-virtual {v3}, Luk/co/senab/photoview/d;->g()F

    move-result v3

    div-float/2addr v2, v3

    .line 1028
    iget-object v3, p0, Luk/co/senab/photoview/g;->f:Luk/co/senab/photoview/d;

    invoke-static {v3}, Luk/co/senab/photoview/d;->b(Luk/co/senab/photoview/d;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Luk/co/senab/photoview/g;->a:F

    iget v5, p0, Luk/co/senab/photoview/g;->b:F

    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1029
    iget-object v2, p0, Luk/co/senab/photoview/g;->f:Luk/co/senab/photoview/d;

    invoke-static {v2}, Luk/co/senab/photoview/d;->c(Luk/co/senab/photoview/d;)V

    .line 1032
    cmpg-float v1, v1, v6

    if-gez v1, :cond_0

    .line 1033
    invoke-static {v0, p0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
