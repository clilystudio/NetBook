.class final Lcom/ushaqi/zhuishushenqi/ui/user/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/sharesdk/framework/PlatformActionListener;


# instance fields
.field private synthetic a:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 233
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/e;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Lcn/sharesdk/framework/Platform;I)V
    .locals 2

    .prologue
    .line 255
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 256
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 257
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 258
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 259
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/e;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 260
    return-void
.end method

.method public final onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/sharesdk/framework/Platform;",
            "I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 237
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 238
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 239
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/e;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    return-void
.end method

.method public final onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 245
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 247
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 248
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 249
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/e;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 251
    return-void
.end method
