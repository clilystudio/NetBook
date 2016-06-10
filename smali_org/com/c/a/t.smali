.class final Lcom/c/a/t;
.super Lcom/c/a/s;
.source "SourceFile"


# instance fields
.field private c:Lcom/c/a/l;

.field private d:F


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1

    .prologue
    .line 918
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/c/a/s;-><init>(Ljava/lang/String;B)V

    .line 919
    invoke-virtual {p0, p2}, Lcom/c/a/t;->a([F)V

    .line 920
    return-void
.end method

.method private d()Lcom/c/a/t;
    .locals 2

    .prologue
    .line 948
    invoke-super {p0}, Lcom/c/a/s;->a()Lcom/c/a/s;

    move-result-object v0

    check-cast v0, Lcom/c/a/t;

    .line 949
    iget-object v1, v0, Lcom/c/a/t;->b:Lcom/c/a/r;

    check-cast v1, Lcom/c/a/l;

    iput-object v1, v0, Lcom/c/a/t;->c:Lcom/c/a/l;

    .line 950
    return-object v0
.end method


# virtual methods
.method public final synthetic a()Lcom/c/a/s;
    .locals 1

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/c/a/t;->d()Lcom/c/a/t;

    move-result-object v0

    return-object v0
.end method

.method final a(F)V
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/c/a/t;->c:Lcom/c/a/l;

    invoke-virtual {v0, p1}, Lcom/c/a/l;->b(F)F

    move-result v0

    iput v0, p0, Lcom/c/a/t;->d:F

    .line 939
    return-void
.end method

.method public final varargs a([F)V
    .locals 1

    .prologue
    .line 932
    invoke-super {p0, p1}, Lcom/c/a/s;->a([F)V

    .line 933
    iget-object v0, p0, Lcom/c/a/t;->b:Lcom/c/a/r;

    check-cast v0, Lcom/c/a/l;

    iput-object v0, p0, Lcom/c/a/t;->c:Lcom/c/a/l;

    .line 934
    return-void
.end method

.method final c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 943
    iget v0, p0, Lcom/c/a/t;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/c/a/t;->d()Lcom/c/a/t;

    move-result-object v0

    return-object v0
.end method
