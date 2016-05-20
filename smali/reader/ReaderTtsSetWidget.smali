.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/os/Handler;

.field private b:[Landroid/widget/TextView;

.field private c:[Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/SeekBar;

.field private f:Landroid/widget/Button;

.field private g:Lcom/ushaqi/zhuishushenqi/reader/cn;

.field private h:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

.field private i:Ljava/util/Timer;

.field private j:Ljava/util/TimerTask;

.field private k:[I

.field private l:[Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Lcom/iflytek/cloud/SpeechSynthesizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->k:[I

    .line 45
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "5\u5206\u949f"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "15\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "30\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "60\u5206\u949f"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->l:[Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->n:I

    .line 48
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->o:Z

    .line 49
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->p:Z

    .line 241
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cl;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/cl;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a:Landroid/os/Handler;

    .line 55
    return-void

    .line 44
    :array_0
    .array-data 4
        0x12c
        0x384
        0x708
        0xe10
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->k:[I

    .line 45
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "5\u5206\u949f"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "15\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "30\u5206\u949f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "60\u5206\u949f"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->l:[Ljava/lang/String;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->n:I

    .line 48
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->o:Z

    .line 49
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->p:Z

    .line 241
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/cl;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/cl;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a:Landroid/os/Handler;

    .line 59
    return-void

    .line 44
    :array_0
    .array-data 4
        0x12c
        0x384
        0x708
        0xe10
    .end array-data
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->n:I

    return p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)Lcom/ushaqi/zhuishushenqi/reader/cn;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->g:Lcom/ushaqi/zhuishushenqi/reader/cn;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;IZ)V
    .locals 2

    .prologue
    .line 33
    .line 3205
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->j:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 3206
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->j:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 3208
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 3209
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->l:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3210
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const v1, 0x7f0202ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 3212
    :cond_1
    if-eqz p2, :cond_2

    .line 3213
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->n:I

    .line 3214
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->g:Lcom/ushaqi/zhuishushenqi/reader/cn;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/cn;->a(Z)V

    .line 3215
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->g:Lcom/ushaqi/zhuishushenqi/reader/cn;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/cn;->d()V

    .line 3404
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setVisibility(I)V

    .line 3217
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->K(Landroid/content/Context;)V

    .line 33
    :cond_2
    return-void
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;)Z
    .locals 3

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "speech_voice"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->p:Z

    if-eqz v1, :cond_1

    .line 377
    :cond_0
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;->getSelected()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 379
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;)Z
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->n:I

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;I)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 33
    .line 4188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->o:Z

    .line 4189
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->j:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 4190
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->j:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 4192
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->k:[I

    aget v0, v0, p1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->m:I

    .line 4222
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/ck;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ck;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;I)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->j:Ljava/util/TimerTask;

    .line 4194
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->i:Ljava/util/Timer;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->j:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 4195
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->g:Lcom/ushaqi/zhuishushenqi/reader/cn;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/cn;->c()V

    .line 33
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 297
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 298
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->n:I

    if-ne v0, v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const v2, 0x7f0200fd

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 297
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const v2, 0x7f0202ae

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 302
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->l:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 305
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c()V

    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;I)V
    .locals 4

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 33
    .line 4313
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->o:Z

    .line 4314
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->h:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    array-length v2, v2

    if-le v2, v0, :cond_0

    .line 4315
    :goto_0
    if-ge v1, v0, :cond_2

    .line 4316
    if-ne v1, p1, :cond_1

    .line 4317
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->h:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    aget-object v2, v2, v1

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;->setSelected(Ljava/lang/String;)V

    .line 4318
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const v3, 0x7f0200fd

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4315
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4314
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->h:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    array-length v0, v0

    goto :goto_0

    .line 4320
    :cond_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->h:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    aget-object v2, v2, v1

    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;->setSelected(Ljava/lang/String;)V

    .line 4321
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b:[Landroid/widget/TextView;

    aget-object v2, v2, v1

    const v3, 0x7f0202ae

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    .line 4324
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setSpeechVoice(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->o:Z

    return v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->m:I

    return v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)I
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->m:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->m:I

    return v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)[Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->h:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setVisibility(I)V

    .line 397
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c()V

    .line 398
    return-void
.end method

.method public final a(Lcom/iflytek/cloud/SpeechSynthesizer;)V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 62
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->q:Lcom/iflytek/cloud/SpeechSynthesizer;

    .line 63
    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0501ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 64
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0501ac

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 65
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0501ad

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    .line 66
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0501af

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v6

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->l:[Ljava/lang/String;

    .line 67
    new-array v0, v6, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b:[Landroid/widget/TextView;

    .line 68
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b:[Landroid/widget/TextView;

    const v0, 0x7f0c044a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v1

    .line 69
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b:[Landroid/widget/TextView;

    const v0, 0x7f0c044b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v4

    .line 70
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b:[Landroid/widget/TextView;

    const v0, 0x7f0c044c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v5

    .line 71
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setVoiceSourceView()V

    .line 73
    new-array v0, v7, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    .line 74
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    const v0, 0x7f0c044e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v1

    .line 75
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    const v0, 0x7f0c044f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v4

    .line 76
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    const v0, 0x7f0c0450

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v5

    .line 77
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    const v0, 0x7f0c0451

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v6

    move v0, v1

    .line 1163
    :goto_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1165
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->c:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/cj;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/cj;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    const v0, 0x7f0c044d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->d:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/cg;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/cg;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f0c0448

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->e:Landroid/widget/SeekBar;

    .line 91
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->e:Landroid/widget/SeekBar;

    .line 2131
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "speech_speed"

    const/16 v3, 0x32

    invoke-static {v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 92
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->e:Landroid/widget/SeekBar;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/ch;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/ch;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 112
    const v0, 0x7f0c0452

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->f:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->f:Landroid/widget/Button;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/ci;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/ci;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->i:Ljava/util/Timer;

    .line 123
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->o:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public setOnPlayChangeListener(Lcom/ushaqi/zhuishushenqi/reader/cn;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->g:Lcom/ushaqi/zhuishushenqi/reader/cn;

    .line 390
    return-void
.end method

.method public setPause(Z)V
    .locals 0

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->o:Z

    .line 418
    return-void
.end method

.method public setResetVoice(Z)V
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->p:Z

    .line 141
    return-void
.end method

.method public setSpeechVoice(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->q:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->g:Lcom/ushaqi/zhuishushenqi/reader/cn;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/cn;->a(Z)V

    .line 337
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->q:Lcom/iflytek/cloud/SpeechSynthesizer;

    const-string v1, "voice_name"

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 338
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "speech_voice"

    invoke-static {v0, v1, p1}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->g:Lcom/ushaqi/zhuishushenqi/reader/cn;

    invoke-interface {v0}, Lcom/ushaqi/zhuishushenqi/reader/cn;->a()V

    goto :goto_0
.end method

.method public setVoiceSourceView()V
    .locals 8

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 147
    const-string v0, "tts"

    .line 148
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/iflytek/cloud/SpeechUtility;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/model/TtsRoot;->getInfoFromJson(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TtsRoot;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TtsRoot;->getRet()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 151
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TtsRoot;->getResult()Lcom/ushaqi/zhuishushenqi/model/TtsRoot$TtsResult;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_9

    .line 153
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/TtsRoot$TtsResult;->getTts()[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    move-result-object v3

    .line 2258
    if-eqz v3, :cond_9

    .line 2349
    array-length v0, v3

    if-gt v0, v5, :cond_1

    move-object v0, v3

    .line 2261
    :goto_0
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->h:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    .line 2262
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->h:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    array-length v0, v0

    if-le v0, v5, :cond_6

    move v0, v5

    :goto_1
    move v2, v1

    .line 2263
    :goto_2
    if-ge v2, v0, :cond_8

    .line 2264
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2265
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->h:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2266
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->h:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2268
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/cm;

    invoke-direct {v4, p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/cm;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;I)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2276
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->h:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    aget-object v3, v3, v2

    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2277
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    const v4, 0x7f0200fd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 2278
    iget-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->p:Z

    if-eqz v3, :cond_0

    .line 2279
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->h:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setSpeechVoice(Ljava/lang/String;)V

    .line 2280
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->p:Z

    .line 2263
    :cond_0
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 2353
    :goto_4
    array-length v2, v3

    if-ge v0, v2, :cond_a

    .line 2354
    aget-object v2, v3, v0

    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v6, v0

    .line 2359
    :goto_5
    if-ge v6, v5, :cond_3

    move-object v0, v3

    .line 2360
    goto :goto_0

    .line 2353
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2362
    :cond_3
    array-length v0, v3

    new-array v4, v0, [Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    .line 2363
    aget-object v0, v3, v6

    aput-object v0, v4, v1

    .line 2364
    const/4 v0, 0x1

    move v2, v1

    :goto_6
    array-length v7, v3

    if-ge v2, v7, :cond_5

    .line 2365
    if-eq v2, v6, :cond_4

    .line 2366
    aget-object v7, v3, v2

    aput-object v7, v4, v0

    .line 2367
    add-int/lit8 v0, v0, 0x1

    .line 2364
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    move-object v0, v4

    .line 2370
    goto/16 :goto_0

    .line 2262
    :cond_6
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->h:[Lcom/ushaqi/zhuishushenqi/model/TtsRoot$Tts;

    array-length v0, v0

    goto/16 :goto_1

    .line 2283
    :cond_7
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b:[Landroid/widget/TextView;

    aget-object v3, v3, v2

    const v4, 0x7f0202ae

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_3

    .line 2286
    :cond_8
    if-ge v0, v5, :cond_9

    .line 2287
    :goto_7
    if-ge v0, v5, :cond_9

    .line 2288
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2287
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 157
    :cond_9
    return-void

    :cond_a
    move v6, v1

    goto :goto_5
.end method
