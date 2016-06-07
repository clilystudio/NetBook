.class final Lu/aly/bG;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/cj;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lu/aly/bG;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1
    check-cast p2, Lu/aly/cj;

    .line 1220
    iput-object v0, p2, Lu/aly/cj;->c:Lu/aly/bE;

    .line 1221
    iput-object v0, p2, Lu/aly/cj;->b:Ljava/lang/Object;

    .line 1223
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1225
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1227
    invoke-virtual {p2, p1, v0}, Lu/aly/cj;->a(Lu/aly/bN;Lu/aly/bK;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lu/aly/cj;->b:Ljava/lang/Object;

    .line 1228
    iget-object v1, p2, Lu/aly/cj;->b:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1229
    iget-short v0, v0, Lu/aly/bK;->c:S

    invoke-virtual {p2, v0}, Lu/aly/cj;->b(S)Lu/aly/bE;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cj;->c:Lu/aly/bE;

    .line 1236
    :cond_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    .line 1237
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1
    return-void
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/cj;

    .line 1242
    invoke-virtual {p2}, Lu/aly/cj;->j()Lu/aly/bE;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lu/aly/cj;->k()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1243
    :cond_0
    new-instance v0, Lu/aly/cz;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1245
    :cond_1
    invoke-virtual {p2}, Lu/aly/cj;->c()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1246
    iget-object v0, p2, Lu/aly/cj;->c:Lu/aly/bE;

    invoke-virtual {p2, v0}, Lu/aly/cj;->a(Lu/aly/bE;)Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1247
    invoke-virtual {p2, p1}, Lu/aly/cj;->c(Lu/aly/bN;)V

    .line 1249
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1250
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void
.end method
