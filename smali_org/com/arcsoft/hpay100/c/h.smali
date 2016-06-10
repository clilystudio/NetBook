.class public final Lcom/arcsoft/hpay100/c/h;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    sput v0, Lcom/arcsoft/hpay100/c/h;->a:I

    sput v2, Lcom/arcsoft/hpay100/c/h;->b:I

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.tencent.qqpimsecure"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.qihoo360.mobilesafe_mtk6573"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.lbe.security:service"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.qihoo360.mobilesafe:GuardService"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.mobileann.MobileAnn"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.ijinshan.duba:DefendService"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.lbe.security.miui"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.qihoo360.mobilesafe_lenovo"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.qihoo.antivirus:server"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.lenovo.safecenter"

    aput-object v2, v0, v1

    sput-object v0, Lcom/arcsoft/hpay100/c/h;->c:[Ljava/lang/String;

    return-void
.end method

.method public static a()I
    .locals 8

    const/4 v7, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/arcsoft/hpay100/c/h;->a:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    sget v2, Lcom/arcsoft/hpay100/c/h;->a:I

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    new-array v3, v7, [Ljava/lang/String;

    const-string v2, "/system/bin/"

    aput-object v2, v3, v1

    const-string v2, "/system/xbin/"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/sbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/sbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/vendor/bin/"

    aput-object v4, v3, v2

    move v2, v1

    :goto_1
    if-lt v2, v7, :cond_2

    :goto_2
    sput v1, Lcom/arcsoft/hpay100/c/h;->a:I

    move v0, v1

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v3, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "su"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    sput v2, Lcom/arcsoft/hpay100/c/h;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method static synthetic a([Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/arcsoft/hpay100/c/h;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/arcsoft/hpay100/c/h;->b:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/arcsoft/hpay100/c/i;

    invoke-direct {v1, p0}, Lcom/arcsoft/hpay100/c/i;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v1, "thread_setsaftsoft"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/arcsoft/hpay100/c/h;->b:I

    return v0
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/arcsoft/hpay100/c/h;->c:[Ljava/lang/String;

    return-object v0
.end method

.method private static d()Ljava/util/List;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget-object v2, Lcom/arcsoft/hpay100/c/h;->c:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    :goto_1
    return-object v1

    :cond_0
    sget-object v2, Lcom/arcsoft/hpay100/c/h;->c:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
