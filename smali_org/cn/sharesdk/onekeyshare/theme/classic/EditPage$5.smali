.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 406
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$900(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 407
    new-instance v1, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;-><init>()V

    .line 408
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platforms:Ljava/util/List;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1100(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v0}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 409
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1200(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-virtual {v1, v0, v2, v3}, Lcn/sharesdk/onekeyshare/theme/classic/FollowListPage;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/a;)V

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1300(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "select_one_plat_at_least"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 412
    if-lez v0, :cond_0

    .line 413
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$5;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
