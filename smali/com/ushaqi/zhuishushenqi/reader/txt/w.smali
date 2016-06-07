.class final Lcom/ushaqi/zhuishushenqi/reader/txt/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/cn;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)I

    .line 301
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setReadMode(I)V

    .line 302
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 303
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 305
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->l(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/iflytek/cloud/SpeechSynthesizer;

    move-result-object v0

    const-string v1, "speed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 338
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    const-string v1, "speech_speed"

    invoke-static {v0, v1, p1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 339
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 320
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->l(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/iflytek/cloud/SpeechSynthesizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->stopSpeaking()V

    .line 321
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)I

    .line 322
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setReadMode(I)V

    .line 324
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->m(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 325
    if-eqz p1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 327
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)I

    .line 328
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->c(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)I

    .line 329
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)I

    .line 330
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->n(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 333
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->l(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/iflytek/cloud/SpeechSynthesizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->pauseSpeaking()V

    .line 310
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Z)Z

    .line 311
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->l(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/iflytek/cloud/SpeechSynthesizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->resumeSpeaking()V

    .line 316
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/w;->a:Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e()V

    .line 344
    return-void
.end method
