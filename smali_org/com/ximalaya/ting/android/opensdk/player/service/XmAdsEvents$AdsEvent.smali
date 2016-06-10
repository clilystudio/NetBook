.class public Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsEvents$AdsEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public parentSpanId:Ljava/lang/String;

.field public seqId:I

.field public spanId:Ljava/lang/String;

.field public traceId:Ljava/lang/String;

.field public ts:J

.field public type:Ljava/lang/String;

.field public viewId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, "AD"

    iput-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsEvents$AdsEvent;->type:Ljava/lang/String;

    .line 54
    return-void
.end method
