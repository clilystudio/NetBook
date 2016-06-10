.class final Lcom/ushaqi/zhuishushenqi/ui/user/av;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/av;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 127
    :goto_0
    return-void

    .line 124
    :pswitch_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/av;->a:Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/user/SmsVerifyActivity;I)V

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
