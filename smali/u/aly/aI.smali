.class final Lu/aly/aI;
.super Lu/aly/bV;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/bV",
        "<",
        "Lu/aly/ba;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lu/aly/bV;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Lu/aly/aI;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lu/aly/bN;Lu/aly/bz;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 1
    check-cast p2, Lu/aly/ba;

    .line 1267
    invoke-virtual {p1}, Lu/aly/bN;->d()Lu/aly/bR;

    .line 1270
    :goto_0
    invoke-virtual {p1}, Lu/aly/bN;->f()Lu/aly/bK;

    move-result-object v0

    .line 1271
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-eqz v1, :cond_2

    .line 1274
    iget-short v1, v0, Lu/aly/bK;->c:S

    packed-switch v1, :pswitch_data_0

    .line 1292
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1276
    :pswitch_0
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v3, :cond_0

    .line 1277
    invoke-virtual {p1}, Lu/aly/bN;->m()I

    move-result v0

    iput v0, p2, Lu/aly/ba;->a:I

    .line 1278
    invoke-virtual {p2, v2}, Lu/aly/ba;->a(Z)V

    goto :goto_0

    .line 1280
    :cond_0
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1284
    :pswitch_1
    iget-byte v1, v0, Lu/aly/bK;->b:B

    if-ne v1, v3, :cond_1

    .line 1285
    invoke-virtual {p1}, Lu/aly/bN;->m()I

    move-result v0

    iput v0, p2, Lu/aly/ba;->b:I

    .line 1286
    invoke-virtual {p2, v2}, Lu/aly/ba;->b(Z)V

    goto :goto_0

    .line 1288
    :cond_1
    iget-byte v0, v0, Lu/aly/bK;->b:B

    invoke-static {p1, v0}, Lu/aly/bP;->a(Lu/aly/bN;B)V

    goto :goto_0

    .line 1296
    :cond_2
    invoke-virtual {p1}, Lu/aly/bN;->e()V

    .line 1299
    invoke-virtual {p2}, Lu/aly/ba;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1300
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'height\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1302
    :cond_3
    invoke-virtual {p2}, Lu/aly/ba;->i()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1303
    new-instance v0, Lu/aly/cz;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'width\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cz;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1305
    :cond_4
    invoke-virtual {p2}, Lu/aly/ba;->j()V

    .line 1
    return-void

    .line 1274
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic b(Lu/aly/bN;Lu/aly/bz;)V
    .locals 1

    .prologue
    .line 1
    check-cast p2, Lu/aly/ba;

    .line 1309
    invoke-virtual {p2}, Lu/aly/ba;->j()V

    .line 1311
    invoke-static {}, Lu/aly/ba;->k()Lu/aly/bR;

    invoke-virtual {p1}, Lu/aly/bN;->a()V

    .line 1312
    invoke-static {}, Lu/aly/ba;->l()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1313
    iget v0, p2, Lu/aly/ba;->a:I

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(I)V

    .line 1315
    invoke-static {}, Lu/aly/ba;->m()Lu/aly/bK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(Lu/aly/bK;)V

    .line 1316
    iget v0, p2, Lu/aly/ba;->b:I

    invoke-virtual {p1, v0}, Lu/aly/bN;->a(I)V

    .line 1318
    invoke-virtual {p1}, Lu/aly/bN;->c()V

    .line 1319
    invoke-virtual {p1}, Lu/aly/bN;->b()V

    .line 1
    return-void
.end method
