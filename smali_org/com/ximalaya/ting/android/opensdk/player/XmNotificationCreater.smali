.class public Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_CONTROL_PLAY_NEXT:Ljava/lang/String; = "com.ximalaya.ting.android.byd.ACTION_CONTROL_PLAY_NEXT"

.field public static final ACTION_CONTROL_PLAY_PRE:Ljava/lang/String; = "com.ximalaya.ting.android.byd.ACTION_CONTROL_PLAY_PRE"

.field public static final ACTION_CONTROL_START_PAUSE:Ljava/lang/String; = "com.ximalaya.ting.android.byd.ACTION_CONTROL_START_PAUSE"

.field public static final IMG_NOTIFYICON:Ljava/lang/String; = "img_notifyIcon"

.field public static final IMG_NOTIFYICON_DRAWABLE:Ljava/lang/String; = "ting"

.field public static final IMG_NOTIFYNEXT:Ljava/lang/String; = "img_notifyNext"

.field public static final IMG_NOTIFYNEXT_DRAWABLE_DISABLE:Ljava/lang/String; = "icon_next_disable"

.field public static final IMG_NOTIFYNEXT_DRAWABLE_NORMAL:Ljava/lang/String; = "icon_next_normal"

.field public static final IMG_NOTIFYPLAYORPAUSE:Ljava/lang/String; = "img_notifyPlayOrPause"

.field public static final IMG_NOTIFYPLAYORPAUSE_DRAWABLE_PAUSE:Ljava/lang/String; = "icon_statusbar_pause"

.field public static final IMG_NOTIFYPLAYORPAUSE_DRAWABLE_PLAY:Ljava/lang/String; = "icon_statusbar_play"

.field public static final IMG_NOTIFYPRE:Ljava/lang/String; = "img_notifyPre"

.field public static final IMG_NOTIFYPRE_DRAWABLE_DISABLE:Ljava/lang/String; = "icon_previous_disable"

.field public static final IMG_NOTIFYPRE_DRAWABLE_NORMAL:Ljava/lang/String; = "icon_previous_normal"

.field public static final REMOTEVIEW_LAYOUT:Ljava/lang/String; = "view_notify_play"

.field public static final TXT_NOTIFYMUSICNAME:Ljava/lang/String; = "txt_notifyMusicName"

.field public static final TXT_NOTIFYNICKNAME:Ljava/lang/String; = "txt_notifyNickName"

.field private static instanse:Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRemoteView:Landroid/widget/RemoteViews;

.field private nextIntent:Landroid/app/PendingIntent;

.field private preIntent:Landroid/app/PendingIntent;

.field private remoteView:Landroid/widget/RemoteViews;

.field private res:Landroid/content/res/Resources;

.field private startOrPauseIntent:Landroid/app/PendingIntent;

.field private version:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->version:I

    .line 92
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->res:Landroid/content/res/Resources;

    .line 94
    return-void
.end method

.method static synthetic access$0(Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;)Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->remoteView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public static getInstanse(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;
    .locals 3

    .prologue
    .line 98
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->instanse:Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;

    if-nez v0, :cond_1

    .line 100
    const-class v1, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;

    monitor-enter v1

    .line 102
    :try_start_0
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->instanse:Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 104
    invoke-direct {v0, v2}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->instanse:Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;

    .line 100
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->instanse:Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public createNotificationBuilder(Landroid/content/Context;Ljava/lang/Class;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/support/v4/app/NotificationCompat$Builder;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 163
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 166
    const-string v3, "view_notify_play"

    const-string v4, "layout"

    .line 165
    invoke-virtual {p0, v3, v4}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->mRemoteView:Landroid/widget/RemoteViews;

    .line 167
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->startOrPauseIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->mRemoteView:Landroid/widget/RemoteViews;

    .line 170
    const-string v2, "img_notifyPlayOrPause"

    const-string v3, "id"

    invoke-virtual {p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 171
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->startOrPauseIntent:Landroid/app/PendingIntent;

    .line 169
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 173
    :cond_0
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->nextIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->mRemoteView:Landroid/widget/RemoteViews;

    .line 176
    const-string v2, "img_notifyNext"

    const-string v3, "id"

    invoke-virtual {p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->nextIntent:Landroid/app/PendingIntent;

    .line 175
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 178
    :cond_1
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->preIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->mRemoteView:Landroid/widget/RemoteViews;

    .line 181
    const-string v2, "img_notifyPre"

    const-string v3, "id"

    invoke-virtual {p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->preIntent:Landroid/app/PendingIntent;

    .line 180
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 183
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    invoke-static {p1, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 188
    const-string v3, "ting"

    const-string v4, "drawable"

    invoke-virtual {p0, v3, v4}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 187
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 189
    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 190
    return-object v0
.end method

.method public getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->res:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setNextPendingIntent(Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ximalaya.ting.android.byd.ACTION_CONTROL_PLAY_NEXT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->nextIntent:Landroid/app/PendingIntent;

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->nextIntent:Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method public setPrePendingIntent(Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ximalaya.ting.android.byd.ACTION_CONTROL_PLAY_PRE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->preIntent:Landroid/app/PendingIntent;

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->preIntent:Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method public setStartOrPausePendingIntent(Landroid/app/PendingIntent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 114
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ximalaya.ting.android.byd.ACTION_CONTROL_START_PAUSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->startOrPauseIntent:Landroid/app/PendingIntent;

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->startOrPauseIntent:Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method public updateModelDetail(Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;Landroid/app/NotificationManager;Landroid/app/Notification;I)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 224
    if-eqz p3, :cond_0

    .line 226
    iget-object v0, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->remoteView:Landroid/widget/RemoteViews;

    .line 229
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->remoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 234
    instance-of v0, p1, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    if-eqz v0, :cond_3

    .line 236
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 237
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getAnnouncer()Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    .line 240
    :goto_0
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getCoverUrlSmall()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v6

    .line 271
    :goto_1
    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->remoteView:Landroid/widget/RemoteViews;

    .line 272
    const-string v4, "txt_notifyMusicName"

    .line 273
    const-string v5, "id"

    .line 272
    invoke-virtual {p0, v4, v5}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 271
    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 274
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->remoteView:Landroid/widget/RemoteViews;

    .line 275
    const-string v3, "txt_notifyNickName"

    .line 276
    const-string v4, "id"

    .line 275
    invoke-virtual {p0, v3, v4}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 274
    invoke-virtual {v1, v3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->remoteView:Landroid/widget/RemoteViews;

    .line 280
    const-string v2, "img_notifyPlayOrPause"

    .line 281
    const-string v3, "id"

    .line 279
    invoke-virtual {p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 283
    const-string v3, "icon_statusbar_play"

    .line 284
    const-string v4, "drawable"

    .line 282
    invoke-virtual {p0, v3, v4}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 278
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 285
    invoke-virtual {p2, p4, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 286
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 291
    :try_start_0
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlGet(Ljava/lang/String;)Lcom/squareup/okhttp/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;
    :try_end_0
    .catch Lcom/ximalaya/ting/android/opensdk/httputil/XimalayaException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 297
    new-instance v1, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater$1;

    invoke-direct {v1, p0, p2, p4, p3}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater$1;-><init>(Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->doAsync(Lcom/squareup/okhttp/C;Lcom/ximalaya/ting/android/opensdk/httputil/IHttpCallBack;)V

    .line 333
    :cond_1
    :goto_2
    return-void

    .line 239
    :cond_2
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/track/Track;->getAnnouncer()Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/album/Announcer;->getNickname()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_3
    instance-of v0, p1, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    if-eqz v0, :cond_4

    .line 244
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    .line 245
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRadioName()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getRadioDesc()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->getCoverUrlSmall()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 249
    :cond_4
    instance-of v0, p1, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    if-eqz v0, :cond_8

    .line 251
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;

    .line 252
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getRelatedProgram()Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    move-object v1, v0

    .line 254
    :goto_3
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getRelatedProgram()Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 255
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getRelatedProgram()Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->getAnnouncerList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 256
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getRelatedProgram()Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->getAnnouncerList()Ljava/util/List;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 259
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getRelatedProgram()Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->getAnnouncerList()Ljava/util/List;

    move-result-object v0

    .line 260
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/LiveAnnouncer;->getNickName()Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_4
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getRelatedProgram()Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 268
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getRelatedProgram()Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->getBackPicUrl()Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto/16 :goto_1

    .line 253
    :cond_5
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/live/schedule/Schedule;->getRelatedProgram()Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/model/live/program/Program;->getProgramName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_3

    .line 264
    :cond_6
    const-string v0, ""

    goto :goto_4

    .line 295
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_7
    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto/16 :goto_1

    :cond_8
    move-object v0, v2

    move-object v1, v2

    goto/16 :goto_1
.end method

.method public updateViewStateAtPause(Landroid/app/NotificationManager;Landroid/app/Notification;I)V
    .locals 4

    .prologue
    .line 201
    if-eqz p2, :cond_0

    .line 203
    iget-object v0, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->remoteView:Landroid/widget/RemoteViews;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->remoteView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 208
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->remoteView:Landroid/widget/RemoteViews;

    .line 211
    const-string v1, "img_notifyPlayOrPause"

    .line 212
    const-string v2, "id"

    .line 210
    invoke-virtual {p0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 214
    const-string v2, "icon_statusbar_pause"

    .line 215
    const-string v3, "drawable"

    .line 213
    invoke-virtual {p0, v2, v3}, Lcom/ximalaya/ting/android/opensdk/player/XmNotificationCreater;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 216
    invoke-virtual {p1, p3, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 218
    :cond_1
    return-void
.end method
