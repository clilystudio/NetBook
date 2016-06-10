.class final Lcom/ushaqi/zhuishushenqi/ui/game/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/i;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 261
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/i;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/i;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    const-string v1, "micro_game_continue_click"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/i;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/i;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/i;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 267
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/i;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    const-string v1, "micro_game_play_click"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/i;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
