.class public final enum Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

.field public static final enum ERR_ARCH_NOT_SUPPORT:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

.field public static final enum ERR_DECODEDATA_FILLIO_FAIL:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

.field public static final enum ERR_DECODE_NOT_SUPPORT:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

.field public static final enum ERR_FILE_MANAGER_INNER_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

.field public static final enum ERR_M3U8STREAM_FILLIO_FAIL:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

.field public static final enum ERR_M3U8_FILE_CONTENT_INVALID:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

.field public static final enum ERR_NOTOK:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

.field public static final enum NO_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1179
    new-instance v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    const-string v1, "NO_ERR"

    invoke-direct {v0, v1, v4, v4}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->NO_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    .line 1180
    new-instance v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    const-string v1, "ERR_NOTOK"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_NOTOK:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    .line 1181
    new-instance v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    const-string v1, "ERR_DECODE_NOT_SUPPORT"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v6, v2}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_DECODE_NOT_SUPPORT:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    .line 1182
    new-instance v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    const-string v1, "ERR_M3U8_FILE_CONTENT_INVALID"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v7, v2}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_M3U8_FILE_CONTENT_INVALID:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    .line 1183
    new-instance v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    const-string v1, "ERR_FILE_MANAGER_INNER_ERR"

    const/4 v2, -0x4

    invoke-direct {v0, v1, v8, v2}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_FILE_MANAGER_INNER_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    .line 1184
    new-instance v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    const-string v1, "ERR_DECODEDATA_FILLIO_FAIL"

    const/4 v2, 0x5

    const/4 v3, -0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_DECODEDATA_FILLIO_FAIL:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    .line 1185
    new-instance v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    const-string v1, "ERR_M3U8STREAM_FILLIO_FAIL"

    const/4 v2, 0x6

    const/4 v3, -0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_M3U8STREAM_FILLIO_FAIL:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    .line 1186
    new-instance v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    const-string v1, "ERR_ARCH_NOT_SUPPORT"

    const/4 v2, 0x7

    const/4 v3, -0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_ARCH_NOT_SUPPORT:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    .line 1177
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->NO_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_NOTOK:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_DECODE_NOT_SUPPORT:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_M3U8_FILE_CONTENT_INVALID:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_FILE_MANAGER_INNER_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_DECODEDATA_FILLIO_FAIL:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_M3U8STREAM_FILLIO_FAIL:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_ARCH_NOT_SUPPORT:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ENUM$VALUES:[Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 1190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1188
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->value:I

    .line 1191
    iput p3, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->value:I

    .line 1192
    return-void
.end method

.method public static valueOf(I)Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;
    .locals 1

    .prologue
    .line 1195
    packed-switch p0, :pswitch_data_0

    .line 1213
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1197
    :pswitch_0
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->NO_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    goto :goto_0

    .line 1199
    :pswitch_1
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_NOTOK:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    goto :goto_0

    .line 1201
    :pswitch_2
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_DECODE_NOT_SUPPORT:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    goto :goto_0

    .line 1203
    :pswitch_3
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_M3U8_FILE_CONTENT_INVALID:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    goto :goto_0

    .line 1205
    :pswitch_4
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_FILE_MANAGER_INNER_ERR:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    goto :goto_0

    .line 1207
    :pswitch_5
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_DECODEDATA_FILLIO_FAIL:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    goto :goto_0

    .line 1209
    :pswitch_6
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_M3U8STREAM_FILLIO_FAIL:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    goto :goto_0

    .line 1211
    :pswitch_7
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ERR_ARCH_NOT_SUPPORT:Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    goto :goto_0

    .line 1195
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    return-object v0
.end method

.method public static values()[Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->ENUM$VALUES:[Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    array-length v1, v0

    new-array v2, v1, [Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final value()I
    .locals 1

    .prologue
    .line 1218
    iget v0, p0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI$NativeErrorType;->value:I

    return v0
.end method
