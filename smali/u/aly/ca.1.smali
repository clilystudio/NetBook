.class public final Lu/aly/ca;
.super Lu/aly/a;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 16
    const-string v0, "imei"

    invoke-direct {p0, v0}, Lu/aly/a;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lu/aly/ca;->a:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 4

    .prologue
    .line 22
    iget-object v0, p0, Lu/aly/ca;->a:Landroid/content/Context;

    .line 23
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 29
    const/4 v1, 0x0

    .line 31
    :try_start_0
    iget-object v2, p0, Lu/aly/ca;->a:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Lu/aly/bs;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
