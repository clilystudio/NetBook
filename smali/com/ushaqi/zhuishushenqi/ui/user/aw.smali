.class final Lcom/ushaqi/zhuishushenqi/ui/user/aw;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aw;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aw;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aw;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)I

    .line 137
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 138
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 139
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aw;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 140
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/aw;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;

    iget-object v1, v1, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void
.end method
