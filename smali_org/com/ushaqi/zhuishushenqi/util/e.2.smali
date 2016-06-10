.class public Lcom/ushaqi/zhuishushenqi/util/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ushaqi/zhuishushenqi/util/e;

.field private static c:Landroid/widget/RemoteViews;

.field private static d:Landroid/app/NotificationManager;

.field private static e:Landroid/app/Notification;

.field private static f:J

.field private static g:Lcom/ushaqi/zhuishushenqi/util/AudioBookNotification$SwitchButtonListener;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/e;->b:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static a(I)I
    .locals 2

    .prologue
    .line 12120
    if-lez p0, :cond_0

    const/16 v0, 0x3e7

    if-le p0, v0, :cond_1

    .line 12121
    :cond_0
    const/4 v0, 0x0

    .line 12132
    :goto_0
    return v0

    .line 12124
    :cond_1
    add-int/lit8 v0, p0, 0x1

    .line 12125
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 12126
    const/16 v0, 0x14

    goto :goto_0

    .line 12127
    :cond_2
    const/16 v1, 0xa

    if-gt v0, v1, :cond_3

    .line 12128
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 12130
    :cond_3
    add-int/lit8 v1, p0, -0x1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(I)I

    move-result v1

    add-int/lit8 v0, v0, -0xa

    mul-int/lit8 v0, v0, 0x32

    add-int/2addr v0, v1

    add-int/lit16 v0, v0, 0xf00

    goto :goto_0
.end method

.method static synthetic a(J)J
    .locals 0

    .prologue
    .line 5034
    sput-wide p0, Lcom/ushaqi/zhuishushenqi/util/e;->f:J

    return-wide p0
.end method

.method public static a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Author;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 13173
    invoke-static {p0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 13174
    const-string v1, "USER_ID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Author;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13175
    const-string v1, "USER_NAME"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Author;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13176
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/util/e;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->a:Lcom/ushaqi/zhuishushenqi/util/e;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/e;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->a:Lcom/ushaqi/zhuishushenqi/util/e;

    .line 36
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->a:Lcom/ushaqi/zhuishushenqi/util/e;

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/SplashRecord;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/SplashRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 90
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 91
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    .line 92
    iget-object v3, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->start:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-gtz v3, :cond_0

    iget-object v3, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->end:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v3, v6, v4

    if-ltz v3, :cond_0

    .line 93
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 96
    :cond_1
    return-object v2
.end method

.method public static a(Landroid/app/Activity;I)V
    .locals 2

    .prologue
    .line 9035
    if-nez p0, :cond_0

    .line 9039
    :goto_0
    return-void

    .line 9038
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10026
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 9026
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 9027
    return-void
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 11130
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 11140
    :cond_0
    :goto_0
    return-void

    .line 11133
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 11134
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/ad;

    invoke-direct {v1, v0, p1, p2}, Lcom/ushaqi/zhuishushenqi/util/ad;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;JI)V
    .locals 3

    .prologue
    .line 2064
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->e:Landroid/app/Notification;

    if-nez v0, :cond_0

    .line 2065
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/e;->c()Landroid/app/Notification;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->e:Landroid/app/Notification;

    .line 2067
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/ui/AudioBookPlayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2068
    const-string v1, "ALBUM_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2069
    const-string v1, "INDEX_OF_PLAYLIST"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2070
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2072
    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/e;->e:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2073
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->a()Lcom/ushaqi/zhuishushenqi/util/as;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->c()Z

    move-result v0

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Z)V

    .line 2074
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->d:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/e;->e:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2075
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 10045
    .line 10146
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 10147
    :cond_0
    :goto_0
    return-void

    .line 10149
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static synthetic a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 3034
    .line 3141
    if-eqz p0, :cond_0

    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->c:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    .line 3142
    :cond_0
    :goto_0
    return-void

    .line 3144
    :cond_1
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->c:Landroid/widget/RemoteViews;

    const v1, 0x7f0c02e4

    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 3145
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->d:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/e;->e:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/e;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 23
    .line 1113
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->j()Lcom/ushaqi/zhuishushenqi/model/SplashRoot;

    move-result-object v0

    .line 1114
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/SplashRoot;->isOk()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-void

    .line 1117
    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/SplashRoot;->getSplash()[Lcom/ushaqi/zhuishushenqi/model/Splash;

    move-result-object v3

    .line 1119
    if-eqz v3, :cond_2

    array-length v0, v3

    if-nez v0, :cond_3

    .line 1154
    :cond_2
    new-instance v0, Lcom/activeandroid/query/Delete;

    invoke-direct {v0}, Lcom/activeandroid/query/Delete;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    invoke-virtual {v0, v1}, Lcom/activeandroid/query/Delete;->from(Ljava/lang/Class;)Lcom/activeandroid/query/From;

    move-result-object v0

    invoke-virtual {v0}, Lcom/activeandroid/query/From;->execute()Ljava/util/List;

    goto :goto_0

    .line 1123
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1124
    array-length v1, v3

    move v0, v2

    :goto_1
    if-ge v0, v1, :cond_4

    aget-object v5, v3, v0

    .line 1125
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/Splash;->get_id()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1127
    :cond_4
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->getAll()Ljava/util/List;

    move-result-object v5

    .line 1128
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1129
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    .line 1130
    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->splashId:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move v1, v2

    .line 1132
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    .line 1133
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->splashId:Ljava/lang/String;

    .line 1134
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1135
    invoke-interface {v6, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1136
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->delete(Ljava/lang/String;)V

    .line 1132
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 1139
    :cond_7
    array-length v1, v3

    move v0, v2

    :goto_4
    if-ge v0, v1, :cond_0

    aget-object v4, v3, v0

    .line 1140
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/Splash;->get_id()Ljava/lang/String;

    move-result-object v5

    .line 1141
    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1142
    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->create(Lcom/ushaqi/zhuishushenqi/model/Splash;)V

    .line 1143
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/Splash;->getImg3x4()Ljava/lang/String;

    move-result-object v4

    .line 1144
    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->L(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1145
    if-eqz v5, :cond_8

    .line 1146
    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1147
    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/util/e;->b:Landroid/content/Context;

    .line 1564
    if-eqz v5, :cond_8

    if-eqz v4, :cond_8

    if-nez v7, :cond_9

    .line 1139
    :cond_8
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1567
    :cond_9
    invoke-virtual {v7, v4, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 1568
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1569
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v5, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1570
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 1571
    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 1572
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_5
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2149
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->c:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 2154
    :goto_0
    return-void

    .line 2152
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->c:Landroid/widget/RemoteViews;

    const v1, 0x7f0c02e5

    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2153
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->d:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/e;->e:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 3

    .prologue
    const v2, 0x7f0c02e7

    .line 2132
    if-eqz p0, :cond_0

    .line 2133
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->c:Landroid/widget/RemoteViews;

    const v1, 0x7f020050

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 2137
    :goto_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->d:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/e;->e:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2138
    return-void

    .line 2135
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->c:Landroid/widget/RemoteViews;

    const v1, 0x7f0201a5

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 11059
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 11060
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 2124
    :try_start_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->d:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 2125
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->g:Lcom/ushaqi/zhuishushenqi/util/AudioBookNotification$SwitchButtonListener;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2129
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2157
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->c:Landroid/widget/RemoteViews;

    if-nez v0, :cond_0

    .line 2162
    :goto_0
    return-void

    .line 2160
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->c:Landroid/widget/RemoteViews;

    const v1, 0x7f0c02e6

    invoke-virtual {v0, v1, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 2161
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->d:Landroid/app/NotificationManager;

    const/16 v1, 0x3e9

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/e;->e:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public static c()Landroid/app/Notification;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2044
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->d:Landroid/app/NotificationManager;

    .line 2045
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030126

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->c:Landroid/widget/RemoteViews;

    .line 2046
    new-instance v0, Landroid/support/v7/app/NotificationCompat$Builder;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 2047
    const v1, 0x1080077

    invoke-virtual {v0, v1}, Landroid/support/v7/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2048
    sget-object v1, Lcom/ushaqi/zhuishushenqi/util/e;->c:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2049
    invoke-virtual {v0, v5}, Landroid/support/v7/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 2050
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/AudioBookNotification$SwitchButtonListener;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/util/AudioBookNotification$SwitchButtonListener;-><init>()V

    sput-object v1, Lcom/ushaqi/zhuishushenqi/util/e;->g:Lcom/ushaqi/zhuishushenqi/util/AudioBookNotification$SwitchButtonListener;

    .line 2052
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/e;->g:Lcom/ushaqi/zhuishushenqi/util/AudioBookNotification$SwitchButtonListener;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.ushaqi.zhuishushenqi.SWITCH_AUDIO"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/MyApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2056
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.ushaqi.zhuishushenqi.SWITCH_AUDIO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2057
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v2

    invoke-static {v2, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 2058
    sget-object v2, Lcom/ushaqi/zhuishushenqi/util/e;->c:Landroid/widget/RemoteViews;

    const v3, 0x7f0c02e7

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 2059
    invoke-virtual {v0}, Landroid/support/v7/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 2060
    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->e:Landroid/app/Notification;

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 12156
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-nez v0, :cond_1

    .line 13087
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 13088
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 13089
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 12158
    if-nez v0, :cond_0

    const-string v0, ""

    .line 12159
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/integralblue/httpresponsecache/compat/libcore/a/a;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 12161
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 12032
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 12033
    if-nez v0, :cond_0

    .line 12046
    :goto_0
    return-void

    .line 12036
    :cond_0
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/am;

    invoke-direct {v1, v0, p0}, Lcom/ushaqi/zhuishushenqi/util/am;-><init>(Lcom/ushaqi/zhuishushenqi/model/Account;Ljava/lang/String;)V

    .line 12045
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/util/am;->start()V

    goto :goto_0
.end method

.method static synthetic d()J
    .locals 2

    .prologue
    .line 4034
    sget-wide v0, Lcom/ushaqi/zhuishushenqi/util/e;->f:J

    return-wide v0
.end method

.method static synthetic e()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 6034
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->c:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic f()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 7034
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->e:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic g()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 8034
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/e;->d:Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->getAll()Ljava/util/List;

    move-result-object v3

    .line 44
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    .line 84
    :goto_0
    return-object v0

    .line 48
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->getAllNotShow()Ljava/util/List;

    move-result-object v4

    .line 51
    invoke-static {v4}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 53
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 56
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v0, :cond_3

    .line 57
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    .line 58
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->isShow:Z

    .line 59
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->save()Ljava/lang/Long;

    goto :goto_1

    .line 61
    :cond_2
    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 63
    if-nez v0, :cond_3

    move-object v0, v2

    .line 64
    goto :goto_0

    .line 69
    :cond_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    int-to-double v6, v0

    mul-double/2addr v4, v6

    double-to-int v0, v4

    .line 70
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;

    .line 71
    iget-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->img3x4:Ljava/lang/String;

    .line 72
    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->K(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/e;->b:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/arcsoft/hpay100/a/a;->k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 74
    if-nez v3, :cond_4

    move-object v0, v2

    .line 75
    goto :goto_0

    .line 78
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->isShow:Z

    .line 79
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/SplashRecord;->save()Ljava/lang/Long;

    .line 81
    new-instance v1, Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;-><init>()V

    .line 82
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;->setSplashRecord(Lcom/ushaqi/zhuishushenqi/db/SplashRecord;)V

    .line 83
    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/model/SplashAdvert;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 84
    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/f;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/f;-><init>(Lcom/ushaqi/zhuishushenqi/util/e;)V

    .line 109
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/f;->start()V

    .line 110
    return-void
.end method
