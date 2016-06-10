.class public final Lcom/ushaqi/zhuishushenqi/util/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/ushaqi/zhuishushenqi/model/AppItem;

.field private final b:Landroid/app/DownloadManager;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/AppItem;)V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/y;->c:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/util/y;->a:Lcom/ushaqi/zhuishushenqi/model/AppItem;

    .line 48
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/y;->b:Landroid/app/DownloadManager;

    .line 50
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/z;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/util/z;-><init>(Lcom/ushaqi/zhuishushenqi/util/y;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 62
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 64
    :cond_0
    return-void
.end method

.method private a(Landroid/net/Uri;)J
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 131
    const/4 v3, 0x0

    .line 134
    :try_start_0
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    if-nez v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/util/y;->c:Landroid/content/Context;

    const-string v3, "\u65e0\u6cd5\u4e0b\u8f7d"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 157
    :goto_1
    return-wide v0

    .line 135
    :catch_0
    move-exception v2

    .line 136
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v2, v3

    goto :goto_0

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/y;->a:Lcom/ushaqi/zhuishushenqi/model/AppItem;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 144
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 146
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 149
    :cond_1
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/util/y;->a:Lcom/ushaqi/zhuishushenqi/model/AppItem;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getDownload_link()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 153
    :try_start_1
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/y;->b:Landroid/app/DownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_1

    .line 154
    :catch_1
    move-exception v2

    .line 155
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 67
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/AppItem;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ushaqi/zhuishushenqi/model/AppItem;

    .line 1075
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 1078
    const-string v1, "download"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 1080
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1081
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 1082
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v6

    .line 1083
    if-eqz v6, :cond_2

    .line 1084
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1085
    const-string v1, "uri"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1086
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 1087
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1091
    :cond_2
    array-length v7, v0

    move v3, v4

    :goto_2
    if-ge v3, v7, :cond_5

    aget-object v1, v0, v3

    .line 1092
    check-cast v1, Lcom/ushaqi/zhuishushenqi/model/AppItem;

    .line 1093
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getDownload_link()Ljava/lang/String;

    move-result-object v2

    .line 1094
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/arcsoft/hpay100/a/a;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1095
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->setDownloadStatus(I)V

    .line 1096
    invoke-virtual {v1, v9}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->setLocalFileUri(Ljava/lang/String;)V

    .line 1091
    :goto_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    .line 1097
    :cond_3
    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1098
    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1099
    const-string v2, "status"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1100
    const-string v8, "local_uri"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1101
    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->setDownloadStatus(I)V

    .line 1102
    invoke-virtual {v1, v8}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->setLocalFileUri(Ljava/lang/String;)V

    goto :goto_3

    .line 1104
    :cond_4
    invoke-virtual {v1, v4}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->setDownloadStatus(I)V

    .line 1105
    invoke-virtual {v1, v9}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->setLocalFileUri(Ljava/lang/String;)V

    goto :goto_3

    .line 1108
    :cond_5
    if-eqz v6, :cond_0

    .line 1109
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 114
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/y;->c:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "update_game_item_status"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->i()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/y;->a:Lcom/ushaqi/zhuishushenqi/model/AppItem;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/y;->a:Lcom/ushaqi/zhuishushenqi/model/AppItem;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/AppItem;->getDownload_link()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 123
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/util/y;->a(Landroid/net/Uri;)J

    move-result-wide v2

    .line 124
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->j()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
