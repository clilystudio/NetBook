.class public Lcom/maxthon/main/MgeProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static KEY_HAS_SDK:Ljava/lang/String;

.field public static KEY_LAST_RESTARTUP_TIME:Ljava/lang/String;

.field public static KEY_SDK_JVERSION:Ljava/lang/String;

.field private static mProperties:Lcom/maxthon/main/MgeProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "jv"

    sput-object v0, Lcom/maxthon/main/MgeProperties;->KEY_SDK_JVERSION:Ljava/lang/String;

    .line 11
    const-string v0, "hasSdk"

    sput-object v0, Lcom/maxthon/main/MgeProperties;->KEY_HAS_SDK:Ljava/lang/String;

    .line 12
    const-string v0, "lastRestartupTime"

    sput-object v0, Lcom/maxthon/main/MgeProperties;->KEY_LAST_RESTARTUP_TIME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getInstance()Lcom/maxthon/main/MgeProperties;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/maxthon/main/MgeProperties;->mProperties:Lcom/maxthon/main/MgeProperties;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/maxthon/main/MgeProperties;

    invoke-direct {v0}, Lcom/maxthon/main/MgeProperties;-><init>()V

    sput-object v0, Lcom/maxthon/main/MgeProperties;->mProperties:Lcom/maxthon/main/MgeProperties;

    .line 22
    :cond_0
    sget-object v0, Lcom/maxthon/main/MgeProperties;->mProperties:Lcom/maxthon/main/MgeProperties;

    return-object v0
.end method

.method public static getMgeSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
