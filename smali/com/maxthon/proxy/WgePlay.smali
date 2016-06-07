.class public Lcom/maxthon/proxy/WgePlay;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getTargetClassName(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    const-string v1, "com.maxthon.mge.WgePlay"

    .line 117
    :try_start_0
    const-string v0, "com.maxthon.global.MgeConstant"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 118
    const-string v2, "TARGET_WGEPLAY"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 120
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 121
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-object v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static getTopAppPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 132
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 133
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 23
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/maxthon/dex/DexUtils;->init(Landroid/content/Context;)V

    .line 26
    :try_start_0
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v0

    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v1

    const-string v2, "plugin_main"

    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maxthon/dex/DexUtils;->getJversion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/maxthon/dex/DexUtils;->getJarFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maxthon/dex/DexUtils;->getDexClassLoader(Ljava/io/File;)Ldalvik/system/DexClassLoader;
    :try_end_0
    .catch Lcom/maxthon/main/RestartException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    :try_start_1
    const-string v1, "test_pn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "1 : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {v0}, Lcom/maxthon/proxy/WgePlay;->getTargetClassName(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 37
    const-string v1, "init"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 38
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Lcom/maxthon/main/RestartException;->printStackTrace()V

    .line 29
    const-string v0, "test_restart"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 5

    .prologue
    .line 68
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/maxthon/dex/DexUtils;->init(Landroid/content/Context;)V

    .line 71
    :try_start_0
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v0

    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v1

    const-string v2, "plugin_main"

    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maxthon/dex/DexUtils;->getJversion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/maxthon/dex/DexUtils;->getJarFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maxthon/dex/DexUtils;->getDexClassLoader(Ljava/io/File;)Ldalvik/system/DexClassLoader;
    :try_end_0
    .catch Lcom/maxthon/main/RestartException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    :try_start_1
    invoke-static {v0}, Lcom/maxthon/proxy/WgePlay;->getTargetClassName(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 81
    const-string v1, "pay"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 82
    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    const/4 v3, 0x5

    aput-object p5, v2, v3

    const/4 v3, 0x6

    aput-object p6, v2, v3

    const/4 v3, 0x7

    aput-object p7, v2, v3

    const/16 v3, 0x8

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x9

    aput-object p9, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Lcom/maxthon/main/RestartException;->printStackTrace()V

    .line 74
    const-string v0, "test_restart"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-class v0, Lcom/maxthon/main/MgeApplication;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maxthon/main/MgeApplication;

    invoke-virtual {v0, p0}, Lcom/maxthon/main/MgeApplication;->restartApp(Landroid/content/Context;)V

    goto :goto_0

    .line 84
    :catch_1
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startGameCenter(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/maxthon/proxy/WgePlay;->startGameCenter(Landroid/content/Context;Z)V

    .line 91
    return-void
.end method

.method public static startGameCenter(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/maxthon/proxy/WgePlay;->startGameCenter(Landroid/content/Context;ZI)V

    .line 95
    return-void
.end method

.method public static startGameCenter(Landroid/content/Context;Z)V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/maxthon/main/InitActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 100
    const-string v1, "dependence"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public static startGameCenter(Landroid/content/Context;ZI)V
    .locals 3

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/maxthon/main/InitActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    const-string v1, "dependence"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    if-lez p2, :cond_0

    .line 109
    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 112
    return-void
.end method
