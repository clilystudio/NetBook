.class public Lcom/iflytek/cloud/SpeechSynthesizer;
.super Lcom/iflytek/cloud/a/a/a;


# static fields
.field private static c:Lcom/iflytek/cloud/SpeechSynthesizer;


# instance fields
.field a:Lcom/iflytek/cloud/InitListener;

.field private d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

.field private e:Lcom/iflytek/cloud/SpeechSynthesizer$a;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/SpeechSynthesizer;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/iflytek/cloud/a/a/a;-><init>()V

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/InitListener;

    new-instance v0, Lcom/iflytek/cloud/g;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/g;-><init>(Lcom/iflytek/cloud/SpeechSynthesizer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Landroid/os/Handler;

    iput-object p2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/InitListener;

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/a/a/a$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/a/a$a;->a:Lcom/iflytek/cloud/a/a/a$a;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Landroid/os/Handler;

    invoke-static {v0, v3, v3, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public static createSynthesizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechSynthesizer;
    .locals 1

    sget-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-direct {v0, p0, p1}, Lcom/iflytek/cloud/SpeechSynthesizer;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/SpeechSynthesizer;

    :cond_0
    sget-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/SpeechSynthesizer;

    return-object v0
.end method

.method public static getSynthesizer()Lcom/iflytek/cloud/SpeechSynthesizer;
    .locals 1

    sget-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/SpeechSynthesizer;

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

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    :cond_0
    new-instance v0, Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/InitListener;

    invoke-direct {v0, v1, v2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/InitListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->destory()Z

    iput-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    goto :goto_0
.end method

.method public destroy()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->destory()Z

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/cloud/SpeechSynthesizer;

    const/4 v0, 0x1

    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "local_speakers"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tts_play_state"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "tts"

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/SpeechSynthesizer;->a(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/a/a/a$a;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/a/a$a;->b:Lcom/iflytek/cloud/a/a/a$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/a/a;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isSpeaking()Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pauseSpeaking()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->pauseSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    :cond_0
    return-void
.end method

.method public resumeSpeaking()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->resumeSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    :cond_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/a/a/a;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startSpeaking(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-nez v0, :cond_0

    const/16 v0, 0x5209

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    const-string v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    const-string v1, "params"

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/b/a;

    const-string v1, "next_text"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->c(Ljava/lang/String;)Ljava/lang/Boolean;

    new-instance v0, Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-direct {v0, p0, p2}, Lcom/iflytek/cloud/SpeechSynthesizer$a;-><init>(Lcom/iflytek/cloud/SpeechSynthesizer;Lcom/iflytek/cloud/SynthesizerListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->startSpeaking(Ljava/lang/String;Lcom/iflytek/speech/SynthesizerListener;)I

    move-result v0

    goto :goto_0
.end method

.method public stopSpeaking()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->stopSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    :cond_0
    return-void
.end method

.method public synthesizeToUri(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I
    .locals 3

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-nez v0, :cond_0

    const/16 v0, 0x5209

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    const-string v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    const-string v1, "params"

    iget-object v2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    const-string v1, "tts_audio_uri"

    invoke-virtual {v0, v1, p2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->setParameter(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-direct {v0, p0, p3}, Lcom/iflytek/cloud/SpeechSynthesizer$a;-><init>(Lcom/iflytek/cloud/SpeechSynthesizer;Lcom/iflytek/cloud/SynthesizerListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {v1}, Lcom/iflytek/cloud/SpeechSynthesizer$a;->c(Lcom/iflytek/cloud/SpeechSynthesizer$a;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->synthesizeToUrl(Ljava/lang/String;Lcom/iflytek/speech/SynthesizerListener;)I

    move-result v0

    goto :goto_0
.end method
