.class final Lcom/ushaqi/zhuishushenqi/widget/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/Game;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/M;->b:Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/M;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/M;->b:Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/M;->b:Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/widget/GameLayoutItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/M;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 60
    return-void
.end method
