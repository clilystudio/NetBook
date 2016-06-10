.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;
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
    .line 301
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$100(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$100(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcn/sharesdk/onekeyshare/PicViewer;

    invoke-direct {v0}, Lcn/sharesdk/onekeyshare/PicViewer;-><init>()V

    .line 305
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->image:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$100(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/PicViewer;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 306
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$200(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/sharesdk/onekeyshare/PicViewer;->show(Landroid/content/Context;Landroid/content/Intent;)V

    .line 308
    :cond_0
    return-void
.end method
