.class public final Lu/aly/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/umeng/a/a/f;
.implements Lu/aly/cw;


# instance fields
.field private a:Lu/aly/cy;

.field private b:Lu/aly/cA;

.field private c:Lcom/umeng/a/g;

.field private d:Lcom/umeng/a/o;

.field private e:Lu/aly/cD;

.field private f:Lu/aly/bO;

.field private g:I

.field private h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lu/aly/cg;->a:Lu/aly/cy;

    .line 28
    iput-object v0, p0, Lu/aly/cg;->b:Lu/aly/cA;

    .line 29
    iput-object v0, p0, Lu/aly/cg;->c:Lcom/umeng/a/g;

    .line 30
    iput-object v0, p0, Lu/aly/cg;->d:Lcom/umeng/a/o;

    .line 32
    iput-object v0, p0, Lu/aly/cg;->e:Lu/aly/cD;

    .line 33
    iput-object v0, p0, Lu/aly/cg;->f:Lu/aly/bO;

    .line 35
    const/16 v0, 0xa

    iput v0, p0, Lu/aly/cg;->g:I

    .line 40
    iput-object p1, p0, Lu/aly/cg;->h:Landroid/content/Context;

    .line 42
    new-instance v0, Lu/aly/cy;

    invoke-direct {v0, p1}, Lu/aly/cy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/cg;->a:Lu/aly/cy;

    .line 43
    invoke-static {p1}, Lu/aly/cd;->a(Landroid/content/Context;)Lu/aly/bO;

    move-result-object v0

    iput-object v0, p0, Lu/aly/cg;->f:Lu/aly/bO;

    .line 44
    new-instance v0, Lu/aly/cD;

    invoke-direct {v0, p1}, Lu/aly/cD;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/cg;->e:Lu/aly/cD;

    .line 45
    new-instance v0, Lu/aly/cA;

    invoke-direct {v0, p1}, Lu/aly/cA;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/cg;->b:Lu/aly/cA;

    .line 46
    iget-object v0, p0, Lu/aly/cg;->b:Lu/aly/cA;

    iget-object v1, p0, Lu/aly/cg;->e:Lu/aly/cD;

    invoke-virtual {v0, v1}, Lu/aly/cA;->a(Lu/aly/cD;)V

    .line 48
    invoke-static {p1}, Lcom/umeng/a/o;->a(Landroid/content/Context;)Lcom/umeng/a/o;

    move-result-object v0

    iput-object v0, p0, Lu/aly/cg;->d:Lcom/umeng/a/o;

    .line 49
    iget-object v0, p0, Lu/aly/cg;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/a;->c(Landroid/content/Context;)[I

    move-result-object v0

    .line 50
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-direct {p0, v1, v0}, Lu/aly/cg;->a(II)V

    .line 51
    return-void
.end method

.method private static a([B)Lu/aly/bf;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 161
    if-nez p0, :cond_0

    .line 173
    :goto_0
    return-object v0

    .line 166
    :cond_0
    :try_start_0
    new-instance v1, Lu/aly/bf;

    invoke-direct {v1}, Lu/aly/bf;-><init>()V

    .line 167
    new-instance v2, Lu/aly/bD;

    invoke-direct {v2}, Lu/aly/bD;-><init>()V

    invoke-virtual {v2, v1, p0}, Lu/aly/bD;->a(Lu/aly/bz;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 168
    goto :goto_0

    .line 169
    :catch_0
    move-exception v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 285
    packed-switch p1, :pswitch_data_0

    .line 305
    :pswitch_0
    new-instance v0, Lcom/umeng/a/c;

    invoke-direct {v0}, Lcom/umeng/a/c;-><init>()V

    iput-object v0, p0, Lu/aly/cg;->c:Lcom/umeng/a/g;

    .line 309
    :goto_0
    const-string v0, "MobclickAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "report policy:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " interval:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lu/aly/bt;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void

    .line 287
    :pswitch_1
    new-instance v0, Lcom/umeng/a/c;

    invoke-direct {v0}, Lcom/umeng/a/c;-><init>()V

    iput-object v0, p0, Lu/aly/cg;->c:Lcom/umeng/a/g;

    goto :goto_0

    .line 290
    :pswitch_2
    new-instance v0, Lcom/umeng/a/d;

    iget-object v1, p0, Lu/aly/cg;->e:Lu/aly/cD;

    int-to-long v2, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/a/d;-><init>(Lu/aly/cD;J)V

    iput-object v0, p0, Lu/aly/cg;->c:Lcom/umeng/a/g;

    goto :goto_0

    .line 293
    :pswitch_3
    new-instance v0, Lcom/umeng/a/f;

    iget-object v1, p0, Lu/aly/cg;->e:Lu/aly/cD;

    invoke-direct {v0, v1}, Lcom/umeng/a/f;-><init>(Lu/aly/cD;)V

    iput-object v0, p0, Lu/aly/cg;->c:Lcom/umeng/a/g;

    goto :goto_0

    .line 296
    :pswitch_4
    new-instance v0, Lcom/umeng/a/g;

    invoke-direct {v0}, Lcom/umeng/a/g;-><init>()V

    iput-object v0, p0, Lu/aly/cg;->c:Lcom/umeng/a/g;

    goto :goto_0

    .line 299
    :pswitch_5
    new-instance v0, Lcom/umeng/a/h;

    iget-object v1, p0, Lu/aly/cg;->h:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/a/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/cg;->c:Lcom/umeng/a/g;

    goto :goto_0

    .line 302
    :pswitch_6
    new-instance v0, Lcom/umeng/a/e;

    iget-object v1, p0, Lu/aly/cg;->a:Lu/aly/cy;

    invoke-direct {v0, v1, p2}, Lcom/umeng/a/e;-><init>(Lu/aly/cy;I)V

    iput-object v0, p0, Lu/aly/cg;->c:Lcom/umeng/a/g;

    goto :goto_0

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method private static a(Lu/aly/bf;)[B
    .locals 1

    .prologue
    .line 178
    :try_start_0
    new-instance v0, Lu/aly/bF;

    invoke-direct {v0}, Lu/aly/bF;-><init>()V

    invoke-virtual {v0, p0}, Lu/aly/bF;->a(Lu/aly/bz;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 108
    :try_start_0
    iget-object v1, p0, Lu/aly/cg;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const-string v1, "MobclickAgent"

    const-string v2, "Appkey is missing ,Please check AndroidManifest.xml"

    invoke-static {v1, v2}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 115
    :cond_1
    iget-object v1, p0, Lu/aly/cg;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/a/o;->a(Landroid/content/Context;)Lcom/umeng/a/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/a/o;->b()[B

    move-result-object v1

    .line 116
    if-nez v1, :cond_4

    move-object v1, v0

    .line 119
    :goto_1
    if-nez v1, :cond_2

    iget-object v2, p0, Lu/aly/cg;->a:Lu/aly/cy;

    invoke-virtual {v2}, Lu/aly/cy;->a()I

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Lu/aly/bf;

    invoke-direct {v1}, Lu/aly/bf;-><init>()V

    .line 125
    :cond_3
    iget-object v2, p0, Lu/aly/cg;->a:Lu/aly/cy;

    invoke-virtual {v2, v1}, Lu/aly/cy;->a(Lu/aly/bf;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 142
    :try_start_1
    invoke-static {v1}, Lu/aly/cg;->a(Lu/aly/bf;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_4
    :try_start_2
    invoke-static {v1}, Lu/aly/cg;->a([B)Lu/aly/bf;

    move-result-object v1

    goto :goto_1

    .line 148
    :catch_0
    move-exception v1

    const-string v1, "MobclickAgent"

    const-string v2, "Fail to serialize log ..."

    invoke-static {v1, v2}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 152
    :catch_1
    move-exception v1

    .line 153
    const-string v2, "MobclickAgent"

    const-string v3, "Fail to construct message ..."

    invoke-static {v2, v3, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 154
    iget-object v1, p0, Lu/aly/cg;->h:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/a/o;->a(Landroid/content/Context;)Lcom/umeng/a/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/a/o;->c()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lu/aly/cg;->a:Lu/aly/cy;

    invoke-virtual {v0}, Lu/aly/cy;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lu/aly/cg;->b()[B

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lu/aly/cg;->d:Lcom/umeng/a/o;

    invoke-virtual {v1, v0}, Lcom/umeng/a/o;->a([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    instance-of v1, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lu/aly/cg;->d:Lcom/umeng/a/o;

    invoke-virtual {v1}, Lcom/umeng/a/o;->c()V

    .line 100
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final a(IJ)V
    .locals 2

    .prologue
    .line 314
    long-to-int v0, p2

    invoke-static {p1, v0}, Lcom/umeng/a/a;->a(II)V

    .line 315
    long-to-int v0, p2

    invoke-direct {p0, p1, v0}, Lu/aly/cg;->a(II)V

    .line 316
    return-void
.end method

.method public final a(Lu/aly/cx;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v2, p0, Lu/aly/cg;->a:Lu/aly/cy;

    invoke-virtual {v2, p1}, Lu/aly/cy;->a(Lu/aly/cx;)V

    .line 73
    :cond_0
    instance-of v2, p1, Lu/aly/bd;

    .line 1187
    iget-object v3, p0, Lu/aly/cg;->h:Landroid/content/Context;

    invoke-static {v3}, Lu/aly/bs;->g(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    move v2, v1

    .line 73
    :goto_0
    if-eqz v2, :cond_9

    .line 1212
    :try_start_0
    iget-object v0, p0, Lu/aly/cg;->e:Lu/aly/cD;

    invoke-virtual {v0}, Lu/aly/cD;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1213
    iget-object v0, p0, Lu/aly/cg;->a:Lu/aly/cy;

    new-instance v1, Lu/aly/ah;

    iget-object v2, p0, Lu/aly/cg;->e:Lu/aly/cD;

    invoke-virtual {v2}, Lu/aly/cD;->h()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lu/aly/ah;-><init>(J)V

    invoke-virtual {v0, v1}, Lu/aly/cy;->a(Lu/aly/ah;)V

    .line 1230
    :cond_1
    iget-object v0, p0, Lu/aly/cg;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/a/o;->a(Landroid/content/Context;)Lcom/umeng/a/o;

    move-result-object v1

    .line 1232
    invoke-virtual {v1}, Lcom/umeng/a/o;->f()Z

    move-result v2

    .line 1235
    if-eqz v2, :cond_5

    .line 1236
    invoke-virtual {v1}, Lcom/umeng/a/o;->d()[B

    move-result-object v0

    .line 1253
    :goto_1
    iget-object v3, p0, Lu/aly/cg;->b:Lu/aly/cA;

    invoke-virtual {v3, v0}, Lu/aly/cA;->a([B)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1255
    packed-switch v3, :pswitch_data_0

    .line 78
    :cond_2
    :goto_2
    return-void

    .line 1192
    :cond_3
    iget-object v3, p0, Lu/aly/cg;->e:Lu/aly/cD;

    invoke-virtual {v3}, Lu/aly/cD;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v0

    .line 1193
    goto :goto_0

    .line 1202
    :cond_4
    iget-object v3, p0, Lu/aly/cg;->c:Lcom/umeng/a/g;

    invoke-virtual {v3, v2}, Lcom/umeng/a/g;->a(Z)Z

    move-result v2

    goto :goto_0

    .line 1238
    :cond_5
    :try_start_1
    iget-object v0, p0, Lu/aly/cg;->f:Lu/aly/bO;

    invoke-virtual {v0}, Lu/aly/bO;->a()V

    .line 1239
    invoke-direct {p0}, Lu/aly/cg;->b()[B

    move-result-object v0

    .line 1241
    if-nez v0, :cond_6

    .line 1242
    const-string v0, "MobclickAgent"

    const-string v1, "message is null"

    invoke-static {v0, v1}, Lu/aly/bt;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1217
    :catch_0
    move-exception v0

    .line 1223
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1246
    :cond_6
    :try_start_2
    iget-object v3, p0, Lu/aly/cg;->h:Landroid/content/Context;

    iget-object v4, p0, Lu/aly/cg;->h:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/a/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lu/aly/bA;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/bA;

    move-result-object v0

    .line 1247
    invoke-virtual {v0}, Lu/aly/bA;->a()[B

    move-result-object v0

    .line 1248
    invoke-virtual {v1}, Lcom/umeng/a/o;->c()V

    goto :goto_1

    .line 1257
    :pswitch_0
    iget-object v0, p0, Lu/aly/cg;->e:Lu/aly/cD;

    invoke-virtual {v0}, Lu/aly/cD;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1258
    iget-object v0, p0, Lu/aly/cg;->e:Lu/aly/cD;

    invoke-virtual {v0}, Lu/aly/cD;->f()V

    .line 1261
    :cond_7
    iget-object v0, p0, Lu/aly/cg;->f:Lu/aly/bO;

    invoke-virtual {v0}, Lu/aly/bO;->c()V

    .line 1262
    iget-object v0, p0, Lu/aly/cg;->e:Lu/aly/cD;

    invoke-virtual {v0}, Lu/aly/cD;->e()V

    .line 1264
    if-eqz v2, :cond_2

    .line 1265
    invoke-virtual {v1}, Lcom/umeng/a/o;->e()V

    goto :goto_2

    .line 1269
    :pswitch_1
    iget-object v0, p0, Lu/aly/cg;->e:Lu/aly/cD;

    invoke-virtual {v0}, Lu/aly/cD;->e()V

    .line 1271
    if-eqz v2, :cond_2

    .line 1272
    invoke-virtual {v1}, Lcom/umeng/a/o;->e()V

    goto :goto_2

    .line 1276
    :pswitch_2
    if-nez v2, :cond_8

    invoke-virtual {v1, v0}, Lcom/umeng/a/o;->b([B)V

    .line 1277
    :cond_8
    const-string v0, "MobclickAgent"

    const-string v1, "connection error"

    invoke-static {v0, v1}, Lu/aly/bt;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 2206
    :cond_9
    iget-object v2, p0, Lu/aly/cg;->a:Lu/aly/cy;

    invoke-virtual {v2}, Lu/aly/cy;->a()I

    move-result v2

    iget v3, p0, Lu/aly/cg;->g:I

    if-le v2, v3, :cond_a

    .line 75
    :goto_3
    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0}, Lu/aly/cg;->a()V

    goto/16 :goto_2

    :cond_a
    move v0, v1

    .line 2206
    goto :goto_3

    .line 1255
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Lu/aly/cx;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lu/aly/cg;->a:Lu/aly/cy;

    invoke-virtual {v0, p1}, Lu/aly/cy;->a(Lu/aly/cx;)V

    .line 85
    return-void
.end method
