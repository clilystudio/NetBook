.class public Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private book:Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

.field private created:Ljava/util/Date;

.field private helpful:Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;

.field private state:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBook()Lcom/ushaqi/zhuishushenqi/model/ReviewBook;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->book:Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->book:Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    .line 55
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->book:Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;->set_id(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->book:Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    const-string v1, "\u8be5\u4e66\u4e0d\u5b58\u5728"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;->setTitle(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->book:Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;->setCover(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->book:Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/ReviewBook;->setType(Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->book:Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    return-object v0
.end method

.method public getCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->created:Ljava/util/Date;

    return-object v0
.end method

.method public getHelpful()Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->helpful:Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->title:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setBook(Lcom/ushaqi/zhuishushenqi/model/ReviewBook;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->book:Lcom/ushaqi/zhuishushenqi/model/ReviewBook;

    .line 65
    return-void
.end method

.method public setCreated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->created:Ljava/util/Date;

    .line 42
    return-void
.end method

.method public setHelpful(Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->helpful:Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;

    .line 50
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->state:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->title:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;->_id:Ljava/lang/String;

    .line 26
    return-void
.end method
