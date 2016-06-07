.class final Lu/aly/z;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/aq;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lu/aly/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 1
    check-cast p2, Lu/aly/aq;

    .line 1367
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1370
    :goto_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1371
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-eqz v1, :cond_4

    .line 1374
    iget-short v1, v0, Lu/aly/bK;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1408
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1376
    :pswitch_0
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v4, :cond_0

    .line 1377
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/aq;->a:Ljava/lang/String;

    .line 1378
    invoke-virtual {p2, v3}, Lu/aly/aq;->a(Z)V

    goto :goto_0

    .line 1380
    :cond_0
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1384
    :pswitch_1
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v4, :cond_1

    .line 1385
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/aq;->b:Ljava/lang/String;

    .line 1386
    invoke-virtual {p2, v3}, Lu/aly/aq;->b(Z)V

    goto :goto_0

    .line 1388
    :cond_1
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1392
    :pswitch_2
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v4, :cond_2

    .line 1393
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/aq;->c:Ljava/lang/String;

    .line 1394
    invoke-virtual {p2, v3}, Lu/aly/aq;->c(Z)V

    goto :goto_0

    .line 1396
    :cond_2
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1400
    :pswitch_3
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 1401
    invoke-virtual {p1}, Lu/aly/bN;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/aq;->d:J

    .line 1402
    invoke-virtual {p2, v3}, Lu/aly/aq;->d(Z)V

    goto :goto_0

    .line 1404
    :cond_3
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1412
    :cond_4
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1415
    invoke-virtual {p2}, Lu/aly/aq;->o()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1416
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

    .line 1418
    :cond_5
    invoke-virtual {p2}, Lu/aly/aq;->p()V

    .line 1
    return-void

    .line 1374
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 2

    .prologue
    .line 1
    check-cast p2, Lu/aly/aq;

    .line 1422
    invoke-virtual {p2}, Lu/aly/aq;->p()V

    .line 1424
    invoke-static {}, Lu/aly/aq;->q()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1425
    iget-object v0, p2, Lu/aly/aq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1426
    invoke-static {}, Lu/aly/aq;->r()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1427
    iget-object v0, p2, Lu/aly/aq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1430
    :cond_0
    iget-object v0, p2, Lu/aly/aq;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1431
    invoke-virtual {p2}, Lu/aly/aq;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1432
    invoke-static {}, Lu/aly/aq;->s()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1433
    iget-object v0, p2, Lu/aly/aq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1437
    :cond_1
    iget-object v0, p2, Lu/aly/aq;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1438
    invoke-static {}, Lu/aly/aq;->t()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1439
    iget-object v0, p2, Lu/aly/aq;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1442
    :cond_2
    invoke-static {}, Lu/aly/aq;->u()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1443
    iget-wide v0, p2, Lu/aly/aq;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bN;->a(J)V

    .line 1445
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1446
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void
.end method
