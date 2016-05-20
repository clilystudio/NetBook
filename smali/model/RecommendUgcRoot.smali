.class public Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private booklists:[Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method


# virtual methods
.method public getBooklists()[Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;->booklists:[Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;->ok:Z

    return v0
.end method

.method public setBooklists([Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;->booklists:[Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot$RecommendUGC;

    .line 29
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/RecommendUgcRoot;->ok:Z

    .line 21
    return-void
.end method
