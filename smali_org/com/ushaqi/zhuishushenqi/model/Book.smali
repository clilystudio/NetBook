.class public Lcom/ushaqi/zhuishushenqi/model/Book;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private cat:Ljava/lang/String;

.field private cover:Ljava/lang/String;

.field private latelyFollower:I

.field private title:Ljava/lang/String;

.field private wordCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Book;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Book;->cat:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/Book;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatelyFollower()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Book;->latelyFollower:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Book;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWordCount()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Book;->wordCount:I

    return v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Book;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Book;->author:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setCat(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Book;->cat:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Book;->cover:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setLatelyFollower(I)V
    .locals 0

    .prologue
    .line 39
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Book;->latelyFollower:I

    .line 40
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Book;->title:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setWordCount(I)V
    .locals 0

    .prologue
    .line 43
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Book;->wordCount:I

    .line 44
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Book;->_id:Ljava/lang/String;

    .line 36
    return-void
.end method
