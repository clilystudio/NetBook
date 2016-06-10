.class final Lcom/c/a/u;
.super Lcom/c/a/s;
.source "SourceFile"


# instance fields
.field private c:Lcom/c/a/n;

.field private d:I


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/c/a/s;-><init>(Ljava/lang/String;B)V

    .line 783
    invoke-virtual {p0, p2}, Lcom/c/a/u;->a([I)V

    .line 784
    return-void
.end method

.method private d()Lcom/c/a/u;
    .locals 2

    .prologue
    .line 812
    invoke-super {p0}, Lcom/c/a/s;->a()Lcom/c/a/s;

    move-result-object v0

    check-cast v0, Lcom/c/a/u;

    .line 813
    iget-object v1, v0, Lcom/c/a/u;->b:Lcom/c/a/r;

    check-cast v1, Lcom/c/a/n;

    iput-object v1, v0, Lcom/c/a/u;->c:Lcom/c/a/n;

    .line 814
    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/c/a/s;
    .locals 1

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/c/a/u;->d()Lcom/c/a/u;

    move-result-object v0

    return-object v0
.end method

.method final a(F)V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/c/a/u;->c:Lcom/c/a/n;

    invoke-virtual {v0, p1}, Lcom/c/a/n;->b(F)I

    move-result v0

    iput v0, p0, Lcom/c/a/u;->d:I

    .line 803
    return-void
.end method

.method public final varargs a([I)V
    .locals 1

    .prologue
    .line 796
    invoke-super {p0, p1}, Lcom/c/a/s;->a([I)V

    .line 797
    iget-object v0, p0, Lcom/c/a/u;->b:Lcom/c/a/r;

    check-cast v0, Lcom/c/a/n;

    iput-object v0, p0, Lcom/c/a/u;->c:Lcom/c/a/n;

    .line 798
    return-void
.end method

.method final c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 807
    iget v0, p0, Lcom/c/a/u;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 753
    invoke-direct {p0}, Lcom/c/a/u;->d()Lcom/c/a/u;

    move-result-object v0

    return-object v0
.end method
