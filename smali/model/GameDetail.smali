.class public Lcom/ushaqi/zhuishushenqi/model/GameDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private game:Lcom/ushaqi/zhuishushenqi/model/Game;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGame()Lcom/ushaqi/zhuishushenqi/model/Game;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameDetail;->game:Lcom/ushaqi/zhuishushenqi/model/Game;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/GameDetail;->ok:Z

    return v0
.end method

.method public setGame(Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameDetail;->game:Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 28
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/GameDetail;->ok:Z

    .line 20
    return-void
.end method
