.class Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 108
    new-instance v1, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    invoke-virtual {v1, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 110
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->access$000(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;)Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    invoke-virtual {v1, v0, v2, v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/a;)V

    .line 111
    return-void
.end method
