.class public Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "BookTopicEnterRecord"
.end annotation


# instance fields
.field public book_id:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "book_id"
    .end annotation
.end field

.field public time:Ljava/util/Date;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "time"
    .end annotation
.end field

.field private visitCount:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "visit_count"
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

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->book_id:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    if-nez p0, :cond_0

    .line 34
    const/4 v0, 0x0

    .line 40
    :goto_0
    return-object v0

    .line 36
    :cond_0
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "book_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 38
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;

    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static updateCount(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 45
    if-nez p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->getVisitCount()I

    move-result v1

    if-le p1, v1, :cond_0

    .line 50
    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->setVisitCount(I)V

    .line 51
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->save()Ljava/lang/Long;

    goto :goto_0
.end method


# virtual methods
.method public getBook_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->book_id:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->time:Ljava/util/Date;

    return-object v0
.end method

.method public getVisitCount()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->visitCount:I

    return v0
.end method

.method public setBook_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->book_id:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setTime(Ljava/util/Date;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->time:Ljava/util/Date;

    .line 63
    return-void
.end method

.method public setVisitCount(I)V
    .locals 0

    .prologue
    .line 78
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->visitCount:I

    .line 79
    return-void
.end method
