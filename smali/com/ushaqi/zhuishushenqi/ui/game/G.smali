.class final Lcom/ushaqi/zhuishushenqi/ui/game/G;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/G;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/G;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)V

    .line 77
    return-void
.end method
