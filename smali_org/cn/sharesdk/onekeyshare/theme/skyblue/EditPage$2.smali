.class Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    if-nez p1, :cond_1

    .line 141
    :cond_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    const-string v1, "imagesLinearLayout"

    invoke-virtual {v0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->findViewByResName(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 136
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    .line 137
    iget-object v3, v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    .line 139
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage$2;->this$0:Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;

    # invokes: Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->makeImageItemView(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)Landroid/view/View;
    invoke-static {v3, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;->access$100(Lcn/sharesdk/onekeyshare/theme/skyblue/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0
.end method
