.class final Lu/aly/j;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/aj;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Lu/aly/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 1
    check-cast p2, Lu/aly/aj;

    .line 1312
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1315
    :goto_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1316
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-eqz v1, :cond_3

    .line 1319
    iget-short v1, v0, Lu/aly/bK;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1345
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1321
    :pswitch_0
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v3, :cond_0

    .line 1322
    invoke-virtual {p1}, Lu/aly/bN;->m()I

    move-result v0

    iput v0, p2, Lu/aly/aj;->a:I

    .line 1323
    invoke-virtual {p2, v2}, Lu/aly/aj;->a(Z)V

    goto :goto_0

    .line 1325
    :cond_0
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1329
    :pswitch_1
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v3, :cond_1

    .line 1330
    invoke-virtual {p1}, Lu/aly/bN;->m()I

    move-result v0

    iput v0, p2, Lu/aly/aj;->b:I

    .line 1331
    invoke-virtual {p2, v2}, Lu/aly/aj;->b(Z)V

    goto :goto_0

    .line 1333
    :cond_1
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1337
    :pswitch_2
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v3, :cond_2

    .line 1338
    invoke-virtual {p1}, Lu/aly/bN;->m()I

    move-result v0

    iput v0, p2, Lu/aly/aj;->c:I

    .line 1339
    invoke-virtual {p2, v2}, Lu/aly/aj;->c(Z)V

    goto :goto_0

    .line 1341
    :cond_2
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1349
    :cond_3
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1352
    invoke-virtual {p2}, Lu/aly/aj;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1353
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'successful_requests\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1355
    :cond_4
    invoke-virtual {p2}, Lu/aly/aj;->i()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1356
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'failed_requests\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1358
    :cond_5
    invoke-virtual {p2}, Lu/aly/aj;->m()V

    .line 1
    return-void

    .line 1319
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
    check-cast p2, Lu/aly/aj;

    .line 1362
    invoke-virtual {p2}, Lu/aly/aj;->m()V

    .line 1364
    invoke-static {}, Lu/aly/aj;->n()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1365
    invoke-static {}, Lu/aly/aj;->o()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1366
    iget v0, p2, Lu/aly/aj;->a:I

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(I)V

    .line 1368
    invoke-static {}, Lu/aly/aj;->p()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1369
    iget v0, p2, Lu/aly/aj;->b:I

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(I)V

    .line 1371
    invoke-virtual {p2}, Lu/aly/aj;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    invoke-static {}, Lu/aly/aj;->q()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1373
    iget v0, p2, Lu/aly/aj;->c:I

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(I)V

    .line 1376
    :cond_0
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1377
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void
.end method
