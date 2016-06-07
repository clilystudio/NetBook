.class public Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "DnsCache"
.end annotation


# instance fields
.field private expiredTime:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "expiredTime"
    .end annotation
.end field

.field private host:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "host"
    .end annotation
.end field

.field private ip:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "ip"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public getExpiredTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;->expiredTime:Ljava/util/Date;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public isExpired()Z
    .locals 4

    .prologue
    .line 58
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;->expiredTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpiredTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;->expiredTime:Ljava/util/Date;

    .line 50
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;->host:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;->ip:Ljava/lang/String;

    .line 46
    return-void
.end method
