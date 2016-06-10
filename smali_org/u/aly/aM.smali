.class final Lu/aly/aM;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/bb;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lu/aly/aM;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1
    check-cast p2, Lu/aly/bb;

    .line 1319
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1322
    :goto_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1323
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-eqz v1, :cond_3

    .line 1326
    iget-short v1, v0, Lu/aly/bK;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1353
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1328
    :pswitch_0
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 1329
    invoke-virtual {p1}, Lu/aly/bN;->m()I

    move-result v0

    iput v0, p2, Lu/aly/bb;->a:I

    .line 1330
    invoke-virtual {p2, v3}, Lu/aly/bb;->a(Z)V

    goto :goto_0

    .line 1332
    :cond_0
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1336
    :pswitch_1
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 1337
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bb;->b:Ljava/lang/String;

    .line 1338
    invoke-virtual {p2, v3}, Lu/aly/bb;->b(Z)V

    goto :goto_0

    .line 1340
    :cond_1
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1344
    :pswitch_2
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_2

    .line 1345
    new-instance v0, Lu/aly/at;

    invoke-direct {v0}, Lu/aly/at;-><init>()V

    iput-object v0, p2, Lu/aly/bb;->c:Lu/aly/at;

    .line 1346
    iget-object v0, p2, Lu/aly/bb;->c:Lu/aly/at;

    invoke-virtual {v0, p1}, Lu/aly/at;->a(Lu/aly/bN;)V

    .line 1347
    invoke-virtual {p2, v3}, Lu/aly/bb;->c(Z)V

    goto :goto_0

    .line 1349
    :cond_2
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1357
    :cond_3
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1360
    invoke-virtual {p2}, Lu/aly/bb;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1361
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'resp_code\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1363
    :cond_4
    invoke-virtual {p2}, Lu/aly/bb;->m()V

    .line 1
    return-void

    .line 1326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/bb;

    .line 1367
    invoke-virtual {p2}, Lu/aly/bb;->m()V

    .line 1369
    invoke-static {}, Lu/aly/bb;->n()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1370
    invoke-static {}, Lu/aly/bb;->o()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1371
    iget v0, p2, Lu/aly/bb;->a:I

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(I)V

    .line 1373
    iget-object v0, p2, Lu/aly/bb;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1374
    invoke-virtual {p2}, Lu/aly/bb;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    invoke-static {}, Lu/aly/bb;->p()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1376
    iget-object v0, p2, Lu/aly/bb;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1380
    :cond_0
    iget-object v0, p2, Lu/aly/bb;->c:Lu/aly/at;

    if-eqz v0, :cond_1

    .line 1381
    invoke-virtual {p2}, Lu/aly/bb;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1382
    invoke-static {}, Lu/aly/bb;->q()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1383
    iget-object v0, p2, Lu/aly/bb;->c:Lu/aly/at;

    invoke-virtual {v0, p1}, Lu/aly/at;->b(Lu/aly/bN;)V

    .line 1387
    :cond_1
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1388
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void
.end method
