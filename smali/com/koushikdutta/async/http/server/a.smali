.class public Lcom/koushikdutta/async/http/server/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x5
.end annotation


# static fields
.field private static d:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/async/r;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/koushikdutta/async/http/server/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/koushikdutta/async/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-class v0, Lcom/koushikdutta/async/http/server/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    .line 345
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/koushikdutta/async/http/server/a;->d:Ljava/util/Hashtable;

    .line 482
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 484
    sput-object v0, Lcom/koushikdutta/async/http/server/a;->e:Ljava/util/Hashtable;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->e:Ljava/util/Hashtable;

    const/16 v1, 0xce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Partial Content"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->e:Ljava/util/Hashtable;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Switching Protocols"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->e:Ljava/util/Hashtable;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Moved Permanently"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->e:Ljava/util/Hashtable;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Found"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->e:Ljava/util/Hashtable;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not Found"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/a;->a:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Lcom/koushikdutta/async/http/server/b;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/http/server/b;-><init>(Lcom/koushikdutta/async/http/server/a;)V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/a;->c:Lcom/koushikdutta/async/a/c;

    .line 270
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/server/a;->b:Ljava/util/Hashtable;

    .line 347
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->d:Ljava/util/Hashtable;

    const-string v1, "js"

    const-string v2, "application/javascript"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->d:Ljava/util/Hashtable;

    const-string v1, "json"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->d:Ljava/util/Hashtable;

    const-string v1, "png"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->d:Ljava/util/Hashtable;

    const-string v1, "jpg"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->d:Ljava/util/Hashtable;

    const-string v1, "html"

    const-string v2, "text/html"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->d:Ljava/util/Hashtable;

    const-string v1, "css"

    const-string v2, "text/css"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->d:Ljava/util/Hashtable;

    const-string v1, "mp4"

    const-string v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->d:Ljava/util/Hashtable;

    const-string v1, "mov"

    const-string v2, "video/quicktime"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->d:Ljava/util/Hashtable;

    const-string v1, "wmv"

    const-string v2, "video/x-ms-wmv"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    return-void
.end method

.method protected static a(Lcom/koushikdutta/async/http/b/e;)Lcom/koushikdutta/async/http/a/a;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Lcom/koushikdutta/async/http/server/s;

    const-string v1, "Content-Type"

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/http/b/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/server/s;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 359
    .line 1366
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1367
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1368
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1369
    sget-object v1, Lcom/koushikdutta/async/http/server/a;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1370
    if-eqz v0, :cond_0

    .line 360
    :goto_0
    if-eqz v0, :cond_1

    .line 362
    :goto_1
    return-object v0

    .line 1373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 362
    :cond_1
    const-string v0, "text/plain"

    goto :goto_1
.end method

.method static synthetic a(Lcom/koushikdutta/async/http/server/a;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/r;)V
    .locals 4

    .prologue
    .line 273
    new-instance v1, Lcom/koushikdutta/async/http/server/g;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/koushikdutta/async/http/server/g;-><init>(B)V

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, v1, Lcom/koushikdutta/async/http/server/g;->a:Ljava/util/regex/Pattern;

    .line 275
    iput-object p3, v1, Lcom/koushikdutta/async/http/server/g;->b:Lcom/koushikdutta/async/http/server/r;

    .line 277
    iget-object v2, p0, Lcom/koushikdutta/async/http/server/a;->b:Ljava/util/Hashtable;

    monitor-enter v2

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 279
    if-nez v0, :cond_0

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    iget-object v3, p0, Lcom/koushikdutta/async/http/server/a;->b:Ljava/util/Hashtable;

    invoke-virtual {v3, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 493
    sget-object v0, Lcom/koushikdutta/async/http/server/a;->e:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 494
    if-nez v0, :cond_0

    .line 495
    const-string v0, "Unknown"

    .line 496
    :cond_0
    return-object v0
.end method

.method protected static b()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/koushikdutta/async/r;
    .locals 4

    .prologue
    .line 223
    invoke-static {}, Lcom/koushikdutta/async/AsyncServer;->a()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    const/16 v1, 0x1388

    .line 1214
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/koushikdutta/async/http/server/a;->c:Lcom/koushikdutta/async/a/c;

    invoke-virtual {v0, v2, v1, v3}, Lcom/koushikdutta/async/AsyncServer;->a(Ljava/net/InetAddress;ILcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/r;

    move-result-object v0

    .line 223
    return-object v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/r;

    .line 51
    invoke-interface {v0}, Lcom/koushikdutta/async/r;->a()V

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/koushikdutta/async/http/server/r;)V
    .locals 1

    .prologue
    .line 327
    const-string v0, "GET"

    invoke-direct {p0, v0, p1, p2}, Lcom/koushikdutta/async/http/server/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/r;)V

    .line 328
    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/koushikdutta/async/http/server/r;)V
    .locals 1

    .prologue
    .line 331
    const-string v0, "POST"

    invoke-direct {p0, v0, p1, p2}, Lcom/koushikdutta/async/http/server/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/server/r;)V

    .line 332
    return-void
.end method
