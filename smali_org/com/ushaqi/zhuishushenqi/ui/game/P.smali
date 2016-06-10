.class final Lcom/ushaqi/zhuishushenqi/ui/game/P;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/P;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/P;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;)V

    .line 132
    return-void
.end method
