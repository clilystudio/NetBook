.class public final Lcom/ushaqi/zhuishushenqi/ui/game/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/app/DownloadManager;

.field private final b:Landroid/app/Activity;

.field private final c:Lcom/ushaqi/zhuishushenqi/model/GiftGame;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->b:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->c:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    .line 45
    const-string v0, "download"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->a:Landroid/app/DownloadManager;

    .line 46
    return-void
.end method

.method private a(Landroid/net/Uri;)J
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    .line 112
    const/4 v3, 0x0

    .line 115
    :try_start_0
    new-instance v2, Landroid/app/DownloadManager$Request;

    invoke-direct {v2, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    if-nez v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->b:Landroid/app/Activity;

    const-string v3, "\u65e0\u6cd5\u4e0b\u8f7d"

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 135
    :goto_1
    return-wide v0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v2, v3

    goto :goto_0

    .line 123
    :cond_0
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->c:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 124
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 126
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 128
    :cond_1
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->c:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getAndroidLink()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/arcsoft/hpay100/a/a;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 131
    :try_start_1
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->a:Landroid/app/DownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    goto :goto_1

    .line 132
    :catch_1
    move-exception v2

    .line 133
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/model/GiftGame;)V
    .locals 1

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 55
    :goto_0
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->a(Landroid/app/Activity;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/GiftGame;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    const-string v0, "download"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 63
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 64
    new-instance v1, Landroid/app/DownloadManager$Query;

    invoke-direct {v1}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 65
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v3

    .line 66
    if-eqz v3, :cond_2

    .line 67
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    const-string v0, "uri"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 70
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 73
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    .line 74
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getAndroidLink()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getAndroidPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/arcsoft/hpay100/a/a;->j(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->setDownloadStatus(I)V

    .line 77
    invoke-virtual {v1, v6}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->setLocalFileUri(Ljava/lang/String;)V

    goto :goto_2

    .line 78
    :cond_3
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 79
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 80
    const-string v0, "status"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 81
    const-string v5, "local_uri"

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 82
    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->setDownloadStatus(I)V

    .line 83
    invoke-virtual {v1, v5}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->setLocalFileUri(Ljava/lang/String;)V

    goto :goto_2

    .line 85
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->setDownloadStatus(I)V

    .line 86
    invoke-virtual {v1, v6}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->setLocalFileUri(Ljava/lang/String;)V

    goto :goto_2

    .line 89
    :cond_5
    if-eqz v3, :cond_0

    .line 90
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 95
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->b:Landroid/app/Activity;

    const-string v1, "sd\u5361\u672a\u6302\u8f7d"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->b:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "update_game_item_status"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->i()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->c:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->get_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->c:Lcom/ushaqi/zhuishushenqi/model/GiftGame;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GiftGame;->getAndroidLink()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 104
    invoke-direct {p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/game/ao;->a(Landroid/net/Uri;)J

    move-result-wide v2

    .line 105
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->j()Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->i()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
