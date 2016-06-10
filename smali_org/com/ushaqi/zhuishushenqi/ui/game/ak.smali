.class final Lcom/ushaqi/zhuishushenqi/ui/game/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/widget/av;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Lcom/ushaqi/zhuishushenqi/ui/game/am;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Lcom/ushaqi/zhuishushenqi/ui/game/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/am;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/game/am;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/game/am;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;Lcom/ushaqi/zhuishushenqi/ui/game/am;)Lcom/ushaqi/zhuishushenqi/ui/game/am;

    .line 184
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)Lcom/ushaqi/zhuishushenqi/ui/game/am;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/am;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    :cond_1
    return-void
.end method
