.class public Lcom/ushaqi/zhuishushenqi/model/BookUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private author:Ljava/lang/String;

.field private chaptersCount:I

.field private lastChapter:Ljava/lang/String;

.field private updated:Ljava/util/Date;


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
    .line 49
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getChaptersCount()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;->chaptersCount:I

    return v0
.end method

.method public getLastChapter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;->lastChapter:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;->updated:Ljava/util/Date;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;->author:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setChaptersCount(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;->chaptersCount:I

    .line 46
    return-void
.end method

.method public setLastChapter(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;->lastChapter:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;->updated:Ljava/util/Date;

    .line 38
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookUpdate;->_id:Ljava/lang/String;

    .line 30
    return-void
.end method
