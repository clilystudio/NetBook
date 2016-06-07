.class public Lcom/ushaqi/zhuishushenqi/model/PostCountRoot;
.super Lcom/ushaqi/zhuishushenqi/model/Root;
.source "SourceFile"


# instance fields
.field private postCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/Root;-><init>()V

    return-void
.end method


# virtual methods
.method public getPostCount()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/PostCountRoot;->postCount:I

    return v0
.end method

.method public setPostCount(I)V
    .locals 0

    .prologue
    .line 11
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/PostCountRoot;->postCount:I

    .line 12
    return-void
.end method
