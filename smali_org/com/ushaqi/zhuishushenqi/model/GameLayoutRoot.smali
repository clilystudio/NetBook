.class public Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;
.super Lcom/ushaqi/zhuishushenqi/model/Root;
.source "SourceFile"


# instance fields
.field private layout:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;",
            ">;"
        }
    .end annotation
.end field

.field private promotion:Lcom/ushaqi/zhuishushenqi/model/Game;

.field private promotions:[Lcom/ushaqi/zhuishushenqi/model/Game;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/Root;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getLayout()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;->layout:Ljava/util/List;

    return-object v0
.end method

.method public getPromotion()Lcom/ushaqi/zhuishushenqi/model/Game;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;->promotion:Lcom/ushaqi/zhuishushenqi/model/Game;

    return-object v0
.end method

.method public getPromotions()[Lcom/ushaqi/zhuishushenqi/model/Game;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;->promotions:[Lcom/ushaqi/zhuishushenqi/model/Game;

    return-object v0
.end method

.method public setLayout(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;->layout:Ljava/util/List;

    .line 20
    return-void
.end method

.method public setPromotion(Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;->promotion:Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 28
    return-void
.end method

.method public setPromotions([Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot;->promotions:[Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 36
    return-void
.end method
