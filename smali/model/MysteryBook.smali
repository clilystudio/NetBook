.class public Lcom/ushaqi/zhuishushenqi/model/MysteryBook;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private cover:Ljava/lang/String;

.field private lastChapter:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updated:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getFullCover()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->cover:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->lastChapter:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->author:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->cover:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->lastChapter:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->title:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->updated:Ljava/util/Date;

    .line 72
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MysteryBook;->_id:Ljava/lang/String;

    .line 28
    return-void
.end method
