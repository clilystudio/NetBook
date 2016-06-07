.class final Lu/aly/L;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/at;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 342
    invoke-direct {p0}, Lu/aly/L;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1
    check-cast p2, Lu/aly/at;

    .line 1346
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1349
    :goto_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1350
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-eqz v1, :cond_4

    .line 1353
    iget-short v1, v0, Lu/aly/bK;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1392
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1355
    :pswitch_0
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 1357
    invoke-virtual {p1}, Lu/aly/bN;->g()Lu/aly/bM;

    move-result-object v1

    .line 1358
    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lu/aly/bM;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/at;->a:Ljava/util/Map;

    .line 1359
    const/4 v0, 0x0

    :goto_1
    iget v2, v1, Lu/aly/bM;->c:I

    if-lt v0, v2, :cond_0

    .line 1370
    invoke-virtual {p2, v5}, Lu/aly/at;->a(Z)V

    goto :goto_0

    .line 1363
    :cond_0
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v2

    .line 1364
    new-instance v3, Lu/aly/au;

    invoke-direct {v3}, Lu/aly/au;-><init>()V

    .line 1365
    invoke-virtual {v3, p1}, Lu/aly/au;->a(Lu/aly/bN;)V

    .line 1366
    iget-object v4, p2, Lu/aly/at;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1359
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1372
    :cond_1
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1376
    :pswitch_1
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 1377
    invoke-virtual {p1}, Lu/aly/bN;->m()I

    move-result v0

    iput v0, p2, Lu/aly/at;->b:I

    .line 1378
    invoke-virtual {p2, v5}, Lu/aly/at;->b(Z)V

    goto :goto_0

    .line 1380
    :cond_2
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1384
    :pswitch_2
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    .line 1385
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/at;->c:Ljava/lang/String;

    .line 1386
    invoke-virtual {p2, v5}, Lu/aly/at;->c(Z)V

    goto :goto_0

    .line 1388
    :cond_3
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1396
    :cond_4
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1399
    invoke-virtual {p2}, Lu/aly/at;->j()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1400
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1402
    :cond_5
    invoke-virtual {p2}, Lu/aly/at;->n()V

    .line 1
    return-void

    .line 1353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 4

    .prologue
    .line 1
    check-cast p2, Lu/aly/at;

    .line 1406
    invoke-virtual {p2}, Lu/aly/at;->n()V

    .line 1408
    invoke-static {}, Lu/aly/at;->o()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1409
    iget-object v0, p2, Lu/aly/at;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1410
    invoke-static {}, Lu/aly/at;->p()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1412
    new-instance v0, Lu/aly/bM;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, Lu/aly/at;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/bM;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bM;)V

    .line 1413
    iget-object v0, p2, Lu/aly/at;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1422
    :cond_0
    invoke-static {}, Lu/aly/at;->q()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1423
    iget v0, p2, Lu/aly/at;->b:I

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(I)V

    .line 1425
    iget-object v0, p2, Lu/aly/at;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1426
    invoke-static {}, Lu/aly/at;->r()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1427
    iget-object v0, p2, Lu/aly/at;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1430
    :cond_1
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1431
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void

    .line 1413
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1415
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1416
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/au;

    invoke-virtual {v0, p1}, Lu/aly/au;->b(Lu/aly/bN;)V

    goto :goto_0
.end method
