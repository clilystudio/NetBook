.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 124
    :try_start_0
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {}, Lcn/sharesdk/framework/ShareSDK;->getPlatformList()[Lcn/sharesdk/framework/Platform;

    move-result-object v2

    # setter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v1, v2}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$002(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;[Lcn/sharesdk/framework/Platform;)[Lcn/sharesdk/framework/Platform;

    .line 125
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v1

    if-nez v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v3, v1

    .line 131
    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v6

    .line 132
    instance-of v7, v5, Lcn/sharesdk/framework/CustomPlatform;

    if-nez v7, :cond_1

    .line 133
    invoke-static {v6}, Lcn/sharesdk/onekeyshare/ShareCore;->isUseClientToShare(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 136
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    :cond_2
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcn/sharesdk/framework/Platform;

    # setter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v1, v3}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$002(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;[Lcn/sharesdk/framework/Platform;)[Lcn/sharesdk/framework/Platform;

    move v1, v0

    .line 139
    :goto_2
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_3

    .line 140
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    # getter for: Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->platformList:[Lcn/sharesdk/framework/Platform;
    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$000(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)[Lcn/sharesdk/framework/Platform;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/framework/Platform;

    aput-object v0, v3, v1

    .line 139
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 143
    :cond_3
    const/4 v0, 0x1

    new-instance v1, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1$1;

    invoke-direct {v1, p0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1$1;-><init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage$1;)V

    invoke-static {v0, v1}, Lcom/mob/tools/b/j;->a(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
