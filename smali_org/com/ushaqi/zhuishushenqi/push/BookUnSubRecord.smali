.class public Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "BookUnSubRecords"
.end annotation


# instance fields
.field public pushId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "pushId"
        unique = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 25
    return-void
.end method

.method public static create(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;

    move-result-object v0

    .line 55
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;-><init>()V

    .line 57
    iput-object p0, v0, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;->pushId:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;->save()Ljava/lang/Long;

    .line 60
    :cond_0
    return-void
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "pushId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 46
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;
    .locals 4

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "pushId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;

    goto :goto_0
.end method

.method public static getAll()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getBookId(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;
    .locals 1

    .prologue
    .line 63
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;

    move-result-object v0

    return-object v0
.end method
