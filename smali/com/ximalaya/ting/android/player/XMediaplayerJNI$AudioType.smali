.class public final enum Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

.field public static final enum HLS_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

.field public static final enum M3U8_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

.field public static final enum M3U8_STATIC_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

.field public static final enum NORMAL_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1147
    new-instance v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    const-string v1, "NORMAL_FILE"

    invoke-direct {v0, v1, v2, v2}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->NORMAL_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    .line 1148
    new-instance v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    const-string v1, "M3U8_STATIC_FILE"

    invoke-direct {v0, v1, v3, v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->M3U8_STATIC_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    .line 1149
    new-instance v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    const-string v1, "HLS_FILE"

    invoke-direct {v0, v1, v4, v4}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->HLS_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    .line 1150
    new-instance v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    const-string v1, "M3U8_FILE"

    invoke-direct {v0, v1, v5, v5}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->M3U8_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    .line 1146
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->NORMAL_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->M3U8_STATIC_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->HLS_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->M3U8_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->ENUM$VALUES:[Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 1153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1151
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->value:I

    .line 1154
    iput p3, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->value:I

    .line 1155
    return-void
.end method

.method public static valueOf(I)Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;
    .locals 1

    .prologue
    .line 1158
    packed-switch p0, :pswitch_data_0

    .line 1168
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1160
    :pswitch_0
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->NORMAL_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    goto :goto_0

    .line 1162
    :pswitch_1
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->M3U8_STATIC_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    goto :goto_0

    .line 1164
    :pswitch_2
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->HLS_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    goto :goto_0

    .line 1166
    :pswitch_3
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->M3U8_FILE:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    goto :goto_0

    .line 1158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    return-object v0
.end method

.method public static values()[Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->ENUM$VALUES:[Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    array-length v1, v0

    new-array v2, v1, [Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 1173
    iget v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;->value:I

    return v0
.end method
