.class public final enum Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

.field public static final enum PLAY_MODEL_LIST:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

.field public static final enum PLAY_MODEL_LIST_LOOP:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

.field public static final enum PLAY_MODEL_RANDOM:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

.field public static final enum PLAY_MODEL_SINGLE:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

.field public static final enum PLAY_MODEL_SINGLE_LOOP:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    const-string v1, "PLAY_MODEL_SINGLE"

    invoke-direct {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_SINGLE:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    const-string v1, "PLAY_MODEL_SINGLE_LOOP"

    invoke-direct {v0, v1, v3}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_SINGLE_LOOP:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    const-string v1, "PLAY_MODEL_LIST"

    invoke-direct {v0, v1, v4}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_LIST:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    const-string v1, "PLAY_MODEL_LIST_LOOP"

    invoke-direct {v0, v1, v5}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_LIST_LOOP:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    const-string v1, "PLAY_MODEL_RANDOM"

    invoke-direct {v0, v1, v6}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_RANDOM:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_SINGLE:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_SINGLE_LOOP:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_LIST:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_LIST_LOOP:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->PLAY_MODEL_RANDOM:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->ENUM$VALUES:[Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    return-object v0
.end method

.method public static values()[Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;->ENUM$VALUES:[Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayListControl$PlayMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
