.class public Lcom/qq/e/comm/managers/status/SDKStatus;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getSDKVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "4.8"

    return-object v0
.end method

.method public static final getSDKVersionCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
