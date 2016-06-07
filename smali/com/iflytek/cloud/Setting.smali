.class public Lcom/iflytek/cloud/Setting;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/iflytek/cloud/Setting$LOG_LEVEL;

.field private static c:Ljava/lang/String;

.field private static d:Z

.field private static e:Z

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/msc/msc.log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/cloud/Setting;->a:Ljava/lang/String;

    sget-object v0, Lcom/iflytek/cloud/Setting$LOG_LEVEL;->none:Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    sput-object v0, Lcom/iflytek/cloud/Setting;->b:Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    sget-object v0, Lcom/iflytek/cloud/Setting;->a:Ljava/lang/String;

    sput-object v0, Lcom/iflytek/cloud/Setting;->c:Ljava/lang/String;

    sput-boolean v2, Lcom/iflytek/cloud/Setting;->d:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/iflytek/cloud/Setting;->e:Z

    sput-boolean v2, Lcom/iflytek/cloud/Setting;->f:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocationEnable()Z
    .locals 1

    sget-boolean v0, Lcom/iflytek/cloud/Setting;->f:Z

    return v0
.end method

.method public static getLogLevel()Lcom/iflytek/cloud/Setting$LOG_LEVEL;
    .locals 1

    sget-object v0, Lcom/iflytek/cloud/Setting;->b:Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    return-object v0
.end method

.method public static getLogPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/iflytek/cloud/Setting;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getSaveTestLog()Z
    .locals 1

    sget-boolean v0, Lcom/iflytek/cloud/Setting;->e:Z

    return v0
.end method

.method public static getShowLog()Z
    .locals 1

    sget-boolean v0, Lcom/iflytek/cloud/Setting;->d:Z

    return v0
.end method

.method public static setLocationEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/iflytek/cloud/Setting;->f:Z

    return-void
.end method

.method public static setLogLevel(Lcom/iflytek/cloud/Setting$LOG_LEVEL;)V
    .locals 0

    sput-object p0, Lcom/iflytek/cloud/Setting;->b:Lcom/iflytek/cloud/Setting$LOG_LEVEL;

    return-void
.end method

.method public static setLogPath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/iflytek/cloud/Setting;->c:Ljava/lang/String;

    return-void
.end method

.method public static setSaveTestLog(Z)V
    .locals 0

    sput-boolean p0, Lcom/iflytek/cloud/Setting;->e:Z

    return-void
.end method

.method public static setShowLog(Z)V
    .locals 0

    sput-boolean p0, Lcom/iflytek/cloud/Setting;->d:Z

    return-void
.end method
