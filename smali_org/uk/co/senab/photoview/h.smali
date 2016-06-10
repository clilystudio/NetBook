.class final Luk/co/senab/photoview/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Luk/co/senab/photoview/c/d;

.field private b:I

.field private c:I

.field private synthetic d:Luk/co/senab/photoview/d;


# direct methods
.method public constructor <init>(Luk/co/senab/photoview/d;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1050
    iput-object p1, p0, Luk/co/senab/photoview/h;->d:Luk/co/senab/photoview/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2025
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 2026
    new-instance v0, Luk/co/senab/photoview/c/c;

    invoke-direct {v0, p2}, Luk/co/senab/photoview/c/c;-><init>(Landroid/content/Context;)V

    .line 1051
    :goto_0
    iput-object v0, p0, Luk/co/senab/photoview/h;->a:Luk/co/senab/photoview/c/d;

    .line 1052
    return-void

    .line 2027
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 2028
    new-instance v0, Luk/co/senab/photoview/c/a;

    invoke-direct {v0, p2}, Luk/co/senab/photoview/c/a;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 2030
    :cond_1
    new-instance v0, Luk/co/senab/photoview/c/b;

    invoke-direct {v0, p2}, Luk/co/senab/photoview/c/b;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 1056
    invoke-static {}, Luk/co/senab/photoview/b/a;->a()Luk/co/senab/photoview/b/b;

    move-result-object v0

    const-string v1, "PhotoViewAttacher"

    const-string v2, "Cancel Fling"

    invoke-virtual {v0, v1, v2}, Luk/co/senab/photoview/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v0, p0, Luk/co/senab/photoview/h;->a:Luk/co/senab/photoview/c/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/co/senab/photoview/c/d;->a(Z)V

    .line 1059
    return-void
.end method

.method public final a(IIII)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 1063
    iget-object v0, p0, Luk/co/senab/photoview/h;->d:Luk/co/senab/photoview/d;

    invoke-virtual {v0}, Luk/co/senab/photoview/d;->b()Landroid/graphics/RectF;

    move-result-object v0

    .line 1064
    if-nez v0, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1068
    :cond_1
    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1071
    int-to-float v2, p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 1073
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, p1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v6

    move v5, v9

    .line 1078
    :goto_1
    iget v2, v0, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1079
    int-to-float v3, p2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 1081
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    int-to-float v3, p2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    move v7, v9

    .line 1086
    :goto_2
    iput v1, p0, Luk/co/senab/photoview/h;->b:I

    .line 1087
    iput v2, p0, Luk/co/senab/photoview/h;->c:I

    .line 1090
    invoke-static {}, Luk/co/senab/photoview/b/a;->a()Luk/co/senab/photoview/b/b;

    move-result-object v0

    const-string v3, "PhotoViewAttacher"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v10, "fling. StartX:"

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " StartY:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " MaxX:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v10, " MaxY:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Luk/co/senab/photoview/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    if-ne v1, v6, :cond_2

    if-eq v2, v8, :cond_0

    .line 1099
    :cond_2
    iget-object v0, p0, Luk/co/senab/photoview/h;->a:Luk/co/senab/photoview/c/d;

    move v3, p3

    move v4, p4

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Luk/co/senab/photoview/c/d;->a(IIIIIIIIII)V

    goto :goto_0

    :cond_3
    move v5, v1

    move v6, v1

    .line 1075
    goto :goto_1

    :cond_4
    move v7, v2

    move v8, v2

    .line 1083
    goto :goto_2
.end method

.method public final run()V
    .locals 7

    .prologue
    .line 1106
    iget-object v0, p0, Luk/co/senab/photoview/h;->a:Luk/co/senab/photoview/c/d;

    invoke-virtual {v0}, Luk/co/senab/photoview/c/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    iget-object v0, p0, Luk/co/senab/photoview/h;->d:Luk/co/senab/photoview/d;

    invoke-virtual {v0}, Luk/co/senab/photoview/d;->c()Landroid/widget/ImageView;

    move-result-object v0

    .line 1111
    if-eqz v0, :cond_0

    iget-object v1, p0, Luk/co/senab/photoview/h;->a:Luk/co/senab/photoview/c/d;

    invoke-virtual {v1}, Luk/co/senab/photoview/c/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    iget-object v1, p0, Luk/co/senab/photoview/h;->a:Luk/co/senab/photoview/c/d;

    invoke-virtual {v1}, Luk/co/senab/photoview/c/d;->c()I

    move-result v1

    .line 1114
    iget-object v2, p0, Luk/co/senab/photoview/h;->a:Luk/co/senab/photoview/c/d;

    invoke-virtual {v2}, Luk/co/senab/photoview/c/d;->d()I

    move-result v2

    .line 1117
    invoke-static {}, Luk/co/senab/photoview/b/a;->a()Luk/co/senab/photoview/b/b;

    move-result-object v3

    const-string v4, "PhotoViewAttacher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fling run(). CurrentX:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Luk/co/senab/photoview/h;->b:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " CurrentY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Luk/co/senab/photoview/h;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NewX:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NewY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Luk/co/senab/photoview/b/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    iget-object v3, p0, Luk/co/senab/photoview/h;->d:Luk/co/senab/photoview/d;

    invoke-static {v3}, Luk/co/senab/photoview/d;->b(Luk/co/senab/photoview/d;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Luk/co/senab/photoview/h;->b:I

    sub-int/2addr v4, v1

    int-to-float v4, v4

    iget v5, p0, Luk/co/senab/photoview/h;->c:I

    sub-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1126
    iget-object v3, p0, Luk/co/senab/photoview/h;->d:Luk/co/senab/photoview/d;

    iget-object v4, p0, Luk/co/senab/photoview/h;->d:Luk/co/senab/photoview/d;

    invoke-virtual {v4}, Luk/co/senab/photoview/d;->l()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-static {v3, v4}, Luk/co/senab/photoview/d;->a(Luk/co/senab/photoview/d;Landroid/graphics/Matrix;)V

    .line 1128
    iput v1, p0, Luk/co/senab/photoview/h;->b:I

    .line 1129
    iput v2, p0, Luk/co/senab/photoview/h;->c:I

    .line 1132
    invoke-static {v0, p0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
