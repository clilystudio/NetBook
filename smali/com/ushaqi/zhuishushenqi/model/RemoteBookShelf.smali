.class public Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bookshelf:[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;

.field private code:Ljava/lang/String;

.field private feedingBooks:[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;

.field private mNeedSync:Z

.field private mSyncDate:Ljava/util/Date;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->mNeedSync:Z

    .line 85
    return-void
.end method


# virtual methods
.method public getBookShelfs()[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->bookshelf:[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedingBooks()[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->feedingBooks:[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;

    return-object v0
.end method

.method public getSyncDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->mSyncDate:Ljava/util/Date;

    return-object v0
.end method

.method public getTotalBookCounts()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 35
    .line 36
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->bookshelf:[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->bookshelf:[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;

    array-length v0, v0

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->feedingBooks:[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;

    if-eqz v2, :cond_0

    .line 41
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->feedingBooks:[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;

    array-length v1, v1

    .line 43
    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isNeedSync()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->mNeedSync:Z

    return v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->ok:Z

    return v0
.end method

.method public setBookShelfs([Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->bookshelf:[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;

    .line 48
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->code:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setFeedingBooks([Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->feedingBooks:[Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf$Book;

    .line 64
    return-void
.end method

.method public setNeedSync(Z)V
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->mNeedSync:Z

    .line 80
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->ok:Z

    .line 28
    return-void
.end method

.method public setSyncDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RemoteBookShelf;->mSyncDate:Ljava/util/Date;

    .line 72
    return-void
.end method
