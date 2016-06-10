.class public Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final APP_BASE_DIR:Ljava/lang/String;

.field public static final CON_TIME_OUT:I = 0x2710

.field public static final DEFAULT_CHUNK_SIZE:I = 0x10000

.field public static DOWNLOAD_QUEUE_SIZE:I = 0x0

.field public static final HLS_TS_DIR:Ljava/lang/String;

.field public static final INCOM_AUDIO_FILE_DIRECTORY:Ljava/lang/String;

.field public static final SEND_BUFFER_QUEUE_SIZE:I = 0x3

.field public static final TIME_OUT:I = 0x7530

.field public static isDebug:Z

.field public static final isDebugPlayer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->isDebug:Z

    .line 15
    const/16 v0, 0xa

    sput v0, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->DOWNLOAD_QUEUE_SIZE:I

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->APP_BASE_DIR:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->APP_BASE_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    const-string v1, "/player_caching/files/incomplete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->INCOM_AUDIO_FILE_DIRECTORY:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->APP_BASE_DIR:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/hls"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->HLS_TS_DIR:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
