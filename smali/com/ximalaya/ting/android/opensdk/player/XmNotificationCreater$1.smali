.class Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;

.field private final synthetic val$manager:Landroid/app/NotificationManager;

.field private final synthetic val$notification:Landroid/app/Notification;

.field private final synthetic val$notificationId:I


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;

    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater$1;->val$manager:Landroid/app/NotificationManager;

    iput p3, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater$1;->val$notificationId:I

    iput-object p4, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater$1;->val$notification:Landroid/app/Notification;

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public onResponse(Lcom/squareup/okhttp/I;)V
    .locals 5

    .prologue
    .line 303
    invoke-virtual {p1}, Lcom/squareup/okhttp/I;->c()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 308
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/squareup/okhttp/K;->c()Ljava/io/InputStream;

    move-result-object v0

    .line 308
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->remoteView:Landroid/widget/RemoteViews;
    invoke-static {v1}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->access$0(Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 312
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater$1;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;

    .line 313
    const-string v3, "img_notifyIcon"

    .line 314
    const-string v4, "id"

    .line 312
    invoke-virtual {v2, v3, v4}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 311
    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 315
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater$1;->val$manager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater$1;->val$notificationId:I

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater$1;->val$notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
