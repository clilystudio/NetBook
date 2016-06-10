.class public Lcom/ximalaya/ting/android/opensdk/player/constants/PlayerConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_NOTIFICATION_EXIT:Ljava/lang/String; = "com.ximalaya.ting.android.action.ACTION_NOTIFICATION_EXIT"

.field public static final ACTION_NOTIFICATION_PLAY_NEXT:Ljava/lang/String; = "com.ximalaya.ting.android.action.ACTION_NOTIFICATION_NEXT"

.field public static final ACTION_NOTIFICATION_PLAY_PRE:Ljava/lang/String; = "com.ximalaya.ting.android.action.ACTION_NOTIFICATION_PRE"

.field public static final ACTION_NOTIFICATION_SWITCH_PLAY_PAUSE:Ljava/lang/String; = "com.ximalaya.ting.android.action.ACTION_NOTIFICATION_SWITCH_PLAY_PAUSE"

.field public static final LIST_ADD:I = 0xc9

.field public static final LIST_SET:I = 0xc8

.field public static final LIST_UPDATE:I = 0xca

.field public static PRE_LOAD_INDEX:I = 0x0

.field public static final STATE_ADS_BUFFERING:I = 0xa

.field public static final STATE_COMPLETED:I = 0x6

.field public static final STATE_END:I = 0x8

.field public static final STATE_ERROR:I = 0x7

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_PAUSED:I = 0x5

.field public static final STATE_PLAYING_ADS:I = 0xb

.field public static final STATE_PREPARED:I = 0x2

.field public static final STATE_PREPARING:I = 0x9

.field public static final STATE_STARTED:I = 0x3

.field public static final STATE_STOPPED:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x5

    sput v0, Lcom/ximalaya/ting/android/opensdk/player/constants/PlayerConstants;->PRE_LOAD_INDEX:I

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
