.class public Lcom/maxthon/main/MgePreDownload;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/maxthon/main/UICallback;


# instance fields
.field private isExistAssetsJar:Z

.field private isRequestDependenceLib:Z

.field private mClassLoader:Ljava/lang/ClassLoader;

.field private mClazz:Ljava/lang/Class;

.field private mContext:Landroid/content/Context;

.field private mFormatMessage:Ljava/lang/String;

.field private mHasSdk:Z

.field private mMesageTv:Landroid/widget/TextView;

.field private mObject:Ljava/lang/Object;

.field private mRetryTimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/maxthon/main/MgePreDownload;->isExistAssetsJar:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/maxthon/main/MgePreDownload;->mContext:Landroid/content/Context;

    .line 43
    iput-object p1, p0, Lcom/maxthon/main/MgePreDownload;->mContext:Landroid/content/Context;

    .line 44
    iput-boolean p2, p0, Lcom/maxthon/main/MgePreDownload;->isRequestDependenceLib:Z

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Lcom/maxthon/main/MgePreDownload;->mRetryTimes:I

    .line 47
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/maxthon/main/MgePreDownload;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getTargetClassName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    const-string v1, "com.maxthon.mge.MgeApplication"

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/maxthon/main/MgePreDownload;->mClassLoader:Ljava/lang/ClassLoader;

    const-string v2, "com.maxthon.global.MgeConstant"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 57
    const-string v2, "TARGET_MGEAPPLICATION"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 59
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 60
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public isRequestDependence()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/maxthon/main/MgePreDownload;->isRequestDependenceLib:Z

    return v0
.end method

.method public onFailure(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    iget v0, p0, Lcom/maxthon/main/MgePreDownload;->mRetryTimes:I

    if-lez v0, :cond_1

    .line 86
    iget v0, p0, Lcom/maxthon/main/MgePreDownload;->mRetryTimes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/maxthon/main/MgePreDownload;->mRetryTimes:I

    .line 87
    new-instance v0, Lcom/maxthon/main/SelfUpgradeTask;

    invoke-direct {v0, p0}, Lcom/maxthon/main/SelfUpgradeTask;-><init>(Lcom/maxthon/main/UICallback;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/maxthon/main/SelfUpgradeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-boolean v0, p0, Lcom/maxthon/main/MgePreDownload;->mHasSdk:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/maxthon/main/MgePreDownload;->mContext:Landroid/content/Context;

    const-string v1, "string"

    const-string v2, "init_failure_message"

    invoke-static {v0, v1, v2}, Lcom/maxthon/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/maxthon/main/MgePreDownload;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onProgressUpdate(I)V
    .locals 3

    .prologue
    .line 103
    const-string v0, "__e7965c__"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MgePreDownload::onProgressUpdate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/maxthon/main/MgePreDownload;->mHasSdk:Z

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/maxthon/main/MgePreDownload;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/maxthon/main/MgeProperties;->getMgeSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/maxthon/main/MgeProperties;->KEY_HAS_SDK:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 81
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/maxthon/main/SelfUpgradeTask;

    invoke-direct {v0, p0}, Lcom/maxthon/main/SelfUpgradeTask;-><init>(Lcom/maxthon/main/UICallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/maxthon/main/SelfUpgradeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method
