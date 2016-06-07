.class final Lcom/ushaqi/zhuishushenqi/ui/user/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    const-string v1, "removeAd"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;->startActivity(Landroid/content/Intent;)V

    .line 71
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ai;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    const-string v1, "share_remove_entrance_click"

    const-string v2, "removeAd"

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method
