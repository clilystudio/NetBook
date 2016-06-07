.class public Lcom/ushaqi/zhuishushenqi/db/VoteRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "VoteRecords"
.end annotation


# instance fields
.field public account_id:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "account_id"
    .end annotation
.end field

.field public post_id:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "post_id"
    .end annotation
.end field

.field public vote_item_index:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "vote_item_index"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;->vote_item_index:I

    .line 30
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;-><init>()V

    .line 38
    iput-object p0, v0, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;->account_id:Ljava/lang/String;

    .line 39
    iput-object p1, v0, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;->post_id:Ljava/lang/String;

    .line 40
    iput p2, v0, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;->vote_item_index:I

    .line 41
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;->save()Ljava/lang/Long;

    .line 42
    return-void
.end method

.method public static getVoteRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/VoteRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/VoteRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "account_id = ? AND post_id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
