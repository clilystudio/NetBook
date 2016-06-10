.class public Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private books:[Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public getBooks()[Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;->books:[Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;->ok:Z

    return v0
.end method

.method public setBooks([Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;->books:[Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend$RecommendBook;

    .line 21
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookGenderRecommend;->ok:Z

    .line 17
    return-void
.end method
