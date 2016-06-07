.class public Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$UrlConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static BATCHTRACKLIST:Ljava/lang/String;

.field public static SEARCHTRACKLIST:Ljava/lang/String;

.field public static TRACKHOTLIST:Ljava/lang/String;

.field public static TRACKLIST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 339
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/albums/browse"

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$UrlConstants;->TRACKLIST:Ljava/lang/String;

    .line 341
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/tracks/hot"

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$UrlConstants;->TRACKHOTLIST:Ljava/lang/String;

    .line 343
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/search/tracks"

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$UrlConstants;->SEARCHTRACKLIST:Ljava/lang/String;

    .line 345
    const-string v0, "http://api.ximalaya.com/openapi-gateway-app/tracks/get_batch"

    sput-object v0, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest$UrlConstants;->BATCHTRACKLIST:Ljava/lang/String;

    .line 346
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
