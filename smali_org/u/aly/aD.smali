.class final Lu/aly/aD;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/ay;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lu/aly/aD;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1
    check-cast p2, Lu/aly/ay;

    .line 1273
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1276
    :goto_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1277
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-eqz v1, :cond_2

    .line 1280
    iget-short v1, v0, Lu/aly/bK;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1298
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1282
    :pswitch_0
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 1283
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ay;->a:Ljava/lang/String;

    .line 1284
    invoke-virtual {p2, v3}, Lu/aly/ay;->a(Z)V

    goto :goto_0

    .line 1286
    :cond_0
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1290
    :pswitch_1
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1291
    invoke-virtual {p1}, Lu/aly/bN;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ay;->b:J

    .line 1292
    invoke-virtual {p2, v3}, Lu/aly/ay;->b(Z)V

    goto :goto_0

    .line 1294
    :cond_1
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1302
    :cond_2
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1305
    invoke-virtual {p2}, Lu/aly/ay;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1306
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'duration\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1308
    :cond_3
    invoke-virtual {p2}, Lu/aly/ay;->j()V

    .line 1
    return-void

    .line 1280
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/ay;

    .line 1312
    invoke-virtual {p2}, Lu/aly/ay;->j()V

    .line 1314
    invoke-static {}, Lu/aly/ay;->k()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1315
    iget-object v0, p2, Lu/aly/ay;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1316
    invoke-static {}, Lu/aly/ay;->l()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1317
    iget-object v0, p2, Lu/aly/ay;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1320
    :cond_0
    invoke-static {}, Lu/aly/ay;->m()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1321
    iget-wide v0, p2, Lu/aly/ay;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bN;->a(J)V

    .line 1323
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1324
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void
.end method
