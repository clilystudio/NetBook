.class public final Lcom/d/a/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/d/a/c/b;

.field private static b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/d/a/c/c;->a:Lcom/d/a/c/b;

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/d/a/c/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/d/a/c/b;
    .locals 2

    .prologue
    .line 80
    const-class v1, Lcom/d/a/c/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/d/a/c/c;->a:Lcom/d/a/c/b;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/d/a/c/c;->a:Lcom/d/a/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    monitor-exit v1

    return-object v0

    .line 83
    :cond_0
    if-eqz p0, :cond_1

    .line 84
    :try_start_1
    invoke-static {p0}, Lcom/d/a/c/c;->b(Landroid/content/Context;)Lcom/d/a/c/b;

    move-result-object v0

    .line 85
    sput-object v0, Lcom/d/a/c/c;->a:Lcom/d/a/c/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/d/a/c/b;
    .locals 8

    .prologue
    .line 47
    if-eqz p0, :cond_2

    .line 48
    new-instance v0, Lcom/d/a/c/b;

    invoke-direct {v0}, Lcom/d/a/c/b;-><init>()V

    .line 49
    sget-object v2, Lcom/d/a/c/c;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 50
    :try_start_0
    invoke-static {p0}, Lcom/d/a/c/d;->a(Landroid/content/Context;)Lcom/d/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/d/a/c/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/support/v7/app/k;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 56
    :goto_0
    new-instance v0, Lcom/d/a/c/b;

    invoke-direct {v0}, Lcom/d/a/c/b;-><init>()V

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 58
    invoke-static {p0}, Lcom/alipay/sdk/b/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 59
    invoke-static {p0}, Lcom/alipay/sdk/b/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 60
    invoke-virtual {v0, v3}, Lcom/d/a/c/b;->c(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v3}, Lcom/d/a/c/b;->a(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v4, v5}, Lcom/d/a/c/b;->a(J)V

    .line 63
    invoke-virtual {v0, v6}, Lcom/d/a/c/b;->b(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/d/a/c/b;->d(Ljava/lang/String;)V

    .line 65
    const-string v1, "%s%s%s%s%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/d/a/c/b;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/d/a/c/b;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/d/a/c/b;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/d/a/c/b;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/d/a/c/b;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/app/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/zip/Adler32;

    invoke-direct {v3}, Ljava/util/zip/Adler32;-><init>()V

    invoke-virtual {v3}, Ljava/util/zip/Adler32;->reset()V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/zip/Adler32;->update([B)V

    invoke-virtual {v3}, Ljava/util/zip/Adler32;->getValue()J

    .line 66
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_1
    return-object v0

    .line 68
    :cond_1
    monitor-exit v2

    .line 70
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
