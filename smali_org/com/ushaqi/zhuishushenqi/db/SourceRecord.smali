.class public Lcom/ushaqi/zhuishushenqi/db/SourceRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "SourceRecord"
.end annotation


# instance fields
.field private bookId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "bookId"
    .end annotation
.end field

.field private sogouMd:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "sogouMd"
    .end annotation
.end field

.field private source:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "source"
    .end annotation
.end field

.field private sourceId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "sourceId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 38
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;-><init>()V

    .line 49
    iput-object p0, v0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->bookId:Ljava/lang/String;

    .line 50
    iput-object p1, v0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->source:Ljava/lang/String;

    .line 51
    iput-object p2, v0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->sourceId:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->save()Ljava/lang/Long;

    .line 53
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;-><init>()V

    .line 57
    iput-object p0, v0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->bookId:Ljava/lang/String;

    .line 58
    iput-object p1, v0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->source:Ljava/lang/String;

    .line 59
    iput-object p2, v0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->sourceId:Ljava/lang/String;

    .line 60
    iput-object p3, v0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->sogouMd:Ljava/lang/String;

    .line 61
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->save()Ljava/lang/Long;

    .line 62
    return-void
.end method

.method public static delete(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "bookId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    .line 66
    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/SourceRecord;
    .locals 4

    .prologue
    .line 41
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "bookId = ? AND source = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;

    goto :goto_0
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getSogouMd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->sogouMd:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->sourceId:Ljava/lang/String;

    return-object v0
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->bookId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setSogouMd(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->sogouMd:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->source:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/SourceRecord;->sourceId:Ljava/lang/String;

    .line 90
    return-void
.end method
