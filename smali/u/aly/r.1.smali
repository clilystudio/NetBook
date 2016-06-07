.class final Lu/aly/r;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/am;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Lu/aly/r;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1
    check-cast p2, Lu/aly/am;

    .line 1335
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1338
    :goto_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1339
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-eqz v1, :cond_3

    .line 1342
    iget-short v1, v0, Lu/aly/bK;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1368
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1344
    :pswitch_0
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1345
    invoke-virtual {p1}, Lu/aly/bN;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/am;->a:J

    .line 1346
    invoke-virtual {p2, v3}, Lu/aly/am;->b(Z)V

    goto :goto_0

    .line 1348
    :cond_0
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1352
    :pswitch_1
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 1353
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/am;->b:Ljava/lang/String;

    .line 1354
    invoke-virtual {p2, v3}, Lu/aly/am;->c(Z)V

    goto :goto_0

    .line 1356
    :cond_1
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1360
    :pswitch_2
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 1361
    invoke-virtual {p1}, Lu/aly/bN;->m()I

    move-result v0

    invoke-static {v0}, Lu/aly/an;->a(I)Lu/aly/an;

    move-result-object v0

    iput-object v0, p2, Lu/aly/am;->c:Lu/aly/an;

    .line 1362
    invoke-virtual {p2, v3}, Lu/aly/am;->d(Z)V

    goto :goto_0

    .line 1364
    :cond_2
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1372
    :cond_3
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1375
    invoke-virtual {p2}, Lu/aly/am;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1376
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1378
    :cond_4
    invoke-virtual {p2}, Lu/aly/am;->m()V

    .line 1
    return-void

    .line 1342
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/am;

    .line 1382
    invoke-virtual {p2}, Lu/aly/am;->m()V

    .line 1384
    invoke-static {}, Lu/aly/am;->n()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1385
    invoke-static {}, Lu/aly/am;->o()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1386
    iget-wide v0, p2, Lu/aly/am;->a:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bN;->a(J)V

    .line 1388
    iget-object v0, p2, Lu/aly/am;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1389
    invoke-static {}, Lu/aly/am;->p()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1390
    iget-object v0, p2, Lu/aly/am;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1393
    :cond_0
    iget-object v0, p2, Lu/aly/am;->c:Lu/aly/an;

    if-eqz v0, :cond_1

    .line 1394
    invoke-virtual {p2}, Lu/aly/am;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1395
    invoke-static {}, Lu/aly/am;->q()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1396
    iget-object v0, p2, Lu/aly/am;->c:Lu/aly/an;

    invoke-virtual {v0}, Lu/aly/an;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(I)V

    .line 1400
    :cond_1
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1401
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void
.end method
