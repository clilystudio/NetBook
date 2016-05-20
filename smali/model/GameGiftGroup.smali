.class public Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_GAME:I = 0x0

.field public static final TYPE_GIFT:I = 0x1

.field public static final TYPE_MORE:I = 0x2


# instance fields
.field private mGame:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

.field private mGift:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame()Lcom/ushaqi/zhuishushenqi/model/GiftGame;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->mGame:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    return-object v0
.end method

.method public getGift()Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->mGift:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->mType:I

    return v0
.end method

.method public setGame(Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->mGame:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    .line 25
    return-void
.end method

.method public setGift(Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->mGift:Lcom/ushaqi/zhuishushenqi/model/GiftGameGift;

    .line 33
    return-void
.end method

.method public setType(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameGiftGroup;->mType:I

    .line 37
    return-void
.end method
