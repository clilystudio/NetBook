.class final Lcom/ushaqi/zhuishushenqi/ui/game/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/game/K;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/K;Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/L;->b:Lcom/ushaqi/zhuishushenqi/ui/game/K;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/L;->a:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 262
    :try_start_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/L;->b:Lcom/ushaqi/zhuishushenqi/ui/game/K;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/K;->i:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/L;->a:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/L;->b:Lcom/ushaqi/zhuishushenqi/ui/game/K;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/K;->i:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->startActivity(Landroid/content/Intent;)V

    .line 264
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/L;->b:Lcom/ushaqi/zhuishushenqi/ui/game/K;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/K;->i:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/L;->a:Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GameLayoutRoot$ModuleLayout$ActivityItem;->getLink()Ljava/lang/String;

    move-result-object v1

    .line 1842
    const-string v2, "game_center_layout_banner"

    invoke-static {v0, v2, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/ushaqi/zhuishushenqi/exception/UnImplementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/exception/UnImplementException;->printStackTrace()V

    goto :goto_0
.end method
