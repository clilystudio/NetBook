.class public final Lcom/ushaqi/zhuishushenqi/api/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:Lcom/ushaqi/zhuishushenqi/api/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/c;->a()Lcom/ushaqi/zhuishushenqi/api/c;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/e;->b:Lcom/ushaqi/zhuishushenqi/api/c;

    return-void
.end method

.method public static a(Lcom/github/kevinsawicki/http/HttpRequest;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/github/kevinsawicki/http/HttpRequest;->a()Ljava/net/URL;

    move-result-object v2

    .line 32
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 1036
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v4, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;

    invoke-virtual {v0, v4}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v4, "host = ?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 1037
    invoke-virtual {v0, v4, v5}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    .line 1038
    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;

    .line 1039
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;->isExpired()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1040
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;->delete()V

    move-object v0, v1

    .line 34
    :goto_0
    if-nez v0, :cond_4

    .line 1063
    const-string v0, "http://%s/d?dn=%s&ttl=1"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "119.29.29.29"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-static {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/CharSequence;)Lcom/github/kevinsawicki/http/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/kevinsawicki/http/HttpRequest;->d()Ljava/lang/String;

    move-result-object v0

    .line 2052
    if-nez v0, :cond_3

    .line 2053
    new-instance v1, Lcom/ushaqi/zhuishushenqi/exception/DnsParseFailedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " parse failed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ushaqi/zhuishushenqi/exception/DnsParseFailedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    :cond_0
    :goto_1
    return-void

    .line 1043
    :cond_1
    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/DnsCacheRecord;->getIp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2056
    :cond_3
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2057
    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2058
    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2059
    new-instance v4, Lcom/ushaqi/zhuishushenqi/api/d;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-direct {v4, v1, v0}, Lcom/ushaqi/zhuishushenqi/api/d;-><init>(Ljava/lang/String;I)V

    .line 37
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/api/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/e;->b:Lcom/ushaqi/zhuishushenqi/api/c;

    invoke-virtual {v1, v4, v3}, Lcom/ushaqi/zhuishushenqi/api/c;->a(Lcom/ushaqi/zhuishushenqi/api/d;Ljava/lang/String;)V

    .line 43
    :cond_4
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/net/URL;)V

    .line 45
    const-string v0, "Host"

    invoke-virtual {p0, v0, v3}, Lcom/github/kevinsawicki/http/HttpRequest;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/github/kevinsawicki/http/HttpRequest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 22
    sput-boolean p0, Lcom/ushaqi/zhuishushenqi/api/e;->a:Z

    .line 23
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/ushaqi/zhuishushenqi/api/e;->a:Z

    return v0
.end method
