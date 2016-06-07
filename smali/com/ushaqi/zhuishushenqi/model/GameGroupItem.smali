.class public Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _id:Ljava/lang/String;

.field private games:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Game;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Game;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->games:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->games:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->games:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->games:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setGames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/Game;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->games:Ljava/util/List;

    .line 27
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->name:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->_id:Ljava/lang/String;

    .line 35
    return-void
.end method
