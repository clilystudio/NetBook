.class public final Lcom/mob/a/a/d;
.super Lcom/mob/tools/f;


# static fields
.field private static a:Lcom/mob/a/a/d;

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/mob/tools/b/a;

.field private f:Lcom/mob/tools/a/l;

.field private g:Lcom/mob/a/a/e;

.field private h:Ljava/io/File;

.field private i:Lcom/mob/tools/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://api.exc.mob.com:80"

    sput-object v0, Lcom/mob/a/a/d;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "MOB_LOGGER"

    invoke-direct {p0, v0}, Lcom/mob/tools/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/a/a/d;->d:Landroid/content/Context;

    new-instance v0, Lcom/mob/tools/a/l;

    invoke-direct {v0}, Lcom/mob/tools/a/l;-><init>()V

    iput-object v0, p0, Lcom/mob/a/a/d;->f:Lcom/mob/tools/a/l;

    invoke-static {p1}, Lcom/mob/tools/b/a;->a(Landroid/content/Context;)Lcom/mob/tools/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/a/a/d;->e:Lcom/mob/tools/b/a;

    invoke-static {p1}, Lcom/mob/a/a/e;->a(Landroid/content/Context;)Lcom/mob/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/a/a/d;->g:Lcom/mob/a/a/e;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mob/a/a/d;->c:Ljava/util/HashMap;

    new-instance v0, Lcom/mob/tools/b/c;

    invoke-direct {v0}, Lcom/mob/tools/b/c;-><init>()V

    iput-object v0, p0, Lcom/mob/a/a/d;->i:Lcom/mob/tools/b/c;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".lock"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mob/a/a/d;->h:Ljava/io/File;

    iget-object v0, p0, Lcom/mob/a/a/d;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/mob/a/a/d;->h:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/mob/tools/log/d;->setContext(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/mob/a/a/d;->startThread()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/mob/a/a/d;
    .locals 2

    const-class v1, Lcom/mob/a/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mob/a/a/d;->a:Lcom/mob/a/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/mob/a/a/d;

    invoke-direct {v0, p0}, Lcom/mob/a/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mob/a/a/d;->a:Lcom/mob/a/a/d;

    :cond_0
    sget-object v0, Lcom/mob/a/a/d;->a:Lcom/mob/a/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x400

    const/4 v6, 0x0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-array v3, v7, [B

    :goto_0
    invoke-virtual {v0, v3, v6, v7}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    invoke-virtual {v2, v3, v6, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/mob/a/a/d;->g:Lcom/mob/a/a/e;

    invoke-virtual {v0}, Lcom/mob/a/a/e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/mob/a/a/d;->e:Lcom/mob/tools/b/a;

    invoke-virtual {v0}, Lcom/mob/tools/b/a;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "network is disconnected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/mob/a/a/d;->d:Landroid/content/Context;

    invoke-static {v0, p4}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/a/a/f;

    .line 5000
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "key"

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "plat"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sdk"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sdkver"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "appname"

    iget-object v5, p0, Lcom/mob/a/a/d;->e:Lcom/mob/tools/b/a;

    invoke-virtual {v5}, Lcom/mob/tools/b/a;->l()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "apppkg"

    iget-object v5, p0, Lcom/mob/a/a/d;->e:Lcom/mob/tools/b/a;

    invoke-virtual {v5}, Lcom/mob/tools/b/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "appver"

    iget-object v5, p0, Lcom/mob/a/a/d;->e:Lcom/mob/tools/b/a;

    invoke-virtual {v5}, Lcom/mob/tools/b/a;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "deviceid"

    iget-object v5, p0, Lcom/mob/a/a/d;->e:Lcom/mob/tools/b/a;

    invoke-virtual {v5}, Lcom/mob/tools/b/a;->j()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "model"

    .line 6000
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 5000
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "mac"

    iget-object v5, p0, Lcom/mob/a/a/d;->e:Lcom/mob/tools/b/a;

    invoke-virtual {v5}, Lcom/mob/tools/b/a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "udid"

    iget-object v5, p0, Lcom/mob/a/a/d;->e:Lcom/mob/tools/b/a;

    invoke-virtual {v5}, Lcom/mob/tools/b/a;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "sysver"

    .line 7000
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5000
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "networktype"

    iget-object v5, p0, Lcom/mob/a/a/d;->e:Lcom/mob/tools/b/a;

    invoke-virtual {v5}, Lcom/mob/tools/b/a;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 0
    const-string v4, "errmsg"

    iget-object v5, v0, Lcom/mob/a/a/f;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/mob/tools/b/e;

    invoke-direct {v4}, Lcom/mob/tools/b/e;-><init>()V

    invoke-virtual {v4, v3}, Lcom/mob/tools/b/e;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mob/a/a/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/mob/a/a/d;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/mob/a/a/d;->d:Landroid/content/Context;

    iget-object v0, v0, Lcom/mob/a/a/f;->b:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "key"

    invoke-direct {v0, v1, p3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "sdk"

    invoke-direct {v0, v1, p2}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "apppkg"

    iget-object v3, p0, Lcom/mob/a/a/d;->e:Lcom/mob/tools/b/a;

    invoke-virtual {v3}, Lcom/mob/tools/b/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "appver"

    iget-object v3, p0, Lcom/mob/a/a/d;->e:Lcom/mob/tools/b/a;

    invoke-virtual {v3}, Lcom/mob/tools/b/a;->m()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "sdkver"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "plat"

    const-string v3, "1"

    invoke-direct {v0, v1, v3}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance v5, Lcom/mob/tools/a/p;

    invoke-direct {v5}, Lcom/mob/tools/a/p;-><init>()V

    const/16 v0, 0x2710

    iput v0, v5, Lcom/mob/tools/a/p;->a:I

    const/16 v0, 0x2710

    iput v0, v5, Lcom/mob/tools/a/p;->b:I

    iget-object v0, p0, Lcom/mob/a/a/d;->f:Lcom/mob/tools/a/l;

    .line 4000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mob/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/errconf"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/l;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/i;Ljava/util/ArrayList;Lcom/mob/tools/a/p;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    const-string v2, "get logs server config response == %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    new-instance v1, Lcom/mob/tools/b/e;

    invoke-direct {v1}, Lcom/mob/tools/b/e;-><init>()V

    invoke-virtual {v1, v0}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "-200"

    const-string v2, "status"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v0

    const-string v1, "error log server config response fail !!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/log/d;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "result"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->o(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget-object v1, p0, Lcom/mob/a/a/d;->g:Lcom/mob/a/a/e;

    invoke-virtual {v1, v2, v3}, Lcom/mob/a/a/e;->a(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    :try_start_2
    const-string v1, "1"

    const-string v2, "enable"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/mob/a/a/d;->g:Lcom/mob/a/a/e;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mob/a/a/e;->a(Z)V

    :goto_2
    const-string v1, "upconf"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Ljava/util/HashMap;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "crash"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdkerr"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "apperr"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/mob/a/a/d;->g:Lcom/mob/a/a/e;

    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/mob/a/a/e;->b(Z)V

    iget-object v2, p0, Lcom/mob/a/a/d;->g:Lcom/mob/a/a/e;

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mob/a/a/e;->c(Z)V

    iget-object v2, p0, Lcom/mob/a/a/d;->g:Lcom/mob/a/a/e;

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/mob/a/a/e;->d(Z)V

    :cond_3
    const-string v1, "requesthost"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "requestport"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "requesthost"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "requestport"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/mob/a/a/d;->b:Ljava/lang/String;

    :cond_4
    const-string v1, "filter"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "fakelist"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/mob/a/a/d;->g:Lcom/mob/a/a/e;

    new-instance v2, Lcom/mob/tools/b/e;

    invoke-direct {v2}, Lcom/mob/tools/b/e;-><init>()V

    invoke-virtual {v2, v1}, Lcom/mob/tools/b/e;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/a/a/e;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v1

    :try_start_3
    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/mob/a/a/d;->g:Lcom/mob/a/a/e;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mob/a/a/e;->a(Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2
.end method

.method private b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 0
    :try_start_0
    iget-object v0, p0, Lcom/mob/a/a/d;->e:Lcom/mob/tools/b/a;

    invoke-virtual {v0}, Lcom/mob/tools/b/a;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "none"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "network is disconnected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/mob/tools/a/i;

    const-string v1, "m"

    invoke-direct {v0, v1, p1}, Lcom/mob/tools/a/i;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/mob/tools/a/p;

    invoke-direct {v5}, Lcom/mob/tools/a/p;-><init>()V

    const/16 v0, 0x2710

    iput v0, v5, Lcom/mob/tools/a/p;->a:I

    const/16 v0, 0x2710

    iput v0, v5, Lcom/mob/tools/a/p;->b:I

    iget-object v0, p0, Lcom/mob/a/a/d;->f:Lcom/mob/tools/a/l;

    .line 8000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mob/a/a/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/errlog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/mob/tools/a/l;->httpPost(Ljava/lang/String;Ljava/util/ArrayList;Lcom/mob/tools/a/i;Ljava/util/ArrayList;Lcom/mob/tools/a/p;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mob/a/a/d;->d:Landroid/content/Context;

    return-object v0
.end method

.method public final a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    const/4 v2, 0x2

    aput-object p5, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mob/a/a/d;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/mob/a/a/d;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual/range {p0 .. p5}, Lcom/mob/a/a/d;->a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mob/a/a/d;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final onMessage(Landroid/os/Message;)V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v11, 0x0

    .line 0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2000
    :cond_0
    :goto_0
    return-void

    .line 1000
    :pswitch_0
    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v2}, Lcom/mob/a/a/d;->b(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/mob/a/a/d;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2000
    :pswitch_1
    :try_start_1
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    const/4 v3, 0x2

    aget-object v6, v2, v3

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_2

    move v7, v12

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mob/a/a/d;->g:Lcom/mob/a/a/e;

    invoke-virtual {v2}, Lcom/mob/a/a/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lcom/mob/tools/b/e;

    invoke-direct {v3}, Lcom/mob/tools/b/e;-><init>()V

    invoke-virtual {v3, v2}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    const-string v3, "fakelist"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-ne v2, v12, :cond_9

    move v7, v13

    goto :goto_1

    :cond_3
    invoke-static {v6}, Lcom/arcsoft/hpay100/a/a;->h(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mob/a/a/d;->i:Lcom/mob/tools/b/c;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mob/a/a/d;->h:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mob/tools/b/c;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mob/a/a/d;->i:Lcom/mob/tools/b/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mob/tools/b/c;->a(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mob/a/a/d;->g:Lcom/mob/a/a/e;

    invoke-virtual {v4}, Lcom/mob/a/a/e;->a()J

    move-result-wide v4

    sub-long v4, v2, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mob/a/a/d;->d:Landroid/content/Context;

    invoke-static/range {v3 .. v8}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;)J

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mob/a/a/d;->i:Lcom/mob/tools/b/c;

    invoke-virtual {v2}, Lcom/mob/tools/b/c;->a()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mob/a/a/d;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v15, v7, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mob/a/a/d;->g:Lcom/mob/a/a/e;

    invoke-virtual {v2}, Lcom/mob/a/a/e;->e()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "3"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9, v10, v2}, Lcom/mob/a/a/d;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_2
    move-exception v2

    move-object v3, v2

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mob/a/a/d;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mob/a/a/d;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mob/a/a/d;->c:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-ge v2, v15, :cond_6

    .line 3000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mob/a/a/d;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_5
    move v2, v11

    .line 2000
    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/mob/tools/log/d;->w(Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_7
    if-ne v13, v7, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mob/a/a/d;->g:Lcom/mob/a/a/e;

    invoke-virtual {v2}, Lcom/mob/a/a/e;->c()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9, v10, v2}, Lcom/mob/a/a/d;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    :cond_8
    if-ne v12, v7, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mob/a/a/d;->g:Lcom/mob/a/a/e;

    invoke-virtual {v2}, Lcom/mob/a/a/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "2"

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9, v10, v2}, Lcom/mob/a/a/d;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_9
    move v7, v13

    goto/16 :goto_1

    .line 0
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
