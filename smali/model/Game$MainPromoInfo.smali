.class public Lcom/ushaqi/zhuishushenqi/model/Game$MainPromoInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5783a070862791dfL


# instance fields
.field private desc:Ljava/lang/String;

.field private playingCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game$MainPromoInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayingCount()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/Game$MainPromoInfo;->playingCount:I

    return v0
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game$MainPromoInfo;->desc:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setPlayingCount(I)V
    .locals 0

    .prologue
    .line 252
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/Game$MainPromoInfo;->playingCount:I

    .line 253
    return-void
.end method
