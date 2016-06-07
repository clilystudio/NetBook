.class public Lcom/qq/e/ads/cfg/MultiProcessFlag;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMultiProcess()Z
    .locals 1

    sget-boolean v0, Lcom/qq/e/ads/cfg/MultiProcessFlag;->a:Z

    return v0
.end method

.method public static setMultiProcess(Z)V
    .locals 1

    sget-boolean v0, Lcom/qq/e/ads/cfg/MultiProcessFlag;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/qq/e/ads/cfg/MultiProcessFlag;->b:Z

    sput-boolean p0, Lcom/qq/e/ads/cfg/MultiProcessFlag;->a:Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "MultiProcessFlag has already be setted,reset will not take any effect"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
