.class Lcom/c/a/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:Landroid/view/animation/Interpolator;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/c/a/o;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/c/a/v;

.field private e:Lcom/c/a/o;

.field private f:Lcom/c/a/o;


# direct methods
.method public varargs constructor <init>([Lcom/c/a/o;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    array-length v0, p1

    iput v0, p0, Lcom/c/a/r;->a:I

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/c/a/r;->c:Ljava/util/ArrayList;

    .line 47
    iget-object v0, p0, Lcom/c/a/r;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v0, p0, Lcom/c/a/r;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/o;

    iput-object v0, p0, Lcom/c/a/r;->e:Lcom/c/a/o;

    .line 49
    iget-object v0, p0, Lcom/c/a/r;->c:Ljava/util/ArrayList;

    iget v1, p0, Lcom/c/a/r;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/o;

    iput-object v0, p0, Lcom/c/a/r;->f:Lcom/c/a/o;

    .line 50
    iget-object v0, p0, Lcom/c/a/r;->f:Lcom/c/a/o;

    invoke-virtual {v0}, Lcom/c/a/o;->b()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/r;->b:Landroid/view/animation/Interpolator;

    .line 51
    return-void
.end method


# virtual methods
.method public a()Lcom/c/a/r;
    .locals 5

    .prologue
    .line 144
    iget-object v2, p0, Lcom/c/a/r;->c:Ljava/util/ArrayList;

    .line 145
    iget-object v0, p0, Lcom/c/a/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 146
    new-array v4, v3, [Lcom/c/a/o;

    .line 147
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 148
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/o;

    invoke-virtual {v0}, Lcom/c/a/o;->c()Lcom/c/a/o;

    move-result-object v0

    aput-object v0, v4, v1

    .line 147
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 150
    :cond_0
    new-instance v0, Lcom/c/a/r;

    invoke-direct {v0, v4}, Lcom/c/a/r;-><init>([Lcom/c/a/o;)V

    .line 151
    return-object v0
.end method

.method public a(F)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 169
    iget v1, p0, Lcom/c/a/r;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 170
    iget-object v0, p0, Lcom/c/a/r;->b:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/c/a/r;->b:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/c/a/r;->d:Lcom/c/a/v;

    iget-object v1, p0, Lcom/c/a/r;->e:Lcom/c/a/o;

    invoke-virtual {v1}, Lcom/c/a/o;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/r;->f:Lcom/c/a/o;

    invoke-virtual {v2}, Lcom/c/a/o;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/c/a/v;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 216
    :goto_0
    return-object v0

    .line 176
    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_3

    .line 177
    iget-object v1, p0, Lcom/c/a/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/o;

    .line 178
    invoke-virtual {v0}, Lcom/c/a/o;->b()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_2

    .line 180
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 182
    :cond_2
    iget-object v1, p0, Lcom/c/a/r;->e:Lcom/c/a/o;

    .line 1191
    iget v1, v1, Lcom/c/a/o;->a:F

    .line 183
    sub-float v2, p1, v1

    .line 2191
    iget v3, v0, Lcom/c/a/o;->a:F

    .line 183
    sub-float v1, v3, v1

    div-float v1, v2, v1

    .line 185
    iget-object v2, p0, Lcom/c/a/r;->d:Lcom/c/a/v;

    iget-object v3, p0, Lcom/c/a/r;->e:Lcom/c/a/o;

    invoke-virtual {v3}, Lcom/c/a/o;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lcom/c/a/o;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v3, v0}, Lcom/c/a/v;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_5

    .line 188
    iget-object v0, p0, Lcom/c/a/r;->c:Ljava/util/ArrayList;

    iget v1, p0, Lcom/c/a/r;->a:I

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/o;

    .line 189
    iget-object v1, p0, Lcom/c/a/r;->f:Lcom/c/a/o;

    invoke-virtual {v1}, Lcom/c/a/o;->b()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_4

    .line 191
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 3191
    :cond_4
    iget v1, v0, Lcom/c/a/o;->a:F

    .line 194
    sub-float v2, p1, v1

    iget-object v3, p0, Lcom/c/a/r;->f:Lcom/c/a/o;

    .line 4191
    iget v3, v3, Lcom/c/a/o;->a:F

    .line 194
    sub-float v1, v3, v1

    div-float v1, v2, v1

    .line 196
    iget-object v2, p0, Lcom/c/a/r;->d:Lcom/c/a/v;

    invoke-virtual {v0}, Lcom/c/a/o;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/c/a/r;->f:Lcom/c/a/o;

    invoke-virtual {v3}, Lcom/c/a/o;->a()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v0, v3}, Lcom/c/a/v;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_5
    iget-object v1, p0, Lcom/c/a/r;->e:Lcom/c/a/o;

    move-object v2, v1

    move v1, v0

    .line 200
    :goto_1
    iget v0, p0, Lcom/c/a/r;->a:I

    if-ge v1, v0, :cond_8

    .line 201
    iget-object v0, p0, Lcom/c/a/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/o;

    .line 5191
    iget v3, v0, Lcom/c/a/o;->a:F

    .line 202
    cmpg-float v3, p1, v3

    if-gez v3, :cond_7

    .line 203
    invoke-virtual {v0}, Lcom/c/a/o;->b()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_6

    .line 205
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 6191
    :cond_6
    iget v1, v2, Lcom/c/a/o;->a:F

    .line 208
    sub-float v3, p1, v1

    .line 7191
    iget v4, v0, Lcom/c/a/o;->a:F

    .line 208
    sub-float v1, v4, v1

    div-float v1, v3, v1

    .line 210
    iget-object v3, p0, Lcom/c/a/r;->d:Lcom/c/a/v;

    invoke-virtual {v2}, Lcom/c/a/o;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lcom/c/a/o;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v1, v2, v0}, Lcom/c/a/v;->a(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0

    .line 200
    :cond_7
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_1

    .line 216
    :cond_8
    iget-object v0, p0, Lcom/c/a/r;->f:Lcom/c/a/o;

    invoke-virtual {v0}, Lcom/c/a/o;->a()Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/c/a/r;->a()Lcom/c/a/r;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 221
    const-string v1, " "

    .line 222
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_0
    iget v2, p0, Lcom/c/a/r;->a:I

    if-ge v1, v2, :cond_0

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/c/a/r;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/o;

    invoke-virtual {v0}, Lcom/c/a/o;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 225
    :cond_0
    return-object v0
.end method
