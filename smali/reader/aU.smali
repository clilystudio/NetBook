.class final Lcom/ushaqi/zhuishushenqi/reader/aU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/cn;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    .line 516
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setReadMode(I)V

    .line 517
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 518
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 520
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 552
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/iflytek/cloud/SpeechSynthesizer;

    move-result-object v0

    const-string v1, "speed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 553
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const-string v1, "speech_speed"

    invoke-static {v0, v1, p1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 554
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 535
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/iflytek/cloud/SpeechSynthesizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->stopSpeaking()V

    .line 536
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    .line 537
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setReadMode(I)V

    .line 539
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 540
    if-eqz p1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->f(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 542
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    .line 543
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    .line 544
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I

    .line 545
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 548
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/iflytek/cloud/SpeechSynthesizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->pauseSpeaking()V

    .line 525
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z

    .line 526
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/iflytek/cloud/SpeechSynthesizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->resumeSpeaking()V

    .line 531
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/aU;->a:Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e()V

    .line 559
    return-void
.end method
