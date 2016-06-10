.class public Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;
.super Lcom/activeandroid/Model;
.source "SourceFile"


# annotations
.annotation runtime Lcom/activeandroid/annotation/Table;
    name = "MixTocRecords"
.end annotation


# instance fields
.field private bookId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "bookId"
    .end annotation
.end field

.field private chapterIndex:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "chapterIndex"
    .end annotation
.end field

.field private chapterTitle:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "chapterTitle"
    .end annotation
.end field

.field private charIndex:I
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "charIndex"
    .end annotation
.end field

.field private tocId:Ljava/lang/String;
    .annotation runtime Lcom/activeandroid/annotation/Column;
        name = "tocId"
        unique = true
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/activeandroid/Model;-><init>()V

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->chapterIndex:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->charIndex:I

    .line 28
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;-><init>()V

    .line 43
    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->setBookId(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->setTocId(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v0, p2}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->setChapterIndex(I)V

    .line 46
    invoke-virtual {v0, p3}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->setCharIndex(I)V

    .line 47
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->save()Ljava/lang/Long;

    .line 48
    return-object v0
.end method

.method public static deleteByBookId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

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

    .line 39
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;
    .locals 4

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/activeandroid/query/Select;

    invoke-direct {v0}, Lcom/activeandroid/query/Select;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Select;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    const-string v1, "tocId = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/activeandroid/query/From;->where(Ljava/lang/String;[Ljava/lang/Object;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->executeSingle()Lcom/activeandroid/Model;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    goto :goto_0
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getChapterIndex()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->chapterIndex:I

    return v0
.end method

.method public getCharIndex()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->charIndex:I

    return v0
.end method

.method public getTocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->tocId:Ljava/lang/String;

    return-object v0
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->bookId:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setChapterIndex(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->chapterIndex:I

    .line 73
    return-void
.end method

.method public setCharIndex(I)V
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->charIndex:I

    .line 81
    return-void
.end method

.method public setTocId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->tocId:Ljava/lang/String;

    .line 57
    return-void
.end method
