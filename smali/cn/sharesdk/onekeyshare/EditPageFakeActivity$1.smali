.class Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/EditPageFakeActivity;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/EditPageFakeActivity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;->this$0:Lcn/sharesdk/onekeyshare/EditPageFakeActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;
    .locals 4

    .prologue
    .line 170
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;->this$0:Lcn/sharesdk/onekeyshare/EditPageFakeActivity;

    # getter for: Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->access$000(Lcn/sharesdk/onekeyshare/EditPageFakeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    .line 171
    iget-object v1, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 174
    :try_start_0
    iget-object v1, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->srcValue:Ljava/lang/String;

    .line 175
    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "https://"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    :cond_1
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;->this$0:Lcn/sharesdk/onekeyshare/EditPageFakeActivity;

    # getter for: Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->activity:Landroid/app/Activity;
    invoke-static {v3}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->access$100(Lcn/sharesdk/onekeyshare/EditPageFakeActivity;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/arcsoft/hpay100/a/a;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 178
    :cond_2
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 179
    if-eqz v1, :cond_0

    .line 182
    iput-object v1, v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 188
    :cond_3
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;->doInBackground([Ljava/lang/Object;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;->this$0:Lcn/sharesdk/onekeyshare/EditPageFakeActivity;

    # getter for: Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->shareImageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity;->access$000(Lcn/sharesdk/onekeyshare/EditPageFakeActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;->onFinish(Ljava/util/ArrayList;)V

    .line 194
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 167
    check-cast p1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;

    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$1;->onPostExecute(Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;)V

    return-void
.end method
