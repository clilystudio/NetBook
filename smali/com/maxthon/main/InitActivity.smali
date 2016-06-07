.class public Lcom/maxthon/main/InitActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/maxthon/main/UICallback;


# instance fields
.field private isExistAssetsJar:Z

.field private isRequestDependenceLib:Z

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mClazz:Ljava/lang/Class;

.field private mFormatMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHasSdk:Z

.field private mMesageTv:Landroid/widget/TextView;

.field private mObject:Ljava/lang/Object;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRetryTimes:I

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maxthon/main/InitActivity;->isExistAssetsJar:Z

    .line 32
    return-void
.end method

.method private prepareMgeApplication()V
    .locals 5

    .prologue
    .line 106
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/maxthon/dex/DexUtils;->init(Landroid/content/Context;)V

    .line 108
    :try_start_0
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v0

    .line 109
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v1

    const-string v2, "plugin_main"

    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maxthon/dex/DexUtils;->getJversion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/maxthon/dex/DexUtils;->getJarFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/maxthon/dex/DexUtils;->getDexClassLoader(Ljava/io/File;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/maxthon/main/InitActivity;->mClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Lcom/maxthon/main/RestartException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->getTargetClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/maxthon/main/InitActivity;->mClazz:Ljava/lang/Class;

    .line 118
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/maxthon/main/InitActivity;->mObject:Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mClazz:Ljava/lang/Class;

    const-string v1, "bindComponentContext"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/maxthon/main/InitActivity;->mObject:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mClazz:Ljava/lang/Class;

    const-string v1, "attachBaseContext"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/maxthon/main/InitActivity;->mObject:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mClazz:Ljava/lang/Class;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/maxthon/main/InitActivity;->mObject:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/maxthon/main/InitActivity;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/maxthon/proxy/MgeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/maxthon/main/InitActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 136
    :goto_1
    invoke-virtual {p0, v0}, Lcom/maxthon/main/InitActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    :cond_0
    :goto_2
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    invoke-virtual {v0}, Lcom/maxthon/main/RestartException;->printStackTrace()V

    .line 112
    const-string v0, "test_restart"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-class v0, Lcom/maxthon/main/MgeApplication;

    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/maxthon/main/MgeApplication;

    invoke-virtual {v0, p0}, Lcom/maxthon/main/MgeApplication;->restartApp(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 134
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/maxthon/proxy/MgeWebViewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 138
    :catch_1
    move-exception v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 145
    return-object p0
.end method

.method public getTargetClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    const-string v1, "com.maxthon.mge.MgeApplication"

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v2, "com.maxthon.global.MgeConstant"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    const-string v2, "TARGET_MGEAPPLICATION"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 94
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 95
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 96
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public isRequestDependence()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/maxthon/main/InitActivity;->isRequestDependenceLib:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string v0, "test_jar"

    const-string v1, "init activity onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v0, "layout"

    const-string v1, "init_layout"

    invoke-static {p0, v0, v1}, Lcom/maxthon/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 52
    invoke-virtual {p0, v0}, Lcom/maxthon/main/InitActivity;->setContentView(I)V

    .line 53
    const-string v0, "id"

    const-string v1, "message_tv"

    invoke-static {p0, v0, v1}, Lcom/maxthon/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 54
    invoke-virtual {p0, v0}, Lcom/maxthon/main/InitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/maxthon/main/InitActivity;->mMesageTv:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/maxthon/mge/R$string;->app_init_message:I

    invoke-virtual {p0, v0}, Lcom/maxthon/main/InitActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/maxthon/main/InitActivity;->mFormatMessage:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mFormatMessage:Ljava/lang/String;

    const-string v1, "%n"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/maxthon/main/InitActivity;->mMesageTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const-string v0, "id"

    const-string v1, "progressBar"

    invoke-static {p0, v0, v1}, Lcom/maxthon/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/maxthon/main/InitActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/maxthon/main/InitActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 61
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v1, Lcom/maxthon/main/SmoothProgressDrawable$Builder;

    invoke-direct {v1, p0}, Lcom/maxthon/main/SmoothProgressDrawable$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->interpolator(Landroid/view/animation/Interpolator;)Lcom/maxthon/main/SmoothProgressDrawable$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/maxthon/main/SmoothProgressDrawable$Builder;->build()Lcom/maxthon/main/SmoothProgressDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 63
    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    if-eqz v0, :cond_0

    .line 65
    const-string v1, "dependence"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/maxthon/main/InitActivity;->isRequestDependenceLib:Z

    .line 66
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/maxthon/main/InitActivity;->mUri:Landroid/net/Uri;

    .line 69
    :cond_0
    invoke-static {p0}, Lcom/maxthon/main/MgeProperties;->getMgeSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/maxthon/main/MgeProperties;->KEY_HAS_SDK:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/maxthon/main/InitActivity;->mHasSdk:Z

    .line 70
    iget-boolean v0, p0, Lcom/maxthon/main/InitActivity;->mHasSdk:Z

    if-eqz v0, :cond_4

    .line 71
    invoke-direct {p0}, Lcom/maxthon/main/InitActivity;->prepareMgeApplication()V

    .line 80
    :cond_1
    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/maxthon/main/InitActivity;->mRetryTimes:I

    .line 82
    new-instance v0, Lcom/maxthon/main/SelfUpgradeTask;

    invoke-direct {v0, p0}, Lcom/maxthon/main/SelfUpgradeTask;-><init>(Lcom/maxthon/main/UICallback;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/maxthon/main/SelfUpgradeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 84
    iget-boolean v0, p0, Lcom/maxthon/main/InitActivity;->mHasSdk:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/maxthon/main/InitActivity;->isExistAssetsJar:Z

    if-eqz v0, :cond_3

    .line 85
    :cond_2
    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->finish()V

    .line 87
    :cond_3
    return-void

    .line 73
    :cond_4
    const-string v0, "jar"

    invoke-static {p0, v0}, Lcom/maxthon/utils/FileUtil;->existAssetsFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/maxthon/main/InitActivity;->isExistAssetsJar:Z

    .line 74
    iget-boolean v0, p0, Lcom/maxthon/main/InitActivity;->isExistAssetsJar:Z

    if-eqz v0, :cond_1

    .line 75
    const-string v0, "test_jar"

    const-string v1, "\u627e\u5230assets\u76ee\u5f55\u4e0b\u7684jar\uff0c\u5f00\u59cb\u52a0\u8f7d"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0}, Lcom/maxthon/main/InitActivity;->prepareMgeApplication()V

    goto :goto_0
.end method

.method public onFailure(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 198
    iget v0, p0, Lcom/maxthon/main/InitActivity;->mRetryTimes:I

    if-lez v0, :cond_1

    .line 199
    iget v0, p0, Lcom/maxthon/main/InitActivity;->mRetryTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/maxthon/main/InitActivity;->mRetryTimes:I

    .line 200
    new-instance v0, Lcom/maxthon/main/SelfUpgradeTask;

    invoke-direct {v0, p0}, Lcom/maxthon/main/SelfUpgradeTask;-><init>(Lcom/maxthon/main/UICallback;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/maxthon/main/SelfUpgradeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-boolean v0, p0, Lcom/maxthon/main/InitActivity;->mHasSdk:Z

    if-nez v0, :cond_0

    .line 203
    const-string v0, "string"

    const-string v1, "init_failure_message"

    invoke-static {p0, v0, v1}, Lcom/maxthon/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 204
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onProgressUpdate(I)V
    .locals 4

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/maxthon/main/InitActivity;->mHasSdk:Z

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mFormatMessage:Ljava/lang/String;

    const-string v1, "%n"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/maxthon/main/InitActivity;->mMesageTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 158
    iget-boolean v0, p0, Lcom/maxthon/main/InitActivity;->mHasSdk:Z

    if-nez v0, :cond_0

    .line 159
    invoke-static {p0}, Lcom/maxthon/main/MgeProperties;->getMgeSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 160
    sget-object v1, Lcom/maxthon/main/MgeProperties;->KEY_HAS_SDK:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 161
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
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

    invoke-virtual {v0, p0, v1}, Lcom/maxthon/dex/DexUtils;->setClassLoader(Landroid/content/Context;Ljava/io/File;)V

    .line 166
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v0

    .line 167
    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v1

    const-string v2, "plugin_main"

    invoke-static {}, Lcom/maxthon/dex/DexUtils;->getInstance()Lcom/maxthon/dex/DexUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/maxthon/dex/DexUtils;->getJversion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/maxthon/dex/DexUtils;->getJarFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lcom/maxthon/dex/DexUtils;->getDexClassLoader(Ljava/io/File;)Ldalvik/system/DexClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/maxthon/main/InitActivity;->mClassLoader:Ljava/lang/ClassLoader;

    .line 168
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->getTargetClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/maxthon/main/InitActivity;->mClazz:Ljava/lang/Class;

    .line 169
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mClazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/maxthon/main/InitActivity;->mObject:Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mClazz:Ljava/lang/Class;

    const-string v1, "bindComponentContext"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/maxthon/main/InitActivity;->mObject:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mClazz:Ljava/lang/Class;

    const-string v1, "attachBaseContext"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/maxthon/main/InitActivity;->mObject:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lcom/maxthon/main/InitActivity;->mClazz:Ljava/lang/Class;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/maxthon/main/InitActivity;->mObject:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    iget-object v1, p0, Lcom/maxthon/main/InitActivity;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/maxthon/proxy/MgeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 183
    iget-object v1, p0, Lcom/maxthon/main/InitActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 187
    :goto_0
    invoke-virtual {p0, v0}, Lcom/maxthon/main/InitActivity;->startActivity(Landroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->finish()V

    .line 194
    :cond_0
    :goto_1
    return-void

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/maxthon/main/InitActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/maxthon/proxy/MgeWebViewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
