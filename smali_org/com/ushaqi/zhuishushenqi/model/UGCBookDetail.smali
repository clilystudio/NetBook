.class public Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field author:Lcom/ushaqi/zhuishushenqi/model/Author;

.field books:[Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;

.field collectorCount:Ljava/lang/String;

.field created:Ljava/util/Date;

.field desc:Ljava/lang/String;

.field shareLink:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    return-object v0
.end method

.method public getBooks()[Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->books:[Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;

    return-object v0
.end method

.method public getCollectorCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->collectorCount:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getShareLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->shareLink:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 43
    return-void
.end method

.method public setBooks([Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->books:[Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail$UGCBookContainer;

    .line 59
    return-void
.end method

.method public setCollectorCount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->collectorCount:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->created:Ljava/util/Date;

    .line 67
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->desc:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setShareLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->shareLink:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/UGCBookDetail;->title:Ljava/lang/String;

    .line 51
    return-void
.end method
