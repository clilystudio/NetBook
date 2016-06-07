.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$8;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$8;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # invokes: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->genBackground()V
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1500(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V

    .line 725
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$8;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlPage:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1700(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$8;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->background:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1600(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 726
    return-void
.end method
