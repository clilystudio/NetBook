.class public Lcom/ushaqi/zhuishushenqi/util/AudioBookNotification$SwitchButtonListener;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 164
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/AudioBookNotification$SwitchButtonListener;->a:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 169
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 170
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/e;->d()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 171
    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(J)J

    .line 195
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(J)J

    .line 176
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->a()Lcom/ushaqi/zhuishushenqi/util/as;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/AudioBookNotification$SwitchButtonListener;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/i;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/util/i;-><init>(Lcom/ushaqi/zhuishushenqi/util/AudioBookNotification$SwitchButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/AudioBookNotification$SwitchButtonListener;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/j;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/util/j;-><init>(Lcom/ushaqi/zhuishushenqi/util/AudioBookNotification$SwitchButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
