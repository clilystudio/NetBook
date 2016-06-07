.class final Lu/aly/bk;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/bg;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 366
    invoke-direct {p0}, Lu/aly/bk;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 1
    check-cast p2, Lu/aly/bg;

    .line 1370
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1373
    :goto_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1374
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-eqz v1, :cond_4

    .line 1377
    iget-short v1, v0, Lu/aly/bK;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1411
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1379
    :pswitch_0
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v3, :cond_0

    .line 1380
    invoke-virtual {p1}, Lu/aly/bN;->m()I

    move-result v0

    invoke-static {v0}, Lu/aly/ap;->a(I)Lu/aly/ap;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bg;->a:Lu/aly/ap;

    .line 1381
    invoke-virtual {p2, v2}, Lu/aly/bg;->a(Z)V

    goto :goto_0

    .line 1383
    :cond_0
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1387
    :pswitch_1
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v3, :cond_1

    .line 1388
    invoke-virtual {p1}, Lu/aly/bN;->m()I

    move-result v0

    iput v0, p2, Lu/aly/bg;->b:I

    .line 1389
    invoke-virtual {p2, v2}, Lu/aly/bg;->b(Z)V

    goto :goto_0

    .line 1391
    :cond_1
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1395
    :pswitch_2
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v4, :cond_2

    .line 1396
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bg;->c:Ljava/lang/String;

    .line 1397
    invoke-virtual {p2, v2}, Lu/aly/bg;->c(Z)V

    goto :goto_0

    .line 1399
    :cond_2
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1403
    :pswitch_3
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v4, :cond_3

    .line 1404
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bg;->d:Ljava/lang/String;

    .line 1405
    invoke-virtual {p2, v2}, Lu/aly/bg;->d(Z)V

    goto :goto_0

    .line 1407
    :cond_3
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1415
    :cond_4
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1418
    invoke-virtual {p2}, Lu/aly/bg;->p()V

    .line 1
    return-void

    .line 1377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/bg;

    .line 1422
    invoke-virtual {p2}, Lu/aly/bg;->p()V

    .line 1424
    invoke-static {}, Lu/aly/bg;->q()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1425
    iget-object v0, p2, Lu/aly/bg;->a:Lu/aly/ap;

    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {p2}, Lu/aly/bg;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1427
    invoke-static {}, Lu/aly/bg;->r()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1428
    iget-object v0, p2, Lu/aly/bg;->a:Lu/aly/ap;

    invoke-virtual {v0}, Lu/aly/ap;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(I)V

    .line 1432
    :cond_0
    invoke-virtual {p2}, Lu/aly/bg;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1433
    invoke-static {}, Lu/aly/bg;->s()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1434
    iget v0, p2, Lu/aly/bg;->b:I

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(I)V

    .line 1437
    :cond_1
    iget-object v0, p2, Lu/aly/bg;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1438
    invoke-virtual {p2}, Lu/aly/bg;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1439
    invoke-static {}, Lu/aly/bg;->t()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1440
    iget-object v0, p2, Lu/aly/bg;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1444
    :cond_2
    iget-object v0, p2, Lu/aly/bg;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1445
    invoke-virtual {p2}, Lu/aly/bg;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1446
    invoke-static {}, Lu/aly/bg;->u()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1447
    iget-object v0, p2, Lu/aly/bg;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1451
    :cond_3
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1452
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void
.end method
