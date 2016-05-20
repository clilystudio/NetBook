.class final Lcom/ushaqi/zhuishushenqi/ui/game/aj;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/aj;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/aj;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameRankListFragment;)V

    .line 112
    return-void
.end method
