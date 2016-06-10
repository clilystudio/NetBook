.class final Lcom/ushaqi/zhuishushenqi/widget/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/Game;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/widget/Q;->b:Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/Q;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/Q;->b:Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;

    iget-boolean v0, v0, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->a:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/Q;->b:Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "micro_game_continue_click"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/Q;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/Q;->b:Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/widget/Q;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-static {v0, v1}, Landroid/support/design/widget/am;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Game;)V

    .line 78
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/Q;->b:Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/GameMicroLayoutItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "micro_game_play_click"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/Q;->a:Lcom/ushaqi/zhuishushenqi/model/Game;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Game;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
