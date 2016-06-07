.class final Landroid/support/v7/widget/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1877
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/J;->a:Z

    .line 1918
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/J;->h:I

    .line 1936
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/J;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Landroid/support/v7/widget/ar;)Landroid/view/View;
    .locals 5

    .prologue
    .line 1952
    iget-object v0, p0, Landroid/support/v7/widget/J;->j:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2968
    iget-object v0, p0, Landroid/support/v7/widget/J;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 2969
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 2970
    iget-object v0, p0, Landroid/support/v7/widget/J;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ay;

    .line 2971
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->m()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2974
    iget v3, p0, Landroid/support/v7/widget/J;->d:I

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->c()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2975
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/J;->a(Landroid/support/v7/widget/ay;)V

    .line 2976
    iget-object v0, v0, Landroid/support/v7/widget/ay;->a:Landroid/view/View;

    :goto_1
    return-object v0

    .line 2969
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2979
    :cond_1
    const/4 v0, 0x0

    .line 1953
    goto :goto_1

    .line 1955
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/J;->d:I

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ar;->b(I)Landroid/view/View;

    move-result-object v0

    .line 1956
    iget v1, p0, Landroid/support/v7/widget/J;->d:I

    iget v2, p0, Landroid/support/v7/widget/J;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/widget/J;->d:I

    goto :goto_1
.end method

.method public final a(Landroid/support/v7/widget/ay;)V
    .locals 8

    .prologue
    .line 1987
    .line 2993
    iget-object v0, p0, Landroid/support/v7/widget/J;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 2994
    const/4 v3, 0x0

    .line 2995
    const v2, 0x7fffffff

    .line 2999
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v5, :cond_0

    .line 3000
    iget-object v0, p0, Landroid/support/v7/widget/J;->j:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ay;

    .line 3001
    if-eq v0, p1, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->m()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3004
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->c()I

    move-result v1

    iget v6, p0, Landroid/support/v7/widget/J;->d:I

    sub-int/2addr v1, v6

    iget v6, p0, Landroid/support/v7/widget/J;->e:I

    mul-int/2addr v1, v6

    .line 3006
    if-ltz v1, :cond_3

    .line 3009
    if-ge v1, v2, :cond_3

    .line 3012
    if-eqz v1, :cond_1

    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 2999
    :goto_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v3, v1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v3

    .line 1988
    :cond_1
    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_2
    iput v0, p0, Landroid/support/v7/widget/J;->d:I

    .line 1990
    return-void

    .line 1988
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->c()I

    move-result v0

    goto :goto_2

    :cond_3
    move v0, v2

    move-object v1, v3

    goto :goto_1
.end method
