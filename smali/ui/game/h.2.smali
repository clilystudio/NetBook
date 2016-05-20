.class final Lcom/ushaqi/zhuishushenqi/ui/game/h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/h;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/h;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/h;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    .line 206
    :cond_0
    return-void
.end method
