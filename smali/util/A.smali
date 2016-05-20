.class public final Lcom/ushaqi/zhuishushenqi/util/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/widget/ProgressBar;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/app/Dialog;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:Ljava/lang/Runnable;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->e:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->f:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/B;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/B;-><init>(Lcom/ushaqi/zhuishushenqi/util/A;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->j:Ljava/lang/Runnable;

    .line 147
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/C;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/C;-><init>(Lcom/ushaqi/zhuishushenqi/util/A;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->k:Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/A;->a:Landroid/app/Activity;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/A;I)I
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/util/A;->i:I

    return p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/A;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/A;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/A;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/util/A;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->k:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/util/A;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/A;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/util/A;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/util/A;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/A;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/util/A;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->i:I

    return v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/util/A;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/A;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/util/A;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->b:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/util/A;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/util/A;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/util/A;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/util/A;)V
    .locals 1

    .prologue
    .line 32
    .line 1169
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    :goto_0
    return-void

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/util/A;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 56
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->a:Landroid/app/Activity;

    invoke-direct {v1, v0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 57
    const-string v0, "\u6b63\u5728\u4e0b\u8f7d"

    .line 1036
    iput-object v0, v1, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030120

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 59
    const v0, 0x7f0c03a8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->b:Landroid/widget/ProgressBar;

    .line 60
    const v0, 0x7f0c03a9

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->c:Landroid/widget/TextView;

    .line 61
    invoke-virtual {v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Landroid/view/View;)Luk/me/lewisdeane/ldialogs/h;

    .line 63
    invoke-virtual {v1}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->d:Landroid/app/Dialog;

    .line 64
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->d:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/A;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1071
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/A;->j:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1072
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 68
    return-void
.end method
