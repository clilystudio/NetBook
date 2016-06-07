.class final Lcom/ushaqi/zhuishushenqi/ui/game/S;
.super Lcom/ushaqi/zhuishushenqi/util/S;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/util/S",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/S;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/S;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;B)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/S;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/ushaqi/zhuishushenqi/api/ApiService;[Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Root;
    .locals 2

    .prologue
    .line 185
    .line 3188
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/S;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "game_list_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->Z(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;

    move-result-object v0

    .line 185
    return-object v0
.end method

.method protected final synthetic a(Lcom/ushaqi/zhuishushenqi/model/Root;)V
    .locals 1

    .prologue
    .line 185
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;

    .line 1202
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/S;->a(Lcom/ushaqi/zhuishushenqi/model/Root;)V

    .line 1203
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/S;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->h()V

    .line 185
    return-void
.end method

.method protected final synthetic b(Lcom/ushaqi/zhuishushenqi/model/Root;)V
    .locals 2

    .prologue
    .line 185
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;

    .line 2193
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2196
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/S;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->f()V

    .line 2197
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/S;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/GameGroupRoot;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->getGames()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;Ljava/util/List;)V

    .line 185
    :cond_0
    return-void
.end method
