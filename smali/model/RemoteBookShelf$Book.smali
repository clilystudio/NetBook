.class public Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private chaptersCount:I

.field private cover:Ljava/lang/String;

.field private hasCp:Z

.field private lastChapter:Ljava/lang/String;

.field final synthetic this$0:Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;

.field private title:Ljava/lang/String;

.field private updated:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->this$0:Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getChaptersCount()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->chaptersCount:I

    return v0
.end method

.method public getCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->cover:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->lastChapter:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public isHasCp()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->hasCp:Z

    return v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->author:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setChaptersCount(I)V
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->chaptersCount:I

    .line 142
    return-void
.end method

.method public setCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->cover:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setHasCp(Z)V
    .locals 0

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->hasCp:Z

    .line 158
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->_id:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->lastChapter:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->title:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;->updated:Ljava/util/Date;

    .line 134
    return-void
.end method
