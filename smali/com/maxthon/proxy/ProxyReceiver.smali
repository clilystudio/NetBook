.class public abstract Lcom/maxthon/proxy/ProxyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field protected mClassLoader:Ljava/lang/ClassLoader;

.field protected mClazz:Ljava/lang/Class;

.field protected mObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getTargetClassName()Ljava/lang/String;
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 22
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/maxthon/dex/DexUtils;->init(Landroid/content/Context;)V

    .line 24
    :try_start_0
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v1

    .line 26
    const-string v2, "plugin_main"

    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maxthon/dex/DexUtils;->getJversion()Ljava/lang/String;

    move-result-object v3

    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/maxthon/dex/DexUtils;->getJarFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/maxthon/dex/DexUtils;->getDexClassLoader(Ljava/io/File;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/maxthon/proxy/ProxyReceiver;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Lcom/maxthon/main/RestartException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :try_start_1
    iget-object v0, p0, Lcom/maxthon/proxy/ProxyReceiver;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/maxthon/proxy/ProxyReceiver;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0}, Lcom/maxthon/proxy/ProxyReceiver;->getTargetClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/maxthon/proxy/ProxyReceiver;->mClazz:Ljava/lang/Class;

    .line 36
    iget-object v0, p0, Lcom/maxthon/proxy/ProxyReceiver;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/maxthon/proxy/ProxyReceiver;->mObj:Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lcom/maxthon/proxy/ProxyReceiver;->mClazz:Ljava/lang/Class;

    const-string v1, "bindReceiver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lcom/maxthon/proxy/ProxyReceiver;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/maxthon/proxy/ProxyReceiver;->mObj:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 45
    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/maxthon/proxy/ProxyReceiver;->mClazz:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/maxthon/proxy/ProxyReceiver;->mObj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcom/maxthon/proxy/ProxyReceiver;->mClazz:Ljava/lang/Class;

    const-string v1, "onReceive"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/maxthon/proxy/ProxyReceiver;->mObj:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 52
    :cond_1
    :goto_1
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Lcom/maxthon/main/RestartException;->printStackTrace()V

    .line 29
    const-string v0, "test_restart"

    const-string v1, "5"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const-class v0, Lcom/maxthon/main/MgeApplication;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maxthon/main/MgeApplication;

    invoke-virtual {v0, p1}, Lcom/maxthon/main/MgeApplication;->restartApp(Landroid/content/Context;)V

    goto :goto_1

    .line 40
    :catch_1
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 49
    :catch_2
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
