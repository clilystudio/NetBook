.class public Lcom/ushaqi/zhuishushenqi/model/TopicCount;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private count:I

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicCount;->count:I

    return v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/TopicCount;->ok:Z

    return v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicCount;->count:I

    .line 28
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/TopicCount;->ok:Z

    .line 20
    return-void
.end method
