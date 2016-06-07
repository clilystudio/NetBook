.class public Lcom/ushaqi/zhuishushenqi/api/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/ushaqi/zhuishushenqi/api/f;


# instance fields
.field private a:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/f;->b:Lcom/ushaqi/zhuishushenqi/api/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/f;->a:Ljava/lang/String;

    .line 30
    const-string v0, "Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3 Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 SogouMSE,SogouMobileBrowser/3.6.2"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/f;->c:Ljava/lang/String;

    .line 31
    const-string v0, "Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/7.0 Mobile/11D257 Safari/9537.53"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/f;->d:Ljava/lang/String;

    .line 32
    const-string v0, "Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; MI 3 Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/9.9.7.500 U3/0.8.0 Mobile Safari/534.30"

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/f;->e:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static a()Lcom/ushaqi/zhuishushenqi/api/f;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/ushaqi/zhuishushenqi/api/f;->b:Lcom/ushaqi/zhuishushenqi/api/f;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/ushaqi/zhuishushenqi/api/f;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/api/f;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/f;->b:Lcom/ushaqi/zhuishushenqi/api/f;

    .line 41
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/api/f;->b:Lcom/ushaqi/zhuishushenqi/api/f;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 106
    const-string p0, "not-found"

    .line 114
    :goto_0
    :pswitch_0
    return-object p0

    .line 108
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 112
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    packed-switch p1, :pswitch_data_0

    .line 134
    :goto_0
    :pswitch_0
    return-object v0

    .line 122
    :pswitch_1
    const-string v0, "Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/6.0 MQQBrowser/4.3 Mobile/11D257 Safari/7534.48.3"

    goto :goto_0

    .line 125
    :pswitch_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/f;->c:Ljava/lang/String;

    goto :goto_0

    .line 128
    :pswitch_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/f;->d:Ljava/lang/String;

    goto :goto_0

    .line 131
    :pswitch_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/f;->e:Ljava/lang/String;

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 45
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/f;->a:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 46
    const-class v5, Lcom/ushaqi/zhuishushenqi/api/f;

    monitor-enter v5

    .line 47
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 48
    const/4 v0, 0x0

    .line 50
    :try_start_1
    invoke-virtual {v6}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    move-object v3, v0

    .line 54
    :goto_0
    :try_start_2
    const-string v0, "not-found"

    .line 55
    if-eqz v3, :cond_3

    .line 56
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v4, v0

    .line 58
    :goto_1
    const-string v3, "not-found"

    .line 59
    const-string v0, "phone"

    invoke-virtual {v6, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    :try_start_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 65
    :goto_2
    :try_start_4
    const-string v3, "%s/%s (Android %s; %s %s / %s %s; %s)"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "ZhuiShuShenQi"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v4, 0x2

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v8, v7, v4

    const/4 v4, 0x3

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 69
    invoke-static {v8}, Lcom/ushaqi/zhuishushenqi/api/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x4

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 70
    invoke-static {v8}, Lcom/ushaqi/zhuishushenqi/api/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x5

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 71
    invoke-static {v8}, Lcom/ushaqi/zhuishushenqi/api/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x6

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 72
    invoke-static {v8}, Lcom/ushaqi/zhuishushenqi/api/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v4, 0x7

    .line 73
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/api/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v4

    .line 65
    invoke-static {v3, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/f;->a:Ljava/lang/String;

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "preload="

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "locale="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 82
    :try_start_5
    invoke-virtual {v6}, Landroid/app/Application;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.os.SystemProperties"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 83
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "clientidbase="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "ro.com.google.clientidbase"

    aput-object v7, v4, v6

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/api/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/f;->a:Ljava/lang/String;

    .line 92
    :cond_0
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/api/f;->a:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v3

    move-object v3, v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v0, v3

    goto/16 :goto_2

    :cond_2
    move v0, v2

    .line 77
    goto/16 :goto_3

    .line 92
    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    :catch_2
    move-exception v0

    goto :goto_4

    :cond_3
    move-object v4, v0

    goto/16 :goto_1
.end method
