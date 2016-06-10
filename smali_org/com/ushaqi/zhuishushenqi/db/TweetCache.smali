.class public Lcom/ushaqi/zhuishushenqi/db/TweetCache;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "TweetCache"
.end annotation


# static fields
.field public static final HOT_USER_ID:Ljava/lang/String; = "zhuishushenqi_hot_user_id"

.field public static final TYPE_HOT:I = 0x2

.field public static final TYPE_MY:I = 0x3

.field public static final TYPE_TIMELINE:I = 0x1


# instance fields
.field private content:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "content"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "type"
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

.method public static clear(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 90
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/TweetCache;

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

    .line 91
    return-void
.end method

.method public static delete(Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 81
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/TweetCache;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, " userId = ? and type = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 82
    return-void
.end method

.method public static find(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/TweetCache;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/TweetCache;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, " userId = ? and type = ? "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, " id "

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/From;->orderBy(Ljava/lang/String;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static save2DB(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/TweetCache;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;-><init>()V

    .line 102
    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->setUserId(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->setType(I)V

    .line 104
    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->setContent(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->save()Ljava/lang/Long;

    .line 106
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->type:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->content:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 51
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->type:I

    .line 52
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/TweetCache;->userId:Ljava/lang/String;

    .line 43
    return-void
.end method
