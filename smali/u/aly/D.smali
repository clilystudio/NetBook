.class final Lu/aly/D;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/ar;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lu/aly/D;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1
    check-cast p2, Lu/aly/ar;

    .line 1315
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1318
    :goto_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1319
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-eqz v1, :cond_3

    .line 1322
    iget-short v1, v0, Lu/aly/bK;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1348
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1324
    :pswitch_0
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    .line 1325
    invoke-virtual {p1}, Lu/aly/bN;->p()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/ar;->a:Ljava/lang/String;

    .line 1326
    invoke-virtual {p2, v3}, Lu/aly/ar;->a(Z)V

    goto :goto_0

    .line 1328
    :cond_0
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1332
    :pswitch_1
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1333
    invoke-virtual {p1}, Lu/aly/bN;->n()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/ar;->b:J

    .line 1334
    invoke-virtual {p2, v3}, Lu/aly/ar;->b(Z)V

    goto :goto_0

    .line 1336
    :cond_1
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1340
    :pswitch_2
    iget-byte v1, v0, Lu/aly/bK;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 1341
    invoke-virtual {p1}, Lu/aly/bN;->m()I

    move-result v0

    iput v0, p2, Lu/aly/ar;->c:I

    .line 1342
    invoke-virtual {p2, v3}, Lu/aly/ar;->c(Z)V

    goto :goto_0

    .line 1344
    :cond_2
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1352
    :cond_3
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1355
    invoke-virtual {p2}, Lu/aly/ar;->i()Z

    move-result v0

    if-nez v0, :cond_4

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
    :cond_4
    invoke-virtual {p2}, Lu/aly/ar;->l()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1359
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

    .line 1361
    :cond_5
    invoke-virtual {p2}, Lu/aly/ar;->m()V

    .line 1
    return-void

    .line 1322
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
    check-cast p2, Lu/aly/ar;

    .line 1365
    invoke-virtual {p2}, Lu/aly/ar;->m()V

    .line 1367
    invoke-static {}, Lu/aly/ar;->n()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1368
    iget-object v0, p2, Lu/aly/ar;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1369
    invoke-static {}, Lu/aly/ar;->o()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1370
    iget-object v0, p2, Lu/aly/ar;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Ljava/lang/String;)V

    .line 1373
    :cond_0
    invoke-static {}, Lu/aly/ar;->p()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1374
    iget-wide v0, p2, Lu/aly/ar;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/bN;->a(J)V

    .line 1376
    invoke-static {}, Lu/aly/ar;->q()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1377
    iget v0, p2, Lu/aly/ar;->c:I

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(I)V

    .line 1379
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1380
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void
.end method
