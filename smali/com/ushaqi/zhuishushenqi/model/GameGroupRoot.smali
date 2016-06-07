.class public Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;
.super Lcom/ushaqi/zhuishushenqi/model/Root;
.source "SourceFile"


# instance fields
.field private gameGroup:Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/Root;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;->gameGroup:Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    return-object v0
.end method

.method public setGameGroup(Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;)V
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;->gameGroup:Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    .line 15
    return-void
.end method
