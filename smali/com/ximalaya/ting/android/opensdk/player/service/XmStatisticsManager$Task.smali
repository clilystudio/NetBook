.class Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mListenRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

.field private mRadioUrl:Ljava/lang/String;

.field private mRetry:I

.field private mTrackUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;


# direct methods
.method public constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;)V
    .locals 1

    .prologue
    .line 362
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const-string v0, "openapi/tracks/record"

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->mTrackUrl:Ljava/lang/String;

    .line 357
    const-string v0, "openapi/live/record"

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->mRadioUrl:Ljava/lang/String;

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->mRetry:I

    .line 363
    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->mListenRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    .line 364
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 368
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->mListenRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    if-nez v0, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->mRetry:I

    .line 374
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 375
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->mListenRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    instance-of v0, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;

    if-eqz v0, :cond_3

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://play.ximalaya.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->mTrackUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 378
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->mListenRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;

    .line 379
    const-string v5, "trackId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v5, "duration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->getDuration()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v5, "played_secs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->getPlayedSecs()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v5, "started_at"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->getStartedAt()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v5, "play_type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->getPlayType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v5, "XmStatisticsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Post data to server: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmTrackRecord;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 410
    :goto_1
    :try_start_0
    invoke-static {v0, v4}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseBuilder;->urlPost(Ljava/lang/String;Ljava/util/Map;)Lcom/squareup/okhttp/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/D;->a()Lcom/squareup/okhttp/C;

    move-result-object v0

    .line 411
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/httputil/BaseCall;->doSync(Lcom/squareup/okhttp/C;)Lcom/squareup/okhttp/I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/I;->g()Lcom/squareup/okhttp/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/K;->f()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 418
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 422
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 423
    const-string v1, "ret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 424
    const-string v1, "ret"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v3

    .line 443
    :goto_3
    if-nez v0, :cond_0

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->mRetry:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 445
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->mWorkerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 390
    :cond_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->mListenRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    instance-of v0, v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;

    if-eqz v0, :cond_6

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://play.ximalaya.com/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->mRadioUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmStatisticsManager$Task;->mListenRecord:Lcom/ximalaya/ting/android/opensdk/player/service/XmBaseRecord;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;

    .line 394
    const-string v5, "radioId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v5, "programScheduleId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->getScheduleId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v5, "programId"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->getProgramId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v5, "started_at"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->getStartedAt()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v5, "duration"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->getDuration()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    const-string v5, "played_secs"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->getPlayedSecs()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v5, "XmStatisticsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Post data to server: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmRadioRecord;->getId()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto/16 :goto_1

    .line 413
    :catch_0
    move-exception v0

    .line 415
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 430
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_3

    .line 433
    :catch_1
    move-exception v0

    .line 435
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_5
    move v0, v3

    .line 441
    goto/16 :goto_3

    :cond_6
    move-object v0, v2

    goto/16 :goto_1
.end method
