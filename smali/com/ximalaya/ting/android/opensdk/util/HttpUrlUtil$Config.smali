.class public Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEFAULT:Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config; = null

.field public static final METHOD_GET:Ljava/lang/String; = "GET"

.field public static final METHOD_POST:Ljava/lang/String; = "POST"


# instance fields
.field public authorization:Ljava/lang/String;

.field public connectionTimeOut:I

.field public method:Ljava/lang/String;

.field public property:Ljava/util/Map;
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

.field public proxyHost:Ljava/lang/String;

.field public proxyPort:I

.field public readTimeOut:I

.field public useCache:Z

.field public useProxy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x2710

    .line 184
    new-instance v0, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;

    invoke-direct {v0}, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;-><init>()V

    .line 188
    sput-object v0, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->DEFAULT:Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;

    iput v1, v0, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->connectionTimeOut:I

    .line 189
    sget-object v0, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->DEFAULT:Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;

    iput v1, v0, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->readTimeOut:I

    .line 190
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x1388

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->useProxy:Z

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->useCache:Z

    .line 197
    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->connectionTimeOut:I

    .line 198
    iput v1, p0, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->readTimeOut:I

    .line 199
    const-string v0, "GET"

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/util/HttpUrlUtil$Config;->method:Ljava/lang/String;

    .line 179
    return-void
.end method
