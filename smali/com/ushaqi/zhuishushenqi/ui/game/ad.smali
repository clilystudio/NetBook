.class final Lcom/ushaqi/zhuishushenqi/ui/game/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ad;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method public final onPageScrolled(IFI)V
    .locals 0

    .prologue
    .line 323
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ad;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->k:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    iput p1, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->c:I

    .line 328
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ad;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter$PromotionViewPager;I)V

    .line 329
    return-void
.end method
