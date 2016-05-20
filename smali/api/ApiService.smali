.class public Lcom/ushaqi/zhuishushenqi/api/ApiService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static final l:Lcom/google/gson/Gson;


# instance fields
.field private final c:Lcom/ushaqi/zhuishushenqi/api/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const-class v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b:Ljava/lang/String;

    .line 76
    const-string v0, "zhuishushenqi.com"

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->e:Ljava/lang/String;

    .line 7090
    const-string v0, "localServer"

    const-string v1, "Official"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7091
    const-string v0, "http://192.168.88.99:8080"

    .line 87
    :goto_0
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://chapter."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->g:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://chapter2."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->h:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://statics."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    .line 287
    const-string v0, "http://m.baidu.com/s?word="

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->i:Ljava/lang/String;

    .line 288
    const-string v0, "http://tieba.baidu.com/f?kw="

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->j:Ljava/lang/String;

    .line 289
    const-string v0, "http://m.sm.cn/s?q="

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->k:Ljava/lang/String;

    .line 340
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/api/a;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/api/a;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->l:Lcom/google/gson/Gson;

    .line 340
    return-void

    .line 7092
    :cond_0
    const-string v0, "macServer"

    const-string v1, "Official"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7093
    const-string v0, "http://192.168.88.19:8080"

    goto :goto_0

    .line 8028
    :cond_1
    const-string v0, "frullyServer"

    const-string v1, "Official"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 7094
    if-eqz v0, :cond_2

    .line 7095
    const-string v0, "http://192.168.88.240:8080"

    goto :goto_0

    .line 7097
    :cond_2
    sget-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/api/f;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/a/a;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/a/a;-><init>()V

    .line 66
    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/c;->a(Lcom/xiaomi/mistatistic/sdk/a/a;)V

    .line 67
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c:Lcom/ushaqi/zhuishushenqi/api/f;

    .line 68
    return-void
.end method

.method public static Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static R(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static S(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 3059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 6

    .prologue
    .line 446
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 447
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/api/e;->a(Lcom/github/kevinsawicki/http/HttpRequest;)V

    .line 451
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->c()Z

    move-result v0

    .line 453
    invoke-virtual {p1}, Lcom/github/kevinsawicki/http/HttpRequest;->a()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/kevinsawicki/http/HttpRequest;->b()I

    move-result v4

    const-string v5, ""

    invoke-static {v1, v2, v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;JILjava/lang/String;)V

    .line 454
    if-nez v0, :cond_1

    .line 455
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected response code: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/github/kevinsawicki/http/HttpRequest;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :catch_0
    move-exception v0

    .line 459
    invoke-virtual {p1}, Lcom/github/kevinsawicki/http/HttpRequest;->a()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/kevinsawicki/http/HttpRequest;->b()I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;JILjava/lang/String;)V

    .line 460
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->v()V

    .line 461
    throw v0

    .line 457
    :cond_1
    return-object p1
.end method

.method private a(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 3

    .prologue
    .line 486
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 487
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->c()Z

    move-result v0

    .line 488
    if-nez v0, :cond_0

    .line 489
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/github/kevinsawicki/http/HttpRequest;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->v()V

    .line 494
    throw v0

    .line 491
    :cond_0
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ushaqi/zhuishushenqi/model/Root;"
        }
    .end annotation

    .prologue
    .line 2376
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2377
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2378
    invoke-virtual {v0, p2}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2379
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/Root;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Root;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2383
    :goto_0
    return-object v0

    .line 2380
    :catch_0
    move-exception v0

    .line 2381
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2383
    const/4 v0, 0x0

    goto :goto_0

    .line 2380
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/kevinsawicki/http/HttpRequest;",
            "Ljava/lang/Class",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->e()Ljava/io/BufferedReader;

    move-result-object v1

    .line 392
    :try_start_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->l:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 397
    :try_start_1
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 400
    :goto_0
    return-object v0

    .line 393
    :catch_0
    move-exception v0

    .line 394
    :try_start_2
    new-instance v2, Lcom/ushaqi/zhuishushenqi/api/ApiService$JsonException;

    invoke-direct {v2, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService$JsonException;-><init>(Lcom/google/gson/JsonParseException;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    :catchall_0
    move-exception v0

    .line 397
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 400
    :goto_1
    throw v0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TV;>;)TV;"
        }
    .end annotation

    .prologue
    .line 436
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 437
    invoke-static {v0, p2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 441
    :goto_0
    return-object v0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 441
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1603
    const-string v0, "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1614
    invoke-static {p2}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1615
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->O(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1616
    if-eqz v1, :cond_0

    .line 1617
    const-string v2, "http://book.easou.com/ta/show.m?gid=%s&nid=%s&st=%d&cu=%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v4, v1, v5

    aput-object v4, v3, v5

    aget-object v1, v1, v6

    aput-object v1, v3, v6

    const/4 v1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1619
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1593
    const-string v0, "http://novel.mse.sogou.com/content.php?md=%s&bid=%s&cmd=%s&url=%s&chapter=%s&page=1&referred=detail"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object p3, v1, v2

    const/4 v2, 0x4

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 361
    sget-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    sget-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d:Ljava/lang/String;

    const-string v1, "192.168"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    sput-object p0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d:Ljava/lang/String;

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://api."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://chapter."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->g:Ljava/lang/String;

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://statics."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;JILjava/lang/String;)V
    .locals 7

    .prologue
    .line 474
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 475
    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    .line 476
    new-instance v0, Lcom/xiaomi/mistatistic/sdk/b/a;

    sub-long/2addr v2, p1

    move-object v1, p0

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/b/a;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/c;->a(Lcom/xiaomi/mistatistic/sdk/b/a;)V

    .line 477
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "api_http_error"

    invoke-static {v0, v1, p4}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static ad(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&distillate=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2077
    return-object v0
.end method

.method private b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 3

    .prologue
    const/16 v1, 0x3a98

    .line 503
    invoke-virtual {p1, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->b(I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(I)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 504
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c:Lcom/ushaqi/zhuishushenqi/api/f;

    .line 4098
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    .line 4764
    const-string v2, "ua-toggle"

    invoke-static {v1, v2}, Lcom/umeng/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4765
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4098
    if-eqz v1, :cond_0

    .line 4099
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/f;->b()Ljava/lang/String;

    move-result-object v0

    .line 504
    :goto_0
    invoke-virtual {p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 505
    const-string v0, "X-User-Agent"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c:Lcom/ushaqi/zhuishushenqi/api/f;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/api/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 506
    const-string v0, "X-Device-Id"

    invoke-static {}, Landroid/support/design/widget/am;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 507
    return-object p1

    .line 4101
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private b(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;
    .locals 2

    .prologue
    const/16 v1, 0x3a98

    .line 511
    invoke-virtual {p1, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->b(I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(I)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 512
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c:Lcom/ushaqi/zhuishushenqi/api/f;

    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/api/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 514
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 515
    const-string v0, "http://bookshelf.html5.qq.com/page?t=pad"

    invoke-virtual {p1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 517
    :cond_0
    return-object p1
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 1629
    invoke-static {p2}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1630
    invoke-static {v0}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1631
    const-string v1, "http://book.soso.com/#!/detail/%s/%d/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/github/kevinsawicki/http/HttpRequest;",
            "Ljava/lang/Class",
            "<TV;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->e()Ljava/io/BufferedReader;

    move-result-object v1

    .line 413
    :try_start_0
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 414
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    .line 415
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 416
    invoke-virtual {v0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 418
    sget-object v4, Lcom/ushaqi/zhuishushenqi/api/ApiService;->l:Lcom/google/gson/Gson;

    invoke-virtual {v4, v0, p1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    :try_start_1
    invoke-virtual {v0}, Lcom/google/gson/JsonParseException;->printStackTrace()V

    .line 423
    new-instance v2, Lcom/ushaqi/zhuishushenqi/api/ApiService$JsonException;

    invoke-direct {v2, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService$JsonException;-><init>(Lcom/google/gson/JsonParseException;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 425
    :catchall_0
    move-exception v0

    .line 426
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 429
    :goto_1
    throw v0

    .line 426
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 429
    :goto_2
    return-object v2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static j(Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 3742
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3755
    :cond_0
    :goto_0
    return-void

    .line 3745
    :cond_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3746
    array-length v0, v2

    if-lt v0, v3, :cond_0

    .line 3749
    new-array v3, v3, [Ljava/lang/String;

    move v0, v1

    .line 3751
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 3752
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 3751
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3754
    :cond_2
    aget-object v0, v3, v1

    const/4 v1, 0x1

    aget-object v1, v3, v1

    const/4 v2, 0x2

    aget-object v2, v3, v2

    .line 6758
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/ushaqi/zhuishushenqi/api/ApiService;->i:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6759
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->i:Ljava/lang/String;

    .line 6761
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6762
    sput-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->j:Ljava/lang/String;

    .line 6764
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ushaqi/zhuishushenqi/api/ApiService;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6765
    sput-object v2, Lcom/ushaqi/zhuishushenqi/api/ApiService;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method private static v()V
    .locals 2

    .prologue
    .line 521
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "server_error"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 522
    return-void
.end method

.method private static w()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 2

    .prologue
    .line 830
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;-><init>()V

    .line 831
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->setStatus(I)V

    .line 832
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/Chapter;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/Chapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->setChapter(Lcom/ushaqi/zhuishushenqi/model/Chapter;)V

    .line 833
    return-object v0
.end method

.method private static x()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 2

    .prologue
    .line 1933
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;-><init>()V

    .line 1934
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->setStatus(I)V

    .line 1935
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/Chapter;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/Chapter;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->setChapter(Lcom/ushaqi/zhuishushenqi/model/Chapter;)V

    .line 1936
    return-object v0
.end method


# virtual methods
.method public final A(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;
    .locals 4

    .prologue
    .line 1960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/bookshelf-updated?token=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1962
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1963
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1964
    :catch_0
    move-exception v0

    .line 1965
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final A(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/CommentDetail;
    .locals 4

    .prologue
    .line 3081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/%s/comment/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3083
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3084
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/CommentDetail;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/CommentDetail;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3085
    :catch_0
    move-exception v0

    .line 3086
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final B(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;
    .locals 4

    .prologue
    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/bookshelf?token=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1975
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1976
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1977
    :catch_0
    move-exception v0

    .line 1978
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 3101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/recommend-app/android/%s/download"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3103
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3104
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3105
    const-string v2, "token"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3106
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3107
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3108
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3112
    return-void

    .line 3109
    :catch_0
    move-exception v0

    .line 3110
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 3111
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final C(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;
    .locals 4

    .prologue
    .line 2017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/review/best-by-book?book=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2019
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2020
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2021
    :catch_0
    move-exception v0

    .line 2022
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final C(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;
    .locals 4

    .prologue
    .line 3173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book-list/%s/draft?token=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3175
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3176
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3177
    :catch_0
    move-exception v0

    .line 3178
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final D(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3

    .prologue
    .line 3341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/collected-book-list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3343
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3344
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3346
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3347
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3348
    const-string v2, "bookList"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3349
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3350
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3354
    :goto_0
    return-object v0

    .line 3351
    :catch_0
    move-exception v0

    .line 3352
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3354
    const/4 v0, 0x0

    goto :goto_0

    .line 3351
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final D(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ReviewResult;
    .locals 4

    .prologue
    .line 2099
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/review/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2101
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2102
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ReviewResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ReviewResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2103
    :catch_0
    move-exception v0

    .line 2104
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final E(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;
    .locals 4

    .prologue
    .line 2136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/help/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2138
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2139
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookHelpResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2140
    :catch_0
    move-exception v0

    .line 2141
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final E(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3

    .prologue
    .line 3404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/collected-book-list/remove"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3406
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3407
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3408
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3409
    const-string v2, "bookList"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3410
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3411
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3412
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3413
    :catch_0
    move-exception v0

    .line 3414
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final F(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;
    .locals 4

    .prologue
    .line 2173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2175
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2176
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2177
    :catch_0
    move-exception v0

    .line 2178
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final F(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 4

    .prologue
    .line 3442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/%s/like"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3443
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3445
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3446
    const-string v2, "token"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3447
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3448
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3449
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/Root;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Root;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3450
    :catch_0
    move-exception v0

    .line 3451
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final G(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;
    .locals 3

    .prologue
    .line 2260
    const-string v0, "/user/notification/count?token=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2261
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;

    return-object v0
.end method

.method public final G(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    .locals 3

    .prologue
    .line 3577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/bookshelf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3579
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->c(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3580
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3581
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3582
    const-string v2, "books"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3583
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3584
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3585
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3589
    :goto_0
    return-object v0

    .line 3586
    :catch_0
    move-exception v0

    .line 3587
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 3589
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final H(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostDetail;
    .locals 4

    .prologue
    .line 2270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2272
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2273
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostDetail;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostDetail;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2274
    :catch_0
    move-exception v0

    .line 2275
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final H(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    .locals 3

    .prologue
    .line 3600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/feedingBooks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3602
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->c(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3603
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3604
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3605
    const-string v2, "books"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3606
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3607
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3608
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3612
    :goto_0
    return-object v0

    .line 3609
    :catch_0
    move-exception v0

    .line 3610
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 3612
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    .locals 4

    .prologue
    .line 3623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/bookshelf?token=%s&books=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3625
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->d(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3626
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3630
    :goto_0
    return-object v0

    .line 3627
    :catch_0
    move-exception v0

    .line 3628
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 3630
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final I(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TopicCount;
    .locals 4

    .prologue
    .line 2314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/total-count?books=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2316
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2317
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/TopicCount;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TopicCount;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2318
    :catch_0
    move-exception v0

    .line 2319
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final J(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/AdsResult;
    .locals 4

    .prologue
    .line 2324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/advert?platform=android&position=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2326
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2327
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2328
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/AdsResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/AdsResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2329
    :catch_0
    move-exception v0

    .line 2330
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final J(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    .locals 4

    .prologue
    .line 3641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/feedingBooks?token=%s&books=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3643
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->d(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3644
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SyncUploadResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3648
    :goto_0
    return-object v0

    .line 3645
    :catch_0
    move-exception v0

    .line 3646
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 3648
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final K(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;
    .locals 3

    .prologue
    .line 3691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/gameGift/check"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3693
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3694
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3695
    const-string v2, "token"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3696
    const-string v2, "giftId"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3697
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3698
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3699
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameGiftResponse;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3703
    :goto_0
    return-object v0

    .line 3700
    :catch_0
    move-exception v0

    .line 3701
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3703
    const/4 v0, 0x0

    goto :goto_0

    .line 3700
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final K(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfo;
    .locals 4

    .prologue
    .line 2351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/detail-info?token=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2353
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2354
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/UserInfo;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UserInfo;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2355
    :catch_0
    move-exception v0

    .line 2356
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final L(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 3

    .prologue
    .line 2361
    const-string v0, "/user/notification/read-important"

    .line 2362
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2363
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2364
    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ushaqi/zhuishushenqi/model/Root;

    move-result-object v0

    return-object v0
.end method

.method public final M(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 3

    .prologue
    .line 2368
    const-string v0, "/user/notification/read-unimportant"

    .line 2369
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2370
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2371
    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/ushaqi/zhuishushenqi/model/Root;

    move-result-object v0

    return-object v0
.end method

.method public final N(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/AutoCompleteRoot;
    .locals 5

    .prologue
    .line 2387
    invoke-static {p1}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/book/auto-complete?query=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2390
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2391
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/AutoCompleteRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/AutoCompleteRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2392
    :catch_0
    move-exception v0

    .line 2393
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final O(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;
    .locals 4

    .prologue
    .line 2441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/account/vip?token=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2443
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2444
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UserVipInfo;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2445
    :catch_0
    move-exception v0

    .line 2446
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final P(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3

    .prologue
    .line 2549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/logout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2550
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2551
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2553
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2554
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2555
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2556
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2557
    :catch_0
    move-exception v0

    .line 2558
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final T(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;
    .locals 4

    .prologue
    .line 3131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/%s/comment/best"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3133
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3134
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/HotCommentRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3135
    :catch_0
    move-exception v0

    .line 3136
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final U(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;
    .locals 4

    .prologue
    .line 3163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book-list/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3165
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3166
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetailRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3167
    :catch_0
    move-exception v0

    .line 3168
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final V(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;
    .locals 2

    .prologue
    .line 3252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/books/by-ids"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3254
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3255
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3256
    :catch_0
    move-exception v0

    .line 3257
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final W(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4

    .prologue
    .line 3389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/add-exp-week"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3391
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3392
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3393
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3394
    const-string v2, "type"

    const-string v3, "rate"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3395
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3396
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3397
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3398
    :catch_0
    move-exception v0

    .line 3399
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final X(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;
    .locals 4

    .prologue
    .line 3422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book/%s/recommend"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3424
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3425
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/RelateBookRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3426
    :catch_0
    move-exception v0

    .line 3427
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final Y(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameDetail;
    .locals 4

    .prologue
    .line 3472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/game/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3474
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3475
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/GameDetail;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameDetail;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3476
    :catch_0
    move-exception v0

    .line 3477
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final Z(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;
    .locals 4

    .prologue
    .line 3547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/game/group/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3549
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3550
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3551
    :catch_0
    move-exception v0

    .line 3552
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/ushaqi/zhuishushenqi/model/BookHelpList;
    .locals 5

    .prologue
    .line 2118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/help?duration=%s&sort=%s&start=%d&limit=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2119
    if-eqz p5, :cond_0

    .line 2120
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2123
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2124
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/BookHelpList;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookHelpList;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2125
    :catch_0
    move-exception v0

    .line 2126
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/BookListRoot;
    .locals 5

    .prologue
    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book/by-categories?gender=%s&type=%s&major=%s&minor=%s&start=%d&limit=%d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    .line 877
    invoke-static {p3}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 876
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 879
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 880
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/BookListRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookListRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 881
    :catch_0
    move-exception v0

    .line 882
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 1897
    invoke-static {p4}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1898
    const-string v1, "http://api.easou.com/api/bookapp/chapter.m?gid=%s&nid=%s&sort=%d&chapter_name=%s&cid=eef_"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1900
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1901
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->c()Z

    move-result v1

    .line 1902
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b()I

    move-result v2

    .line 1903
    if-nez v1, :cond_0

    const/16 v1, 0x1f4

    if-lt v2, v1, :cond_0

    .line 1904
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->x()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    .line 1923
    :goto_0
    return-object v0

    .line 1906
    :cond_0
    const/4 v1, 0x0

    .line 1907
    const-class v2, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsChapterRoot;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsChapterRoot;

    .line 1909
    if-eqz v0, :cond_2

    .line 1910
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsChapterRoot;->getContent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1911
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;-><init>()V

    .line 1912
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsChapterRoot;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1914
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/Chapter;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/Chapter;-><init>()V

    .line 1915
    invoke-virtual {v2, p5}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->setLink(Ljava/lang/String;)V

    .line 1916
    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->setBody(Ljava/lang/String;)V

    .line 1917
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->setChapter(Lcom/ushaqi/zhuishushenqi/model/Chapter;)V

    move-object v0, v1

    .line 1918
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsChapterRoot;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1920
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->x()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1924
    :catch_0
    move-exception v0

    .line 1925
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)Lcom/ushaqi/zhuishushenqi/model/DiscussSummaryList;
    .locals 5

    .prologue
    .line 2050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/by-block?block=%s&duration=%s&sort=%s&type=all&start=%d&limit=%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2051
    if-eqz p6, :cond_0

    .line 2052
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2055
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2056
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/DiscussSummaryList;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/DiscussSummaryList;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2057
    :catch_0
    move-exception v0

    .line 2058
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(II)Lcom/ushaqi/zhuishushenqi/model/GameRoot;
    .locals 5

    .prologue
    .line 3498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/game/ranklist?start=%d&limit=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3500
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3501
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/GameRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3502
    :catch_0
    move-exception v0

    .line 3503
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord;
    .locals 5

    .prologue
    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/charge/order?token=%s&start=%d&limit=%d&platform=android"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 645
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayChargeRecord;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 646
    :catch_0
    move-exception v0

    .line 647
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayResult;
    .locals 4

    .prologue
    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/charge/order/%s?token=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 557
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PayResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;
    .locals 5

    .prologue
    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/voucher?token=%s&type=%s&start=%d&limit=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 670
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 671
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayVoucherRecord;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 672
    :catch_0
    move-exception v0

    .line 673
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4

    .prologue
    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/twitter/%s/reply/comment/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1210
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    const-string v2, "content"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1214
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1215
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4

    .prologue
    .line 2701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/review"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2702
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2703
    const-string v0, "token"

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2704
    const-string v0, "book"

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2705
    const-string v0, "title"

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2706
    const-string v0, "content"

    invoke-interface {v2, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2707
    const-string v0, "rating"

    invoke-interface {v2, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2709
    if-eqz p6, :cond_0

    .line 2710
    const-string v0, "book"

    .line 2714
    :goto_0
    const-string v3, "from"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2716
    :try_start_0
    invoke-static {v1}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2717
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2718
    invoke-virtual {v0, v2}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2719
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2712
    :cond_0
    const-string v0, "community"

    goto :goto_0

    .line 2720
    :catch_0
    move-exception v0

    .line 2721
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2722
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;
    .locals 4

    .prologue
    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/purchase/buy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 686
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 687
    const-string v2, "chapter"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const/4 v2, 0x1

    if-ne p3, v2, :cond_0

    .line 689
    const-string v2, "type"

    const-string v3, "auto"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 693
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 694
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 5

    .prologue
    .line 3206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book-list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3208
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3209
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v1

    .line 3211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3212
    const-string v2, "token"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3213
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3214
    const-string v2, "desc"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3215
    invoke-virtual {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3216
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v0

    .line 3217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 3218
    const-string v3, "books[]"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3219
    const-string v3, "comments[]"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAppendComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3222
    :catch_0
    move-exception v0

    .line 3223
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3225
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 3221
    :cond_0
    :try_start_1
    const-class v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_1
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 3222
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 5

    .prologue
    .line 3183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book-list/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3185
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3186
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v1

    .line 3188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3189
    const-string v2, "token"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3190
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3191
    const-string v2, "desc"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3192
    invoke-virtual {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3193
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v0

    .line 3194
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 3195
    const-string v3, "books[]"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3196
    const-string v3, "comments[]"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAppendComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3199
    :catch_0
    move-exception v0

    .line 3200
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3202
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 3198
    :cond_0
    :try_start_1
    const-class v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_1
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 3199
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/ushaqi/zhuishushenqi/model/ReviewList;
    .locals 5

    .prologue
    .line 2037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/review?duration=%s&sort=%s&type=%s&start=%d&limit=%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2038
    if-eqz p6, :cond_0

    .line 2039
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2042
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2043
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ReviewList;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ReviewList;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2044
    :catch_0
    move-exception v0

    .line 2045
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/String;Landroid/net/Uri;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 7

    .prologue
    .line 2507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/change-avatar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2509
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2510
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2511
    const-string v1, "token"

    .line 6641
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v1

    .line 2511
    const-string v2, "avatar"

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "image/jpeg"

    new-instance v5, Ljava/io/File;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/kevinsawicki/http/HttpRequest;->c()Z

    .line 2512
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/Root;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Root;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2513
    :catch_0
    move-exception v0

    .line 2514
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2515
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    .locals 5

    .prologue
    .line 3153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book-list?duration=%s&sort=%s&start=%d&limit=%d&tag=%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3155
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3156
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3157
    :catch_0
    move-exception v0

    .line 3158
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a()Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;
    .locals 2

    .prologue
    .line 351
    const-string v0, "http://alertserver.ushaqi.com/server_config"

    .line 353
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 354
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UshaqiOnlineConfig;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/VoteResult;
    .locals 4

    .prologue
    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/twitter/%s/vote"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1086
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1087
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1088
    const-string v2, "n"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1091
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1092
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/VoteResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/VoteResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(IILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRoot;
    .locals 4

    .prologue
    .line 1706
    const-string v0, "http://bookshelf.html5.qq.com/ajax?start=%d&serialnum=%d&sort=asc&resourceid=%s&m=list_charpter&count=200"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1708
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1709
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsTocRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1710
    :catch_0
    move-exception v0

    .line 1711
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookUpdate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 958
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 967
    :goto_0
    return-object v0

    .line 961
    :cond_0
    const-string v0, ","

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/book?view=updated&id=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 964
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 965
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 970
    :catch_0
    move-exception v0

    .line 971
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final a([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3230
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v0, "?"

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3231
    const/4 v0, 0x0

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 3232
    if-nez v0, :cond_0

    .line 3233
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ids="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3231
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3235
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&ids="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 3238
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/books/by-ids"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3240
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3241
    const-class v2, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;

    .line 3242
    if-eqz v0, :cond_2

    .line 3243
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;->getBooks()Ljava/util/List;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3248
    :goto_2
    return-object v0

    .line 3245
    :catch_0
    move-exception v0

    .line 3246
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public final aa(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;
    .locals 4

    .prologue
    .line 3560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book/%s/chinese-all-promo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3562
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3563
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChineseAllPromRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3564
    :catch_0
    move-exception v0

    .line 3565
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final ab(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;
    .locals 4

    .prologue
    .line 3665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/gameGift/list?platform=android&gameId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3667
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3668
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameGiftRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3669
    :catch_0
    move-exception v0

    .line 3670
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final ac(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;
    .locals 4

    .prologue
    .line 3707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book/recommend?gender=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3709
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3710
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3711
    :catch_0
    move-exception v0

    .line 3712
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final b(II)Lcom/ushaqi/zhuishushenqi/model/GamesGiftRoot;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/game/giftCodeList?start=%d&limit=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3526
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3527
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/GamesGiftRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GamesGiftRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3528
    :catch_0
    move-exception v0

    .line 3529
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;IIZ)Lcom/ushaqi/zhuishushenqi/model/GirlTopicList;
    .locals 5

    .prologue
    .line 2155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/by-block?block=girl&duration=%s&sort=%s&start=%d&limit=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2156
    if-eqz p5, :cond_0

    .line 2157
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->ad(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2160
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2161
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/GirlTopicList;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GirlTopicList;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2162
    :catch_0
    move-exception v0

    .line 2163
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final b()Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;
    .locals 3

    .prologue
    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book/hot-word"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 530
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/HotKeywordResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PayBalance;
    .locals 4

    .prologue
    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/account?token=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 543
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PayBalance;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayBalance;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 544
    :catch_0
    move-exception v0

    .line 545
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;
    .locals 5

    .prologue
    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/purchase/record?token=%s&start=%d&limit=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 658
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PayConsumeRecord;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3

    .prologue
    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/twitter/article"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1131
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    const-string v2, "content"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1136
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1137
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1140
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4

    .prologue
    .line 1323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/twitter/%s/comment/%s/report"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1324
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1325
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    const-string v2, "reason"

    invoke-virtual {v1, v2, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1329
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1330
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1331
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3

    .prologue
    .line 2600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2601
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2602
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2603
    const-string v2, "book"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2604
    const-string v2, "title"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2605
    const-string v2, "content"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2606
    const-string v2, "votes"

    invoke-interface {v1, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2608
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2609
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2610
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2611
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2612
    :catch_0
    move-exception v0

    .line 2613
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2614
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final b(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 5

    .prologue
    .line 3262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book-list/draft"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3264
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3265
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v1

    .line 3267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3268
    const-string v2, "token"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3269
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3270
    const-string v2, "desc"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3271
    invoke-virtual {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3272
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v0

    .line 3273
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 3274
    const-string v3, "books[]"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3275
    const-string v3, "comments[]"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAppendComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3278
    :catch_0
    move-exception v0

    .line 3279
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3281
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 3277
    :cond_0
    :try_start_1
    const-class v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_1
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 3278
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final b(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 5

    .prologue
    .line 3285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book-list/%s/draft"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3287
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->c(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3288
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v1

    .line 3290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3291
    const-string v2, "token"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3292
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3293
    const-string v2, "desc"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3294
    invoke-virtual {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3295
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v0

    .line 3296
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 3297
    const-string v3, "books[]"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3298
    const-string v3, "comments[]"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAppendComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3301
    :catch_0
    move-exception v0

    .line 3302
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3304
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 3300
    :cond_0
    :try_start_1
    const-class v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_1
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 3301
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/Topic;
    .locals 5

    .prologue
    .line 1991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/by-book?book=%s&sort=%s&type=normal,vote&start=%d&limit=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1993
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1994
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/Topic;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Topic;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1995
    :catch_0
    move-exception v0

    .line 1996
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;
    .locals 4

    .prologue
    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/charge/weixinpay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 578
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 579
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v2, "productId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    const-string v2, "spbillCreateIp"

    const-string v3, "192.168.10.1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string v2, "tradeType"

    const-string v3, "APP"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 584
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 585
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 586
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    return-object v0

    .line 588
    :catch_0
    move-exception v0

    .line 589
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1783
    const-string v0, "http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1785
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1786
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->d()Ljava/lang/String;

    move-result-object v0

    .line 1787
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsChapterJson;->getChapterUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1788
    :catch_0
    move-exception v0

    .line 1789
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;
    .locals 5

    .prologue
    .line 2004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/review/by-book?book=%s&sort=%s&start=%d&limit=%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2006
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2007
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookReviewRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2008
    :catch_0
    move-exception v0

    .line 2009
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final c(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;
    .locals 5

    .prologue
    .line 917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book/by-tags?tags=%s&start=%d&limit=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x32

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 919
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 920
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookTagRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 921
    :catch_0
    move-exception v0

    .line 922
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final c(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 4

    .prologue
    .line 1802
    const-string v0, "http://bookshelf.html5.qq.com/ajax?m=show_bookdetail&resourceid=%s&serialid=%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1804
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1805
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->c()Z

    move-result v1

    .line 1806
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b()I

    move-result v2

    .line 1807
    if-nez v1, :cond_0

    const/16 v1, 0x1f4

    if-lt v2, v1, :cond_0

    .line 1808
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->x()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    .line 1811
    :goto_0
    return-object v0

    .line 1810
    :cond_0
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->d()Ljava/lang/String;

    move-result-object v0

    .line 1811
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsChapterJson;->getChapterRoot(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1812
    :catch_0
    move-exception v0

    .line 1813
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final c(Ljava/lang/String;ILjava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1860
    const-string v0, "http://m.leidian.com/index.php?c=ebook&a=chapterData&fmt=json&bid=%s&idx=%d&tk=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    aput-object p3, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1862
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1863
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->c()Z

    move-result v1

    .line 1864
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b()I

    move-result v3

    .line 1865
    if-nez v1, :cond_0

    const/16 v1, 0x1f4

    if-lt v3, v1, :cond_0

    .line 1866
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->x()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    .line 1881
    :goto_0
    return-object v0

    .line 1869
    :cond_0
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdChapterRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdChapterRoot;

    .line 1871
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdChapterRoot;->getContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1872
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;-><init>()V

    .line 1873
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdChapterRoot;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 6078
    if-eqz v3, :cond_1

    .line 6079
    const-string v2, "<p>"

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "</p>"

    const-string v4, "\n"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1874
    :cond_1
    invoke-static {v2}, Lcom/arcsoft/hpay100/a/a;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1876
    new-instance v3, Lcom/ushaqi/zhuishushenqi/model/Chapter;

    invoke-direct {v3}, Lcom/ushaqi/zhuishushenqi/model/Chapter;-><init>()V

    .line 1877
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdChapterRoot;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->setLink(Ljava/lang/String;)V

    .line 1878
    invoke-virtual {v3, v2}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->setBody(Ljava/lang/String;)V

    .line 1879
    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->setChapter(Lcom/ushaqi/zhuishushenqi/model/Chapter;)V
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 1882
    :catch_0
    move-exception v0

    .line 1883
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public final c()Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;
    .locals 2

    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/charge/product?platform=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 570
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChargeTypes;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final c(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostCountRoot;
    .locals 4

    .prologue
    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/post-count-by-book?bookId=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 732
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostCountRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostCountRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4

    .prologue
    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/twitter/%s/comment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1187
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1188
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    const-string v2, "content"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1192
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1193
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4

    .prologue
    .line 2627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2628
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2629
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2630
    const-string v2, "block"

    const-string v3, "girl"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2631
    const-string v2, "title"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2632
    const-string v2, "content"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2633
    const-string v2, "votes"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2635
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2636
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2637
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2638
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2639
    :catch_0
    move-exception v0

    .line 2640
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2641
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3

    .prologue
    .line 2831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/twitter/book"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2832
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2833
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2834
    const-string v2, "bookId"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2835
    const-string v2, "title"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2836
    const-string v2, "content"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2837
    const-string v2, "score"

    invoke-interface {v1, v2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2839
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2840
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2841
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2842
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2845
    :goto_0
    return-object v0

    .line 2843
    :catch_0
    move-exception v0

    .line 2844
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2845
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c(Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 5

    .prologue
    .line 3308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book-list/%s/public"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3310
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->c(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3311
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v1

    .line 3313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3314
    const-string v2, "token"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3315
    const-string v2, "title"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3316
    const-string v2, "desc"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3317
    invoke-virtual {v1, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3318
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;->getBooks()Ljava/util/List;

    move-result-object v0

    .line 3319
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookSummary;

    .line 3320
    const-string v3, "books[]"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3321
    const-string v3, "comments[]"

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookSummary;->getAppendComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/github/kevinsawicki/http/HttpRequest;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3324
    :catch_0
    move-exception v0

    .line 3325
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3327
    const/4 v0, 0x0

    :goto_2
    return-object v0

    .line 3323
    :cond_0
    :try_start_1
    const-class v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_1
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 3324
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;
    .locals 4

    .prologue
    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/charge/youyifupay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 596
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    const-string v2, "productId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 600
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 601
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;
    .locals 5

    .prologue
    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/charge/alipay"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 610
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v2, "productId"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v2

    .line 614
    invoke-virtual {v2, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 615
    const-class v0, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;

    invoke-static {v2, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;

    .line 616
    const-string v1, "tag"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "req.contentLength :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/github/kevinsawicki/http/HttpRequest;->f()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "aliPayOrder :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    return-object v0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final d()Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;
    .locals 2

    .prologue
    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ranking/gender"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 842
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 843
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookRankRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 844
    :catch_0
    move-exception v0

    .line 845
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final d(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/GamePostRoot;
    .locals 5

    .prologue
    .line 2084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/by-game?game=%s&start=%s&limit=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2086
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2087
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2088
    :catch_0
    move-exception v0

    .line 2089
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4

    .prologue
    .line 2646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2647
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2648
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2649
    const-string v2, "title"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2650
    const-string v2, "content"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2651
    const-string v2, "votes"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2652
    const-string v2, "block"

    const-string v3, "ramble"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2654
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2655
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2656
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2657
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2658
    :catch_0
    move-exception v0

    .line 2659
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2660
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TimelineResult;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/twitter/timeline/%s?token=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1262
    if-eqz p3, :cond_0

    .line 1263
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1264
    const-string v2, "last"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    invoke-static {v0, v1, v4}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1270
    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1271
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    :goto_1
    return-object v0

    .line 1267
    :cond_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    goto :goto_0

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final d(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/Topic;
    .locals 5

    .prologue
    .line 2202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/collected-post?token=%s&start=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2204
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2205
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/Topic;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Topic;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2206
    :catch_0
    move-exception v0

    .line 2207
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final d(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/TocSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/toc?view=summary&book=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 745
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/TocSummary;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 747
    return-object v0

    .line 750
    :catch_0
    move-exception v0

    .line 751
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final e()Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;
    .locals 2

    .prologue
    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cats/lv2/statistics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 855
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 856
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/CategoryRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 857
    :catch_0
    move-exception v0

    .line 858
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/DeleteResult;
    .locals 4

    .prologue
    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/charge/order/%s?token=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->d(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 704
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/DeleteResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/DeleteResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    .locals 5

    .prologue
    .line 2287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/%s/comment?start=%d&limit=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2289
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2290
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2291
    :catch_0
    move-exception v0

    .line 2292
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/twitter/%s/report"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1347
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1348
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    const-string v2, "reason"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1352
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1353
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1354
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1357
    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3

    .prologue
    .line 2673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2674
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2675
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2676
    const-string v2, "book"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2677
    const-string v2, "title"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2678
    const-string v2, "content"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2680
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2681
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2682
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2683
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2684
    :catch_0
    move-exception v0

    .line 2685
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2686
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final e(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Toc;
    .locals 4

    .prologue
    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/toc/%s?view=chapters"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 761
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 762
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/Toc;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Toc;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 763
    :catch_0
    move-exception v0

    .line 764
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final e(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/Topic;
    .locals 5

    .prologue
    .line 2218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/posted?token=%s&start=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2220
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2221
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/Topic;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Topic;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2222
    :catch_0
    move-exception v0

    .line 2223
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookAdd;
    .locals 3

    .prologue
    .line 2458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book/add"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2459
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2460
    const-string v2, "title"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2461
    const-string v2, "author"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2462
    const-string v2, "device"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2464
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2465
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2466
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2467
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/BookAdd;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookAdd;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2468
    :catch_0
    move-exception v0

    .line 2469
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2470
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final f()Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;
    .locals 2

    .prologue
    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cats/lv2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 869
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/CategoryLevelRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 870
    :catch_0
    move-exception v0

    .line 871
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;
    .locals 4

    .prologue
    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/purchase/chapter/%s/key?token=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 721
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 722
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 723
    :catch_0
    move-exception v0

    .line 724
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final f(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/MixTocRoot;
    .locals 4

    .prologue
    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mix-toc/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 775
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/MixTocRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/MixTocRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final f(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    .locals 5

    .prologue
    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/review/%s/comment?start=%d&limit=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2306
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2307
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2308
    :catch_0
    move-exception v0

    .line 2309
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4

    .prologue
    .line 2805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/%s/comment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2806
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2807
    const-string v2, "token"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2808
    const-string v2, "content"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2809
    const-string v2, "replyTo"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2811
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2812
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2813
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2814
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2815
    :catch_0
    move-exception v0

    .line 2816
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2817
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final f(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    .locals 5

    .prologue
    .line 3358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/collected-book-list?token=%s&start=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3360
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3361
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3362
    :catch_0
    move-exception v0

    .line 3363
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Account;
    .locals 3

    .prologue
    .line 2527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2528
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2529
    const-string v2, "platform_code"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2530
    const-string v2, "platform_uid"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2531
    const-string v2, "platform_token"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2533
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2534
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2535
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2536
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/Account;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Account;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2537
    :catch_0
    move-exception v0

    .line 2538
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2539
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;
    .locals 4

    .prologue
    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/purchase/book/%s/chapters/bought?token=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 819
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 820
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterKeysRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final g()Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;
    .locals 2

    .prologue
    .line 930
    const-string v0, "http://mhjk.1391.com/comic/bigbooklist"

    .line 932
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 933
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/MhdListRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 934
    :catch_0
    move-exception v0

    .line 935
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3

    .prologue
    .line 3063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3064
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3065
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3066
    const-string v2, "title"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3067
    const-string v2, "content"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3068
    const-string v2, "block"

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3070
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3071
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3072
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3073
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3074
    :catch_0
    move-exception v0

    .line 3075
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 3076
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final g(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;
    .locals 4

    .prologue
    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/aggregation-source/by-book?book=%s&v=5"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 789
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TocSourceRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 790
    :catch_0
    move-exception v0

    .line 791
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final g(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    .locals 5

    .prologue
    .line 3368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/posted-book-list?token=%s&start=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3370
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3371
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3372
    :catch_0
    move-exception v0

    .line 3373
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final h(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;
    .locals 4

    .prologue
    .line 983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/followings/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 985
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 986
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;
    .locals 2

    .prologue
    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book/mystery-box"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 945
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 946
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/MysteryBookList;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 947
    :catch_0
    move-exception v0

    .line 948
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3

    .prologue
    .line 2734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/help"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2735
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2736
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2737
    const-string v2, "title"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2738
    const-string v2, "content"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2740
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2741
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2742
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2743
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2744
    :catch_0
    move-exception v0

    .line 2745
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2746
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3

    .prologue
    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/follow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1019
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1020
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string v2, "followeeId"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1023
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1024
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1025
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    .locals 5

    .prologue
    .line 3378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/draft-book-list?token=%s&start=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3380
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3381
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UGCBookListRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3382
    :catch_0
    move-exception v0

    .line 3384
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final i(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/FollowersResult;
    .locals 4

    .prologue
    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/followers/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1003
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1004
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/FollowersResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/FollowersResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4

    .prologue
    .line 2756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2757
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2758
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2759
    const-string v2, "content"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2760
    const-string v2, "game"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2761
    const-string v2, "block"

    const-string v3, "game"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2763
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2764
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2765
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2766
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2767
    :catch_0
    move-exception v0

    .line 2768
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2769
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final i(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;
    .locals 5

    .prologue
    .line 3432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book-list/%s/recommend?limit=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3434
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3435
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3436
    :catch_0
    move-exception v0

    .line 3437
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3

    .prologue
    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/unfollow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1039
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1040
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1041
    const-string v2, "followeeId"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1044
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1045
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/MenuAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/recommend-app/android/piority"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1555
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1556
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/MenuAd;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1558
    return-object v0

    .line 1561
    :catch_0
    move-exception v0

    .line 1562
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final j(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;
    .locals 3

    .prologue
    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/twitter/hottweets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1297
    if-eqz p1, :cond_0

    .line 1298
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1299
    const-string v2, "last"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1305
    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1306
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/HotTweetResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    :goto_1
    return-object v0

    .line 1302
    :cond_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    goto :goto_0

    .line 1308
    :catch_0
    move-exception v0

    .line 1309
    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 3

    .prologue
    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/twitter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1061
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1062
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1063
    const-string v2, "content"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1066
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1067
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4

    .prologue
    .line 2781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/%s/comment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2782
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2783
    const-string v2, "token"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2784
    const-string v2, "content"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2786
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2787
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2788
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2789
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2790
    :catch_0
    move-exception v0

    .line 2791
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2792
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final j()Lcom/ushaqi/zhuishushenqi/model/SplashRoot;
    .locals 2

    .prologue
    .line 1570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/splashes/android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1572
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1573
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/SplashRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SplashRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1574
    :catch_0
    move-exception v0

    .line 1575
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4

    .prologue
    .line 1108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/twitter/delete/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1110
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1113
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1114
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Lcom/ushaqi/zhuishushenqi/model/TopicSummary;
    .locals 2

    .prologue
    .line 2186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/post-count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2188
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2189
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/TopicSummary;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TopicSummary;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2190
    :catch_0
    move-exception v0

    .line 2191
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final k(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TweetsResult;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/%s/twitter"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1388
    if-eqz p1, :cond_0

    .line 1389
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1390
    const-string v2, "last"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    invoke-static {v0, v1, v4}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1396
    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1397
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1400
    :goto_1
    return-object v0

    .line 1393
    :cond_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    goto :goto_0

    .line 1400
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/VoteResult;
    .locals 4

    .prologue
    .line 2857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/%s/vote"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2858
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2859
    const-string v2, "token"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2860
    const-string v2, "n"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2862
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2863
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2864
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2865
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/VoteResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/VoteResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2866
    :catch_0
    move-exception v0

    .line 2867
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2868
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/twitter/%s/comments"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1162
    if-eqz p2, :cond_0

    .line 1163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1164
    const-string v2, "last"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    invoke-static {v0, v1, v3}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1170
    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1171
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    :goto_1
    return-object v0

    .line 1167
    :cond_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    goto :goto_0

    .line 1174
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4

    .prologue
    .line 2917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/%s/comment/%s/report"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2918
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2919
    const-string v2, "reason"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2921
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2922
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2923
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2924
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2925
    :catch_0
    move-exception v0

    .line 2926
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2927
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final l()Lcom/ushaqi/zhuishushenqi/model/ShelfMsgRoot;
    .locals 2

    .prologue
    .line 2338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/notification/shelfMessage?platform=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2340
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2341
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ShelfMsgRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ShelfMsgRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2342
    :catch_0
    move-exception v0

    .line 2343
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final l(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TweetResult;
    .locals 4

    .prologue
    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/twitter/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1421
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1422
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/TweetResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TweetResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1425
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    .locals 4

    .prologue
    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/twitter/retweet/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1231
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1232
    const-string v2, "token"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1235
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 1236
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PostPublish;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PostPublish;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4

    .prologue
    .line 2938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/review/%s/helpful"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2939
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2940
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2941
    const-string v2, "is_helpful"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2943
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2944
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2945
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2946
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2947
    :catch_0
    move-exception v0

    .line 2948
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2949
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final m(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;
    .locals 4

    .prologue
    .line 1474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/info/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1476
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1477
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1480
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Lcom/ushaqi/zhuishushenqi/model/VipPlan;
    .locals 2

    .prologue
    .line 2404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/purchase/vip/plan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2406
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2407
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/VipPlan;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/VipPlan;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2408
    :catch_0
    move-exception v0

    .line 2409
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/FollowResult;
    .locals 4

    .prologue
    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/%s/has/followed/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1371
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1372
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1373
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/FollowResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/FollowResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1376
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3

    .prologue
    .line 3025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/statistics/read"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3026
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3027
    const-string v2, "date"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3028
    const-string v2, "uuid"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3029
    const-string v2, "book"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3031
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3032
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3033
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3034
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3035
    :catch_0
    move-exception v0

    .line 3036
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 3037
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final n()Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;
    .locals 2

    .prologue
    .line 3091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/recommend-app/android/mystery-box"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3093
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3094
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SecretAppItemRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3095
    :catch_0
    move-exception v0

    .line 3096
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final n(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/BookSummary;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1490
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1491
    invoke-static {p1}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1492
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/book/fuzzy-search?query=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1494
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1495
    const-class v2, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;

    .line 1496
    if-eqz v0, :cond_0

    .line 1497
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;->getBooks()Ljava/util/List;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1502
    :goto_0
    return-object v0

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4

    .prologue
    .line 3116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/%s/comment/%s/like"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3118
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3120
    const-string v2, "token"

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3121
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3122
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3123
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3127
    :goto_0
    return-object v0

    .line 3124
    :catch_0
    move-exception v0

    .line 3125
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3127
    const/4 v0, 0x0

    goto :goto_0

    .line 3124
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final o(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;
    .locals 3

    .prologue
    .line 1511
    invoke-static {p1}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/book/accurate-search?author="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1514
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1515
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1516
    :catch_0
    move-exception v0

    .line 1517
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TweetsResult;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/%s/twitter"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1451
    if-eqz p2, :cond_0

    .line 1452
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1453
    const-string v2, "last"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1454
    invoke-static {v0, v1, v3}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;Ljava/util/Map;Z)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1459
    :goto_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1460
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TweetsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    :goto_1
    return-object v0

    .line 1456
    :cond_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    goto :goto_0

    .line 1463
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final o()Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;
    .locals 2

    .prologue
    .line 3331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book-list/tagType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3333
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3334
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/UgcFilterRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3335
    :catch_0
    move-exception v0

    .line 3336
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1824
    invoke-static {p1}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1825
    const-string v1, "http://novel.mse.sogou.com/http_interface/getContData.php?md=%s&url=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1827
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1828
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->c()Z

    move-result v1

    .line 1829
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b()I

    move-result v2

    .line 1830
    if-nez v1, :cond_0

    const/16 v1, 0x1f4

    if-lt v2, v1, :cond_0

    .line 1831
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->x()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    .line 1847
    :goto_0
    return-object v0

    .line 1833
    :cond_0
    const/4 v1, 0x0

    .line 1834
    const-class v2, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterRoot;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterRoot;

    .line 1836
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterRoot;->getContent()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgMixChapter;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterRoot;->getContent()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgMixChapter;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_2

    .line 1837
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;-><init>()V

    .line 1838
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgChapterRoot;->getContent()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgMixChapter;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 1839
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgMixChapter;->getBlock()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1841
    new-instance v2, Lcom/ushaqi/zhuishushenqi/model/Chapter;

    invoke-direct {v2}, Lcom/ushaqi/zhuishushenqi/model/Chapter;-><init>()V

    .line 1842
    invoke-virtual {v2, p1}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->setLink(Ljava/lang/String;)V

    .line 5110
    if-eqz v0, :cond_1

    const-string v3, "</"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5111
    const-string v3, "\n"

    const-string v4, "<br>"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 5112
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1844
    :cond_1
    invoke-virtual {v2, v0}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->setBody(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->setChapter(Lcom/ushaqi/zhuishushenqi/model/Chapter;)V
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    .line 1848
    :catch_0
    move-exception v0

    .line 1849
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public final p()Lcom/ushaqi/zhuishushenqi/model/GameRoot;
    .locals 2

    .prologue
    .line 3459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/game?platform=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3461
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3462
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/GameRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3463
    :catch_0
    move-exception v0

    .line 3464
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultServer;
    .locals 4

    .prologue
    .line 3717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/statistics/install"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3718
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3719
    const-string v2, "platform"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3720
    const-string v2, "device-id"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3721
    const-string v2, "recommended"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3722
    const-string v2, "op"

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3724
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3725
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3726
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultServer;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultServer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3729
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;
    .locals 5

    .prologue
    .line 1527
    invoke-static {p1}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/book/fuzzy-search?query=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&onlyTitle=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1530
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1531
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SearchResultRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1532
    :catch_0
    move-exception v0

    .line 1533
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final q()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;
    .locals 2

    .prologue
    .line 3485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/game/layoutv2/?platform=android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3487
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3488
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3489
    :catch_0
    move-exception v0

    .line 3490
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ReviewHistory;
    .locals 4

    .prologue
    .line 2066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/review/one-by-book-user?book=%s&token=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2068
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2069
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ReviewHistory;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ReviewHistory;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2070
    :catch_0
    move-exception v0

    .line 2071
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final q(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/SearchPromRoot;
    .locals 5

    .prologue
    .line 1539
    invoke-static {p1}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/book/search/%s/chinese-all-promo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1542
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1543
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/SearchPromRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/SearchPromRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final r(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookInfo;
    .locals 4

    .prologue
    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/book/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1585
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1586
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookInfo;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1587
    :catch_0
    move-exception v0

    .line 1588
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final r()Lcom/ushaqi/zhuishushenqi/model/GameCatRoot;
    .locals 2

    .prologue
    .line 3511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/game/cat/topgames"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3513
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3514
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/GameCatRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameCatRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3515
    :catch_0
    move-exception v0

    .line 3516
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2229
    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2230
    const-string v0, "/user/notification/important?token=%s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2234
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2236
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2237
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2232
    :cond_0
    const-string v0, "/user/notification/important?token=%s&startTime=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2238
    :catch_0
    move-exception v0

    .line 2239
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final s()Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;
    .locals 2

    .prologue
    .line 3537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/game/layoutv2/microgame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3539
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3540
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3541
    :catch_0
    move-exception v0

    .line 3542
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2245
    invoke-static {p2}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2246
    const-string v0, "/user/notification/unimportant?token=%s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2250
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2252
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2253
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2248
    :cond_0
    const-string v0, "/user/notification/unimportant?token=%s&startTime=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2254
    :catch_0
    move-exception v0

    .line 2255
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final s(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;
    .locals 3

    .prologue
    .line 1640
    const-string v0, "http://novel.mse.sogou.com/http_interface/getDirData.php?md=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1642
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1643
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgTocRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1644
    :catch_0
    move-exception v0

    .line 1645
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final t()Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;
    .locals 2

    .prologue
    .line 3652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/promotion/17k"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3654
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3655
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/IKanshuUrlResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3656
    :catch_0
    move-exception v0

    .line 3657
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final t(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;
    .locals 3

    .prologue
    .line 2420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/purchase/vip/plan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2421
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2422
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2423
    const-string v2, "plan"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2425
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2426
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2427
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2428
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2429
    :catch_0
    move-exception v0

    .line 2430
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final t(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocRoot;
    .locals 3

    .prologue
    .line 1653
    const-string v0, "http://m.leidian.com/ebook/detail/index.php?c=ebook&a=chapterlist&bid=%s&total=100000"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1655
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1656
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/LdTocRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1657
    :catch_0
    move-exception v0

    .line 1658
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final u()Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;
    .locals 2

    .prologue
    .line 3675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/favorite/book/top"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3677
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3678
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookTopRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3679
    :catch_0
    move-exception v0

    .line 3680
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;
    .locals 3

    .prologue
    .line 2475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/change-nickname"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2476
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2477
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2478
    const-string v2, "nickname"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2480
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2481
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2482
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2483
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChangeNickNameRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2484
    :catch_0
    move-exception v0

    .line 2485
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2486
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final u(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1663
    const-string v0, "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=%s&idx=0"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1665
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1666
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->d()Ljava/lang/String;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1667
    :catch_0
    move-exception v0

    .line 1668
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final v(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;
    .locals 3

    .prologue
    .line 2491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/change-gender"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2492
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2493
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2494
    const-string v2, "gender"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2496
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2497
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2498
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2499
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChangeGenderRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2500
    :catch_0
    move-exception v0

    .line 2501
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2502
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final v(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1673
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->O(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1674
    if-nez v0, :cond_0

    .line 1675
    const/4 v0, 0x0

    .line 1681
    :goto_0
    return-object v0

    .line 1678
    :cond_0
    const-string v1, "http://api.easou.com/api/bookapp/chapter_list.m?gid=%s&nid=%s&size=100000&cid=eef_"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aget-object v3, v0, v4

    aput-object v3, v2, v4

    aget-object v0, v0, v5

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1680
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1681
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/EsTocRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1682
    :catch_0
    move-exception v0

    .line 1683
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final w(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 1688
    const-string v0, "http://bookshelf.html5.qq.com/ajax?m=show_bookcatalog&resourceid=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1690
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;I)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1691
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->d()Ljava/lang/String;

    move-result-object v0

    .line 1692
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsChapterJson;->getTocCount(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 1693
    :catch_0
    move-exception v0

    .line 1694
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 4

    .prologue
    .line 2879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/post/%s/report"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2880
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2881
    const-string v2, "reason"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2883
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2884
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2885
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2886
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2887
    :catch_0
    move-exception v0

    .line 2888
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2889
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final x(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 4

    .prologue
    .line 1729
    invoke-static {p1}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1730
    const-string v1, "/chapter/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ushaqi/zhuishushenqi/api/ApiService;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1734
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1735
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1736
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/api/e;->a(Lcom/github/kevinsawicki/http/HttpRequest;)V

    .line 1738
    :cond_0
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1739
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->c()Z

    move-result v1

    .line 1740
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b()I

    move-result v2

    .line 1742
    if-nez v1, :cond_2

    const/16 v1, 0x1f4

    if-lt v2, v1, :cond_2

    .line 1743
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->w()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    .line 1750
    :cond_1
    :goto_0
    return-object v0

    .line 1745
    :cond_2
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    .line 1747
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->getChapter()Lcom/ushaqi/zhuishushenqi/model/Chapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1748
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->getChapter()Lcom/ushaqi/zhuishushenqi/model/Chapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->setLink(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1751
    :catch_0
    move-exception v0

    .line 1752
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final x(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3

    .prologue
    .line 2960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/add-exp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2961
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2962
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2963
    const-string v2, "type"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2965
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2966
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2967
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2968
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2969
    :catch_0
    move-exception v0

    .line 2970
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2971
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final y(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 5

    .prologue
    .line 1757
    invoke-static {p1}, Landroid/support/design/widget/am;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ushaqi/zhuishushenqi/api/ApiService;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/chapter/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1760
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1761
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/e;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1762
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/api/e;->a(Lcom/github/kevinsawicki/http/HttpRequest;)V

    .line 1764
    :cond_0
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1765
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->c()Z

    move-result v1

    .line 1766
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b()I

    move-result v2

    .line 1768
    if-nez v1, :cond_2

    const/16 v1, 0x1f4

    if-lt v2, v1, :cond_2

    .line 1769
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->w()Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    move-result-object v0

    .line 1776
    :cond_1
    :goto_0
    return-object v0

    .line 1771
    :cond_2
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;

    .line 1773
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->getChapter()Lcom/ushaqi/zhuishushenqi/model/Chapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1774
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;->getChapter()Lcom/ushaqi/zhuishushenqi/model/Chapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ushaqi/zhuishushenqi/model/Chapter;->setLink(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1777
    :catch_0
    move-exception v0

    .line 1778
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final y(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3

    .prologue
    .line 2981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/collected-post"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2982
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2983
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2984
    const-string v2, "post"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2986
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2987
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 2988
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 2989
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2990
    :catch_0
    move-exception v0

    .line 2991
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 2992
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final z(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;
    .locals 4

    .prologue
    .line 1945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ranking/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1947
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 1948
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1949
    :catch_0
    move-exception v0

    .line 1950
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method public final z(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    .locals 3

    .prologue
    .line 3002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/user/collected-post/remove"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3003
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3004
    const-string v2, "token"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3005
    const-string v2, "post"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3007
    :try_start_0
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->b(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3008
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Lcom/github/kevinsawicki/http/HttpRequest;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    .line 3009
    invoke-virtual {v0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/util/Map;)Lcom/github/kevinsawicki/http/HttpRequest;

    .line 3010
    const-class v1, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Lcom/github/kevinsawicki/http/HttpRequest;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/ResultStatus;
    :try_end_0
    .catch Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 3011
    :catch_0
    move-exception v0

    .line 3012
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->printStackTrace()V

    .line 3013
    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
