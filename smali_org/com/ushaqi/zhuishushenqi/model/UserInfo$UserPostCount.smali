.class public Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserPostCount;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x58e89ecd3a17a7a4L


# instance fields
.field private collected:I

.field private posted:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollected()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserPostCount;->collected:I

    return v0
.end method

.method public getPosted()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserPostCount;->posted:I

    return v0
.end method

.method public setCollected(I)V
    .locals 0

    .prologue
    .line 249
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserPostCount;->collected:I

    .line 250
    return-void
.end method

.method public setPosted(I)V
    .locals 0

    .prologue
    .line 241
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/UserInfo$UserPostCount;->posted:I

    .line 242
    return-void
.end method
