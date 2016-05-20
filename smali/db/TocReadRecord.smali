.class public Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "TocReadRecords"
.end annotation


# instance fields
.field private book_id:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "book_id"
    .end annotation
.end field

.field private chapter_num:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "chapter_num"
    .end annotation
.end field

.field private chapter_title:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "chapter_title"
    .end annotation
.end field

.field private character_num:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "character_num"
    .end annotation
.end field

.field private toc_id:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "toc_id"
        unique = true
    .end annotation
.end field

.field private toc_name:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "toc_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->chapter_num:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->character_num:I

    .line 40
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;-><init>()V

    .line 55
    iput-object p0, v0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->book_id:Ljava/lang/String;

    .line 56
    iput-object p1, v0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->toc_id:Ljava/lang/String;

    .line 57
    iput-object p2, v0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->toc_name:Ljava/lang/String;

    .line 58
    iput-object p3, v0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->chapter_title:Ljava/lang/String;

    .line 59
    iput p4, v0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->chapter_num:I

    .line 60
    iput p5, v0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->character_num:I

    .line 61
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->save()Ljava/lang/Long;

    .line 62
    return-void
.end method

.method public static deleteByBookId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

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

    .line 51
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;
    .locals 4

    .prologue
    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "toc_id = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    goto :goto_0
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->book_id:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterIndex()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->chapter_num:I

    return v0
.end method

.method public getChapterTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->chapter_title:Ljava/lang/String;

    return-object v0
.end method

.method public getCharIndex()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->character_num:I

    return v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->toc_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->toc_id:Ljava/lang/String;

    return-object v0
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->book_id:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setChapterIndex(I)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->chapter_num:I

    .line 102
    return-void
.end method

.method public setChapterTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->chapter_title:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setCharIndex(I)V
    .locals 0

    .prologue
    .line 109
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->character_num:I

    .line 110
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->toc_name:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTocId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->toc_id:Ljava/lang/String;

    .line 70
    return-void
.end method
