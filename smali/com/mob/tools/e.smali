.class public final Lcom/mob/tools/e;
.super Lcom/mob/tools/log/d;


# direct methods
.method public static a()Lcom/mob/tools/log/d;
    .locals 2

    const-string v0, "MOBTOOLS"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mob/tools/e;->getInstanceForSDK(Ljava/lang/String;Z)Lcom/mob/tools/log/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final getSDKTag()Ljava/lang/String;
    .locals 1

    const-string v0, "MOBTOOLS"

    return-object v0
.end method
