.class public Lcom/ushaqi/zhuishushenqi/model/UserInfo$BookListCount;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x30f7359d1140d213L


# instance fields
.field private collected:I

.field private posted:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollected()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$BookListCount;->collected:I

    return v0
.end method

.method public getPosted()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$BookListCount;->posted:I

    return v0
.end method

.method public setCollected(I)V
    .locals 0

    .prologue
    .line 276
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$BookListCount;->collected:I

    .line 277
    return-void
.end method

.method public setPosted(I)V
    .locals 0

    .prologue
    .line 268
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$BookListCount;->posted:I

    .line 269
    return-void
.end method
