.class public final Lcom/ushaqi/zhuishushenqi/api/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ushaqi/zhuishushenqi/api/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static a()Lcom/ushaqi/zhuishushenqi/api/c;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/ushaqi/zhuishushenqi/api/c;->a:Lcom/ushaqi/zhuishushenqi/api/c;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/ushaqi/zhuishushenqi/api/c;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/api/c;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/c;->a:Lcom/ushaqi/zhuishushenqi/api/c;

    .line 20
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/api/c;->a:Lcom/ushaqi/zhuishushenqi/api/c;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/ushaqi/zhuishushenqi/api/d;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/api/d;->b()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;->setExpiredTime(Ljava/util/Date;)V

    .line 26
    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;->setHost(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/api/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;->setIp(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;->save()Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
