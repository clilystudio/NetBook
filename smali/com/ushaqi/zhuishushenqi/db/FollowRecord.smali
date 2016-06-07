.class public Lcom/ushaqi/zhuishushenqi/db/FollowRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "FollowRecord"
.end annotation


# instance fields
.field private followedId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "followedId"
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
    .line 20
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    return-void
.end method

.method public static cancelFollow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 74
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, " userId = ? and followedId = ? "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 75
    return-void
.end method

.method public static clear(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;

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

    .line 84
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
            "Lcom/ushaqi/zhuishushenqi/db/FollowRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    invoke-virtual {v0}, Lcom/activeandroid/query/Select;->distinct()Lcom/activeandroid/query/Select;

    move-result-object v0

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, " userId = ? "

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static isFollowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 63
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, " userId = ? and followedId = ?"

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
    .line 93
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;-><init>()V

    .line 94
    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;->setUserId(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;->setFollowedId(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;->save()Ljava/lang/Long;

    .line 97
    return-void
.end method

.method public static save2DB([Lcom/ushaqi/zhuishushenqi/model/Follower;)V
    .locals 6

    .prologue
    .line 105
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v1

    .line 106
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->beginTransaction()V

    .line 108
    :try_start_0
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 109
    new-instance v4, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;

    invoke-direct {v4}, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;-><init>()V

    .line 110
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;->setUserId(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Follower;->get_id()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;->setFollowedId(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;->save()Ljava/lang/Long;

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    .line 117
    return-void

    .line 116
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->endTransaction()V

    throw v0
.end method


# virtual methods
.method public getFollowedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;->followedId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setFollowedId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;->followedId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/FollowRecord;->userId:Ljava/lang/String;

    .line 34
    return-void
.end method
