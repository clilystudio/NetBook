.class public Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "RetweenRecord"
.end annotation


# instance fields
.field private tweetId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "tweetId"
    .end annotation
.end field

.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "userId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static cancelRetween(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 69
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, " userId = ? and tweetId = ? "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 70
    return-void
.end method

.method public static clear(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 78
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, " userId = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 79
    return-void
.end method

.method public static findAll(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v0}, Lcom/activeandroid/query/Select;->distinct()Lcom/activeandroid/query/Select;

    move-result-object v0

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, " userId = ? "

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isRetweened(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 58
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, " userId = ? and tweetId = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->exists()Z

    move-result v0

    return v0
.end method

.method public static save2DB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;-><init>()V

    .line 89
    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->setUserId(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->setTweetId(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->save()Ljava/lang/Long;

    .line 92
    return-void
.end method

.method public static save2DB(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->beginTransaction()V

    .line 102
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;

    .line 103
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->save()Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    throw v0

    .line 105
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    .line 108
    return-void
.end method


# virtual methods
.method public getTweetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->tweetId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setTweetId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->tweetId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/RetweenRecord;->userId:Ljava/lang/String;

    .line 29
    return-void
.end method
