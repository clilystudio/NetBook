.class public final Landroid/support/v7/widget/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/v7/widget/ay;",
            "Landroid/support/v7/widget/an;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Landroid/support/v7/widget/ay;",
            "Landroid/support/v7/widget/an;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/support/v7/widget/ay;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9042
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/aw;->f:I

    .line 9043
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v4/util/ArrayMap;

    .line 9045
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aw;->b:Landroid/support/v4/util/ArrayMap;

    .line 9048
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aw;->c:Landroid/support/v4/util/ArrayMap;

    .line 9051
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/aw;->d:Ljava/util/List;

    .line 9058
    iput v1, p0, Landroid/support/v7/widget/aw;->e:I

    .line 9063
    iput v1, p0, Landroid/support/v7/widget/aw;->g:I

    .line 9069
    iput v1, p0, Landroid/support/v7/widget/aw;->h:I

    .line 9071
    iput-boolean v1, p0, Landroid/support/v7/widget/aw;->i:Z

    .line 9073
    iput-boolean v1, p0, Landroid/support/v7/widget/aw;->j:Z

    .line 9075
    iput-boolean v1, p0, Landroid/support/v7/widget/aw;->k:Z

    .line 9077
    iput-boolean v1, p0, Landroid/support/v7/widget/aw;->l:Z

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/aw;I)I
    .locals 1

    .prologue
    .line 9040
    iget v0, p0, Landroid/support/v7/widget/aw;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/aw;->h:I

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/aw;)Z
    .locals 1

    .prologue
    .line 9040
    iget-boolean v0, p0, Landroid/support/v7/widget/aw;->l:Z

    return v0
.end method

.method static synthetic a(Landroid/support/v7/widget/aw;Z)Z
    .locals 0

    .prologue
    .line 9040
    iput-boolean p1, p0, Landroid/support/v7/widget/aw;->i:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v7/widget/aw;I)I
    .locals 1

    .prologue
    .line 9040
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aw;->h:I

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/aw;)Z
    .locals 1

    .prologue
    .line 9040
    iget-boolean v0, p0, Landroid/support/v7/widget/aw;->k:Z

    return v0
.end method

.method static synthetic b(Landroid/support/v7/widget/aw;Z)Z
    .locals 0

    .prologue
    .line 9040
    iput-boolean p1, p0, Landroid/support/v7/widget/aw;->j:Z

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/aw;I)I
    .locals 0

    .prologue
    .line 9040
    iput p1, p0, Landroid/support/v7/widget/aw;->g:I

    return p1
.end method

.method static synthetic c(Landroid/support/v7/widget/aw;)Z
    .locals 1

    .prologue
    .line 9040
    iget-boolean v0, p0, Landroid/support/v7/widget/aw;->i:Z

    return v0
.end method

.method static synthetic c(Landroid/support/v7/widget/aw;Z)Z
    .locals 0

    .prologue
    .line 9040
    iput-boolean p1, p0, Landroid/support/v7/widget/aw;->k:Z

    return p1
.end method

.method static synthetic d(Landroid/support/v7/widget/aw;)Z
    .locals 1

    .prologue
    .line 9040
    iget-boolean v0, p0, Landroid/support/v7/widget/aw;->j:Z

    return v0
.end method

.method static synthetic d(Landroid/support/v7/widget/aw;Z)Z
    .locals 0

    .prologue
    .line 9040
    iput-boolean p1, p0, Landroid/support/v7/widget/aw;->l:Z

    return p1
.end method


# virtual methods
.method final a(Landroid/support/v7/widget/ay;)V
    .locals 3

    .prologue
    .line 9216
    iget-object v0, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9217
    iget-object v0, p0, Landroid/support/v7/widget/aw;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9218
    iget-object v0, p0, Landroid/support/v7/widget/aw;->c:Landroid/support/v4/util/ArrayMap;

    if-eqz v0, :cond_0

    .line 9219
    iget-object v1, p0, Landroid/support/v7/widget/aw;->c:Landroid/support/v4/util/ArrayMap;

    .line 10230
    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 10231
    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 10232
    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 9221
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/aw;->d:Ljava/util/List;

    iget-object v1, p1, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9223
    return-void

    .line 10230
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 9239
    iget-object v0, p0, Landroid/support/v7/widget/aw;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9240
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 9090
    iget-boolean v0, p0, Landroid/support/v7/widget/aw;->j:Z

    return v0
.end method

.method final b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 9243
    iget-object v0, p0, Landroid/support/v7/widget/aw;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9244
    iget-object v0, p0, Landroid/support/v7/widget/aw;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9246
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 9101
    iget-boolean v0, p0, Landroid/support/v7/widget/aw;->l:Z

    return v0
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 9174
    iget v0, p0, Landroid/support/v7/widget/aw;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 2

    .prologue
    .line 9210
    iget-boolean v0, p0, Landroid/support/v7/widget/aw;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/aw;->g:I

    iget v1, p0, Landroid/support/v7/widget/aw;->h:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/aw;->e:I

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State{mTargetPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/aw;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/aw;->a:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostLayoutHolderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/aw;->b:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/aw;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/aw;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/aw;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/aw;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/aw;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/aw;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/aw;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
