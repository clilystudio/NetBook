.class final Lcom/ushaqi/zhuishushenqi/ui/game/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/game/y;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/y;Lcom/ushaqi/zhuishushenqi/model/GameGift;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/B;->b:Lcom/ushaqi/zhuishushenqi/ui/game/y;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/B;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/B;->b:Lcom/ushaqi/zhuishushenqi/ui/game/y;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/B;->a:Lcom/ushaqi/zhuishushenqi/model/GameGift;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Lcom/ushaqi/zhuishushenqi/model/GameGift;)Lcom/ushaqi/zhuishushenqi/model/GameGift;

    .line 288
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/B;->b:Lcom/ushaqi/zhuishushenqi/ui/game/y;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->b()V

    .line 289
    return-void
.end method
