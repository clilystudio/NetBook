.class final Lcom/ushaqi/zhuishushenqi/ui/game/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/I;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/I;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/I;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/I;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->startActivity(Landroid/content/Intent;)V

    .line 177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/I;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/I;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;)Lcom/ushaqi/zhuishushenqi/model/Game;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1835
    const-string v2, "game_center_layout_promotion"

    invoke-static {v0, v2, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method
