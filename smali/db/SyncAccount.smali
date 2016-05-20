.class public Lcom/ushaqi/zhuishushenqi/db/SyncAccount;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "SyncAccount"
.end annotation


# instance fields
.field public uid:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "uid"
    .end annotation
.end field

.field public updateTime:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "update_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 27
    return-void
.end method

.method public static needSync(Ljava/util/Date;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 36
    if-nez p0, :cond_0

    move v0, v1

    .line 49
    :goto_0
    return v0

    .line 39
    :cond_0
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 40
    if-nez v0, :cond_1

    move v0, v1

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v3, Lcom/activeandroid/query/Select;

    invoke-direct {v3}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v4, Lcom/ushaqi/zhuishushenqi/db/SyncAccount;

    invoke-virtual {v3, v4}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v3

    const-string v4, "uid = ?"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/SyncAccount;

    .line 47
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/db/SyncAccount;->updateTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 49
    goto :goto_0
.end method

.method public static save(Ljava/util/Date;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 53
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    .line 58
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v2, Lcom/ushaqi/zhuishushenqi/db/SyncAccount;

    invoke-virtual {v0, v2}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v2, "uid = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/SyncAccount;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/SyncAccount;-><init>()V

    .line 62
    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/SyncAccount;->uid:Ljava/lang/String;

    .line 66
    :goto_1
    iput-object p0, v0, Lcom/ushaqi/zhuishushenqi/db/SyncAccount;->updateTime:Ljava/util/Date;

    .line 67
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/SyncAccount;->save()Ljava/lang/Long;

    goto :goto_0

    .line 64
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/SyncAccount;

    goto :goto_1
.end method
