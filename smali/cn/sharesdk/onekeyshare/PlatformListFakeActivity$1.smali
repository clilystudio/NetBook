.class Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$1;
.super Lcom/mob/tools/a;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$1;->this$0:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;

    invoke-direct {p0}, Lcom/mob/tools/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    if-nez p1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v0, "editRes"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "editRes"

    .line 207
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 208
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity$1;->this$0:Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;

    iget-object v1, v1, Lcn/sharesdk/onekeyshare/PlatformListFakeActivity;->themeShareCallback:Lcn/sharesdk/onekeyshare/ThemeShareCallback;

    invoke-interface {v1, v0}, Lcn/sharesdk/onekeyshare/ThemeShareCallback;->doShare(Ljava/util/HashMap;)V

    goto :goto_0
.end method
