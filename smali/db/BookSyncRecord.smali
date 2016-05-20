.class public Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "BookSyncRecord"
.end annotation


# instance fields
.field private bookId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "bookId"
    .end annotation
.end field

.field private type:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "type"
    .end annotation
.end field

.field private updated:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "updated"
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
    .line 17
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 20
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 84
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;-><init>()V

    .line 85
    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->setUserId(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->setType(I)V

    .line 87
    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->setBookId(Ljava/lang/String;)V

    .line 88
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->setUpdated(Ljava/util/Date;)V

    .line 89
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->save()Ljava/lang/Long;

    .line 90
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
            "Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "( userId = ? or userId = \"\" ) and type = ? "

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

.method public static get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;
    .locals 4

    .prologue
    .line 126
    if-nez p0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "bookId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;

    goto :goto_0
.end method

.method public static getTypeId(Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)I
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/ushaqi/zhuishushenqi/db/a;->a:[I

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 151
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 141
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 143
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 145
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 147
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 149
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static updateOrCreate(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 114
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, " bookId = ? "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    invoke-static {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->updateType(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->create(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static updateType(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    new-instance v0, Lcom/activeandroid/query/Update;

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;

    invoke-direct {v0, v1}, Lcom/activeandroid/query/Update;-><init>(Ljava/lang/Class;)V

    const-string v1, "userId = ?,type=?, updated=?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/Update;->set(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/Set;

    move-result-object v0

    const-string v1, " bookId = ? "

    new-array v2, v6, [Ljava/lang/Object;

    aput-object p1, v2, v5

    .line 102
    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/Set;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/Set;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/Set;->execute()V

    .line 103
    return-void
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->type:I

    return v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->bookId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->type:I

    .line 47
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->updated:Ljava/util/Date;

    .line 55
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;->userId:Ljava/lang/String;

    .line 63
    return-void
.end method
