.class public Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "PostAgreeRecord"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 27
    return-void
.end method

.method public static add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;-><init>()V

    .line 40
    iput-object p0, v0, Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;->account_id:Ljava/lang/String;

    .line 41
    iput-object p1, v0, Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;->post_id:Ljava/lang/String;

    .line 42
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;->save()Ljava/lang/Long;

    .line 43
    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 30
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "account_id = ? AND post_id = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 32
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/PostAgreeRecord;

    .line 34
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
