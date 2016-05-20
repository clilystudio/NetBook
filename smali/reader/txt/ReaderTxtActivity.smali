.class public Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/reader/a;
.implements Lcom/ushaqi/zhuishushenqi/reader/d;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:[Ljava/lang/String;

.field private E:I

.field private F:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/iflytek/cloud/SpeechSynthesizer;

.field private H:Landroid/os/PowerManager$WakeLock;

.field private I:Lcom/iflytek/cloud/SynthesizerListener;

.field private J:Ljava/lang/Runnable;

.field private K:Landroid/content/BroadcastReceiver;

.field private L:Landroid/content/BroadcastReceiver;

.field private b:[Lcom/ushaqi/zhuishushenqi/reader/o;

.field private c:Ljava/lang/String;

.field private d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

.field private e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

.field private f:Lcom/ushaqi/zhuishushenqi/reader/bH;

.field private g:Lcom/ushaqi/zhuishushenqi/reader/K;

.field private h:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

.field private i:Landroid/os/Handler;

.field private j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

.field private k:I

.field private l:Z

.field private m:Z

.field private n:Landroid/view/View;

.field private o:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

.field private p:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Landroid/view/View;

.field private v:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

.field private w:I

.field private x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

.field private y:Landroid/view/View;

.field private z:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const-string v0, ""

    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 81
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/reader/o;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->i:Landroid/os/Handler;

    .line 98
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->l:Z

    .line 99
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->m:Z

    .line 103
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->q:I

    .line 112
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    .line 118
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->A:Z

    .line 125
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->E:I

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->H:Landroid/os/PowerManager$WakeLock;

    .line 645
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/txt/d;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/d;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->I:Lcom/iflytek/cloud/SynthesizerListener;

    .line 1508
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/txt/E;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/E;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->J:Ljava/lang/Runnable;

    .line 1538
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/txt/F;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/F;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->K:Landroid/content/BroadcastReceiver;

    .line 1554
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/txt/G;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/G;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->L:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic A(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)I
    .locals 2

    .prologue
    .line 79
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->E:I

    return v0
.end method

.method private A()V
    .locals 4

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1517
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->d()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1518
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->J:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/bH;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1520
    :cond_0
    return-void
.end method

.method static synthetic B(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->u:Landroid/view/View;

    return-object v0
.end method

.method static synthetic C(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->r()V

    return-void
.end method

.method static synthetic D(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 4

    .prologue
    .line 79
    .line 18053
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18056
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 18057
    const v1, 0x7f0501a0

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->b(I)Luk/me/lewisdeane/ldialogs/h;

    .line 18058
    const v1, 0x7f050167

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/txt/p;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/p;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    const v2, 0x7f0500d1

    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/txt/o;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/o;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 18064
    invoke-virtual {v1, v2, v3}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    .line 18072
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    .line 18073
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 18074
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/q;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/q;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 18082
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18085
    :cond_0
    :goto_0
    return-void

    .line 18083
    :catch_0
    move-exception v0

    .line 18084
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic E(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->n()V

    return-void
.end method

.method static synthetic F(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/ushaqi/zhuishushenqi/reader/bH;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bH;

    return-object v0
.end method

.method static synthetic G(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->p()V

    return-void
.end method

.method static synthetic H(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->q()V

    return-void
.end method

.method static synthetic I(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->s()V

    return-void
.end method

.method static synthetic J(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->l()V

    return-void
.end method

.method static synthetic K(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    return-object v0
.end method

.method static synthetic L(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->o()V

    return-void
.end method

.method static synthetic M(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 2

    .prologue
    .line 79
    .line 18533
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 79
    return-void
.end method

.method static synthetic N(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->q:I

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)I
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    return p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->F:Ljava/util/LinkedList;

    return-object p1
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/K;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/t;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/t;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/K;->b(ILcom/ushaqi/zhuishushenqi/reader/e;Z)V

    .line 1169
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Lcom/ushaqi/zhuishushenqi/reader/n;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 79
    .line 18354
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18355
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 18356
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/txt/y;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/y;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    .line 18408
    :goto_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    if-ne v0, v2, :cond_1

    .line 18409
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18410
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z()V

    .line 18412
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a()V

    .line 79
    :cond_1
    return-void

    .line 18373
    :cond_2
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18374
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 18375
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/txt/A;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/A;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->b(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    goto :goto_0

    .line 18391
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 18392
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/txt/C;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/txt/C;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Lcom/ushaqi/zhuishushenqi/reader/n;)V

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j()V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->D:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 533
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->D:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "\u3000\u3000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 534
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->B:I

    .line 535
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->D:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->C:I

    .line 537
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->B:I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->C:I

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(II)V

    goto :goto_0

    .line 539
    :cond_2
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->C:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->B:I

    .line 540
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->E:I

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->D:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 541
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->B:I

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->D:[Ljava/lang/String;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->E:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->C:I

    .line 542
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->B:I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->C:I

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(II)V

    .line 543
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->D:[Ljava/lang/String;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->E:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->I:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->startSpeaking(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I

    goto :goto_0

    .line 547
    :cond_3
    const-string v0, "\u83b7\u53d6\u7ae0\u8282\u5185\u5bb9\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Z)Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->A:Z

    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->D:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->B:I

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Z)Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t:Z

    return v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->C:I

    return v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Z)V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->E:I

    return v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Z)Z
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->m:Z

    return p1
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    return v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(I)V

    return-void
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)I
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    return p1
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 513
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->s:Z

    if-eqz v0, :cond_0

    .line 514
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->setRequestedOrientation(I)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;I)I
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->q:I

    return p1
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/ushaqi/zhuishushenqi/reader/bZ;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    return-object v0
.end method

.method private g()V
    .locals 2

    .prologue
    .line 571
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/TtsSpeakingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 572
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/ushaqi/zhuishushenqi/reader/n;
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 583
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/TtsSpeakingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 584
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->H:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->H:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->H:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->H:Landroid/os/PowerManager$WakeLock;

    .line 605
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x()V

    return-void
.end method

.method private j()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 634
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->stopSpeaking()V

    .line 635
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    .line 636
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setReadMode(I)V

    .line 638
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->h()V

    .line 639
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t()V

    .line 640
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->B:I

    .line 641
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->C:I

    .line 642
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->E:I

    .line 643
    return-void
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->g()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/f;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/f;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c(Lcom/ushaqi/zhuishushenqi/reader/ae;)V

    .line 754
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->l()V

    .line 755
    return-void
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 3

    .prologue
    .line 79
    .line 13552
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13553
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j()V

    .line 13559
    :cond_0
    :goto_0
    return-void

    .line 13556
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->D:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 13557
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->E:I

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->D:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 13558
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->B:I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->C:I

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(II)V

    .line 13559
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->D:[Ljava/lang/String;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->E:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->I:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->startSpeaking(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I

    goto :goto_0

    .line 13562
    :cond_2
    const-string v0, "\u83b7\u53d6\u7ae0\u8282\u5185\u5bb9\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/iflytek/cloud/SpeechSynthesizer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/g;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/g;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/ad;Z)V

    .line 772
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 779
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 780
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 781
    return-void

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->f()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->h()V

    return-void
.end method

.method private n()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 879
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 880
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->p()Z

    move-result v1

    if-nez v1, :cond_1

    .line 881
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->n()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 882
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(I)V

    .line 972
    :goto_0
    return-void

    .line 884
    :cond_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v0

    .line 4340
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/K;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/txt/x;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/x;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v1, v0, v2, v7}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(ILcom/ushaqi/zhuishushenqi/reader/e;Z)V

    goto :goto_0

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aget-object v0, v0, v8

    .line 890
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aget-object v1, v1, v7

    .line 891
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aget-object v2, v2, v9

    .line 893
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v3

    .line 894
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v4

    .line 895
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v5

    .line 898
    iget v6, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    if-ne v6, v9, :cond_7

    if-eqz v5, :cond_7

    .line 899
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 902
    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 903
    invoke-virtual {v1, v5}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 905
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    invoke-virtual {v0, v7, v8}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 907
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/txt/m;

    invoke-direct {v0, p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/m;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v5, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    .line 916
    :cond_2
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    if-ne v0, v7, :cond_4

    .line 917
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->isShown()Z

    move-result v0

    if-nez v0, :cond_3

    .line 918
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z()V

    .line 920
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a()V

    .line 923
    :cond_4
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    if-ne v0, v9, :cond_5

    .line 924
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->F:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 925
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/reader/n;->d()[Ljava/lang/Object;

    move-result-object v1

    .line 926
    if-eqz v1, :cond_5

    .line 927
    aget-object v0, v1, v8

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->D:[Ljava/lang/String;

    .line 928
    aget-object v0, v1, v7

    check-cast v0, Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->F:Ljava/util/LinkedList;

    .line 929
    invoke-direct {p0, v7}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(Z)V

    .line 971
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->o()V

    goto :goto_0

    .line 932
    :cond_6
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    aget-object v0, v0, v1

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/reader/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v8, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(II)V

    goto :goto_1

    .line 938
    :cond_7
    iget v5, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    if-nez v5, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/n;->f()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 939
    invoke-virtual {v2, v4}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 940
    invoke-virtual {v1, v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 941
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    invoke-virtual {v1, v7, v8}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 942
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/n;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/n;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v3, v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->b(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    goto :goto_1

    .line 949
    :cond_8
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    if-ne v0, v7, :cond_5

    .line 950
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    if-ne v0, v7, :cond_a

    .line 951
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->isShown()Z

    move-result v0

    if-nez v0, :cond_9

    .line 952
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z()V

    .line 954
    :cond_9
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a()V

    goto :goto_1

    .line 955
    :cond_a
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    if-ne v0, v9, :cond_5

    .line 956
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->F:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 957
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/reader/n;->d()[Ljava/lang/Object;

    move-result-object v1

    .line 958
    if-eqz v1, :cond_5

    .line 959
    aget-object v0, v1, v8

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->D:[Ljava/lang/String;

    .line 960
    aget-object v0, v1, v7

    check-cast v0, Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->F:Ljava/util/LinkedList;

    .line 962
    invoke-direct {p0, v7}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(Z)V

    goto :goto_1

    .line 965
    :cond_b
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    aget-object v0, v0, v1

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/reader/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v8, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(II)V

    goto/16 :goto_1
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->i()V

    return-void
.end method

.method private o()V
    .locals 4

    .prologue
    .line 978
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 979
    if-eqz v0, :cond_0

    .line 981
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->m()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(II)V

    .line 983
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4990
    const-string v0, "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u9875\u5566"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 987
    :cond_0
    return-void
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 3

    .prologue
    .line 79
    .line 14408
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->e:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setHeight(I)V

    .line 14409
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v2, v2, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setTextSize(IF)V

    .line 14410
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setLineSpacing(FF)V

    .line 79
    return-void
.end method

.method private p()V
    .locals 3

    .prologue
    .line 999
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    aget-object v0, v0, v1

    .line 1000
    if-nez v0, :cond_1

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 1004
    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1007
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t()V

    .line 1009
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a(I)Z

    goto :goto_0

    .line 1014
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 1015
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->n()V

    goto :goto_0

    .line 5990
    :cond_3
    const-string v0, "\u5df2\u7ecf\u662f\u6700\u540e\u4e00\u9875\u5566"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic p(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->v()V

    return-void
.end method

.method private q()V
    .locals 3

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    aget-object v0, v0, v1

    .line 1028
    if-nez v0, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 1032
    if-eqz v0, :cond_0

    .line 1034
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1035
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t()V

    .line 1036
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1037
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a(I)Z

    goto :goto_0

    .line 1039
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 1040
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->n()V

    goto :goto_0

    .line 1043
    :cond_3
    const v0, 0x7f050127

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 2

    .prologue
    .line 79
    .line 14414
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h:I

    const v1, 0x7f02023d

    if-ne v0, v1, :cond_0

    .line 14415
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    const v1, 0x7f02023c

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setBackgroundResource(I)V

    .line 14419
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setTextColor(I)V

    .line 79
    return-void

    .line 14417
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private r()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1092
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/K;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/reader/K;-><init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/reader/bZ;)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/K;

    .line 6787
    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/txt/h;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/h;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 6793
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    array-length v3, v1

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 6794
    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/o;

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-direct {v4, p0, v5}, Lcom/ushaqi/zhuishushenqi/reader/o;-><init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/reader/bZ;)V

    .line 6795
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aput-object v4, v5, v1

    .line 6796
    invoke-virtual {v4, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/G;)V

    .line 6793
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6798
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->K:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6799
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->L:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 6806
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/txt/i;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/i;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 6830
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/txt/j;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/j;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setOnPageChangeListener(Lcom/ushaqi/zhuishushenqi/reader/cw;)V

    .line 6853
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/txt/k;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/k;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setOnClickListener$4b8a6d15(Lcom/umeng/update/a;)V

    .line 1097
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V

    .line 1099
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/model/TxtFileObject;->getProgress(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookFile;

    move-result-object v2

    .line 1102
    if-eqz v2, :cond_1

    .line 1103
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getProgressChapterIndex()I

    move-result v1

    .line 1104
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/db/BookFile;->getProgressCharOffset()I

    move-result v0

    .line 7110
    :goto_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/K;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/txt/r;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/r;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(IILcom/ushaqi/zhuishushenqi/reader/e;Z)V

    .line 1107
    return-void

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method static synthetic r(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->m()V

    return-void
.end method

.method static synthetic s(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->p:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    return-object v0
.end method

.method private s()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1172
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->l:Z

    if-eqz v0, :cond_1

    .line 1173
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t()V

    .line 7209
    :cond_0
    :goto_0
    return-void

    .line 7196
    :cond_1
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->l:Z

    if-nez v0, :cond_0

    .line 7197
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->l:Z

    .line 7198
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    if-nez v0, :cond_2

    .line 7199
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    .line 8141
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->setVisibility(I)V

    .line 7201
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 7202
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 7204
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->m:Z

    if-nez v0, :cond_0

    .line 7205
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 7207
    :cond_2
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    if-ne v0, v2, :cond_3

    .line 7208
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    .line 9111
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->clearAnimation()V

    .line 7209
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->v:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->a()V

    goto :goto_0

    .line 7210
    :cond_3
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 7211
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->pauseSpeaking()V

    .line 7212
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setPause(Z)V

    .line 7213
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a()V

    goto :goto_0
.end method

.method private t()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v6, 0x400

    const/16 v5, 0x200

    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1221
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->l:Z

    if-eqz v0, :cond_3

    .line 1222
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->l:Z

    .line 1224
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    .line 9145
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->setVisibility(I)V

    .line 1225
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->p:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    .line 9255
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setVisibility(I)V

    .line 1227
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->v:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b()V

    .line 1228
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    if-ne v0, v4, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e()V

    .line 1231
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    .line 9404
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setVisibility(I)V

    .line 1233
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1234
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->resumeSpeaking()V

    .line 1235
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setPause(Z)V

    .line 1239
    :cond_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1240
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1242
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->r:Z

    if-eqz v0, :cond_5

    .line 1243
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1248
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->n:Landroid/view/View;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/view/View;)V

    .line 1250
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1251
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->m:Z

    if-eqz v0, :cond_4

    .line 1252
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->n:Landroid/view/View;

    const/16 v1, 0x807

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1261
    :cond_4
    :goto_1
    return-void

    .line 10278
    :cond_5
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 10279
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 10280
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 10282
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->m:Z

    if-eqz v0, :cond_2

    .line 10283
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 1257
    :cond_6
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->m:Z

    if-eqz v0, :cond_4

    .line 1258
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->n:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1
.end method

.method static synthetic t(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 2

    .prologue
    .line 79
    .line 15122
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15125
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    if-nez v0, :cond_0

    .line 15135
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    .line 15136
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V

    .line 15137
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/s;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/s;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 15128
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;)V

    .line 79
    :cond_1
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 1268
    const-string v0, "reader_opt_full_screen"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->r:Z

    .line 1269
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->r:Z

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->a(Z)V

    .line 1270
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t()V

    .line 1271
    return-void
.end method

.method static synthetic u(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 2

    .prologue
    .line 79
    .line 15507
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->s:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->s:Z

    .line 15508
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->f()V

    .line 15509
    const-string v0, "reader_orientation"

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->s:Z

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 79
    return-void

    .line 15507
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private v()V
    .locals 2

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/K;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/v;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/v;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    .line 1337
    return-void
.end method

.method static synthetic v(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    .line 16483
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->checkServiceInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16484
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t()V

    .line 16485
    const/4 v0, 0x2

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    .line 16486
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setReadMode(I)V

    .line 16487
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->d()[Ljava/lang/Object;

    move-result-object v1

    .line 16488
    if-eqz v1, :cond_1

    .line 16489
    aget-object v0, v1, v2

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->D:[Ljava/lang/String;

    .line 16490
    aget-object v0, v1, v3

    check-cast v0, Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->F:Ljava/util/LinkedList;

    .line 16491
    invoke-direct {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a(Z)V

    .line 16492
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->g()V

    .line 16591
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->H:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 16592
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 16593
    const-string v1, "txt_lock_tag"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->H:Landroid/os/PowerManager$WakeLock;

    .line 16594
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->H:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 16595
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->H:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 16499
    :cond_0
    :goto_0
    return-void

    .line 16495
    :cond_1
    const-string v0, "\u83b7\u53d6\u7ae0\u8282\u5185\u5bb9\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 16498
    :cond_2
    sget-object v0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, ""

    sget-object v1, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16612
    :cond_3
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16613
    const v0, 0x7f0501a5

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 16617
    :goto_1
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v1, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 16618
    const v2, 0x7f0501a4

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 17036
    iput-object v2, v1, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 17046
    iput-object v0, v1, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 16618
    const-string v0, "\u4e0b\u8f7d"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/txt/c;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/c;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 16619
    invoke-virtual {v1, v0, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/txt/b;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/b;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    .line 16625
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 16630
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    goto :goto_0

    .line 16615
    :cond_4
    const v0, 0x7f0501a3

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 16501
    :cond_5
    sget-object v0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a:Ljava/lang/String;

    const-string v1, "\u8ffd\u4e66\u795e\u5668\u6717\u8bfb\u63d2\u4ef6"

    invoke-static {v0, p0, v1}, Lcom/arcsoft/hpay100/a/a;->a(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic w(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->E:I

    return v0
.end method

.method private w()Lcom/ushaqi/zhuishushenqi/reader/n;
    .locals 2

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    aget-object v0, v0, v1

    .line 1418
    if-eqz v0, :cond_0

    .line 1419
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 1421
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1425
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 1426
    if-nez v0, :cond_0

    .line 1450
    :goto_0
    return-void

    .line 1431
    :cond_0
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1432
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1434
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1435
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1439
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->b()V

    .line 1441
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 1442
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->n()V

    goto :goto_0

    .line 1437
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1445
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    .line 11111
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->clearAnimation()V

    .line 1446
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->y()V

    .line 1447
    iput v3, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    .line 1448
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setReadMode(I)V

    goto :goto_0
.end method

.method static synthetic x(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->D:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic y(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->F:Ljava/util/LinkedList;

    return-object v0
.end method

.method private y()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1453
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setVisibility(I)V

    .line 1454
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1455
    return-void
.end method

.method private z()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1458
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1461
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->y:Landroid/view/View;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1465
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->y:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1466
    return-void

    .line 1463
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->y:Landroid/view/View;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic z(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    .line 17697
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->F:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 17698
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->F:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 17699
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->E:I

    .line 17700
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->B:I

    .line 17701
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->C:I

    .line 17703
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e()V

    .line 17704
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x()V

    .line 79
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->v:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->c()V

    .line 1571
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->c()V

    .line 1572
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->v:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->d()V

    .line 1577
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->d()V

    .line 1578
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1582
    const-string v0, "tag"

    const-string v1, "stopAutoReader"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    .line 12111
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->clearAnimation()V

    .line 1584
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    .line 1585
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setReadMode(I)V

    .line 1586
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t()V

    .line 1587
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->y()V

    .line 12593
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->l:Z

    if-eqz v0, :cond_1

    .line 12594
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t()V

    .line 12595
    :cond_0
    :goto_0
    return-void

    .line 12597
    :cond_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 12598
    if-eqz v0, :cond_0

    .line 12602
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12603
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 12604
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->n()V

    goto :goto_0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 1565
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x()V

    .line 1566
    return-void
.end method

.method public final e()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 711
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->B:I

    .line 712
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->C:I

    .line 714
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 715
    invoke-virtual {v3, v4, v4}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(II)V

    .line 714
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 717
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->a()V

    .line 235
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/K;

    if-eqz v0, :cond_0

    .line 4291
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->u()V

    .line 4292
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->r:Z

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Z)V

    .line 4293
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->v()V

    .line 238
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 1470
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 11475
    new-instance v3, Lcom/ushaqi/zhuishushenqi/db/BookFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v1}, Lcom/ushaqi/zhuishushenqi/db/BookFile;-><init>(Ljava/io/File;)V

    .line 11476
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 11477
    if-eqz v1, :cond_2

    .line 11478
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v2

    .line 11479
    if-eqz v2, :cond_3

    .line 11482
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getIndex()I

    move-result v4

    .line 11483
    iput v4, v3, Lcom/ushaqi/zhuishushenqi/db/BookFile;->progressChapterIndex:I

    .line 11484
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->b()I

    move-result v5

    .line 11485
    iput v5, v3, Lcom/ushaqi/zhuishushenqi/db/BookFile;->progressCharOffset:I

    .line 11488
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->d()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    move-result-object v6

    move v1, v0

    move v2, v0

    .line 11491
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_2

    .line 11492
    aget-object v7, v6, v0

    .line 11493
    invoke-virtual {v7}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getTxtCharLength()I

    move-result v8

    add-int/2addr v2, v8

    .line 11495
    if-ge v0, v4, :cond_1

    .line 11496
    invoke-virtual {v7}, Lcom/ushaqi/zhuishushenqi/model/ChapterLink;->getTxtCharLength()I

    move-result v7

    add-int/2addr v1, v7

    .line 11500
    :cond_0
    :goto_1
    int-to-float v7, v1

    int-to-float v8, v2

    div-float/2addr v7, v8

    iput v7, v3, Lcom/ushaqi/zhuishushenqi/db/BookFile;->progress:F

    .line 11491
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11497
    :cond_1
    if-ne v0, v4, :cond_0

    .line 11498
    add-int/2addr v1, v5

    goto :goto_1

    .line 11504
    :cond_2
    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/model/TxtFileObject;->updateProgress(Lcom/ushaqi/zhuishushenqi/db/BookFile;)V

    .line 11505
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/A;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/A;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1472
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 141
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 143
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 144
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 146
    const-string v0, "reader_orientation"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->s:Z

    .line 147
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->f()V

    .line 149
    const v0, 0x7f030053

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->setContentView(I)V

    .line 151
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "file_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->c:Ljava/lang/String;

    .line 155
    if-eqz p1, :cond_0

    .line 156
    const-string v0, "SaveSelectedPageIndex"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    .line 157
    const-string v0, "SaveChangeOrientation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t:Z

    .line 1720
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez v0, :cond_1

    .line 1721
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/txt/e;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/e;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-static {p0, v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->createSynthesizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechSynthesizer;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    .line 1731
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    const-string v1, "engine_type"

    const-string v2, "local"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1732
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    const-string v1, "speed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "speech_speed"

    const/16 v4, 0x32

    invoke-static {p0, v3, v4}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1733
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    const-string v1, "voice_name"

    const-string v2, "speech_voice"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2244
    :cond_1
    const v0, 0x7f0c0126

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    .line 2245
    const v0, 0x7f0c012f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->u:Landroid/view/View;

    .line 2246
    const v0, 0x7f0c0134

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    .line 2248
    const v0, 0x7f0c012d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->p:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    .line 2249
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    .line 2250
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/bH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bH;

    .line 2252
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    .line 2254
    const v0, 0x7f0c012c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    .line 2256
    const v0, 0x7f0c012b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->v:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

    .line 2257
    const v0, 0x7f0c0129

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    .line 2258
    const v0, 0x7f0c012a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->y:Landroid/view/View;

    .line 2352
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/H;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/H;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/cc;)V

    .line 2362
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/I;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/I;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/cb;)V

    .line 2370
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/J;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/J;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/ce;)V

    .line 2382
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/K;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/K;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/ca;)V

    .line 2389
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/L;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/L;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/cd;)V

    .line 2402
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->m()V

    .line 2427
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setTextColor(I)V

    .line 2428
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->e:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setHeight(I)V

    .line 2429
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v5, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setTextSize(IF)V

    .line 2430
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setLineSpacing(FF)V

    .line 2431
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h:I

    const v1, 0x7f02023d

    if-ne v0, v1, :cond_3

    .line 2432
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    const v1, 0x7f02023c

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setBackgroundResource(I)V

    .line 2443
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->setReaderStyle(Lcom/ushaqi/zhuishushenqi/reader/bZ;)V

    .line 2445
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->s:Z

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->b(Z)V

    .line 2446
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->c(Z)V

    .line 2447
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->d(Z)V

    .line 2448
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->e(Z)V

    .line 2449
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->g(Z)V

    .line 2450
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/M;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/M;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->setOnBtnClickListener$7ead76dc(Lcom/umeng/update/a;)V

    .line 2263
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->p:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->o:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setReaderStyle(Lcom/ushaqi/zhuishushenqi/reader/bZ;Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;)V

    .line 2264
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->p:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/a;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/a;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/db;)V

    .line 2271
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->p:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/l;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/l;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/dc;)V

    .line 2292
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->v:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->setOptionClickListener(Lcom/ushaqi/zhuishushenqi/reader/a;)V

    .line 2293
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setOnPageTurning(Lcom/ushaqi/zhuishushenqi/reader/d;)V

    .line 2294
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setAutoReaderTextView(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)V

    .line 2296
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/iflytek/cloud/SpeechSynthesizer;)V

    .line 2297
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/w;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/w;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setOnPlayChangeListener(Lcom/ushaqi/zhuishushenqi/reader/cn;)V

    .line 3181
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->n:Landroid/view/View;

    .line 3183
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3184
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->n:Landroid/view/View;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/txt/u;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/u;-><init>(Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 164
    :cond_2
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->u()V

    .line 168
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t:Z

    if-eqz v0, :cond_5

    .line 169
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_4

    .line 171
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->d:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    .line 172
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->r()V

    .line 181
    :goto_1
    return-void

    .line 2434
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->x:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->e:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 174
    :cond_4
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k()V

    goto :goto_1

    .line 179
    :cond_5
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->K:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->L:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->stopSpeaking()V

    .line 217
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->G:Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->destroy()Z

    .line 218
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->K(Landroid/content/Context;)V

    .line 220
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->h()V

    .line 222
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->i()V

    .line 223
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 224
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1310
    packed-switch p1, :pswitch_data_0

    .line 1326
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 1313
    :pswitch_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/bH;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    if-nez v2, :cond_0

    .line 1314
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->p()V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1317
    goto :goto_0

    .line 1320
    :pswitch_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->f:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/bH;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    if-nez v2, :cond_1

    .line 1321
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->q()V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1324
    goto :goto_0

    .line 1310
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1298
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 1299
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->s()V

    .line 1304
    :cond_0
    :goto_0
    return v0

    .line 1301
    :cond_1
    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    .line 1304
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 3529
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 195
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->A()V

    .line 197
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t()V

    .line 199
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->w:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->A:Z

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setResetVoice(Z)V

    .line 201
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->z:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setVoiceSourceView()V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->A:Z

    .line 204
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 187
    const-string v0, "SaveSelectedPageIndex"

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v0, "SaveChangeOrientation"

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->t:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1524
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserInteraction()V

    .line 1525
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/txt/ReaderTxtActivity;->A()V

    .line 1526
    return-void
.end method
