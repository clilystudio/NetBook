.class Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getPlatformList()[Lcn/sharesdk/framework/Platform;

    move-result-object v1

    # setter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$002(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;[Lcn/sharesdk/framework/Platform;)[Lcn/sharesdk/framework/Platform;

    .line 94
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;)[Lcn/sharesdk/framework/Platform;

    move-result-object v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    const/4 v1, 0x0

    new-array v1, v1, [Lcn/sharesdk/framework/Platform;

    # setter for: Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;->access$002(Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;[Lcn/sharesdk/framework/Platform;)[Lcn/sharesdk/framework/Platform;

    .line 97
    :cond_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/PlatformGridView;

    invoke-static {v0, v1}, Lcom/mob/tools/b/j;->a(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
