.class public Lcom/ushaqi/zhuishushenqi/model/ReviewList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ok:Z

.field private reviews:[Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReviews()[Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewList;->reviews:[Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewList;->ok:Z

    return v0
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewList;->ok:Z

    .line 20
    return-void
.end method

.method public setReviews([Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewList;->reviews:[Lcom/ushaqi/zhuishushenqi/model/ReviewSummary;

    .line 28
    return-void
.end method
