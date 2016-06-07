.class public Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/ushaqi/zhuishushenqi/reader/a;
.implements Lcom/ushaqi/zhuishushenqi/reader/d;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:Landroid/view/View;

.field private C:Landroid/widget/TextView;

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:I

.field private M:I

.field private N:Z

.field private O:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;

.field private P:I

.field private Q:I

.field private R:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

.field private S:Landroid/widget/PopupWindow;

.field private T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

.field private U:Landroid/view/View;

.field private V:Lcom/iflytek/cloud/SpeechSynthesizer;

.field private W:I

.field private X:I

.field private Y:[Ljava/lang/String;

.field private Z:I

.field private aa:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ab:Landroid/os/PowerManager$WakeLock;

.field private ac:Lcom/iflytek/cloud/SynthesizerListener;

.field private ad:Ljava/lang/Runnable;

.field private ae:Landroid/content/BroadcastReceiver;

.field private af:Landroid/os/Handler;

.field private ag:Landroid/content/BroadcastReceiver;

.field private ah:Landroid/content/BroadcastReceiver;

.field private b:[Lcom/ushaqi/zhuishushenqi/reader/o;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

.field private h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

.field private i:Lcom/ushaqi/zhuishushenqi/reader/bH;

.field private j:Lcom/ushaqi/zhuishushenqi/reader/K;

.field private k:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

.field private l:Landroid/os/Handler;

.field private m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Landroid/view/View;

.field private r:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

.field private s:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

.field private t:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

.field private u:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

.field private v:Z

.field private w:I

.field private x:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 202
    const-string v0, ""

    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity;-><init>()V

    .line 134
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/reader/o;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->l:Landroid/os/Handler;

    .line 151
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o:Z

    .line 152
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p:Z

    .line 158
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->v:Z

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w:I

    .line 161
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->x:Ljava/util/LinkedList;

    .line 173
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I:Z

    .line 174
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J:Z

    .line 175
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K:Z

    .line 178
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    .line 184
    iput-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->R:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    .line 197
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z:I

    .line 204
    iput-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab:Landroid/os/PowerManager$WakeLock;

    .line 858
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/am;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/am;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ac:Lcom/iflytek/cloud/SynthesizerListener;

    .line 1977
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/aY;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/aY;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ad:Ljava/lang/Runnable;

    .line 2373
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bg;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/bg;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ae:Landroid/content/BroadcastReceiver;

    .line 2392
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bh;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/bh;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->af:Landroid/os/Handler;

    .line 2439
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bi;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/bi;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ag:Landroid/content/BroadcastReceiver;

    .line 2455
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bj;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/bj;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ah:Landroid/content/BroadcastReceiver;

    .line 2602
    return-void
.end method

.method static synthetic A(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    return-object v0
.end method

.method private A()Lcom/ushaqi/zhuishushenqi/reader/n;
    .locals 2

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    aget-object v0, v0, v1

    .line 1529
    if-eqz v0, :cond_0

    .line 1530
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 1532
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B()V
    .locals 10

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1541
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H:Z

    if-eqz v0, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/K;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V

    .line 14146
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/aw;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/aw;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setOnPageChangeListener(Lcom/ushaqi/zhuishushenqi/reader/cw;)V

    .line 14169
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/ax;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/ax;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setOnClickListener$4b8a6d15(Lcom/umeng/update/a;)V

    .line 1546
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->g()Ljava/lang/String;

    move-result-object v0

    .line 1547
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1548
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getOnShelf(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 14694
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    if-nez v1, :cond_7

    :cond_1
    move v0, v5

    .line 1551
    :cond_2
    :goto_0
    if-eq v0, v5, :cond_3

    .line 1552
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v1, v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(II)V

    .line 1554
    :cond_3
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->c(Ljava/lang/String;)V

    .line 1558
    :cond_4
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V

    .line 1561
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L:I

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 15575
    :cond_5
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 15576
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/MixTocRecord;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 15580
    :cond_6
    :goto_1
    if-eqz v4, :cond_f

    .line 15581
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g()V

    :goto_2
    return-void

    .line 14697
    :cond_7
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTocIndex()I

    move-result v1

    .line 14698
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getChapterTitle()Ljava/lang/String;

    move-result-object v7

    .line 14699
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g()I

    move-result v0

    .line 14700
    if-gt v1, v0, :cond_8

    move v0, v1

    .line 14701
    :cond_8
    new-instance v8, Lcom/ushaqi/zhuishushenqi/util/ae;

    invoke-direct {v8}, Lcom/ushaqi/zhuishushenqi/util/ae;-><init>()V

    .line 14702
    invoke-direct {p0, v8, v7, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/util/ae;Ljava/lang/String;I)Z

    move-result v2

    .line 14703
    if-nez v2, :cond_2

    move v0, v4

    move v6, v3

    move v2, v4

    .line 14708
    :goto_3
    const/16 v9, 0x14

    if-ge v6, v9, :cond_c

    .line 14709
    if-eqz v2, :cond_a

    .line 14710
    add-int v2, v1, v0

    .line 14711
    invoke-direct {p0, v8, v7, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/util/ae;Ljava/lang/String;I)Z

    move-result v9

    .line 14712
    if-eqz v9, :cond_9

    move v0, v2

    .line 14713
    goto :goto_0

    :cond_9
    move v2, v3

    .line 14708
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 14717
    :cond_a
    sub-int v2, v1, v0

    .line 14718
    invoke-direct {p0, v8, v7, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/util/ae;Ljava/lang/String;I)Z

    move-result v9

    .line 14719
    if-eqz v9, :cond_b

    move v0, v2

    .line 14720
    goto :goto_0

    .line 14723
    :cond_b
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_4

    :cond_c
    move v0, v5

    .line 14726
    goto :goto_0

    :cond_d
    move v4, v3

    .line 15576
    goto :goto_1

    .line 15578
    :cond_e
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/TocReadRecord;

    move-result-object v0

    if-nez v0, :cond_6

    move v4, v3

    goto :goto_1

    .line 15583
    :cond_f
    invoke-direct {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c(I)V

    goto :goto_2

    .line 1566
    :cond_10
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H:Z

    if-nez v0, :cond_11

    .line 1567
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->D()V

    goto :goto_2

    .line 1569
    :cond_11
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g()V

    goto :goto_2
.end method

.method static synthetic B(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 2

    .prologue
    .line 115
    .line 28041
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G:Z

    .line 28042
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r()V

    .line 28043
    const-string v0, "reader_orientation"

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G:Z

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 115
    return-void

    .line 28041
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private C()V
    .locals 6

    .prologue
    .line 1589
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/aL;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/aL;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 1596
    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/aM;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/aM;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 1603
    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/aN;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/reader/aN;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 1613
    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x3

    if-ge v0, v4, :cond_0

    .line 1614
    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/o;

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-direct {v4, p0, v5}, Lcom/ushaqi/zhuishushenqi/reader/o;-><init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/reader/bZ;)V

    .line 1615
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aput-object v4, v5, v0

    .line 1616
    invoke-virtual {v4, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/G;)V

    .line 1617
    invoke-virtual {v4, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/H;)V

    .line 1618
    invoke-virtual {v4, v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/F;)V

    .line 1613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ag:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1622
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ah:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.TIME_TICK"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1623
    return-void
.end method

.method static synthetic C(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 115
    .line 28309
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K:Z

    if-eqz v0, :cond_1

    .line 28310
    :cond_0
    const-string v0, "\u7f13\u5b58\u4e0d\u53ef\u7528"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 28315
    :goto_0
    return-void

    .line 28313
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    .line 28545
    invoke-static {v0}, Landroid/support/design/widget/am;->g(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_2

    move v0, v1

    .line 28313
    :goto_1
    if-eqz v0, :cond_3

    .line 29356
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const v1, 0x7f05019e

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f0500e4

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->b(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f0500e5

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/be;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/be;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 29357
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f05019b

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/bd;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/bd;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 29363
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 29370
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 28545
    goto :goto_1

    .line 30324
    :cond_3
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const v3, 0x7f0500e1

    invoke-virtual {p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const v2, 0x7f0500e2

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f0500c2

    invoke-virtual {p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 30325
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v1, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0500e7

    invoke-virtual {v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/bc;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/bc;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 30326
    invoke-virtual {v1, v0, v2}, Luk/me/lewisdeane/ldialogs/h;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 30348
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    .line 30349
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method static synthetic D(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method private D()V
    .locals 3

    .prologue
    .line 1637
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1644
    :goto_0
    return-void

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    if-nez v0, :cond_1

    .line 15650
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    .line 15651
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->x:Ljava/util/LinkedList;

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a(Lcom/ushaqi/zhuishushenqi/reader/Reader;Ljava/util/LinkedList;)V

    .line 15652
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/aO;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/aO;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 15660
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/aP;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/aP;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 15671
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/aQ;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/aQ;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1643
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/support/v4/app/FragmentActivity;Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;)V

    goto :goto_0
.end method

.method private E()V
    .locals 5

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    if-nez v0, :cond_1

    .line 1790
    :cond_0
    return-void

    .line 1781
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1782
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v3

    .line 1783
    if-eqz v3, :cond_2

    .line 1784
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v3

    .line 1785
    if-eqz v3, :cond_2

    .line 1786
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->g()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->setMaxIndex(I)V

    .line 1781
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic E(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 3

    .prologue
    .line 115
    .line 30949
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 30950
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 30951
    const/4 v1, 0x1

    const-string v2, "lock_tag"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab:Landroid/os/PowerManager$WakeLock;

    .line 30952
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 30953
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 115
    :cond_0
    return-void
.end method

.method private F()V
    .locals 1

    .prologue
    .line 1793
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o:Z

    if-eqz v0, :cond_0

    .line 1794
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H()V

    .line 1798
    :goto_0
    return-void

    .line 1796
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G()V

    goto :goto_0
.end method

.method static synthetic F(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 3

    .prologue
    .line 115
    .line 31924
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->s(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31925
    const v0, 0x7f0501a5

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 31929
    :goto_0
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v1, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 31930
    const v2, 0x7f0501a4

    invoke-virtual {p0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 32036
    iput-object v2, v1, Luk/me/lewisdeane/ldialogs/h;->d:Ljava/lang/String;

    .line 32046
    iput-object v0, v1, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 31930
    const-string v0, "\u4e0b\u8f7d"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/ao;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/ao;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 31931
    invoke-virtual {v1, v0, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/an;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/an;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 31940
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 31945
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 115
    return-void

    .line 31927
    :cond_0
    const v0, 0x7f0501a3

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic G(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z:I

    return v0
.end method

.method private G()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1816
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o:Z

    if-nez v0, :cond_2

    .line 1817
    iput-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o:Z

    .line 1818
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    if-nez v0, :cond_3

    .line 1819
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    .line 16141
    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->setVisibility(I)V

    .line 1820
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1821
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1823
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->E:Z

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17010
    :cond_0
    const/4 v0, 0x0

    .line 17011
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v1

    .line 17012
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 17013
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 17015
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->setChapterLink(Ljava/lang/String;)V

    .line 1828
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p:Z

    if-nez v0, :cond_2

    .line 1829
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1841
    :cond_2
    :goto_0
    return-void

    .line 1831
    :cond_3
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    if-ne v0, v2, :cond_4

    .line 1832
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    .line 17111
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->clearAnimation()V

    .line 1833
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->a()V

    goto :goto_0

    .line 1834
    :cond_4
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1835
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->pauseSpeaking()V

    .line 1836
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setPause(Z)V

    .line 1837
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a()V

    .line 1838
    const-string v0, "tts_pause_speaking"

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private H()V
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

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1845
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o:Z

    if-eqz v0, :cond_3

    .line 1846
    iput-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o:Z

    .line 1847
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    .line 17145
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->setVisibility(I)V

    .line 1848
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    .line 17255
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setVisibility(I)V

    .line 1850
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->b()V

    .line 1851
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    if-ne v0, v4, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->e()V

    .line 1854
    :cond_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1855
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    .line 17404
    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setVisibility(I)V

    .line 1856
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1857
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->resumeSpeaking()V

    .line 1858
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setPause(Z)V

    .line 1862
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1863
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 1864
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1865
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->F:Z

    if-eqz v0, :cond_5

    .line 1866
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1871
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q:Landroid/view/View;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/view/View;)V

    .line 1874
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1875
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p:Z

    if-eqz v0, :cond_4

    .line 1876
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q:Landroid/view/View;

    const/16 v1, 0x807

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1885
    :cond_4
    :goto_1
    return-void

    .line 17922
    :cond_5
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 17923
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 17924
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 17926
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p:Z

    if-eqz v0, :cond_2

    .line 17927
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 1881
    :cond_6
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p:Z

    if-eqz v0, :cond_4

    .line 1882
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1
.end method

.method static synthetic H(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic I(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa:Ljava/util/LinkedList;

    return-object v0
.end method

.method private I()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1888
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setVisibility(I)V

    .line 1889
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->U:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1890
    return-void
.end method

.method private J()V
    .locals 2

    .prologue
    .line 1912
    const-string v0, "reader_opt_full_screen"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->F:Z

    .line 1913
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->F:Z

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->a(Z)V

    .line 1914
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H()V

    .line 1915
    return-void
.end method

.method static synthetic J(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    .line 32909
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 32910
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 32911
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z:I

    .line 32912
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W:I

    .line 32913
    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X:I

    .line 32915
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e()V

    .line 32916
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->N()V

    .line 115
    return-void
.end method

.method static synthetic K(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 2

    .prologue
    .line 115
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z:I

    return v0
.end method

.method private K()V
    .locals 6

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1986
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->d()I

    move-result v0

    .line 1987
    if-eqz v0, :cond_0

    .line 1988
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->l:Landroid/os/Handler;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ad:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1990
    :cond_0
    return-void
.end method

.method private L()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    .line 18111
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->clearAnimation()V

    .line 2105
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    .line 2106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setReadMode(I)V

    .line 2107
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H()V

    .line 2108
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I()V

    .line 18154
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o:Z

    if-eqz v0, :cond_1

    .line 18155
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H()V

    .line 18156
    :cond_0
    :goto_0
    return-void

    .line 18158
    :cond_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 18159
    if-eqz v0, :cond_0

    .line 18163
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18164
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 18165
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->v()V

    goto :goto_0
.end method

.method static synthetic L(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O()V

    return-void
.end method

.method static synthetic M(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private M()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2114
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L()V

    .line 2121
    :goto_0
    return-void

    .line 2117
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 18893
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setVisibility(I)V

    .line 18895
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18896
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->U:Landroid/view/View;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 18900
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->U:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2120
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->a()V

    goto :goto_0

    .line 18898
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->U:Landroid/view/View;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method private N()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2124
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 2125
    if-nez v0, :cond_0

    .line 2150
    :goto_0
    return-void

    .line 2128
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->E()V

    .line 2130
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2131
    :cond_1
    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 2133
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2134
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2138
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->b()V

    .line 2140
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 2141
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->v()V

    goto :goto_0

    .line 2136
    :cond_3
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2144
    :cond_4
    const v0, 0x7f0500ce

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 2145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    .line 19111
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->clearAnimation()V

    .line 2146
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I()V

    .line 2147
    iput v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    .line 2148
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setReadMode(I)V

    goto :goto_0
.end method

.method static synthetic N(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 1

    .prologue
    .line 115
    .line 33091
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->a()V

    .line 115
    return-void
.end method

.method private O()V
    .locals 3

    .prologue
    .line 2215
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->P()V

    .line 2216
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d:Ljava/lang/String;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L:I

    invoke-static {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 2217
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->startActivity(Landroid/content/Intent;)V

    .line 2218
    const v0, 0x7f04001a

    const v1, 0x7f04001b

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->overridePendingTransition(II)V

    .line 2219
    return-void
.end method

.method static synthetic O(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I:Z

    return v0
.end method

.method private P()V
    .locals 2

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    if-eqz v0, :cond_0

    .line 2223
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 2224
    if-eqz v0, :cond_0

    .line 2225
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setTocIndex(I)V

    .line 2226
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->setChapterTitle(Ljava/lang/String;)V

    .line 2227
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 2230
    :cond_0
    return-void
.end method

.method static synthetic P(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 1

    .prologue
    .line 115
    .line 34087
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->b()V

    .line 115
    return-void
.end method

.method private Q()V
    .locals 3

    .prologue
    .line 2299
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2300
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2301
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2302
    invoke-static {v0}, Landroid/support/design/widget/am;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2303
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->x:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2306
    :cond_0
    return-void
.end method

.method static synthetic Q(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->B()V

    return-void
.end method

.method private R()V
    .locals 3

    .prologue
    .line 2417
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2418
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 2419
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2420
    return-void

    .line 2418
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->f()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method static synthetic R(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u()V

    return-void
.end method

.method static synthetic S(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->v()V

    return-void
.end method

.method static synthetic T(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/bH;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i:Lcom/ushaqi/zhuishushenqi/reader/bH;

    return-object v0
.end method

.method static synthetic U(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->y()V

    return-void
.end method

.method static synthetic V(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->z()V

    return-void
.end method

.method static synthetic W(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->F()V

    return-void
.end method

.method static synthetic X(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->x()V

    return-void
.end method

.method static synthetic Y(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/Reader;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    return-object v0
.end method

.method static synthetic Z(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    return p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 295
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_ID"

    .line 296
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "TOC_ID"

    invoke-virtual {v0, v1, p3}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "SOURCE_HOST"

    invoke-virtual {v0, v1, p4}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "IS_SHOW_TOC"

    .line 297
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/HashMap;Z)Landroid/content/Intent;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 302
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_ID"

    .line 303
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "TOC_ID"

    invoke-virtual {v0, v1, p3}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "SOURCE_HOST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "IS_SHOW_TOC"

    const/4 v2, 0x0

    .line 304
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "CHAPTERS_KEY"

    invoke-virtual {v0, v1, p6}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "HAS_OTHER_SOURCES"

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 289
    new-instance v0, Lcom/ushaqi/zhuishushenqi/d;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/d;-><init>()V

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;

    invoke-virtual {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/d;->a(Landroid/content/Context;Ljava/lang/Class;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_ID"

    .line 290
    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "BOOK_TITLE"

    invoke-virtual {v0, v1, p2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "TOC_ID"

    invoke-virtual {v0, v1, p3}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "SOURCE_HOST"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "IS_SHOW_TOC"

    const/4 v2, 0x0

    .line 291
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    const-string v1, "HAS_OTHER_SOURCES"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/d;->a(Ljava/lang/String;Ljava/io/Serializable;)Lcom/ushaqi/zhuishushenqi/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/d;->a()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->D:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1974
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G()V

    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 115
    .line 26983
    new-instance v0, Landroid/widget/PopupMenu;

    const/16 v1, 0x35

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 26984
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0d0004

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 26985
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/ap;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/ap;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 27008
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 115
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Lcom/ushaqi/zhuishushenqi/reader/n;)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 115
    .line 34255
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34256
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aget-object v0, v0, v2

    invoke-virtual {v0, p1, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;Z)V

    .line 34257
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    invoke-virtual {v0, v2, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 34258
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/aB;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/aB;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    .line 34308
    :goto_0
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    if-ne v0, v1, :cond_0

    .line 34309
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M()V

    .line 34311
    :cond_0
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 115
    return-void

    .line 34275
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 34276
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aget-object v0, v0, v3

    invoke-virtual {v0, p1, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;Z)V

    .line 34277
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    invoke-virtual {v0, v3, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 34278
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/aD;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/aD;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->b(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    goto :goto_0

    .line 34292
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;Z)V

    .line 34293
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 34294
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/aF;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/aF;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Lcom/ushaqi/zhuishushenqi/reader/n;)V

    invoke-virtual {p1, v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    goto :goto_0
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/reader/n;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1454
    if-nez p1, :cond_0

    .line 1468
    :goto_0
    return-void

    .line 1457
    :cond_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g_()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    .line 1459
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K:Z

    if-eqz v1, :cond_2

    .line 1460
    :cond_1
    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    goto :goto_0

    .line 1463
    :cond_2
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1464
    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    goto :goto_0

    .line 1466
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 819
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 820
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o()V

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y:[Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 825
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y:[Ljava/lang/String;

    aget-object v0, v0, v2

    const-string v1, "\u3000\u3000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 826
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W:I

    .line 827
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X:I

    .line 829
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W:I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X:I

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(II)V

    goto :goto_0

    .line 831
    :cond_2
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X:I

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W:I

    .line 832
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z:I

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 833
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W:I

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y:[Ljava/lang/String;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X:I

    .line 834
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W:I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X:I

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(II)V

    .line 835
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y:[Ljava/lang/String;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ac:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->startSpeaking(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I

    goto :goto_0

    .line 839
    :cond_3
    const-string v0, "\u83b7\u53d6\u7ae0\u8282\u5185\u5bb9\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->v:Z

    return v0
.end method

.method private a(Lcom/ushaqi/zhuishushenqi/util/ae;Ljava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1739
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v1, p3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c(I)Ljava/lang/String;

    move-result-object v1

    .line 1740
    invoke-virtual {p1, p2, v1}, Lcom/ushaqi/zhuishushenqi/util/ae;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1741
    if-eqz v1, :cond_0

    .line 1742
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v1, p3}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(I)V

    .line 1743
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->b(I)V

    .line 1744
    const/4 v0, 0x1

    .line 1746
    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic aa(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L:I

    return v0
.end method

.method static synthetic ab(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k:Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;

    return-object v0
.end method

.method static synthetic ac(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H:Z

    return v0
.end method

.method static synthetic ad(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 4

    .prologue
    .line 115
    .line 34963
    invoke-static {}, Landroid/support/design/widget/am;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34964
    const v0, 0x7f0500d5

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 34966
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a()V

    .line 34968
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->u(Ljava/lang/String;)V

    .line 34969
    const v0, 0x7f0500ab

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic ae(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 2

    .prologue
    .line 115
    .line 35003
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 115
    return-void
.end method

.method static synthetic af(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->P:I

    return v0
.end method

.method static synthetic ag(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 2

    .prologue
    .line 115
    .line 35015
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 35016
    if-eqz v0, :cond_0

    .line 35017
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35494
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/support/design/widget/am;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method static synthetic ah(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->B:Landroid/view/View;

    return-object v0
.end method

.method static synthetic ai(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->z:I

    return v0
.end method

.method static synthetic aj(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->af:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic ak(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A:I

    return v0
.end method

.method static synthetic al(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->y:I

    return v0
.end method

.method static synthetic am(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->C:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic an(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ao(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->x:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic ap(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w:I

    return v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W:I

    return v0
.end method

.method private b(I)V
    .locals 2

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/K;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/aA;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/aA;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v1, p1}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(Lcom/ushaqi/zhuishushenqi/reader/e;I)V

    .line 1248
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 1

    .prologue
    .line 115
    .line 21468
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/V;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/util/V;-><init>(Landroid/content/Context;)V

    .line 115
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 115
    .line 27966
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 27967
    const v1, 0x7f0c042b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27968
    const v1, 0x7f0c042c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27969
    const v1, 0x7f0c042d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27970
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600fe

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S:Landroid/widget/PopupWindow;

    .line 27971
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 27972
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 27973
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27974
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 27975
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 27976
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 27977
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 27978
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S:Landroid/widget/PopupWindow;

    aget v0, v0, v5

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {p0}, Landroid/support/design/widget/am;->l(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Landroid/support/design/widget/am;->k(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, p1, v5, v0, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 115
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H:Z

    return v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X:I

    return v0
.end method

.method private c(I)V
    .locals 3

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/K;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/aS;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/aS;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/K;->b(ILcom/ushaqi/zhuishushenqi/reader/e;Z)V

    .line 1766
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 1

    .prologue
    .line 115
    .line 22282
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->d()[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    move-result-object v0

    .line 22283
    if-eqz v0, :cond_0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 115
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Q:I

    return v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z:I

    return v0
.end method

.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J:Z

    return p1
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->R:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    return-object v0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)V
    .locals 7

    .prologue
    .line 115
    .line 33043
    const-string v1, ""

    .line 33044
    const-string v4, ""

    .line 33045
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 33046
    if-eqz v0, :cond_1

    .line 33047
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 33048
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getFullCover()Ljava/lang/String;

    move-result-object v4

    .line 33056
    :cond_0
    :goto_0
    const-string v2, "\u8fd9\u672c\u4e66\u5199\u7684\u5f88\u597d\uff0c\u4f60\u600e\u4e48\u770b\uff1f"

    .line 33057
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "http://share.zhuishushenqi.com/book/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 33058
    new-instance v6, Lcom/ushaqi/zhuishushenqi/reader/ba;

    invoke-direct {v6, p0}, Lcom/ushaqi/zhuishushenqi/reader/ba;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    move-object v0, p0

    move v5, p1

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/util/T;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/framework/PlatformActionListener;)V

    .line 115
    return-void

    .line 33050
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->c()Lcom/ushaqi/zhuishushenqi/model/BookInfo;

    move-result-object v0

    .line 33051
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33052
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 33053
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookInfo;->getFullCover()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I:Z

    return v0
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H()V

    return-void
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)V
    .locals 1

    .prologue
    .line 115
    const/4 v0, -0x4

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b(I)V

    return-void
.end method

.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z
    .locals 0

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p:Z

    return p1
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    return v0
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    return p1
.end method

.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->E:Z

    return v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    return-object v0
.end method

.method static synthetic h(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c(I)V

    return-void
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->P:I

    return p1
.end method

.method static synthetic i(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    return-object v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    return v0
.end method

.method static synthetic j(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Q:I

    return p1
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->z:I

    return p1
.end method

.method static synthetic k(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    return-object v0
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->y:I

    return p1
.end method

.method static synthetic l(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/bZ;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    return-object v0
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A:I

    return p1
.end method

.method static synthetic m(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/n;
    .locals 1

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    return-object v0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w:I

    return p1
.end method

.method private n()V
    .locals 2

    .prologue
    .line 782
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/TtsSpeakingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 783
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic n(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->N()V

    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 802
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->stopSpeaking()V

    .line 803
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    .line 804
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setReadMode(I)V

    .line 806
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n()V

    .line 807
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H()V

    .line 808
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W:I

    .line 809
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X:I

    .line 810
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z:I

    .line 811
    return-void
.end method

.method static synthetic o(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 2

    .prologue
    .line 115
    .line 22770
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ushaqi/zhuishushenqi/reader/TtsSpeakingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22771
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22774
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private p()V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab:Landroid/os/PowerManager$WakeLock;

    .line 963
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 3

    .prologue
    .line 115
    .line 22844
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22845
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o()V

    .line 22851
    :cond_0
    :goto_0
    return-void

    .line 22848
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 22849
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z:I

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt v0, v1, :cond_0

    .line 22850
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W:I

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X:I

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(II)V

    .line 22851
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y:[Ljava/lang/String;

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ac:Lcom/iflytek/cloud/SynthesizerListener;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->startSpeaking(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I

    goto :goto_0

    .line 22854
    :cond_2
    const-string v0, "\u83b7\u53d6\u7ae0\u8282\u5185\u5bb9\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/iflytek/cloud/SpeechSynthesizer;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    return-object v0
.end method

.method private q()Z
    .locals 2

    .prologue
    .line 1037
    const/4 v0, 0x5

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()V
    .locals 1

    .prologue
    .line 1047
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G:Z

    if-eqz v0, :cond_0

    .line 1048
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->setRequestedOrientation(I)V

    .line 1052
    :goto_0
    return-void

    .line 1050
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method static synthetic r(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n()V

    return-void
.end method

.method private s()V
    .locals 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/ar;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/ar;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/ae;)V

    .line 1071
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/as;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/as;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->b(Lcom/ushaqi/zhuishushenqi/reader/ae;)V

    .line 1083
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t()V

    .line 1084
    return-void
.end method

.method static synthetic s(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p()V

    return-void
.end method

.method private t()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1098
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/at;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/at;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 12116
    iget-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "extra_force_online"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1098
    :cond_1
    invoke-virtual {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Lcom/ushaqi/zhuishushenqi/reader/ad;Z)V

    .line 1113
    return-void
.end method

.method static synthetic t(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 3

    .prologue
    .line 115
    .line 23632
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->e:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setHeight(I)V

    .line 23633
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v2, v2, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setTextSize(IF)V

    .line 23634
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->b:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setLineSpacing(FF)V

    .line 115
    return-void
.end method

.method private u()V
    .locals 2

    .prologue
    .line 1201
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/ay;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/ay;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 1224
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/az;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/az;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setOnClickListener$4b8a6d15(Lcom/umeng/update/a;)V

    .line 1234
    return-void
.end method

.method static synthetic u(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 2

    .prologue
    .line 115
    .line 23638
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h:I

    const v1, 0x7f02023d

    if-ne v0, v1, :cond_0

    .line 23639
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    const v1, 0x7f02023c

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setBackgroundResource(I)V

    .line 23643
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setTextColor(I)V

    .line 115
    return-void

    .line 23641
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v1, v1, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h:I

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private v()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1318
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 1319
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->p()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1320
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->n()I

    move-result v1

    if-ne v1, v8, :cond_1

    .line 1321
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c(I)V

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v0

    .line 12769
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/K;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/aT;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/aT;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v1, v0, v2, v8}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(ILcom/ushaqi/zhuishushenqi/reader/e;Z)V

    goto :goto_0

    .line 1327
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aget-object v1, v1, v9

    .line 1328
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aget-object v2, v2, v8

    .line 1329
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    aget-object v3, v3, v10

    .line 1331
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v4

    .line 1332
    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v5

    .line 1333
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->j()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v6

    .line 1335
    iget v7, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    if-ne v7, v10, :cond_7

    if-eqz v6, :cond_7

    .line 1336
    invoke-virtual {v6}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 13426
    :cond_3
    invoke-virtual {v2, v6, v8}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;Z)V

    .line 13427
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    invoke-virtual {v2, v8, v9}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 13428
    invoke-virtual {v1, v5}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 13429
    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/aK;

    invoke-direct {v1, p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/aK;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v6, v1}, Lcom/ushaqi/zhuishushenqi/reader/n;->a(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    .line 13435
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->x()V

    .line 13436
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 1339
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    if-ne v0, v8, :cond_4

    .line 1341
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M()V

    .line 1345
    :cond_4
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    if-ne v0, v10, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 1347
    invoke-virtual {v6}, Lcom/ushaqi/zhuishushenqi/reader/n;->d()[Ljava/lang/Object;

    move-result-object v1

    .line 1348
    if-eqz v1, :cond_0

    .line 1349
    aget-object v0, v1, v9

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y:[Ljava/lang/String;

    .line 1350
    aget-object v0, v1, v8

    check-cast v0, Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa:Ljava/util/LinkedList;

    .line 1351
    invoke-direct {p0, v8}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Z)V

    goto :goto_0

    .line 1354
    :cond_5
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    aget-object v0, v0, v1

    invoke-virtual {v6}, Lcom/ushaqi/zhuishushenqi/reader/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v9, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(II)V

    goto/16 :goto_0

    .line 1359
    :cond_6
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->f()I

    move-result v0

    .line 14091
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->a()V

    .line 1361
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->b()Lcom/ushaqi/zhuishushenqi/reader/ag;

    move-result-object v1

    .line 1362
    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/aH;

    invoke-direct {v2, p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/aH;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)V

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/ag;->a(Lcom/ushaqi/zhuishushenqi/reader/af;)V

    goto/16 :goto_0

    .line 1384
    :cond_7
    iget v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    if-nez v6, :cond_8

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/reader/n;->f()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1385
    invoke-virtual {v2, v4, v8}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;Z)V

    .line 1386
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    invoke-virtual {v2, v8, v9}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 1387
    invoke-virtual {v3, v5}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    .line 1388
    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/aI;

    invoke-direct {v2, p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/aI;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Lcom/ushaqi/zhuishushenqi/reader/o;)V

    invoke-virtual {v4, v2}, Lcom/ushaqi/zhuishushenqi/reader/n;->b(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    .line 1394
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->x()V

    .line 1395
    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Lcom/ushaqi/zhuishushenqi/reader/n;)V

    goto/16 :goto_0

    .line 1398
    :cond_8
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    if-ne v0, v8, :cond_0

    .line 1399
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    if-ne v0, v8, :cond_9

    .line 1400
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M()V

    goto/16 :goto_0

    .line 1401
    :cond_9
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    if-ne v0, v10, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 1403
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/reader/n;->d()[Ljava/lang/Object;

    move-result-object v1

    .line 1404
    if-eqz v1, :cond_0

    .line 1405
    aget-object v0, v1, v9

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y:[Ljava/lang/String;

    .line 1406
    aget-object v0, v1, v8

    check-cast v0, Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa:Ljava/util/LinkedList;

    .line 1408
    invoke-direct {p0, v8}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Z)V

    goto/16 :goto_0

    .line 1411
    :cond_a
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    aget-object v0, v0, v1

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/reader/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v9, v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(II)V

    goto/16 :goto_0
.end method

.method static synthetic v(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->R()V

    return-void
.end method

.method static synthetic w(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    return-object v0
.end method

.method private w()Z
    .locals 2

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->b()Lcom/ushaqi/zhuishushenqi/reader/ag;

    move-result-object v0

    .line 1420
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ag;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private x()V
    .locals 3

    .prologue
    .line 1443
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 1444
    if-nez v0, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1447
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->l()I

    move-result v2

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->m()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(II)V

    goto :goto_0
.end method

.method static synthetic x(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 1

    .prologue
    .line 115
    .line 24626
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K:Z

    if-eqz v0, :cond_1

    .line 24627
    :cond_0
    const-string v0, "\u76ee\u5f55\u4e0d\u53ef\u7528"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 24629
    :cond_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->D()V

    goto :goto_0
.end method

.method private y()V
    .locals 3

    .prologue
    .line 1474
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o:Z

    if-eqz v0, :cond_1

    .line 1475
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H()V

    .line 1500
    :cond_0
    :goto_0
    return-void

    .line 1478
    :cond_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 1479
    if-eqz v0, :cond_0

    .line 1482
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->E()V

    .line 1484
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1486
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1487
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a(I)Z

    move-result v0

    .line 1488
    if-nez v0, :cond_0

    .line 1489
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->v()V

    goto :goto_0

    .line 1494
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 1495
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->v()V

    goto :goto_0

    .line 1498
    :cond_4
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h_()V

    goto :goto_0
.end method

.method static synthetic y(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 3

    .prologue
    .line 115
    .line 25251
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const-string v1, "\u662f\u5426\u4f7f\u7528\u539f\u7f51\u9875\u9605\u8bfb\uff1f"

    .line 26046
    iput-object v1, v0, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 25251
    const v1, 0x7f050138

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/bb;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/bb;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 25252
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f050011

    const/4 v2, 0x0

    .line 25259
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 115
    return-void
.end method

.method private z()V
    .locals 3

    .prologue
    .line 1506
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o:Z

    if-eqz v0, :cond_1

    .line 1507
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H()V

    .line 1525
    :cond_0
    :goto_0
    return-void

    .line 1510
    :cond_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A()Lcom/ushaqi/zhuishushenqi/reader/n;

    move-result-object v0

    .line 1511
    if-eqz v0, :cond_0

    .line 1515
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/n;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1516
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1517
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->a(I)Z

    goto :goto_0

    .line 1519
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setCurrentItem(IZ)V

    .line 1520
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->v()V

    goto :goto_0

    .line 1523
    :cond_3
    const v0, 0x7f050127

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method static synthetic z(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 2

    .prologue
    .line 115
    .line 26188
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 26189
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->startActivity(Landroid/content/Intent;)V

    .line 26190
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->P:I

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord;->updateCount(Ljava/lang/String;I)V

    .line 115
    return-void
.end method


# virtual methods
.method public OnUpdateBalanceEvent(Lcom/ushaqi/zhuishushenqi/event/G;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2571
    .line 20575
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20578
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bo;

    invoke-direct {v0, p0, v3}, Lcom/ushaqi/zhuishushenqi/reader/bo;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bo;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2572
    :cond_0
    return-void
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->c()V

    .line 2081
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->c()V

    .line 2082
    return-void
.end method

.method public final a(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v1, 0x63

    const/4 v2, 0x0

    .line 2264
    const v0, 0x7f0c024e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2265
    if-nez v0, :cond_0

    .line 2275
    :goto_0
    return-void

    .line 2268
    :cond_0
    if-lez p1, :cond_2

    .line 2269
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2270
    if-le p1, v1, :cond_1

    move p1, v1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2272
    :cond_2
    iput v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Q:I

    .line 2273
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 2086
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->d()V

    .line 2087
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->d()V

    .line 2088
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 2093
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L()V

    .line 2094
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 2100
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->N()V

    .line 2101
    return-void
.end method

.method public final e()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 793
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W:I

    .line 794
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X:I

    .line 796
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 797
    invoke-virtual {v3, v4, v4}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(II)V

    .line 796
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 799
    :cond_0
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/K;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/aR;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/aR;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/K;->a(Lcom/ushaqi/zhuishushenqi/reader/e;)V

    .line 1686
    return-void
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2194
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    if-eqz v0, :cond_0

    .line 2195
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->i()Ljava/lang/String;

    move-result-object v0

    .line 2197
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()V
    .locals 3

    .prologue
    .line 2201
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->P()V

    .line 2203
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2204
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->i()Ljava/lang/String;

    move-result-object v0

    .line 2208
    :goto_0
    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->d:Ljava/lang/String;

    .line 2209
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d:Ljava/lang/String;

    invoke-static {p0, v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2210
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->startActivity(Landroid/content/Intent;)V

    .line 2211
    const v0, 0x7f04001a

    const v1, 0x7f04001b

    invoke-virtual {p0, v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->overridePendingTransition(II)V

    .line 2212
    return-void

    .line 2206
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    array-length v0, v0

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    if-le v0, v1, :cond_0

    .line 2547
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->f()Z

    move-result v0

    .line 2549
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()V
    .locals 4

    .prologue
    .line 2556
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 2557
    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/reader/o;->h()V

    .line 2556
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2559
    :cond_0
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 2566
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->N:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 384
    invoke-super {p0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 385
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bH;->a()V

    .line 387
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/K;

    if-eqz v0, :cond_0

    .line 10935
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J()V

    .line 10936
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->F:Z

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Z)V

    .line 10937
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g()V

    .line 390
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2536
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity;->onBackPressed()V

    .line 2540
    :goto_0
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2541
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/o;->g()V

    .line 2543
    :cond_0
    return-void

    .line 19944
    :cond_1
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v0, p0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    const v1, 0x7f050157

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f0500af

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->b(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f0500a8

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/aX;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/aX;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 19945
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f0500a9

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/aW;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/aW;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    .line 19953
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(ILandroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 19959
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->a()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2021
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2023
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2040
    :goto_0
    return-void

    .line 2025
    :pswitch_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O()V

    goto :goto_0

    .line 2028
    :pswitch_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2029
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2032
    :pswitch_2
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/cb;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/reader/aZ;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/reader/aZ;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/ui/cb;-><init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/ui/cd;)V

    .line 2037
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/cb;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 2023
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c042b
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onConvertChanged(Lcom/ushaqi/zhuishushenqi/event/j;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->b()V

    .line 410
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 209
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 211
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0x100

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 212
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v4, 0x200

    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 214
    const-string v0, "reader_orientation"

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->l(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G:Z

    .line 215
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r()V

    .line 216
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->setContentView(I)V

    .line 218
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->a(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 221
    const-string v0, "BOOK_ID"

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    .line 222
    const-string v0, "BOOK_TITLE"

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d:Ljava/lang/String;

    .line 223
    const-string v0, "SOURCE_HOST"

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->f:Ljava/lang/String;

    .line 224
    const-string v0, "IS_SHOW_TOC"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I:Z

    .line 3025
    const-string v0, "TOC_ID"

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3026
    const-string v5, "MIX_TOC_ID"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3027
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "MIX_TOC_ID"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 225
    :cond_0
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e:Ljava/lang/String;

    .line 3233
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 3234
    if-eqz v0, :cond_6

    .line 3235
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getReadMode()I

    move-result v0

    .line 227
    :goto_0
    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L:I

    .line 228
    const-string v0, "HAS_OTHER_SOURCES"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->N:Z

    .line 230
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->a:Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d:Ljava/lang/String;

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->b:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->f:Ljava/lang/String;

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->d:Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e:Ljava/lang/String;

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->c:Ljava/lang/String;

    .line 234
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L:I

    sput v0, Lcom/ushaqi/zhuishushenqi/util/I;->g:I

    .line 236
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/arcsoft/hpay100/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 3454
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d:Ljava/lang/String;

    iget v7, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L:I

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/ushaqi/zhuishushenqi/reader/Reader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    .line 3455
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "SOURCE_ID"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Ljava/lang/String;)V

    .line 3456
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v5, "CHAPTERS_KEY"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v4, v0}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->a(Ljava/util/Map;)V

    .line 242
    if-eqz p1, :cond_1

    .line 243
    const-string v0, "SaveSelectedPageIndex"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    .line 244
    const-string v0, "SaveChangeOrientation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H:Z

    .line 245
    const-string v0, "SaveTocDisable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J:Z

    .line 246
    const-string v0, "SaveModeDisable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K:Z

    .line 249
    :cond_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Q()V

    .line 4416
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 4417
    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    move-result-object v4

    iput-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->R:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    .line 4418
    const v4, 0x7f0c03a7

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->R:Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 4420
    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4424
    :goto_1
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g_()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    .line 4425
    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 4426
    const v4, 0x7f06010b

    invoke-virtual {v0, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    .line 4427
    const v4, 0x7f02027a

    invoke-virtual {v0, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 4428
    const v4, 0x7f06007f

    invoke-virtual {v0, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffsetRes(I)V

    .line 4429
    const v4, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 4431
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindScrollScale(F)V

    .line 4432
    invoke-virtual {v0, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 4434
    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setSlidingEnabled(Z)V

    .line 4436
    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/aj;

    invoke-direct {v4, p0}, Lcom/ushaqi/zhuishushenqi/reader/aj;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/g;)V

    .line 4747
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez v0, :cond_2

    .line 4748
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/al;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/al;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-static {p0, v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->createSynthesizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechSynthesizer;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    .line 4758
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    const-string v4, "engine_type"

    const-string v5, "local"

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4759
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    const-string v4, "speed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "speech_speed"

    const/16 v7, 0x32

    invoke-static {p0, v6, v7}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4760
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    const-string v4, "voice_name"

    const-string v5, "speech_voice"

    const-string v6, ""

    invoke-static {p0, v5, v6}, Lcom/arcsoft/hpay100/a/a;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5463
    :cond_2
    const v0, 0x7f0c0126

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    .line 5464
    const v0, 0x7f0c012e

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    .line 5465
    const v0, 0x7f0c012d

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    .line 5466
    const v0, 0x7f0c012b

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

    .line 5467
    const v0, 0x7f0c012c

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    .line 5468
    const v0, 0x7f0c0127

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->B:Landroid/view/View;

    .line 5469
    const v0, 0x7f0c0128

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->C:Landroid/widget/TextView;

    .line 5470
    const v0, 0x7f0c0129

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    .line 5471
    const v0, 0x7f0c012a

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->U:Landroid/view/View;

    .line 5473
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/bZ;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    .line 5474
    const v0, 0x7f0c012f

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;

    .line 5475
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->setVisibility(I)V

    .line 5476
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h()Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->a(Z)V

    .line 5477
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/bH;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i:Lcom/ushaqi/zhuishushenqi/reader/bH;

    .line 5575
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/bf;

    invoke-direct {v4, p0}, Lcom/ushaqi/zhuishushenqi/reader/bf;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/cc;)V

    .line 5587
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/bk;

    invoke-direct {v4, p0}, Lcom/ushaqi/zhuishushenqi/reader/bk;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/cb;)V

    .line 5595
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/bl;

    invoke-direct {v4, p0}, Lcom/ushaqi/zhuishushenqi/reader/bl;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/ce;)V

    .line 5607
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/bm;

    invoke-direct {v4, p0}, Lcom/ushaqi/zhuishushenqi/reader/bm;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/ca;)V

    .line 5614
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    new-instance v4, Lcom/ushaqi/zhuishushenqi/reader/bn;

    invoke-direct {v4, p0}, Lcom/ushaqi/zhuishushenqi/reader/bn;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a(Lcom/ushaqi/zhuishushenqi/reader/cd;)V

    .line 5626
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->R()V

    .line 6427
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/reader/bZ;->g:I

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setTextColor(I)V

    .line 6428
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/reader/bZ;->e:I

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setHeight(I)V

    .line 6429
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/reader/bZ;->a:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setTextSize(IF)V

    .line 6430
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/reader/bZ;->b:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v5}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setLineSpacing(FF)V

    .line 6431
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v0, v0, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h:I

    const v4, 0x7f02023d

    if-ne v0, v4, :cond_7

    .line 6432
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    const v4, 0x7f02023c

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setBackgroundResource(I)V

    .line 6651
    :goto_2
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L:I

    const/4 v4, 0x5

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L:I

    const/16 v4, 0xa

    if-eq v0, v4, :cond_3

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L:I

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->h(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L:I

    const/16 v4, 0x9

    if-ne v0, v4, :cond_8

    :cond_3
    move v0, v2

    .line 6653
    :goto_3
    const v4, 0x7f0c03e6

    invoke-virtual {p0, v4}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_9

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 6654
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->setReaderStyle(Lcom/ushaqi/zhuishushenqi/reader/bZ;)V

    .line 6656
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    iget-boolean v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G:Z

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->b(Z)V

    .line 6657
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/ak;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/reader/ak;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;->setOnBtnClickListener$7ead76dc(Lcom/umeng/update/a;)V

    .line 5482
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r:Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;

    invoke-virtual {v0, v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->setReaderStyle(Lcom/ushaqi/zhuishushenqi/reader/bZ;Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;)V

    .line 5483
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/av;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/reader/av;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/db;)V

    .line 5489
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s:Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/aJ;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/reader/aJ;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;->a(Lcom/ushaqi/zhuishushenqi/reader/dc;)V

    .line 5511
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->a(Lcom/iflytek/cloud/SpeechSynthesizer;)V

    .line 5512
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/aU;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/reader/aU;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setOnPlayChangeListener(Lcom/ushaqi/zhuishushenqi/reader/cn;)V

    .line 5562
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;

    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;->setOptionClickListener(Lcom/ushaqi/zhuishushenqi/reader/a;)V

    .line 5563
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0, p0}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setOnPageTurning(Lcom/ushaqi/zhuishushenqi/reader/d;)V

    .line 5564
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setAutoReaderTextView(Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;)V

    .line 5566
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/K;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    invoke-direct {v0, v3, v4}, Lcom/ushaqi/zhuishushenqi/reader/K;-><init>(Lcom/ushaqi/zhuishushenqi/reader/Reader;Lcom/ushaqi/zhuishushenqi/reader/bZ;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j:Lcom/ushaqi/zhuishushenqi/reader/K;

    .line 5567
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->C()V

    .line 7120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m:Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/au;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/reader/au;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 7802
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q:Landroid/view/View;

    .line 7804
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7805
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q:Landroid/view/View;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/reader/aV;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/reader/aV;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 255
    :cond_4
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J()V

    .line 258
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H:Z

    if-eqz v0, :cond_b

    .line 259
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I:Z

    .line 260
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->b()Lcom/ushaqi/zhuishushenqi/reader/Reader;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_a

    .line 262
    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    .line 263
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->B()V

    .line 274
    :goto_5
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bq;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bq;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;B)V

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lcom/ushaqi/zhuishushenqi/reader/bq;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 276
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 277
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bo;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bo;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;B)V

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/reader/bo;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 278
    new-instance v0, Lcom/ushaqi/zhuishushenqi/reader/bp;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bp;-><init>(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/bp;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 283
    :cond_5
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/k;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/k;->a()V

    .line 284
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L:I

    .line 8376
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 8377
    const-string v1, "read_mode_33_new"

    invoke-static {p0, v1, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void

    .line 3237
    :cond_6
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/MyApplication;->d()I

    move-result v0

    goto/16 :goto_0

    .line 4421
    :catch_0
    move-exception v0

    .line 4422
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_1

    .line 6434
    :cond_7
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T:Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;

    iget-object v4, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h:Lcom/ushaqi/zhuishushenqi/reader/bZ;

    iget v4, v4, Lcom/ushaqi/zhuishushenqi/reader/bZ;->h:I

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;->setBackgroundResource(I)V

    goto/16 :goto_2

    :cond_8
    move v0, v1

    .line 6651
    goto/16 :goto_3

    :cond_9
    move v0, v3

    .line 6653
    goto/16 :goto_4

    .line 265
    :cond_a
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s()V

    goto :goto_5

    .line 270
    :cond_b
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s()V

    goto :goto_5
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ag:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 357
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ah:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->stopSpeaking()V

    .line 363
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V:Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->destroy()Z

    .line 364
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->K(Landroid/content/Context;)V

    .line 366
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n()V

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p()V

    .line 370
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 371
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b:[Lcom/ushaqi/zhuishushenqi/reader/o;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 10099
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/squareup/a/b;->b(Ljava/lang/Object;)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 374
    :cond_1
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity;->onDestroy()V

    .line 375
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2508
    packed-switch p1, :pswitch_data_0

    .line 2529
    invoke-super {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2511
    :pswitch_0
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/bH;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    if-nez v2, :cond_0

    .line 2512
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->y()V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2515
    goto :goto_0

    .line 2518
    :pswitch_1
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i:Lcom/ushaqi/zhuishushenqi/reader/bH;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/reader/bH;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    if-nez v2, :cond_2

    .line 2520
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g_()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2521
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g_()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->d()V

    goto :goto_0

    .line 2523
    :cond_1
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->z()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2527
    goto :goto_0

    .line 2508
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

    .line 2494
    const/16 v1, 0x52

    if-ne p1, v1, :cond_1

    .line 2495
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->F()V

    .line 2502
    :cond_0
    :goto_0
    return v0

    .line 2499
    :cond_1
    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    .line 2502
    invoke-super {p0, p1, p2}, Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onModeChanged(Lcom/ushaqi/zhuishushenqi/event/v;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 399
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/v;->a()I

    move-result v0

    .line 400
    if-ne v0, v1, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->finish()V

    .line 405
    :goto_0
    return-void

    .line 11245
    :cond_0
    iput-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K:Z

    .line 11246
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u()V

    .line 11247
    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 337
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity;->onPause()V

    .line 338
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g:Lcom/ushaqi/zhuishushenqi/reader/Reader;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/reader/Reader;->c()V

    .line 9733
    :cond_0
    const-string v1, "key_shelf_sort"

    invoke-static {p0, v1, v0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 9734
    if-ne v1, v0, :cond_2

    .line 9481
    :goto_0
    if-eqz v0, :cond_1

    .line 9482
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->get(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    move-result-object v0

    .line 9483
    if-eqz v0, :cond_1

    .line 9484
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->readTime:Ljava/util/Date;

    .line 9485
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->save()Ljava/lang/Long;

    .line 9487
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/g;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/event/g;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 343
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ae:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_1
    return-void

    .line 9734
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 344
    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 319
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity;->onResume()V

    .line 8999
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 321
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K()V

    .line 324
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ae:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.ushaqi.zhuishushenqi.dlReceiver"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 327
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H()V

    .line 328
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->v:Z

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setResetVoice(Z)V

    .line 330
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u:Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;->setVoiceSourceView()V

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->v:Z

    .line 333
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 309
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 311
    const-string v0, "SaveSelectedPageIndex"

    iget v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    const-string v0, "SaveChangeOrientation"

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 313
    const-string v0, "SaveTocDisable"

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 314
    const-string v0, "SaveModeDisable"

    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 315
    return-void
.end method

.method public onThemeChanged(Lcom/ushaqi/zhuishushenqi/event/C;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O:Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/event/C;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;->a(Z)V

    .line 395
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1994
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity;->onUserInteraction()V

    .line 1995
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K()V

    .line 1996
    return-void
.end method
