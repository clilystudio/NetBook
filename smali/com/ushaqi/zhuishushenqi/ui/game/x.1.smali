.class final Lcom/ushaqi/zhuishushenqi/ui/game/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/view/a;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;Lcom/ushaqi/zhuishushenqi/view/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/x;->c:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/x;->a:Lcom/ushaqi/zhuishushenqi/view/a;

    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/ui/game/x;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/x;->a:Lcom/ushaqi/zhuishushenqi/view/a;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/view/a;->dismiss()V

    .line 160
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/x;->c:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/x;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/x;->c:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    const-string v1, "\u5df2\u590d\u5236"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/x;->c:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/x;->c:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/x;->c:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Lcom/ushaqi/zhuishushenqi/model/GameGift;

    move-result-object v1

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/model/GameGift;->game:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/x;->c:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    const-string v1, "micro_game_play_click"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/x;->c:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Lcom/ushaqi/zhuishushenqi/model/GameGift;

    move-result-object v2

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/model/GameGift;->game:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/x;->c:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/x;->c:Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameGiftListActivity;)Lcom/ushaqi/zhuishushenqi/model/GameGift;

    move-result-object v1

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/model/GameGift;->game:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
