.class final Lcom/ushaqi/zhuishushenqi/ui/game/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/game/Z;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/Z;Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/aa;->b:Lcom/ushaqi/zhuishushenqi/ui/game/Z;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/aa;->a:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 520
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/aa;->b:Lcom/ushaqi/zhuishushenqi/ui/game/Z;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/Z;->i:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/aa;->b:Lcom/ushaqi/zhuishushenqi/ui/game/Z;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/Z;->i:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/aa;->a:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;->getBannerImage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/aa;->b:Lcom/ushaqi/zhuishushenqi/ui/game/Z;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/Z;->i:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "micro_game_banner_click"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Banner "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/game/aa;->b:Lcom/ushaqi/zhuishushenqi/ui/game/Z;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/ui/game/Z;->i:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v3, v3, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/game/aa;->a:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;->getBannerImage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/aa;->b:Lcom/ushaqi/zhuishushenqi/ui/game/Z;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/Z;->i:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/aa;->a:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;->getLink()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 524
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/aa;->b:Lcom/ushaqi/zhuishushenqi/ui/game/Z;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/Z;->i:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/ushaqi/zhuishushenqi/exception/UnImplementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 526
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/exception/UnImplementException;->printStackTrace()V

    goto :goto_0
.end method
