.class final Lcom/ushaqi/zhuishushenqi/ui/game/u;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/u;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/u;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftFragment;)V

    .line 127
    return-void
.end method
