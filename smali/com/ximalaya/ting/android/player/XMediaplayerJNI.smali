.class public abstract Lcom/ximalaya/ting/android/player/XMediaplayerJNI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/player/XMediaplayerImpl;


# static fields
.field private static synthetic $SWITCH_TABLE$com$ximalaya$ting$android$player$XMediaplayerJNI$NativeErrorType:[I

.field public static Tag:Ljava/lang/String;


# instance fields
.field public isBuffing:Z

.field private isSeeking:Z

.field private mAudioFileRequestHandler:Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;

.field private mAudioTrackPlayThread:Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

.field private mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

.field private mCurFileSize:J

.field public mCurrentDataDecodeUrl:Ljava/lang/String;

.field private mCurrentDecodeData:[B

.field private mCurrentSeekPosition:I

.field private mCurrentSeekPositionState:I

.field private mDownItemSize:I

.field private mHasSeek:Z

.field private mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

.field private mJniHandler:J

.field public mPlayUrl:Ljava/lang/String;

.field public tmepBuf:[B


# direct methods
.method static synthetic $SWITCH_TABLE$com$ximalaya$ting$android$player$XMediaplayerJNI$NativeErrorType()[I
    .locals 3

    .prologue
    .line 17
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->$SWITCH_TABLE$com$ximalaya$ting$android$player$XMediaplayerJNI$NativeErrorType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->values()[Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_ARCH_NOT_SUPPORT:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_DECODEDATA_FILLIO_FAIL:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_DECODE_NOT_SUPPORT:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_FILE_MANAGER_INNER_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_M3U8STREAM_FILLIO_FAIL:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_M3U8_FILE_CONTENT_INVALID:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_NOTOK:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->NO_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->$SWITCH_TABLE$com$ximalaya$ting$android$player$XMediaplayerJNI$NativeErrorType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-string v0, "XMPLAY"

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 290
    invoke-static {}, Lcom/ximalaya/ting/android/player/PlayerUtil;->isX86Arch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadLibrary xmediaplayer_x isRrmV7Plus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ximalaya/ting/android/player/PlayerUtil;->isRrmV7Plus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    const-string v0, "xmediaplayer_x"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 295
    :cond_0
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadLibrary xmediaplayer isRrmV7Plus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ximalaya/ting/android/player/PlayerUtil;->isRrmV7Plus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 296
    const-string v0, "xmediaplayer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const v0, 0x8000

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mDownItemSize:I

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPosition:I

    .line 22
    iput v1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPositionState:I

    .line 24
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mPlayUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentDataDecodeUrl:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHasSeek:Z

    .line 27
    iput-boolean v1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->isSeeking:Z

    .line 28
    iput-boolean v1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->isBuffing:Z

    .line 29
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->NORMAL_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    .line 39
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerFrameworkInit()I

    move-result v0

    .line 40
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MediaplayerFrameworkInit result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    if-gez v0, :cond_0

    .line 43
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_ARCH_NOT_SUPPORT:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->handlePlayerStatus(I)V

    .line 46
    :cond_0
    return-void
.end method

.method private getCurPlayUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->NORMAL_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    if-eq v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getPlayUrl()Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_0
    return-object v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getCurPlayUrl \u9519\u8bef\uff01"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mPlayUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleSmallBufRequest(Lcom/ximalaya/ting/android/player/model/JNIDataModel;)V
    .locals 4

    .prologue
    .line 698
    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v0, v0

    iget v1, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->bufSize:I

    if-le v0, v1, :cond_1

    .line 700
    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 702
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 703
    iget v1, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->bufSize:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    .line 704
    iget-object v2, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v2, v2

    .line 703
    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 705
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 706
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    .line 707
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 709
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dataStreamInputFuncCallBackT length diff tJNIDataModel.bufSize:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 711
    iget v3, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->bufSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 710
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 709
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 714
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dataStreamInputFuncCallBackT length diff tJNIDataModel.buf:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 715
    iget-object v3, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 714
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 713
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 717
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    if-eqz v1, :cond_0

    .line 718
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 719
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dataStreamInputFuncCallBackT length diff tmepBuf:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    iget-object v3, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 719
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 718
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 722
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 723
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    iget v2, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->bufSize:I

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 724
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 725
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    .line 726
    iget-object v1, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 728
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataStreamInputFuncCallBackT length diff tJNIDataModel.buf:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 730
    iget-object v2, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 729
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 731
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    if-eqz v0, :cond_1

    .line 732
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 733
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataStreamInputFuncCallBackT length diff all1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 734
    iget-object v2, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    array-length v3, v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 733
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 732
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 737
    :cond_1
    return-void
.end method

.method private releaseAudioTrackPlayThread()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioTrackPlayThread:Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioTrackPlayThread:Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->releasePlay()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioTrackPlayThread:Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

    .line 356
    :cond_0
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "releaseAudioTrackPlayThread releasePlay"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    return-void
.end method


# virtual methods
.method public native MediaplayerComplete(J)I
.end method

.method public native MediaplayerDestroy(J)I
.end method

.method public native MediaplayerFrameworkInit()I
.end method

.method public native MediaplayerGetCurPlayingFileType(J)I
.end method

.method public native MediaplayerGetCurrentDecodedDataTime(J)J
.end method

.method public native MediaplayerGetCurrentTime(J)J
.end method

.method public native MediaplayerGetMediaDuration(J)J
.end method

.method public native MediaplayerGetOutputData([BIJ)I
.end method

.method public native MediaplayerInit(IIII)I
.end method

.method public native MediaplayerOutputDataAppointment(J)I
.end method

.method public native MediaplayerPause(J)I
.end method

.method public native MediaplayerPlay(J)I
.end method

.method public native MediaplayerPrepareAsync(J)I
.end method

.method public native MediaplayerReset(J)I
.end method

.method public native MediaplayerSeek(JJ)I
.end method

.method public native MediaplayerSetDataSourceInfo(Ljava/lang/String;IJ)I
.end method

.method public native MediaplayerStop(J)I
.end method

.method public bufferedDataReachThresholdCallBackT(I)I
    .locals 2

    .prologue
    .line 831
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->NO_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-static {p1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->valueOf(I)Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    invoke-virtual {p0, p1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->handlePlayerStatus(I)V

    .line 835
    const/4 v0, -0x1

    .line 841
    :goto_0
    return v0

    .line 838
    :cond_0
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getAudioTrackPlayThread()Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->dataReady()V

    .line 839
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 840
    const-string v1, "dataStreamInputFuncCallBackT bufferedDataReachThresholdCallBackT"

    .line 839
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 841
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dataStreamInputFuncCallBackT(Lcom/ximalaya/ting/android/player/model/JNIDataModel;)I
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 565
    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->NO_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    .line 566
    iget v3, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->status:I

    invoke-static {v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->valueOf(I)Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    move-result-object v3

    .line 565
    invoke-virtual {v2, v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 566
    if-nez v2, :cond_1

    .line 568
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "dataStreamInputFuncCallBackT readData start error:"

    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 569
    iget v1, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->status:I

    invoke-virtual {p0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->handlePlayerStatus(I)V

    .line 694
    :cond_0
    :goto_0
    return v0

    .line 573
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 574
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dataStreamInputFuncCallBackT readData start:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 576
    iget-object v4, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->filePath:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 577
    new-instance v0, Ljava/lang/RuntimeException;

    .line 578
    const-string v1, "dataStreamInputFuncCallBackT tJNIDataModel.filePath==null \u5f02\u5e38\uff01\uff01\uff01"

    .line 577
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_2
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 581
    const-string v5, "dataStreamInputFuncCallBackT xx seekParaTimeStampMs fill io start"

    .line 580
    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 582
    iget-object v4, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->filePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getCurPlayUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 583
    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPosition:I

    .line 584
    iput-wide v10, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurFileSize:J

    .line 585
    iput v1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPositionState:I

    .line 586
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHasSeek:Z

    .line 587
    iput-object v8, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    .line 588
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v5, "dataStreamInputFuncCallBackT \u91cd\u7f6e"

    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 590
    :cond_3
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dataStreamInputFuncCallBackT filePath:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 591
    iget-object v6, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->filePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 590
    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 593
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 594
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dataStreamInputFuncCallBackT seekParaTimeStampMs mCurrentSeekPositionState:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 595
    iget v6, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPositionState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 594
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 593
    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 596
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dataStreamInputFuncCallBackT seekParaTimeStampMs mCurrentSeekPosition:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    iget v6, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 597
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 596
    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 599
    iget-boolean v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHasSeek:Z

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPosition:I

    iget v5, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPositionState:I

    if-eq v4, v5, :cond_4

    .line 600
    iget v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPositionState:I

    iput v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPosition:I

    .line 601
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 602
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dataStreamInputFuncCallBackT seekParaTimeStampMs true mCurrentSeekPosition:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 603
    iget v6, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 602
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 601
    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 604
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 605
    const-string v5, "dataStreamInputFuncCallBackT length diff seek true"

    .line 604
    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 610
    :goto_1
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "dataStreamInputFuncCallBackT mCurFileSize:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 611
    iget-wide v6, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurFileSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mCurrentSeekPosition:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 610
    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 612
    iget-wide v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurFileSize:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_5

    iget v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPosition:I

    int-to-long v4, v4

    iget-wide v6, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurFileSize:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_5

    .line 613
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "dataStreamInputFuncCallBackT xx return 0"

    invoke-static {v0, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v1

    .line 614
    goto/16 :goto_0

    .line 607
    :cond_4
    iput-boolean v1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHasSeek:Z

    goto :goto_1

    .line 617
    :cond_5
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->isHls()Z

    move-result v4

    if-nez v4, :cond_8

    .line 618
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v5, "dataStreamInputFuncCallBackT NORMAL_FILE"

    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 619
    iget-object v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioFileRequestHandler:Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;

    if-nez v4, :cond_7

    .line 620
    sget-boolean v1, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->isDebug:Z

    if-eqz v1, :cond_6

    .line 621
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mAudioFileRequestHandler==null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_6
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "dataStreamInputFuncCallBackT xx 19"

    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 625
    :cond_7
    iget-object v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioFileRequestHandler:Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;

    .line 626
    iget-boolean v5, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHasSeek:Z

    iget v6, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPosition:I

    .line 625
    invoke-virtual {v4, p1, v5, v6}, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->readData(Lcom/ximalaya/ting/android/player/model/JNIDataModel;ZI)I

    move-result v4

    .line 627
    if-gtz v4, :cond_b

    .line 630
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "dataStreamInputFuncCallBackT xx 20"

    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 634
    :cond_8
    iget-object v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    if-nez v4, :cond_a

    .line 635
    sget-boolean v1, Lcom/ximalaya/ting/android/player/XMediaPlayerConstants;->isDebug:Z

    if-eqz v1, :cond_9

    .line 636
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "mHlsAudioFile==null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_9
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "dataStreamInputFuncCallBackT xx 21"

    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 640
    :cond_a
    iget-boolean v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHasSeek:Z

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    if-eqz v4, :cond_c

    .line 641
    iget-object v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    iput-object v4, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    .line 642
    iput-object v8, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    .line 643
    iget-wide v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurFileSize:J

    iput-wide v4, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->fileSize:J

    .line 644
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 645
    const-string v5, "dataStreamInputFuncCallBackT read temp buf"

    .line 644
    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 656
    :cond_b
    :goto_2
    iput-boolean v1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHasSeek:Z

    .line 659
    iget-object v1, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    if-nez v1, :cond_d

    .line 660
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 661
    const-string v2, "dataStreamInputFuncCallBackT xx tJNIDataModel.buf==null"

    .line 660
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 647
    :cond_c
    iput-object v8, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    .line 648
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v5, "dataStreamInputFuncCallBackT M3U8_FILE"

    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 649
    iget-object v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    invoke-virtual {v4, p1}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->readData(Lcom/ximalaya/ting/android/player/model/JNIDataModel;)J

    move-result-wide v4

    .line 651
    cmp-long v4, v4, v10

    if-ltz v4, :cond_0

    .line 654
    iget-wide v4, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->fileSize:J

    iput-wide v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurFileSize:J

    goto :goto_2

    .line 664
    :cond_d
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 665
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "dataStreamInputFuncCallBackT buf.length"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 666
    iget-object v4, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 665
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 668
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "dataStreamInputFuncCallBackT mCurFileSize:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurFileSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 668
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 670
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "dataStreamInputFuncCallBackT tJNIDataModel.buf.length:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 672
    iget-object v4, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 671
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 670
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 673
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 674
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "dataStreamInputFuncCallBackT tJNIDataModel.bufSize:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 675
    iget v4, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->bufSize:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 674
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 673
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 677
    invoke-direct {p0, p1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->handleSmallBufRequest(Lcom/ximalaya/ting/android/player/model/JNIDataModel;)V

    .line 679
    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    if-eqz v0, :cond_e

    .line 680
    iget v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPosition:I

    iget-object v1, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPosition:I

    .line 682
    :cond_e
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 683
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "dataStreamInputFuncCallBackT tJNIDataModel.buf.length:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 684
    iget-object v4, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 683
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 682
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 686
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "dataStreamInputFuncCallBackT mCurFileSize2:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurFileSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 688
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "dataStreamInputFuncCallBackT tJNIDataModel filesize:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 690
    iget-wide v4, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->fileSize:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 689
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 688
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 691
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 692
    const-string v1, "dataStreamInputFuncCallBackT xx seekParaTimeStampMs fill io end"

    .line 691
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 693
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "dataStreamInputFuncCallBackT readData end:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 694
    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v0, v0

    goto/16 :goto_0
.end method

.method public dataStreamOutReadyFuncCallBackT(II)I
    .locals 2

    .prologue
    .line 802
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "dataStreamOutReadyFuncCallBackT"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 803
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->NO_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-static {p2}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->valueOf(I)Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    invoke-virtual {p0, p2}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->handlePlayerStatus(I)V

    .line 807
    const/4 v0, -0x1

    .line 810
    :goto_0
    return v0

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onPreparedInner()V

    .line 810
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dataStreamSeekFuncCallBackT(Ljava/lang/String;JI)I
    .locals 4

    .prologue
    .line 763
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataStreamSeekFuncCallBackT 0 offset:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 764
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->NO_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-static {p4}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->valueOf(I)Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    invoke-virtual {p0, p4}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->handlePlayerStatus(I)V

    .line 768
    const/4 v0, -0x1

    .line 781
    :goto_0
    return v0

    .line 770
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 771
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentDataDecodeUrl:Ljava/lang/String;

    .line 774
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHasSeek:Z

    .line 775
    long-to-int v0, p2

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPositionState:I

    .line 777
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dataStreamInputFuncCallBackT seekParaTimeStampMs true offset:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 778
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 776
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 781
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioTrackPlayThread()Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioTrackPlayThread:Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 87
    const-string v1, "dataStreamInputFuncCallBackT getAudioTrackPlayThread new"

    .line 86
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    new-instance v0, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;-><init>(Lcom/ximalaya/ting/android/player/XMediaplayerJNI;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioTrackPlayThread:Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioTrackPlayThread:Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

    return-object v0
.end method

.method public getAudioType()Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    return-object v0
.end method

.method public getCachePercent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->isHls()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 278
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    if-nez v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->getCachePercent()I

    move-result v0

    goto :goto_0

    .line 282
    :cond_2
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioFileRequestHandler:Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;

    if-eqz v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioFileRequestHandler:Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->getCachePercent()I

    move-result v0

    goto :goto_0
.end method

.method public getCurFileSize()J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurFileSize:J

    return-wide v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 205
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerGetCurrentTime(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerGetMediaDuration(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getOutputData([BI)I
    .locals 2

    .prologue
    .line 106
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerGetOutputData([BIJ)I

    move-result v0

    return v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mPlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public handlePlayerStatus(I)V
    .locals 6

    .prologue
    const/16 v5, -0x3ec

    const/16 v4, 0x8

    .line 303
    invoke-static {p1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->valueOf(I)Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    move-result-object v0

    .line 304
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handlePlayerStatus status:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    if-nez v0, :cond_0

    .line 341
    :goto_0
    :pswitch_0
    return-void

    .line 308
    :cond_0
    invoke-static {}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->$SWITCH_TABLE$com$ximalaya$ting$android$player$XMediaplayerJNI$NativeErrorType()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 328
    :pswitch_1
    const/4 v0, 0x1

    .line 327
    invoke-virtual {p0, v4, v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onErrorInner(II)V

    goto :goto_0

    .line 310
    :pswitch_2
    invoke-virtual {p0, v4, v5}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onErrorInner(II)V

    goto :goto_0

    .line 314
    :pswitch_3
    const/16 v0, -0x3f2

    .line 313
    invoke-virtual {p0, v4, v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onErrorInner(II)V

    goto :goto_0

    .line 318
    :pswitch_4
    const/16 v0, 0x64

    .line 317
    invoke-virtual {p0, v4, v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onErrorInner(II)V

    goto :goto_0

    .line 321
    :pswitch_5
    invoke-virtual {p0, v4, v5}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onErrorInner(II)V

    goto :goto_0

    .line 324
    :pswitch_6
    invoke-virtual {p0, v4, v5}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onErrorInner(II)V

    goto :goto_0

    .line 334
    :pswitch_7
    const/16 v0, -0x3f3

    .line 333
    invoke-virtual {p0, v4, v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onErrorInner(II)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public isHls()Z
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->value()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->value()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "dataStreamInputFuncCallBackT isPlaying"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getAudioTrackPlayThread()Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isSeeking()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->isSeeking:Z

    return v0
.end method

.method public m3u8FileStreamInputFuncCallBackT(Lcom/ximalaya/ting/android/player/model/JNIDataModel;)I
    .locals 13

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 379
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->NO_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    .line 380
    iget v5, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->status:I

    invoke-static {v5}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->valueOf(I)Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    move-result-object v5

    .line 379
    invoke-virtual {v4, v5}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 380
    if-nez v4, :cond_0

    .line 382
    iget v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->status:I

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->handlePlayerStatus(I)V

    move v0, v2

    .line 480
    :goto_0
    return v0

    .line 387
    :cond_0
    if-eqz p1, :cond_1

    iget v4, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->bufSize:I

    if-gtz v4, :cond_2

    .line 388
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 389
    const-string v1, "m3u8FileStreamInputFuncCallBackT tJNIDataModel null"

    .line 388
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v2

    .line 390
    goto :goto_0

    .line 393
    :cond_2
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 394
    const-string v5, "HlsReadThread downUrl0  m3u8FileStreamInputFuncCallBackT"

    .line 393
    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-gtz v0, :cond_4

    .line 464
    :goto_2
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 465
    const-string v1, "m3u8FileStreamInputFuncCallBackT tt 4"

    .line 464
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 466
    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    if-eqz v0, :cond_3

    .line 467
    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v0, v0

    iget v1, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->bufSize:I

    if-gt v0, v1, :cond_3

    .line 468
    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v0, v0

    if-nez v0, :cond_13

    .line 469
    :cond_3
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 470
    const-string v1, "m3u8FileStreamInputFuncCallBackT null end 4"

    .line 469
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v3

    .line 471
    goto :goto_0

    .line 402
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/ximalaya/ting/android/player/PlayerUtil;->getHttpURLConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 403
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 404
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 405
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 406
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "m3u8FileStreamInputFuncCallBackT 0 responseCode:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 406
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 405
    invoke-static {v4, v7}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 408
    const/16 v4, 0xc8

    if-eq v0, v4, :cond_5

    .line 409
    const/16 v4, 0xce

    if-ne v0, v4, :cond_b

    .line 410
    :cond_5
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 411
    const-string v4, "m3u8FileStreamInputFuncCallBackT 1"

    .line 410
    invoke-static {v0, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 412
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 413
    :try_start_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 414
    const/16 v7, 0x400

    new-array v7, v7, [B

    .line 416
    :goto_3
    invoke-virtual {v0, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-ne v8, v2, :cond_8

    .line 421
    sget-object v7, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 422
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "m3u8FileStreamInputFuncCallBackT len000:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 421
    invoke-static {v7, v8}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 423
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iput-object v7, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    .line 424
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 441
    :goto_4
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 442
    const-string v7, "m3u8FileStreamInputFuncCallBackT tt 0"

    .line 441
    invoke-static {v4, v7}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    if-eqz v5, :cond_6

    .line 444
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 445
    :cond_6
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 446
    const-string v5, "m3u8FileStreamInputFuncCallBackT tt 1"

    .line 445
    invoke-static {v4, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    if-eqz v0, :cond_7

    .line 449
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 453
    :cond_7
    :goto_5
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 454
    const-string v4, "m3u8FileStreamInputFuncCallBackT tt 2"

    .line 453
    invoke-static {v0, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 457
    :goto_6
    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v0, v0

    if-lez v0, :cond_14

    .line 458
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 459
    const-string v1, "m3u8FileStreamInputFuncCallBackT tt 3"

    .line 458
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 417
    :cond_8
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v4, v7, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 418
    sget-object v9, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 419
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "m3u8FileStreamInputFuncCallBackT len:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 418
    invoke-static {v9, v8}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 431
    :catch_0
    move-exception v4

    move-object v12, v4

    move-object v4, v0

    move-object v0, v12

    .line 432
    :goto_7
    :try_start_5
    sget-object v7, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 433
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "m3u8FileStreamInputFuncCallBackT MalformedURLException:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-static {v7, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 441
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 442
    const-string v7, "m3u8FileStreamInputFuncCallBackT tt 0"

    .line 441
    invoke-static {v0, v7}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    if-eqz v5, :cond_9

    .line 444
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 445
    :cond_9
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 446
    const-string v5, "m3u8FileStreamInputFuncCallBackT tt 1"

    .line 445
    invoke-static {v0, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    if-eqz v4, :cond_a

    .line 449
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 453
    :cond_a
    :goto_8
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 454
    const-string v4, "m3u8FileStreamInputFuncCallBackT tt 2"

    .line 453
    invoke-static {v0, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    .line 425
    :cond_b
    const/16 v4, 0x190

    if-lt v0, v4, :cond_15

    .line 426
    :try_start_7
    sget-object v4, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 427
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "m3u8FileStreamInputFuncCallBackT HTTP_BAD_REQUEST responseCode:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 427
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {v4, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 441
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 442
    const-string v1, "m3u8FileStreamInputFuncCallBackT tt 0"

    .line 441
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    if-eqz v5, :cond_c

    .line 444
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 445
    :cond_c
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 446
    const-string v1, "m3u8FileStreamInputFuncCallBackT tt 1"

    .line 445
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 453
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 454
    const-string v1, "m3u8FileStreamInputFuncCallBackT tt 2"

    .line 453
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v2

    .line 429
    goto/16 :goto_0

    .line 434
    :catch_1
    move-exception v0

    move-object v4, v1

    move-object v5, v1

    .line 435
    :goto_9
    :try_start_8
    sget-object v7, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 436
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "m3u8FileStreamInputFuncCallBackT IOException:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 435
    invoke-static {v7, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 441
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 442
    const-string v7, "m3u8FileStreamInputFuncCallBackT tt 0"

    .line 441
    invoke-static {v0, v7}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    if-eqz v5, :cond_d

    .line 444
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 445
    :cond_d
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 446
    const-string v5, "m3u8FileStreamInputFuncCallBackT tt 1"

    .line 445
    invoke-static {v0, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    if-eqz v4, :cond_e

    .line 449
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 453
    :cond_e
    :goto_a
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 454
    const-string v4, "m3u8FileStreamInputFuncCallBackT tt 2"

    .line 453
    invoke-static {v0, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 437
    :catch_2
    move-exception v0

    move-object v4, v1

    move-object v5, v1

    .line 438
    :goto_b
    :try_start_a
    sget-object v7, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 439
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "m3u8FileStreamInputFuncCallBackT Exception:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-static {v7, v0}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 441
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 442
    const-string v7, "m3u8FileStreamInputFuncCallBackT tt 0"

    .line 441
    invoke-static {v0, v7}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    if-eqz v5, :cond_f

    .line 444
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 445
    :cond_f
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 446
    const-string v5, "m3u8FileStreamInputFuncCallBackT tt 1"

    .line 445
    invoke-static {v0, v5}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    if-eqz v4, :cond_10

    .line 449
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 453
    :cond_10
    :goto_c
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 454
    const-string v4, "m3u8FileStreamInputFuncCallBackT tt 2"

    .line 453
    invoke-static {v0, v4}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 440
    :catchall_0
    move-exception v0

    move-object v4, v1

    move-object v5, v1

    .line 441
    :goto_d
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 442
    const-string v2, "m3u8FileStreamInputFuncCallBackT tt 0"

    .line 441
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    if-eqz v5, :cond_11

    .line 444
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 445
    :cond_11
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 446
    const-string v2, "m3u8FileStreamInputFuncCallBackT tt 1"

    .line 445
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    if-eqz v4, :cond_12

    .line 449
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 453
    :cond_12
    :goto_e
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 454
    const-string v2, "m3u8FileStreamInputFuncCallBackT tt 2"

    .line 453
    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 455
    throw v0

    .line 473
    :cond_13
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "m3u8FileStreamInputFuncCallBackT contentLength 5:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    iget-object v2, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 474
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 476
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "m3u8FileStreamInputFuncCallBackT buf:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    new-instance v2, Ljava/lang/String;

    iget-object v3, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 477
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 480
    iget-object v0, p1, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    array-length v0, v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_a

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v1

    goto :goto_e

    :catch_7
    move-exception v0

    goto/16 :goto_5

    .line 440
    :catchall_1
    move-exception v0

    move-object v4, v1

    goto :goto_d

    :catchall_2
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_d

    :catchall_3
    move-exception v0

    goto :goto_d

    .line 437
    :catch_8
    move-exception v0

    move-object v4, v1

    goto/16 :goto_b

    :catch_9
    move-exception v4

    move-object v12, v4

    move-object v4, v0

    move-object v0, v12

    goto/16 :goto_b

    .line 434
    :catch_a
    move-exception v0

    move-object v4, v1

    goto/16 :goto_9

    :catch_b
    move-exception v4

    move-object v12, v4

    move-object v4, v0

    move-object v0, v12

    goto/16 :goto_9

    .line 431
    :catch_c
    move-exception v0

    move-object v4, v1

    move-object v5, v1

    goto/16 :goto_7

    :catch_d
    move-exception v0

    move-object v4, v1

    goto/16 :goto_7

    :cond_14
    move v0, v6

    goto/16 :goto_1

    :cond_15
    move-object v0, v1

    goto/16 :goto_4
.end method

.method public m3u8ParsedNewMediaItemInfoFuncCallBackT([Ljava/lang/String;II)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 504
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->NO_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-static {p3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->valueOf(I)Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 505
    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v2, "m3u8ParsedNewMediaItemInfoFuncCallBackT onErrorInner"

    invoke-static {v1, v2}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 506
    invoke-virtual {p0, p3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->handlePlayerStatus(I)V

    .line 536
    :cond_0
    :goto_0
    return v0

    .line 518
    :cond_1
    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    if-eqz v1, :cond_0

    .line 520
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HlsReadThread downUrl0 m3u8ParsedNewMediaItemInfoFuncCallBackT length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 522
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerGetCurPlayingFileType(J)I

    move-result v0

    .line 523
    if-ltz v0, :cond_2

    .line 524
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->valueOf(I)Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    .line 525
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "m3u8ParsedNewMediaItemInfoFuncCallBackT mAudioType0:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 526
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 533
    :goto_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->addPlayUrls([Ljava/lang/String;)V

    .line 536
    const/4 v0, 0x0

    goto :goto_0

    .line 528
    :cond_2
    const/16 v0, 0x8

    .line 529
    const/4 v1, 0x1

    .line 528
    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onErrorInner(II)V

    .line 530
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "m3u8ParsedNewMediaItemInfoFuncCallBackT mAudioType0 error"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public abstract mOnTimedChangeListenerInner()V
.end method

.method public abstract onBufferingUpdateInner(I)V
.end method

.method public onCompletionInner()V
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->resetAllData()V

    .line 345
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerComplete(J)I

    .line 346
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "dataStreamInputFuncCallBackT onCompletionInner"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->releaseAudioTrackPlayThread()V

    .line 349
    return-void
.end method

.method public onErrorInner(II)V
    .locals 2

    .prologue
    .line 144
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "onErrorInner"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public abstract onInfoInner(II)V
.end method

.method public onPreparedInner()V
    .locals 3

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->isBuffing:Z

    if-eqz v0, :cond_0

    .line 127
    const/16 v0, 0xa

    .line 128
    const/16 v1, 0x2be

    .line 127
    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onInfoInner(II)V

    .line 130
    :cond_0
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerGetCurPlayingFileType(J)I

    move-result v0

    .line 131
    if-ltz v0, :cond_1

    .line 132
    invoke-static {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->valueOf(I)Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    .line 133
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPreparedInner mAudioType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    :goto_0
    return-void

    .line 136
    :cond_1
    const/16 v0, 0x8

    .line 137
    const/4 v1, 0x1

    .line 136
    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onErrorInner(II)V

    .line 138
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "onPreparedInner mAudioType error"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public abstract onSeekCompletedInner()V
.end method

.method public outputDataAppointment()I
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerOutputDataAppointment(J)I

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "dataStreamInputFuncCallBackT pause"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getAudioTrackPlayThread()Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->pausePlay()V

    .line 178
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerPause(J)I

    .line 180
    return-void
.end method

.method public prepareAsync()V
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "prepareAsync"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->isBuffing:Z

    if-nez v0, :cond_0

    .line 119
    const/16 v0, 0xa

    .line 120
    const/16 v1, 0x2bd

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onInfoInner(II)V

    .line 122
    :cond_0
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerPrepareAsync(J)I

    .line 123
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 185
    :goto_0
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerReset(J)I

    move-result v0

    if-ltz v0, :cond_2

    .line 192
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "dataStreamInputFuncCallBackT release"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    invoke-direct {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->releaseAudioTrackPlayThread()V

    .line 194
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->release()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioFileRequestHandler:Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioFileRequestHandler:Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->release()V

    .line 199
    :cond_1
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerDestroy(J)I

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    .line 201
    return-void

    .line 187
    :cond_2
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "reset"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerReset(J)I

    .line 223
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->resetAllData()V

    .line 224
    return-void
.end method

.method public resetAllData()V
    .locals 2

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHasSeek:Z

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->tmepBuf:[B

    .line 162
    const/4 v0, -0x1

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPosition:I

    .line 163
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurrentSeekPositionState:I

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurFileSize:J

    .line 165
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioFileRequestHandler:Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioFileRequestHandler:Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;->reset()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;->release()V

    .line 170
    :cond_1
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "dataStreamInputFuncCallBackT initAllData \u91cd\u7f6e0"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method public seekTo(I)V
    .locals 4

    .prologue
    .line 228
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "seekParaTimeStampMs msec:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->isSeeking:Z

    .line 230
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerSeek(JJ)I

    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->isSeeking:Z

    .line 232
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->onSeekCompletedInner()V

    .line 233
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mOnTimedChangeListenerInner()V

    .line 234
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ttseek2:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    return-void
.end method

.method public setCurFileSize(J)V
    .locals 1

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mCurFileSize:J

    .line 70
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 251
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDataSource src:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mPlayUrl:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mPlayUrl:Ljava/lang/String;

    const-string v1, "m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Lcom/ximalaya/ting/android/player/HlsAudioFile;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mPlayUrl:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/ximalaya/ting/android/player/HlsAudioFile;-><init>(Ljava/lang/String;Lcom/ximalaya/ting/android/player/XMediaplayerJNI;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mHlsAudioFile:Lcom/ximalaya/ting/android/player/HlsAudioFile;

    .line 256
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->M3U8_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    .line 257
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mPlayUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->value()I

    move-result v1

    iget-wide v2, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerSetDataSourceInfo(Ljava/lang/String;IJ)I

    .line 263
    :goto_0
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDataSource mAudioType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    invoke-virtual {v2}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 265
    return-void

    .line 259
    :cond_0
    new-instance v0, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;

    invoke-direct {v0, p0}, Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;-><init>(Lcom/ximalaya/ting/android/player/XMediaplayerJNI;)V

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioFileRequestHandler:Lcom/ximalaya/ting/android/player/AudioFileRequestHandler;

    .line 260
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->NORMAL_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    .line 261
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mPlayUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mAudioType:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    invoke-virtual {v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->value()I

    move-result v1

    iget-wide v2, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerSetDataSourceInfo(Ljava/lang/String;IJ)I

    goto :goto_0
.end method

.method public setVolume(FF)V
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getAudioTrackPlayThread()Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->setVolume(F)V

    .line 270
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 243
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "dataStreamInputFuncCallBackT start"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 244
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getAudioTrackPlayThread()Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->startPlay()V

    .line 245
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerPlay(J)I

    .line 246
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    const-string v1, "dataStreamInputFuncCallBackT stop"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getAudioTrackPlayThread()Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->stopPlay()V

    .line 153
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {p0, v0, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerStop(J)I

    .line 154
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->resetAllData()V

    .line 156
    return-void
.end method

.method public xmediaplayerInit()V
    .locals 4

    .prologue
    const/high16 v1, 0x10000

    .line 49
    invoke-virtual {p0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->getAudioTrackPlayThread()Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/AudioTrackPlayThread;->getMinOutputBufferSize()I

    move-result v0

    .line 50
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->MediaplayerInit(IIII)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    .line 54
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaplayerInit mJniHandler:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    iget-wide v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->mJniHandler:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_ARCH_NOT_SUPPORT:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->handlePlayerStatus(I)V

    .line 59
    :cond_0
    return-void
.end method
