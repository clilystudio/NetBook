.class final Lcom/ushaqi/zhuishushenqi/util/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/AudioBookNotification$SwitchButtonListener;)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 180
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->a()Lcom/ushaqi/zhuishushenqi/util/as;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->h()V

    .line 181
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/e;->e()Landroid/widget/RemoteViews;

    move-result-object v0

    const v1, 0x7f0c02e7

    const v2, 0x7f0201a5

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 182
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/e;->g()Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/e;->f()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 183
    return-void
.end method
