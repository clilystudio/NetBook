.class final Lcom/ushaqi/zhuishushenqi/ui/game/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/J;->b:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/J;->a:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 187
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/J;->b:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 188
    const-string v1, "game_list_title"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/J;->a:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    const-string v1, "game_list_id"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/J;->a:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout;->getGameGroup()Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GameGroupItem;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/J;->b:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->startActivity(Landroid/content/Intent;)V

    .line 191
    return-void
.end method
