.class final Lcom/ushaqi/zhuishushenqi/ui/game/ag;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ag;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 454
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 459
    :goto_0
    return-void

    .line 456
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ag;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ag;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->k:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ag;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->k:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)[Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
