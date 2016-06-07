.class public Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private no:I

.field private yes:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNo()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;->no:I

    return v0
.end method

.method public getYes()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;->yes:I

    return v0
.end method

.method public setNo(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;->no:I

    .line 28
    return-void
.end method

.method public setYes(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/ReviewHelpful;->yes:I

    .line 20
    return-void
.end method
