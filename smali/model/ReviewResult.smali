.class public Lcom/ushaqi/zhuishushenqi/model/ReviewResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ok:Z

.field private review:Lcom/ushaqi/zhuishushenqi/model/Review;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReview()Lcom/ushaqi/zhuishushenqi/model/Review;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewResult;->review:Lcom/ushaqi/zhuishushenqi/model/Review;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewResult;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewResult;->ok:Z

    .line 20
    return-void
.end method

.method public setReview(Lcom/ushaqi/zhuishushenqi/model/Review;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewResult;->review:Lcom/ushaqi/zhuishushenqi/model/Review;

    .line 28
    return-void
.end method
