.class final Lcom/ushaqi/zhuishushenqi/ui/game/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/Y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/Y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/ushaqi/zhuishushenqi/ui/game/GameLocalListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/Y;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment$LayoutAdapter;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameMicroFragment;->startActivity(Landroid/content/Intent;)V

    .line 233
    return-void
.end method
