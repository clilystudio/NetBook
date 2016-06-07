.class final Lu/aly/X;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/aw;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lu/aly/X;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 1
    check-cast p2, Lu/aly/aw;

    .line 1309
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1312
    :goto_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1313
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-eqz v1, :cond_3

    .line 1316
    iget-short v1, v0, Lu/aly/bK;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1342
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1318
    :pswitch_0
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v4, :cond_0

    .line 1319
    invoke-virtual {p1}, Lu/aly/bN;->o()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/aw;->a:D

    .line 1320
    invoke-virtual {p2, v3}, Lu/aly/aw;->a(Z)V

    goto :goto_0

    .line 1322
    :cond_0
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1326
    :pswitch_1
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v4, :cond_1

    .line 1327
    invoke-virtual {p1}, Lu/aly/bN;->o()D

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/aw;->b:D

    .line 1328
    invoke-virtual {p2, v3}, Lu/aly/aw;->b(Z)V

    goto :goto_0

    .line 1330
    :cond_1
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1334
    :pswitch_2
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 1335
    invoke-virtual {p1}, Lu/aly/bN;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/aw;->c:J

    .line 1336
    invoke-virtual {p2, v3}, Lu/aly/aw;->c(Z)V

    goto :goto_0

    .line 1338
    :cond_2
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1346
    :cond_3
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1349
    invoke-virtual {p2}, Lu/aly/aw;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1350
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'lat\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1352
    :cond_4
    invoke-virtual {p2}, Lu/aly/aw;->i()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1353
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'lng\' was not found in serialized data! Struct: "

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
    :cond_5
    invoke-virtual {p2}, Lu/aly/aw;->l()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1356
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

    .line 1358
    :cond_6
    invoke-virtual {p2}, Lu/aly/aw;->m()V

    .line 1
    return-void

    .line 1316
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
    check-cast p2, Lu/aly/aw;

    .line 1362
    invoke-virtual {p2}, Lu/aly/aw;->m()V

    .line 1364
    invoke-static {}, Lu/aly/aw;->n()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1365
    invoke-static {}, Lu/aly/aw;->o()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1366
    iget-wide v0, p2, Lu/aly/aw;->a:D

    invoke-virtual {p1, v0, v1}, Lu/aly/bN;->a(D)V

    .line 1368
    invoke-static {}, Lu/aly/aw;->p()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1369
    iget-wide v0, p2, Lu/aly/aw;->b:D

    invoke-virtual {p1, v0, v1}, Lu/aly/bN;->a(D)V

    .line 1371
    invoke-static {}, Lu/aly/aw;->q()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1372
    iget-wide v0, p2, Lu/aly/aw;->c:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bN;->a(J)V

    .line 1374
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1375
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void
.end method
