.class Lcn/sharesdk/wechat/utils/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field a:I

.field final synthetic b:Lcom/mob/tools/b/a;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcn/sharesdk/framework/PlatformActionListener;

.field final synthetic e:Lcn/sharesdk/framework/Platform;

.field final synthetic f:Ljava/util/HashMap;

.field final synthetic g:Lcn/sharesdk/wechat/utils/WechatHelper;


# direct methods
.method constructor <init>(Lcn/sharesdk/wechat/utils/WechatHelper;Lcom/mob/tools/b/a;Ljava/lang/String;Lcn/sharesdk/framework/PlatformActionListener;Lcn/sharesdk/framework/Platform;Ljava/util/HashMap;)V
    .locals 1

    iput-object p1, p0, Lcn/sharesdk/wechat/utils/l;->g:Lcn/sharesdk/wechat/utils/WechatHelper;

    iput-object p2, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcom/mob/tools/b/a;

    iput-object p3, p0, Lcn/sharesdk/wechat/utils/l;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/sharesdk/wechat/utils/l;->d:Lcn/sharesdk/framework/PlatformActionListener;

    iput-object p5, p0, Lcn/sharesdk/wechat/utils/l;->e:Lcn/sharesdk/framework/Platform;

    iput-object p6, p0, Lcn/sharesdk/wechat/utils/l;->f:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcn/sharesdk/wechat/utils/l;->a:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->b:Lcom/mob/tools/b/a;

    invoke-virtual {v0}, Lcom/mob/tools/b/a;->o()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->d:Lcn/sharesdk/framework/PlatformActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->d:Lcn/sharesdk/framework/PlatformActionListener;

    iget-object v1, p0, Lcn/sharesdk/wechat/utils/l;->e:Lcn/sharesdk/framework/Platform;

    const/16 v2, 0x9

    iget-object v3, p0, Lcn/sharesdk/wechat/utils/l;->f:Ljava/util/HashMap;

    invoke-interface {v0, v1, v2, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget v0, p0, Lcn/sharesdk/wechat/utils/l;->a:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcn/sharesdk/wechat/utils/l;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/sharesdk/wechat/utils/l;->a:I

    const/4 v0, 0x0

    const-wide/16 v2, 0x1f4

    invoke-static {v0, v2, v3, p0}, Lcom/mob/tools/b/j;->a(IJLandroid/os/Handler$Callback;)Z

    goto :goto_0
.end method
