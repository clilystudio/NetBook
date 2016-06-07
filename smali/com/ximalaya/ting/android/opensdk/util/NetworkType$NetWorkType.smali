.class public final enum Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

.field public static final enum NETWORKTYPE_2G:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

.field public static final enum NETWORKTYPE_3G:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

.field public static final enum NETWORKTYPE_INVALID:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

.field public static final enum NETWORKTYPE_WAP:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

.field public static final enum NETWORKTYPE_WIFI:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;


# instance fields
.field private index:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 110
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    const-string v1, "NETWORKTYPE_INVALID"

    const-string v2, "no_network"

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_INVALID:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    const-string v1, "NETWORKTYPE_WAP"

    const-string v2, "wap"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_WAP:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    const-string v1, "NETWORKTYPE_2G"

    .line 111
    const-string v2, "2g"

    invoke-direct {v0, v1, v5, v2, v6}, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_2G:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    const-string v1, "NETWORKTYPE_3G"

    const-string v2, "3g"

    invoke-direct {v0, v1, v6, v2, v7}, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_3G:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    new-instance v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    const-string v1, "NETWORKTYPE_WIFI"

    const-string v2, "wifi"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_WIFI:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    .line 108
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    sget-object v1, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_INVALID:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_WAP:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_2G:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_3G:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->NETWORKTYPE_WIFI:Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->ENUM$VALUES:[Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput-object p3, p0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->name:Ljava/lang/String;

    .line 118
    iput p4, p0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->index:I

    .line 119
    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 123
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->values()[Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 130
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 123
    :cond_0
    aget-object v3, v1, v0

    .line 125
    invoke-virtual {v3}, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->getIndex()I

    move-result v4

    if-ne v4, p0, :cond_1

    .line 127
    iget-object v0, v3, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->name:Ljava/lang/String;

    goto :goto_1

    .line 123
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    return-object v0
.end method

.method public static values()[Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->ENUM$VALUES:[Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    array-length v1, v0

    new-array v2, v1, [Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getIndex()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->index:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final setIndex(I)V
    .locals 0

    .prologue
    .line 150
    iput p1, p0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->index:I

    .line 151
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/util/NetworkType$NetWorkType;->name:Ljava/lang/String;

    .line 141
    return-void
.end method
