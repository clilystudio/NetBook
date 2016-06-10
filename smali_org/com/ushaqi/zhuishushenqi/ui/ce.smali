.class final Lcom/ushaqi/zhuishushenqi/ui/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ce;->a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ce;->a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ce;->a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;->startActivity(Landroid/content/Intent;)V

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ce;->a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "entrance_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ce;->a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;

    const-string v2, "share_remove_btn_click"

    invoke-static {v1, v2, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ce;->a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;)V

    goto :goto_0
.end method
