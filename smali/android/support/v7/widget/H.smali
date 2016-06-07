.class final Landroid/support/v7/widget/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:Z

.field final synthetic d:Landroid/support/v7/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    .prologue
    .line 2087
    iput-object p1, p0, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/H;Landroid/view/View;Landroid/support/v7/widget/aw;)Z
    .locals 2

    .prologue
    .line 2087
    .line 9117
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ap;

    .line 9452
    iget-object v1, v0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v1}, Landroid/support/v7/widget/ay;->m()Z

    move-result v1

    .line 9118
    if-nez v1, :cond_0

    .line 9480
    iget-object v1, v0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v1}, Landroid/support/v7/widget/ay;->c()I

    move-result v1

    .line 9118
    if-ltz v1, :cond_0

    .line 10480
    iget-object v0, v0, Landroid/support/v7/widget/ap;->a:Landroid/support/v7/widget/ay;

    invoke-virtual {v0}, Landroid/support/v7/widget/ay;->c()I

    move-result v0

    .line 9118
    invoke-virtual {p2}, Landroid/support/v7/widget/aw;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2087
    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 2102
    iget-boolean v0, p0, Landroid/support/v7/widget/H;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->d()I

    move-result v0

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/H;->b:I

    .line 2105
    return-void

    .line 2102
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0}, Landroid/support/v7/widget/Z;->c()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2170
    iget-boolean v0, p0, Landroid/support/v7/widget/H;->c:Z

    if-eqz v0, :cond_0

    .line 2171
    iget-object v0, p0, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Z;->b(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v1}, Landroid/support/v7/widget/Z;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/H;->b:I

    .line 2177
    :goto_0
    invoke-static {p1}, Landroid/support/v7/widget/LinearLayoutManager;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/H;->a:I

    .line 2178
    return-void

    .line 2174
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/H;->d:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->a:Landroid/support/v7/widget/Z;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Z;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/H;->b:I

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnchorInfo{mPosition="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/support/v7/widget/H;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCoordinate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/H;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutFromEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/support/v7/widget/H;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
