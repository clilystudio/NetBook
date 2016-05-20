.class public Lcom/ushaqi/zhuishushenqi/model/GameCat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5e32a4c4b286828bL


# instance fields
.field private _id:Ljava/lang/String;

.field private games:[Lcom/ushaqi/zhuishushenqi/model/Game;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGames()[Lcom/ushaqi/zhuishushenqi/model/Game;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameCat;->games:[Lcom/ushaqi/zhuishushenqi/model/Game;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameCat;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setGames([Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameCat;->games:[Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 32
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameCat;->_id:Ljava/lang/String;

    .line 24
    return-void
.end method
