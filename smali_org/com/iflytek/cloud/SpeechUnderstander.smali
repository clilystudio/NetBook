.class public Lcom/iflytek/cloud/SpeechUnderstander;
.super Lcom/iflytek/cloud/a/a/a;


# static fields
.field protected static a:Lcom/iflytek/cloud/SpeechUnderstander;


# instance fields
.field private c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

.field private d:Lcom/iflytek/cloud/SpeechUnderstander$a;

.field private e:Lcom/iflytek/cloud/InitListener;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/a/a/a;-><init>()V

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/SpeechUnderstander$a;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/InitListener;

    new-instance v0, Lcom/iflytek/cloud/j;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/j;-><init>(Lcom/iflytek/cloud/SpeechUnderstander;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->f:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/InitListener;

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/a/a/a$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/a/a$a;->a:Lcom/iflytek/cloud/a/a/a$a;

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/iflytek/speech/SpeechUnderstanderAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->f:Landroid/os/Handler;

    invoke-static {v0, v3, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/iflytek/cloud/SpeechUnderstander;)Lcom/iflytek/cloud/InitListener;
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/InitListener;

    return-object v0
.end method

.method public static declared-synchronized createUnderstander(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechUnderstander;
    .locals 2

    const-class v1, Lcom/iflytek/cloud/SpeechUnderstander;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/cloud/SpeechUnderstander;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/SpeechUnderstander;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    :cond_0
    sget-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUnderstander()Lcom/iflytek/cloud/SpeechUnderstander;
    .locals 1

    sget-object v0, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/a/a/a$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/a/a$a;->a:Lcom/iflytek/cloud/a/a/a$a;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    :cond_0
    new-instance v0, Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/InitListener;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechUnderstanderAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->e:Lcom/iflytek/cloud/InitListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->a(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/speech/SpeechUnderstanderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->cancel(Lcom/iflytek/speech/SpeechUnderstanderListener;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "SpeechUnderstander cancel failed, is not running"

    invoke-static {v0}, Lcom/iflytek/cloud/a/b/a/a;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public destroy()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->destory()Z

    iput-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    :cond_0
    sput-object v1, Lcom/iflytek/cloud/SpeechUnderstander;->a:Lcom/iflytek/cloud/SpeechUnderstander;

    const/4 v0, 0x1

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/a/a;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isUnderstanding()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/a/a/a;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startUnderstanding(Lcom/iflytek/cloud/SpeechUnderstanderListener;)I
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-nez v0, :cond_0

    const/16 v0, 0x5209

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    const-string v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    const-string v1, "params"

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechUnderstander;->b:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/SpeechUnderstander$a;-><init>(Lcom/iflytek/cloud/SpeechUnderstander;Lcom/iflytek/cloud/SpeechUnderstanderListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/SpeechUnderstander$a;

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->a(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/speech/SpeechUnderstanderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->startUnderstanding(Lcom/iflytek/speech/SpeechUnderstanderListener;)I

    move-result v0

    goto :goto_0
.end method

.method public stopUnderstanding()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechUnderstander;->d:Lcom/iflytek/cloud/SpeechUnderstander$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechUnderstander$a;->a(Lcom/iflytek/cloud/SpeechUnderstander$a;)Lcom/iflytek/speech/SpeechUnderstanderListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->stopUnderstanding(Lcom/iflytek/speech/SpeechUnderstanderListener;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "SpeechUnderstander stopUnderstanding, is not understanding"

    invoke-static {v0}, Lcom/iflytek/cloud/a/b/a/a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public writeAudio([BII)I
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->isUnderstanding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechUnderstander;->c:Lcom/iflytek/speech/SpeechUnderstanderAidl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/speech/SpeechUnderstanderAidl;->writeAudio([BII)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "SpeechUnderstander writeAudio, is not understanding"

    invoke-static {v0}, Lcom/iflytek/cloud/a/b/a/a;->a(Ljava/lang/String;)V

    const/16 v0, 0x520c

    goto :goto_0
.end method
