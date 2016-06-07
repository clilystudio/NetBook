.class final Lcom/ushaqi/zhuishushenqi/ui/game/af;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/af;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 444
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 445
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 446
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/af;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 447
    return-void
.end method
