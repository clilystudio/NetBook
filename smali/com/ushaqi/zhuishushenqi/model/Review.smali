.class public Lcom/ushaqi/zhuishushenqi/model/Review;
.super Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;
.source "SourceFile"


# instance fields
.field private author:Lcom/ushaqi/zhuishushenqi/model/Author;

.field private commentCount:I

.field private content:Ljava/lang/String;

.field private rating:I

.field private shareLink:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthor()Lcom/ushaqi/zhuishushenqi/model/Author;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Review;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    return-object v0
.end method

.method public getCommentCount()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Review;->commentCount:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Review;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Review;->rating:I

    return v0
.end method

.method public getShareLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Review;->shareLink:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthor(Lcom/ushaqi/zhuishushenqi/model/Author;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Review;->author:Lcom/ushaqi/zhuishushenqi/model/Author;

    .line 47
    return-void
.end method

.method public setCommentCount(I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Review;->commentCount:I

    .line 39
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Review;->content:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setRating(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Review;->rating:I

    .line 31
    return-void
.end method

.method public setShareLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Review;->shareLink:Ljava/lang/String;

    .line 55
    return-void
.end method
