.class public Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bookId:Ljava/lang/String;

.field private fullCover:Ljava/lang/String;

.field private postCount:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getFullCover()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->fullCover:Ljava/lang/String;

    return-object v0
.end method

.method public getPostCount()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->postCount:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setBookId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->bookId:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setFullCover(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->fullCover:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setPostCount(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->postCount:I

    .line 38
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelfTopic;->title:Ljava/lang/String;

    .line 30
    return-void
.end method
