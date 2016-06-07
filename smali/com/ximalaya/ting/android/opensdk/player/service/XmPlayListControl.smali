.class public Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static synthetic $SWITCH_TABLE$com$ximalaya$ting$android$opensdk$player$service$XmPlayListControl$PlayMode:[I = null

.field public static final PLAY_SOURCE_NONE:I = 0x1

.field public static final PLAY_SOURCE_RADIO:I = 0x3

.field public static final PLAY_SOURCE_TRACK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "XmPlayListControl"


# instance fields
.field private volatile mCurrIndex:I

.field private mCurrModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

.field private mCurrSize:I

.field private mLastIndex:I

.field private mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

.field private mLoading:Z

.field private mNextPageId:I

.field private mPageSize:I

.field private mParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayMode:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

.field private mPlaySource:I

.field private mPrePageId:I

.field private mTotalPage:I

.field private mXimalaya:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;


# direct methods
.method static synthetic $SWITCH_TABLE$com$ximalaya$ting$android$opensdk$player$service$XmPlayListControl$PlayMode()[I
    .locals 3

    .prologue
    .line 24
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->$SWITCH_TABLE$com$ximalaya$ting$android$opensdk$player$service$XmPlayListControl$PlayMode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->values()[Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_LIST:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_LIST_LOOP:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_RANDOM:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_SINGLE:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_SINGLE_LOOP:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->$SWITCH_TABLE$com$ximalaya$ting$android$opensdk$player$service$XmPlayListControl$PlayMode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlaySource:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    .line 45
    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    .line 46
    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mLastIndex:I

    .line 47
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_LIST:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayMode:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mLoading:Z

    .line 59
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mXimalaya:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;Z)V
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mLoading:Z

    return-void
.end method

.method static synthetic access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mTotalPage:I

    return-void
.end method

.method static synthetic access$2(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;)I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mNextPageId:I

    return v0
.end method

.method static synthetic access$3(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mNextPageId:I

    return-void
.end method

.method static synthetic access$4(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;I)V
    .locals 0

    .prologue
    .line 48
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrSize:I

    return-void
.end method

.method private checkListType(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 469
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 470
    :cond_0
    const/4 v2, 0x0

    .line 479
    :cond_1
    return v2

    .line 472
    :cond_2
    const/4 v0, 0x1

    .line 473
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 474
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 476
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 477
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    and-int/2addr v0, v2

    move v2, v0

    goto :goto_0
.end method

.method private getRadioNextIndex()I
    .locals 1

    .prologue
    .line 491
    const/4 v0, -0x1

    return v0
.end method

.method private getRadioPreIndex()I
    .locals 1

    .prologue
    .line 495
    const/4 v0, -0x1

    return v0
.end method

.method private getTrackNextIndex()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 527
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->$SWITCH_TABLE$com$ximalaya$ting$android$opensdk$player$service$XmPlayListControl$PlayMode()[I

    move-result-object v0

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayMode:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 566
    :cond_0
    :goto_0
    return v0

    .line 529
    :pswitch_0
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 530
    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->needLoadNextPage(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 531
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->loadNextPageSync()V

    .line 533
    :cond_1
    iget v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrSize:I

    if-lt v0, v2, :cond_0

    move v0, v1

    .line 540
    goto :goto_0

    .line 542
    :pswitch_1
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 543
    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->needLoadNextPage(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 544
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->loadNextPageSync()V

    .line 546
    :cond_2
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 551
    :pswitch_2
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    goto :goto_0

    .line 554
    :pswitch_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrSize:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private getTrackPreIndex()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 572
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->$SWITCH_TABLE$com$ximalaya$ting$android$opensdk$player$service$XmPlayListControl$PlayMode()[I

    move-result-object v0

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayMode:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 605
    :cond_0
    :goto_0
    return v0

    .line 574
    :pswitch_0
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    add-int/lit8 v0, v0, -0x1

    .line 575
    if-gez v0, :cond_0

    move v0, v1

    .line 582
    goto :goto_0

    .line 584
    :pswitch_1
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    add-int/lit8 v0, v0, -0x1

    .line 585
    if-gez v0, :cond_0

    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrSize:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 590
    :pswitch_2
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    goto :goto_0

    .line 593
    :pswitch_3
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrSize:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 572
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private hasNextPage()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 483
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mTotalPage:I

    if-gtz v1, :cond_1

    .line 486
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mNextPageId:I

    iget v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mTotalPage:I

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadNextPageSync()V
    .locals 4

    .prologue
    .line 400
    const-string v0, "XmPlayListControl"

    const-string v1, "loadNextPageSync"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mLoading:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mLoading:Z

    .line 405
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mNextPageId:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    const-string v1, "count"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 407
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    const-string v1, "count"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mXimalaya:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getDefaultPagesize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    new-instance v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$1;

    invoke-direct {v1, p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$1;-><init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;)V

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getTrackList(Ljava/util/Map;Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;)V

    goto :goto_0
.end method

.method private needLoadNextPage(I)Z
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 459
    sget v0, Lcom/ximalaya/ting/android/opensdk/player/constants/PlayerConstants;->PRE_LOAD_INDEX:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrSize:I

    if-lt v0, v1, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const-string v0, "XmPlayListControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "needLoadNextPage currPage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mNextPageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 462
    const-string v2, ", currPageSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPageSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", next:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, 0x1

    .line 465
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetPlayList()V
    .locals 2

    .prologue
    .line 122
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    monitor-enter v1

    .line 123
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    .line 124
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mNextPageId:I

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPageSize:I

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mTotalPage:I

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrSize:I

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mLastIndex:I

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    .line 122
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getCurrIndex()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    return v0
.end method

.method public getCurrListSize()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrSize:I

    return v0
.end method

.method public getCurrentPlayableModel()Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    return-object v0
.end method

.method public getLastIndex()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mLastIndex:I

    return v0
.end method

.method public getLastRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    instance-of v0, v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextIndex()I
    .locals 2

    .prologue
    .line 210
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlaySource:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getRadioNextIndex()I

    move-result v0

    .line 215
    :goto_0
    return v0

    .line 212
    :cond_0
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlaySource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 213
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getTrackNextIndex()I

    move-result v0

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    return-object v0
.end method

.method public getPlayList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    return-object v0
.end method

.method public getPlayMode()Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayMode:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    return-object v0
.end method

.method public getPlaySource()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlaySource:I

    return v0
.end method

.method public getPlayableModel(I)Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 247
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlaySource:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 248
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    move-result-object v0

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :cond_1
    iget v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlaySource:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 250
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 251
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    goto :goto_0
.end method

.method public getPreIndex()I
    .locals 2

    .prologue
    .line 220
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlaySource:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getRadioPreIndex()I

    move-result v0

    .line 230
    :goto_0
    return v0

    .line 222
    :cond_0
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlaySource:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 223
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getTrackPreIndex()I

    move-result v0

    goto :goto_0

    .line 230
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRadio()Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    instance-of v0, v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrIndex(I)V
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    if-eq p1, v0, :cond_0

    .line 199
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mLastIndex:I

    .line 200
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    .line 201
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    .line 202
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->getPlayableModel(I)Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    .line 204
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->needLoadNextPage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->loadNextPageSync()V

    .line 207
    :cond_1
    return-void
.end method

.method public setPlayList(Ljava/util/Map;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    if-eqz p1, :cond_0

    const-string v0, "track_base_url"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    const/4 p1, 0x0

    .line 141
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlaySource:I

    .line 142
    if-nez p2, :cond_1

    .line 143
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->resetPlayList()V

    .line 150
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    monitor-enter v1

    .line 147
    :try_start_0
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->checkListType(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 150
    monitor-exit v1

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 152
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mTotalPage:I

    .line 153
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    .line 154
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 156
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    const-string v2, "total_page"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    const-string v2, "total_page"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 157
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    const-string v2, "total_page"

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mTotalPage:I

    .line 162
    :goto_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    const-string v2, "count"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    const-string v2, "count"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 163
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    const-string v2, "count"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPageSize:I

    .line 167
    :goto_2
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPageSize:I

    if-gtz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mXimalaya:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getDefaultPagesize()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPageSize:I

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    const-string v2, "page"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    const-string v2, "page"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 171
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mParam:Ljava/util/Map;

    const-string v2, "page"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mNextPageId:I

    .line 175
    :goto_3
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mNextPageId:I

    if-gtz v0, :cond_4

    .line 176
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPageSize:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mNextPageId:I

    .line 182
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrSize:I

    .line 185
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 186
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayList:Ljava/util/List;

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I

    .line 146
    :goto_5
    monitor-exit v1

    goto/16 :goto_0

    .line 159
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mTotalPage:I

    goto/16 :goto_1

    .line 165
    :cond_6
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPageSize:I

    goto :goto_2

    .line 173
    :cond_7
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mNextPageId:I

    goto :goto_3

    .line 179
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPageSize:I

    .line 180
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mNextPageId:I

    goto :goto_4

    .line 188
    :cond_9
    const/4 v0, -0x1

    iput v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5
.end method

.method public setPlayMode(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlayMode:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    return-object p1
.end method

.method public setRadio(Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;)V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 93
    if-nez p1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlaySource:I

    if-eq v0, v1, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->resetPlayList()V

    .line 99
    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mPlaySource:I

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    invoke-virtual {p1, v0}, Lcom/ximalaya/ting/android/opensdk/model/live/radio/Radio;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mLastModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    .line 103
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl;->mCurrModel:Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    goto :goto_0
.end method
