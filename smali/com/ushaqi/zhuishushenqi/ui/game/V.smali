.class final Lcom/ushaqi/zhuishushenqi/ui/game/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/Game;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/game/T;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/T;Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/V;->b:Lcom/ushaqi/zhuishushenqi/ui/game/T;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/V;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 84
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/V;->b:Lcom/ushaqi/zhuishushenqi/ui/game/T;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/T;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/V;->b:Lcom/ushaqi/zhuishushenqi/ui/game/T;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/T;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/V;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3, v3}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method
