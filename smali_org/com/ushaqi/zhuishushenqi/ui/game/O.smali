.class final Lcom/ushaqi/zhuishushenqi/ui/game/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/O;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/O;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Game;

    .line 87
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/O;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Game;->get_id()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/game/O;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;)Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/O;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-virtual {v2, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/O;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1512
    const-string v2, "game_pasted_item_click"

    invoke-static {v1, v2, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method
