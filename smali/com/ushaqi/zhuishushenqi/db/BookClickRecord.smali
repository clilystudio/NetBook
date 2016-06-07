.class public Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "BookClickRecords"
.end annotation


# instance fields
.field public book_id:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "book_id"
    .end annotation
.end field

.field private send_status:Z
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "send_status"
    .end annotation
.end field

.field public today_time:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "today_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->send_status:Z

    .line 31
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;-><init>()V

    .line 56
    iput-object p0, v0, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->book_id:Ljava/lang/String;

    .line 57
    iput-object p1, v0, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->today_time:Ljava/lang/String;

    .line 58
    iput-boolean p2, v0, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->send_status:Z

    .line 59
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->save()Ljava/lang/Long;

    .line 60
    return-object v0
.end method

.method public static deleteByBookId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "book_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    goto :goto_0
.end method

.method public static getBookClickRecords(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "book_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBookClickRecords(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "book_id = ? AND today_time = ?"

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

    goto :goto_0
.end method


# virtual methods
.method public isSendStatus()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->send_status:Z

    return v0
.end method

.method public setSendStatus(Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookClickRecord;->send_status:Z

    .line 69
    return-void
.end method
