.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;
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
    .line 322
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 325
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->rlThumb:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$300(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->ivPin:Landroid/widget/ImageView;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$400(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->imgInfo:Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$500(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    move-result-object v1

    # invokes: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->removeImage(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V
    invoke-static {v0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$600(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V

    .line 328
    return-void
.end method
