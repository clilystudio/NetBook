.class public Lcom/ushaqi/zhuishushenqi/MyApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "SourceFile"


# static fields
.field private static b:Lcom/ushaqi/zhuishushenqi/MyApplication;


# instance fields
.field public a:Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;

.field private c:Lcom/ushaqi/zhuishushenqi/reader/Reader;

.field private d:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/ushaqi/zhuishushenqi/model/ChapterLink;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/MyApplication;->b:Lcom/ushaqi/zhuishushenqi/MyApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    .line 67
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->f:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->i:Ljava/util/List;

    .line 75
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->j:Ljava/util/List;

    .line 76
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->k:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/ushaqi/zhuishushenqi/MyApplication;->b:Lcom/ushaqi/zhuishushenqi/MyApplication;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/MyApplication;)V
    .locals 4

    .prologue
    .line 60
    .line 5399
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "http2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5401
    const-wide/32 v2, 0xc800000

    :try_start_0
    invoke-static {v0, v2, v3}, Lcom/integralblue/httpresponsecache/a;->a(Ljava/io/File;J)Lcom/integralblue/httpresponsecache/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5404
    :goto_0
    return-void

    .line 5402
    :catch_0
    move-exception v0

    .line 5403
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/util/Properties;)V
    .locals 1

    .prologue
    .line 292
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/b;->a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/b;->a(Ljava/util/Properties;)V

    .line 293
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/b;->a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/b;

    move-result-object v0

    .line 5043
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/b;->a()Ljava/util/Properties;

    move-result-object v0

    .line 5044
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 441
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->e:I

    .line 442
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/model/Account;)V
    .locals 2

    .prologue
    .line 227
    new-instance v0, Lcom/ushaqi/zhuishushenqi/MyApplication$3;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/MyApplication$3;-><init>(Lcom/ushaqi/zhuishushenqi/MyApplication;Lcom/ushaqi/zhuishushenqi/model/Account;)V

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Ljava/util/Properties;)V

    .line 234
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    .line 4241
    new-instance v1, Lcom/ushaqi/zhuishushenqi/MyApplication$4;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/MyApplication$4;-><init>(Lcom/ushaqi/zhuishushenqi/MyApplication;Lcom/ushaqi/zhuishushenqi/model/User;)V

    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Ljava/util/Properties;)V

    .line 235
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->d:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    .line 423
    return-void
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->c:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    .line 415
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 288
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/b;->a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ushaqi/zhuishushenqi/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public final varargs a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 300
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/b;->a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/b;->a([Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public final a(Ljava/io/Serializable;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 311
    .line 314
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 315
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 316
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 317
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 325
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 331
    :goto_0
    if-eqz v4, :cond_0

    .line 332
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 336
    :cond_0
    :goto_1
    const/4 v0, 0x1

    :cond_1
    :goto_2
    return v0

    .line 319
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 320
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 324
    if-eqz v2, :cond_2

    .line 325
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 331
    :cond_2
    :goto_4
    if-eqz v3, :cond_1

    .line 332
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    .line 323
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    .line 324
    :goto_5
    if-eqz v2, :cond_3

    .line 325
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 331
    :cond_3
    :goto_6
    if-eqz v4, :cond_4

    .line 332
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 336
    :cond_4
    :goto_7
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_7

    .line 323
    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_5

    .line 319
    :catch_7
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_3

    :catch_8
    move-exception v1

    move-object v3, v4

    goto :goto_3
.end method

.method public final b()Lcom/ushaqi/zhuishushenqi/reader/Reader;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->c:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 347
    .line 5388
    const/4 v0, 0x0

    .line 5389
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 5390
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5391
    const/4 v0, 0x1

    .line 347
    :cond_0
    if-nez v0, :cond_2

    move-object v0, v1

    .line 381
    :cond_1
    :goto_0
    return-object v0

    .line 353
    :cond_2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 354
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 355
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 368
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 374
    :goto_1
    if-eqz v3, :cond_1

    .line 375
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 367
    :goto_2
    if-eqz v0, :cond_3

    .line 368
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 374
    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    .line 375
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :cond_4
    :goto_4
    move-object v0, v1

    .line 381
    goto :goto_0

    .line 358
    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 359
    :goto_5
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    instance-of v0, v0, Ljava/io/InvalidClassException;

    if-eqz v0, :cond_5

    .line 362
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 363
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 367
    :cond_5
    if-eqz v2, :cond_6

    .line 368
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 374
    :cond_6
    :goto_6
    if-eqz v3, :cond_4

    .line 375
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_4

    .line 380
    :catch_3
    move-exception v0

    goto :goto_4

    .line 366
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 367
    :goto_7
    if-eqz v2, :cond_7

    .line 368
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 374
    :cond_7
    :goto_8
    if-eqz v3, :cond_8

    .line 375
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 379
    :cond_8
    :goto_9
    throw v0

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_3

    .line 380
    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v1

    goto :goto_8

    :catch_9
    move-exception v1

    goto :goto_9

    .line 366
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_7

    .line 358
    :catch_a
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_b
    move-exception v0

    goto :goto_5

    :catch_c
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_2

    :catch_d
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2
.end method

.method public final c()Lcom/ushaqi/zhuishushenqi/model/BookInfo;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->d:Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->f:Ljava/lang/String;

    .line 464
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->e:I

    return v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/ushaqi/zhuishushenqi/model/ChapterLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->h:Ljava/util/Map;

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->g:Ljava/util/List;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->g:Ljava/util/List;

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->g:Ljava/util/List;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 468
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->i:Ljava/util/List;

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->i:Ljava/util/List;

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 474
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->j:Ljava/util/List;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->j:Ljava/util/List;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->j:Ljava/util/List;

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->k:Ljava/util/List;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->k:Ljava/util/List;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->k:Ljava/util/List;

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    .line 82
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 83
    sput-object p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->b:Lcom/ushaqi/zhuishushenqi/MyApplication;

    .line 85
    const-string v0, "1"

    sget-object v1, Lcom/ushaqi/zhuishushenqi/MyApplication;->b:Lcom/ushaqi/zhuishushenqi/MyApplication;

    const-string v4, "use_http_dns"

    invoke-static {v1, v4}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/api/e;->a(Z)V

    .line 87
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->q(Landroid/content/Context;)V

    .line 90
    invoke-static {p0}, Lcom/activeandroid/ActiveAndroid;->initialize(Landroid/content/Context;)V

    .line 1132
    const/4 v1, 0x0

    .line 1133
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 1134
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1135
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1136
    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v4, :cond_9

    .line 1137
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :goto_1
    move-object v1, v0

    .line 1139
    goto :goto_0

    .line 92
    :cond_0
    const-string v0, "com.ushaqi.zhuishushenqi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Lcom/ushaqi/zhuishushenqi/e;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/e;-><init>(Lcom/ushaqi/zhuishushenqi/MyApplication;)V

    .line 98
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/e;->start()V

    .line 1198
    :cond_1
    invoke-static {p0}, Lcom/umeng/a/b;->c(Landroid/content/Context;)V

    .line 1199
    new-instance v0, Lcom/ushaqi/zhuishushenqi/f;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/f;-><init>(Lcom/ushaqi/zhuishushenqi/MyApplication;)V

    invoke-static {v0}, Lcom/umeng/a/b;->a(Lcom/umeng/a/a/a;)V

    .line 2157
    const-string v0, "update_notice_key"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 2158
    if-eqz v0, :cond_3

    .line 2173
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2174
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 2175
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2176
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 2177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2178
    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v4, :cond_2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 2158
    :goto_2
    if-eqz v0, :cond_3

    .line 2159
    const-string v0, "2882303761517133731"

    const-string v1, "5941713373731"

    invoke-static {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3164
    :cond_3
    const-string v0, "2882303761517133731"

    const-string v1, "5941713373731"

    invoke-static {p0}, Landroid/support/design/widget/am;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v0, v1, v4}, Lcom/xiaomi/mistatistic/sdk/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v0, Lcom/nostra13/universalimageloader/core/i;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/i;->a()Lcom/nostra13/universalimageloader/core/g;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/nostra13/universalimageloader/core/f;->a()Lcom/nostra13/universalimageloader/core/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nostra13/universalimageloader/core/f;->a(Lcom/nostra13/universalimageloader/core/g;)V

    .line 111
    const-string v0, "PREF_FIRST_LAUNCH_TIME"

    invoke-static {p0, v0, v8, v9}, Lcom/arcsoft/hpay100/a/a;->c(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 112
    cmp-long v0, v0, v8

    if-nez v0, :cond_4

    .line 3457
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 3458
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    .line 113
    :goto_3
    if-eqz v0, :cond_8

    .line 114
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 115
    const/16 v1, 0x7d0

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 116
    const-string v1, "PREF_FIRST_LAUNCH_TIME"

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p0, v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 122
    :cond_4
    :goto_4
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/V;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/V;-><init>(Landroid/content/Context;)V

    .line 4041
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/V;->a()J

    move-result-wide v2

    cmp-long v1, v2, v8

    if-nez v1, :cond_5

    .line 4042
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ushaqi/zhuishushenqi/util/V;->a(J)V

    .line 125
    :cond_5
    invoke-static {p0}, Landroid/support/design/widget/am;->s(Landroid/content/Context;)V

    .line 128
    const-string v0, "appid=56655269"

    invoke-static {p0, v0}, Lcom/iflytek/cloud/SpeechUtility;->createUtility(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/SpeechUtility;

    .line 129
    return-void

    :cond_6
    move v0, v3

    .line 2182
    goto :goto_2

    :cond_7
    move v0, v3

    .line 3458
    goto :goto_3

    .line 118
    :cond_8
    const-string v0, "PREF_FIRST_LAUNCH_TIME"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p0, v0, v2, v3}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto/16 :goto_1
.end method
