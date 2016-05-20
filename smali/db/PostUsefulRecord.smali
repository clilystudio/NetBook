.class public Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "PostUsefulRecord"
.end annotation


# static fields
.field public static final TYPE_NO:I = 0x2

.field public static final TYPE_YES:I = 0x1


# instance fields
.field public postId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "postId"
    .end annotation
.end field

.field public type:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "type"
    .end annotation
.end field

.field public userId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "userId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;->type:I

    .line 36
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;-><init>()V

    .line 49
    iput-object p0, v0, Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;->userId:Ljava/lang/String;

    .line 50
    iput-object p1, v0, Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;->postId:Ljava/lang/String;

    .line 51
    iput p2, v0, Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;->type:I

    .line 52
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;->save()Ljava/lang/Long;

    .line 53
    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 39
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "userId = ? AND postId = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 41
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/PostUsefulRecord;

    .line 43
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
