.class final Landroid/support/v7/widget/ai;
.super Landroid/database/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroid/support/v7/widget/aj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8936
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 8946
    iget-object v0, p0, Landroid/support/v7/widget/ai;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 8947
    iget-object v0, p0, Landroid/support/v7/widget/ai;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    invoke-virtual {v0}, Landroid/support/v7/widget/aj;->a()V

    .line 8946
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 8949
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 3

    .prologue
    .line 8966
    iget-object v0, p0, Landroid/support/v7/widget/ai;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 8967
    iget-object v0, p0, Landroid/support/v7/widget/ai;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/support/v7/widget/aj;->a(II)V

    .line 8966
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 8969
    :cond_0
    return-void
.end method

.method public final b(II)V
    .locals 3

    .prologue
    .line 8976
    iget-object v0, p0, Landroid/support/v7/widget/ai;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 8977
    iget-object v0, p0, Landroid/support/v7/widget/ai;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aj;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/support/v7/widget/aj;->b(II)V

    .line 8976
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 8979
    :cond_0
    return-void
.end method
