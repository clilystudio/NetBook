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
    v0 = "";
    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a:Ljava/lang/String;
    return;
.end method
.method public constructor <init>()V
    .locals 4
    .prologue
    v3 = 0x0;
    v2 = 0x1;
    v1 = 0x0;
    p0.<init>();
    v0 = 0x3;
    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/reader/o;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b = v0;
    v0 = new Handler();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->l = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o = v2;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p = v2;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->v = v1;
    v0 = -0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w = v0;
    v0 = new LinkedList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->x = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I = v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J = v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K = v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M = v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->R = v3;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z = v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab = v3;
    v0 = new am();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ac = v0;
    v0 = new aY();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ad = v0;
    v0 = new bg();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ae = v0;
    v0 = new bh();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->af = v0;
    v0 = new bi();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ag = v0;
    v0 = new bj();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ah = v0;
    return;
.end method
.method static synthetic A(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r;
    return v0;
.end method
.method private A()Lcom/ushaqi/zhuishushenqi/reader/n;
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v0 = v0[v1];
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v0.j();
    :goto_0
    return v0;
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method private B()V
    .locals 10
    .prologue
    v5 = -0x1;
    v4 = 0x1;
    v3 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v0.a(v1);
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v1 = new aw();
    v1.<init>(p0);
    v0.setOnPageChangeListener(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v1 = new ax();
    v1.<init>(p0);
    v0.setOnClickListener$4b8a6d15(v1);
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0 = v0.g();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v0 = v1.equals(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v0 = Lcom/ushaqi/zhuishushenqi/db/BookReadRecord.getOnShelf(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    if (v1 != 0) {
//       if-nez v1, :cond_7
    }
    :cond_1
    v0 = v5;
    :cond_2
    :goto_0
    if (v0 == v5) {
//       if-eq v0, v5, :cond_3
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v1.a(v0, v3);
    :cond_3
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v1 = 0x0;
    v0.c(v1);
    :cond_4
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v0.a(v1);
    v0 = p0.q();
    if (v0 != 0) {
//       if-nez v0, :cond_5
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L;
    v0 = Lcom/arcsoft/hpay100/a/a.h(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_10
    }
    :cond_5
    v0 = p0.q();
    if (v0 == 0) {
//       if-eqz v0, :cond_e
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e;
    v0 = Lcom/ushaqi/zhuishushenqi/db/MixTocRecord.get(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_d
    }
    :cond_6
    :goto_1
    if (v4 == 0) {
//       if-eqz v4, :cond_f
    }
    p0.g();
    :goto_2
    return;
    :cond_7
    v1 = v0.getTocIndex();
    v7 = v0.getChapterTitle();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v0 = v0.g();
    if (v1 > v0) {
//       if-gt v1, v0, :cond_8
    }
    v0 = v1;
    :cond_8
    v8 = new ae();
    v8.<init>();
    v2 = p0.a(v8, v7, v0);
    if (v2 != 0) {
//       if-nez v2, :cond_2
    }
    v0 = v4;
    v6 = v3;
    v2 = v4;
    :goto_3
    v9 = 0x14;
    if (v6 >= v9) {
//       if-ge v6, v9, :cond_c
    }
    if (v2 == 0) {
//       if-eqz v2, :cond_a
    }
    v2 = v1 + v0;
    v9 = p0.a(v8, v7, v2);
    if (v9 == 0) {
//       if-eqz v9, :cond_9
    }
    v0 = v2;
    goto :goto_0
    :cond_9
    v2 = v3;
    :goto_4
    v6 = v6 + 0x1;
    goto :goto_3
    :cond_a
    v2 = v1 - v0;
    v9 = p0.a(v8, v7, v2);
    if (v9 == 0) {
//       if-eqz v9, :cond_b
    }
    v0 = v2;
    goto :goto_0
    :cond_b
    v0 = v0 + 0x1;
    v2 = v4;
    goto :goto_4
    :cond_c
    v0 = v5;
    goto :goto_0
    :cond_d
    v4 = v3;
    goto :goto_1
    :cond_e
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e;
    v0 = Lcom/ushaqi/zhuishushenqi/db/TocReadRecord.get(v0);
    if (v0 != 0) {
//       if-nez v0, :cond_6
    }
    v4 = v3;
    goto :goto_1
    :cond_f
    p0.c(v3);
    goto :goto_2
    :cond_10
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I;
    if (v0 == 0) {
//       if-eqz v0, :cond_11
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H;
    if (v0 != 0) {
//       if-nez v0, :cond_11
    }
    p0.D();
    goto :goto_2
    :cond_11
    p0.g();
    goto :goto_2
.end method
.method static synthetic B(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = 0x1;
    :goto_0
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G = v0;
    p0.r();
    v0 = "reader_orientation";
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G;
    Lcom/arcsoft/hpay100/a/a.b(p0, v0, v1);
    return;
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method private C()V
    .locals 6
    .prologue
    v1 = new aL();
    v1.<init>(p0);
    v2 = new aM();
    v2.<init>(p0);
    v3 = new aN();
    v3.<init>(p0);
    v0 = 0x0;
    :goto_0
    v4 = 0x3;
    if (v0 >= v4) {
//       if-ge v0, v4, :cond_0
    }
    v4 = new o();
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v4.<init>(p0, v5);
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v5[v0] = v4;
    v4.a(v1);
    v4.a(v2);
    v4.a(v3);
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ag;
    v1 = new IntentFilter();
    v2 = "android.intent.action.BATTERY_CHANGED";
    v1.<init>(v2);
    p0.registerReceiver(v0, v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ah;
    v1 = new IntentFilter();
    v2 = "android.intent.action.TIME_TICK";
    v1.<init>(v2);
    p0.registerReceiver(v0, v1);
    return;
.end method
.method static synthetic C(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 5
    .prologue
    v4 = 0x2;
    v1 = 0x1;
    v2 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    v0 = "\u7f13\u5b58\u4e0d\u53ef\u7528";
    Lcom/ushaqi/zhuishushenqi/util/e.a(p0, v0);
    :goto_0
    return;
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v0 = Landroid/support/design/widget/am.g(v0);
    if (v0 != v4) {
//       if-ne v0, v4, :cond_2
    }
    v0 = v1;
    :goto_1
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = new h();
    v0.<init>(p0);
    v1 = 0x7f05019e;
    v0 = v0.a(v1);
    v1 = 0x7f0500e4;
    v0 = v0.b(v1);
    v1 = 0x7f0500e5;
    v2 = new be();
    v2.<init>(p0);
    v0 = v0.a(v1, v2);
    v1 = 0x7f05019b;
    v2 = new bd();
    v2.<init>(p0);
    v0 = v0.b(v1, v2);
    v0.b();
    goto :goto_0
    :cond_2
    v0 = v2;
    goto :goto_1
    :cond_3
    v0 = 0x3;
    new-array v0, v0, [Ljava/lang/String;
    v3 = 0x7f0500e1;
    v3 = p0.getString(v3);
    v0[v2] = v3;
    v2 = 0x7f0500e2;
    v2 = p0.getString(v2);
    v0[v1] = v2;
    v1 = 0x7f0500c2;
    v1 = p0.getString(v1);
    v0[v4] = v1;
    v1 = new h();
    v1.<init>(p0);
    v2 = 0x7f0500e7;
    v1 = v1.a(v2);
    v2 = new bc();
    v2.<init>(p0);
    v0 = v1.a(v0, v2);
    v0 = v0.a();
    v0.show();
    goto :goto_0
.end method
.method static synthetic D(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d;
    return v0;
.end method
.method private D()V
    .locals 3
    .prologue
    v0 = p0.isFinishing();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k;
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;->a()Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->x;
    v0.a(v1, v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k;
    v1 = new aO();
    v1.<init>(p0);
    v0.a(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k;
    v1 = new aP();
    v1.<init>(p0);
    v0.a(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k;
    v1 = new aQ();
    v1.<init>(p0);
    v0.a(v1);
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k;
    Lcom/arcsoft/hpay100/a/a.a(p0, v0);
    goto :goto_0
.end method
.method private E()V
    .locals 5
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    :cond_0
    return;
    :cond_1
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v2 = v1.length;
    v0 = 0x0;
    :goto_0
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_0
    }
    v3 = v1[v0];
    v3 = v3.j();
    if (v3 == 0) {
//       if-eqz v3, :cond_2
    }
    v3 = v3.a();
    if (v3 == 0) {
//       if-eqz v3, :cond_2
    }
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v4 = v4.g();
    v3.setMaxIndex(v4);
    :cond_2
    v0 = v0 + 0x1;
    goto :goto_0
.end method
.method static synthetic E(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = "power";
    v0 = p0.getSystemService(v0);
    check-cast v0, Landroid/os/PowerManager;
    v1 = 0x1;
    v2 = "lock_tag";
    v0 = v0.newWakeLock(v1, v2);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab;
    v0.acquire();
    :cond_0
    return;
.end method
.method private F()V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    p0.H();
    :goto_0
    return;
    :cond_0
    p0.G();
    goto :goto_0
.end method
.method static synthetic F(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 3
    .prologue
    v0 = Lcom/arcsoft/hpay100/a/a.s(p0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = 0x7f0501a5;
    v0 = p0.getString(v0);
    :goto_0
    v1 = new h();
    v1.<init>(p0);
    v2 = 0x7f0501a4;
    v2 = p0.getString(v2);
    v1.Luk/me/lewisdeane/ldialogs/h;->d = v2;
    v1.Luk/me/lewisdeane/ldialogs/h;->e = v0;
    v0 = "\u4e0b\u8f7d";
    v2 = new ao();
    v2.<init>(p0);
    v0 = v1.a(v0, v2);
    v1 = "\u53d6\u6d88";
    v2 = new an();
    v2.<init>(p0);
    v0 = v0.b(v1, v2);
    v0.b();
    return;
    :cond_0
    v0 = 0x7f0501a3;
    v0 = p0.getString(v0);
    goto :goto_0
.end method
.method static synthetic G(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z;
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
    v2 = 0x1;
    v3 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o;
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o = v2;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    if (v0 != 0) {
//       if-nez v0, :cond_3
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r;
    v0.setVisibility(v3);
    v0 = p0.getWindow();
    v1 = 0x800;
    v0.addFlags(v1);
    v0 = p0.getWindow();
    v1 = 0x400;
    v0.clearFlags(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->E;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->B;
    v0.setVisibility(v3);
    :cond_0
    v0 = 0x0;
    v1 = p0.A();
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v2 = v1.a();
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v0 = v1.a();
    v0 = v0.getLink();
    :cond_1
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r;
    v1.setChapterLink(v0);
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p;
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q;
    v0.setSystemUiVisibility(v3);
    :cond_2
    :goto_0
    return;
    :cond_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    if (v0 != v2) {
//       if-ne v0, v2, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0.clearAnimation();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t;
    v0.a();
    goto :goto_0
    :cond_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    v1 = 0x2;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V;
    v0.pauseSpeaking();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u;
    v0.setPause(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u;
    v0.a();
    v0 = "tts_pause_speaking";
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d;
    Lcom/umeng/a/b.a(p0, v0, v1);
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
    v6 = 0x400;
    v5 = 0x200;
    v4 = 0x1;
    v3 = 0x0;
    v2 = 0x8;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o;
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o = v3;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r;
    v0.setVisibility(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s;
    v0.setVisibility(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t;
    v0.b();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    if (v0 != v4) {
//       if-ne v0, v4, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0.e();
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    v1 = 0x2;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u;
    v0.setVisibility(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u;
    v0 = v0.b();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V;
    v0.resumeSpeaking();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u;
    v0.setPause(v3);
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->B;
    v0.setVisibility(v2);
    v0 = p0.getWindow();
    v0.addFlags(v6);
    v0 = p0.getWindow();
    v1 = 0x800;
    v0.clearFlags(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->F;
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.getWindow();
    v0.addFlags(v5);
    :cond_2
    :goto_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q;
    Lcom/arcsoft/hpay100/a/a.a(v0);
    :cond_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i;
    v0 = v0.f();
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p;
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q;
    v1 = 0x807;
    v0.setSystemUiVisibility(v1);
    :cond_4
    :goto_1
    return;
    :cond_5
    v0 = p0.getWindow();
    v1 = 0x800;
    v0.addFlags(v1);
    v0 = p0.getWindow();
    v0.clearFlags(v6);
    v0 = p0.getWindow();
    v0.clearFlags(v5);
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q;
    v0.setSystemUiVisibility(v3);
    goto :goto_0
    :cond_6
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p;
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q;
    v0.setSystemUiVisibility(v4);
    goto :goto_1
.end method
.method static synthetic H(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)[Ljava/lang/String;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y;
    return v0;
.end method
.method static synthetic I(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/util/LinkedList;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa;
    return v0;
.end method
.method private I()V
    .locals 2
    .prologue
    v1 = 0x8;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0.setVisibility(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->U;
    v0.setVisibility(v1);
    return;
.end method
.method private J()V
    .locals 2
    .prologue
    v0 = "reader_opt_full_screen";
    v0 = Lcom/arcsoft/hpay100/a/a.l(p0, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->F = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->F;
    v0.a(v1);
    p0.H();
    return;
.end method
.method static synthetic J(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 2
    .prologue
    v1 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa;
    v0.remove(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa;
    v0 = v0.size();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z = v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W = v1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X = v1;
    :cond_0
    p0.e();
    p0.N();
    return;
.end method
.method static synthetic K(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z;
    v1 = v0 + 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z = v1;
    return v0
.end method
.method private K()V
    .locals 6
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->l;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ad;
    v0.removeCallbacks(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i;
    v0 = v0.d();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->l;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ad;
    int-to-long v4, v0
    v1.postDelayed(v2, v4, v5);
    :cond_0
    return;
.end method
.method private L()V
    .locals 3
    .prologue
    v2 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0.clearAnimation();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M = v2;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v0.setReadMode(v2);
    p0.H();
    p0.I();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    p0.H();
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = p0.A();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v0.f();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v1 = v1 + -0x1;
    v0.setCurrentItem(v1, v2);
    p0.v();
    goto :goto_0
.end method
.method static synthetic L(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.O();
    return;
.end method
.method static synthetic M(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    return v0;
.end method
.method private M()V
    .locals 3
    .prologue
    v2 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v0 = v0[v1];
    v0 = v0.f();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    p0.L();
    :goto_0
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0 = v0.isShown();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0.setVisibility(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v0 = v0.h();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->U;
    v1 = 0x7f02006c;
    v0.setBackgroundResource(v1);
    :goto_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->U;
    v0.setVisibility(v2);
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0.a();
    goto :goto_0
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->U;
    v1 = 0x7f02006b;
    v0.setBackgroundResource(v1);
    goto :goto_1
.end method
.method private N()V
    .locals 4
    .prologue
    v3 = 0x0;
    v0 = p0.A();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    p0.E();
    v1 = v0.e();
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    v1 = p0.w();
    if (v1 != 0) {
//       if-nez v1, :cond_4
    }
    :cond_1
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    v2 = 0x1;
    if (v1 != v2) {
//       if-ne v1, v2, :cond_2
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v1 = v1.i();
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0 = v0.a(p0);
    v1.setText(v0);
    :goto_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0.b();
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v1 = v1 + 0x1;
    v0.setCurrentItem(v1, v3);
    p0.v();
    goto :goto_0
    :cond_3
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0 = v0.c();
    v1.setText(v0);
    goto :goto_1
    :cond_4
    v0 = 0x7f0500ce;
    v0 = p0.getString(v0);
    Lcom/ushaqi/zhuishushenqi/util/e.a(p0, v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0.clearAnimation();
    p0.I();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M = v3;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v0.setReadMode(v3);
    goto :goto_0
.end method
.method static synthetic N(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O;
    v0.a();
    return;
.end method
.method private O()V
    .locals 3
    .prologue
    p0.P();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ModeListActivity.a(p0, v0, v1, v2);
    p0.startActivity(v0);
    v0 = 0x7f04001a;
    v1 = 0x7f04001b;
    p0.overridePendingTransition(v0, v1);
    return;
.end method
.method static synthetic O(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Z
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I;
    return v0
.end method
.method private P()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v0 = Lcom/ushaqi/zhuishushenqi/db/BookReadRecord.get(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v1 = v1.k();
    v0.setTocIndex(v1);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v1 = v1.n();
    v0.setChapterTitle(v1);
    v0.save();
    :cond_0
    return;
.end method
.method static synthetic P(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O;
    v0.b();
    return;
.end method
.method private Q()V
    .locals 3
    .prologue
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e;
    v0 = Lcom/arcsoft/hpay100/a/a.j(v0, v1);
    v1 = v0.iterator();
    :goto_0
    v0 = v1.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v1.next();
    check-cast v0, Ljava/lang/String;
    v0 = Landroid/support/design/widget/am.f(v0);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->x;
    v2.add(v0);
    goto :goto_0
    :cond_0
    return;
.end method
.method static synthetic Q(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.B();
    return;
.end method
.method private R()V
    .locals 3
    .prologue
    v0 = p0.getWindow();
    v1 = v0.getAttributes();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v0 = v0.g();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = -0x40800000    # -1.0f;
    :goto_0
    v1.Landroid/view/WindowManager$LayoutParams;->screenBrightness = v0;
    v0 = p0.getWindow();
    v0.setAttributes(v1);
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v0 = v0.f();
    int-to-float v0, v0
    v2 = 0x437f0000    # 255.0f;
    v0 /= v2;
    goto :goto_0
.end method
.method static synthetic R(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.u();
    return;
.end method
.method static synthetic S(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.v();
    return;
.end method
.method static synthetic T(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/bH;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i;
    return v0;
.end method
.method static synthetic U(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.y();
    return;
.end method
.method static synthetic V(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.z();
    return;
.end method
.method static synthetic W(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.F();
    return;
.end method
.method static synthetic X(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.x();
    return;
.end method
.method static synthetic Y(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/Reader;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    return v0;
.end method
.method static synthetic Z(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.t();
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M = p1;
    return p1
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .prologue
    v0 = new d();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;;
    v0 = v0.a(p0, v1);
    v1 = "BOOK_ID";
    v0 = v0.a(v1, p1);
    v1 = "BOOK_TITLE";
    v0 = v0.a(v1, p2);
    v1 = "TOC_ID";
    v0 = v0.a(v1, p3);
    v1 = "SOURCE_HOST";
    v0 = v0.a(v1, p4);
    v1 = "IS_SHOW_TOC";
    v2 = Ljava/lang/Boolean.valueOf(p5);
    v0 = v0.a(v1, v2);
    v0 = v0.a();
    return v0;
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
    v0 = new d();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;;
    v0 = v0.a(p0, v1);
    v1 = "BOOK_ID";
    v0 = v0.a(v1, p1);
    v1 = "BOOK_TITLE";
    v0 = v0.a(v1, p2);
    v1 = "TOC_ID";
    v0 = v0.a(v1, p3);
    v1 = "SOURCE_HOST";
    v2 = 0x0;
    v0 = v0.a(v1, v2);
    v1 = "IS_SHOW_TOC";
    v2 = 0x0;
    v2 = Ljava/lang/Boolean.valueOf(v2);
    v0 = v0.a(v1, v2);
    v1 = "CHAPTERS_KEY";
    v0 = v0.a(v1, p6);
    v1 = "HAS_OTHER_SOURCES";
    v2 = Ljava/lang/Boolean.valueOf(p7);
    v0 = v0.a(v1, v2);
    v0 = v0.a();
    return v0;
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/content/Intent;
    .locals 3
    .prologue
    v0 = new d();
    v0.<init>();
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;;
    v0 = v0.a(p0, v1);
    v1 = "BOOK_ID";
    v0 = v0.a(v1, p1);
    v1 = "BOOK_TITLE";
    v0 = v0.a(v1, p2);
    v1 = "TOC_ID";
    v0 = v0.a(v1, p3);
    v1 = "SOURCE_HOST";
    v2 = 0x0;
    v0 = v0.a(v1, v2);
    v1 = "IS_SHOW_TOC";
    v2 = 0x0;
    v2 = Ljava/lang/Boolean.valueOf(v2);
    v0 = v0.a(v1, v2);
    v1 = "HAS_OTHER_SOURCES";
    v2 = Ljava/lang/Boolean.valueOf(p6);
    v0 = v0.a(v1, v2);
    v0 = v0.a();
    return v0;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->D = p1;
    return p1;
.end method
.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .prologue
    v0 = p0.getIntent();
    v0 = v0.getStringExtra(p1);
    return v0;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa = p1;
    return p1;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.G();
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Landroid/view/View;)V
    .locals 4
    .prologue
    v0 = new PopupMenu();
    v1 = 0x35;
    v0.<init>(p0, p1, v1);
    v1 = v0.getMenuInflater();
    v2 = 0x7f0d0004;
    v3 = v0.getMenu();
    v1.inflate(v2, v3);
    v1 = new ap();
    v1.<init>(p0);
    v0.setOnMenuItemClickListener(v1);
    v0.show();
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Lcom/ushaqi/zhuishushenqi/reader/n;)V
    .locals 4
    .prologue
    v3 = 0x2;
    v2 = 0x0;
    v1 = 0x1;
    v0 = p1.f();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v0 = v0[v2];
    v0.a(p1, v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v0.setCurrentItem(v2, v2);
    v0 = new aB();
    v0.<init>(p0);
    p1.a(v0);
    :goto_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_0
    }
    p0.M();
    :cond_0
    p0.a(p1);
    return;
    :cond_1
    v0 = p1.e();
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v0 = v0[v3];
    v0.a(p1, v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v0.setCurrentItem(v3, v2);
    v0 = new aD();
    v0.<init>(p0);
    p1.b(v0);
    goto :goto_0
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v0 = v0[v1];
    v0.a(p1, v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v0.setCurrentItem(v1, v2);
    v0 = new aF();
    v0.<init>(p0, p1);
    p1.a(v0);
    goto :goto_0
.end method
.method private a(Lcom/ushaqi/zhuishushenqi/reader/n;)V
    .locals 3
    .prologue
    v2 = 0x0;
    if (p1 != 0) {
//       if-nez p1, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v0 = p0.g_();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J;
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K;
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    :cond_1
    v0.setSlidingEnabled(v2);
    goto :goto_0
    :cond_2
    v1 = p1.e();
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v0.setSlidingEnabled(v2);
    goto :goto_0
    :cond_3
    v1 = 0x1;
    v0.setSlidingEnabled(v1);
    goto :goto_0
.end method
.method private a(Z)V
    .locals 3
    .prologue
    v2 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v0 = v0[v1];
    v0 = v0.f();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    p0.o();
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y;
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    if (p1 == 0) {
//       if-eqz p1, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y;
    v0 = v0[v2];
    v1 = "\u3000\u3000";
    v0 = v0.startsWith(v1);
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W = v2;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y;
    v0 = v0[v2];
    v0 = v0.length();
    v0 = v0 + 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v0 = v0[v1];
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X;
    v0.a(v1, v2);
    goto :goto_0
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y;
    v1 = v1.length;
    v1 = v1 + -0x1;
    if (v0 > v1) {
//       if-gt v0, v1, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z;
    v1 = v1[v2];
    v1 = v1.length();
    v0 += v1;
    v0 = v0 + 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v0 = v0[v1];
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X;
    v0.a(v1, v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z;
    v1 = v1[v2];
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ac;
    v0.startSpeaking(v1, v2);
    goto :goto_0
    :cond_3
    v0 = "\u83b7\u53d6\u7ae0\u8282\u5185\u5bb9\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5";
    Lcom/ushaqi/zhuishushenqi/util/e.a(p0, v0);
    goto :goto_0
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z
    .locals 1
    .prologue
    v0 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->v = v0;
    return v0
.end method
.method private a(Lcom/ushaqi/zhuishushenqi/util/ae;Ljava/lang/String;I)Z
    .locals 2
    .prologue
    v0 = 0x0;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v1 = v1.c(p3);
    v1 = p1.a(p2, v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v1.a(p3);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v1.b(v0);
    v0 = 0x1;
    :cond_0
    return v0
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y = p1;
    return p1;
.end method
.method static synthetic aa(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L;
    return v0
.end method
.method static synthetic ab(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->k;
    return v0;
.end method
.method static synthetic ac(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Z
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H;
    return v0
.end method
.method static synthetic ad(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 4
    .prologue
    invoke-static {}, Landroid/support/design/widget/am;->f()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = 0x7f0500d5;
    v0 = p0.getString(v0);
    Lcom/ushaqi/zhuishushenqi/util/e.a(p0, v0);
    :goto_0
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v0.a();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    Lcom/arcsoft/hpay100/a/a.u(v0);
    v0 = 0x7f0500ab;
    v0 = p0.getString(v0);
    v1 = 0x1;
    new-array v1, v1, [Ljava/lang/Object;
    v2 = 0x0;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d;
    v1[v2] = v3;
    v0 = Ljava/lang/String.format(v0, v1);
    Lcom/ushaqi/zhuishushenqi/util/e.a(p0, v0);
    goto :goto_0
.end method
.method static synthetic ae(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 2
    .prologue
    v0 = p0.getWindow();
    v1 = 0x80;
    v0.clearFlags(v1);
    return;
.end method
.method static synthetic af(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->P;
    return v0
.end method
.method static synthetic ag(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r;
    v0 = v0.b();
    v0 = v0.getText();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v0.toString();
    v1 = 0x0;
    Landroid/support/design/widget/am.a(p0, v0, v1);
    :cond_0
    return;
.end method
.method static synthetic ah(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Landroid/view/View;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->B;
    return v0;
.end method
.method static synthetic ai(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->z;
    return v0
.end method
.method static synthetic aj(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Landroid/os/Handler;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->af;
    return v0;
.end method
.method static synthetic ak(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A;
    return v0
.end method
.method static synthetic al(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->y;
    return v0
.end method
.method static synthetic am(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Landroid/widget/TextView;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->C;
    return v0;
.end method
.method static synthetic an(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/lang/String;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->D;
    return v0;
.end method
.method static synthetic ao(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Ljava/util/LinkedList;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->x;
    return v0;
.end method
.method static synthetic ap(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w;
    return v0
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 1
    .prologue
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W = v0;
    return v0
.end method
.method private b(I)V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j;
    v1 = new aA();
    v1.<init>(p0);
    v0.a(v1, p1);
    return;
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 1
    .prologue
    v0 = new V();
    v0.<init>(p0);
    return;
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Landroid/view/View;)V
    .locals 6
    .prologue
    v5 = 0x0;
    v4 = 0x1;
    v0 = p0.getLayoutInflater();
    v1 = 0x7f03014b;
    v2 = 0x0;
    v0 = v0.inflate(v1, v2);
    v1 = 0x7f0c042b;
    v1 = v0.findViewById(v1);
    v1.setOnClickListener(p0);
    v1 = 0x7f0c042c;
    v1 = v0.findViewById(v1);
    v1.setOnClickListener(p0);
    v1 = 0x7f0c042d;
    v1 = v0.findViewById(v1);
    v1.setOnClickListener(p0);
    v1 = new PopupWindow();
    v2 = p0.getResources();
    v3 = 0x7f0600fe;
    v2 = v2.getDimensionPixelSize(v3);
    v3 = -0x2;
    v1.<init>(v0, v2, v3);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S = v1;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S;
    v0.setFocusable(v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S;
    v0.setOutsideTouchable(v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S;
    v1 = new ColorDrawable();
    v1.<init>(v5);
    v0.setBackgroundDrawable(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S;
    v0 = v0.getContentView();
    v0.setFocusableInTouchMode(v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S;
    v0 = v0.getContentView();
    v0.setFocusable(v4);
    v0 = 0x2;
    new-array v0, v0, [I
    p1.getLocationOnScreen(v0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S;
    v0 = v0[v5];
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S;
    v2 = v2.getWidth();
    v0 -= v2;
    v2 = p1.getWidth();
    v0 += v2;
    v2 = Landroid/support/design/widget/am.l(p0);
    v3 = Landroid/support/design/widget/am.k(p0);
    v2 += v3;
    v1.showAtLocation(p1, v5, v0, v2);
    return;
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z
    .locals 1
    .prologue
    v0 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H = v0;
    return v0
.end method
.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 1
    .prologue
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X = v0;
    return v0
.end method
.method private c(I)V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j;
    v1 = new aS();
    v1.<init>(p0);
    v2 = 0x1;
    v0.b(p1, v1, v2);
    return;
.end method
.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v0 = v0.d();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v0.length;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    :cond_0
    return;
.end method
.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)V
    .locals 1
    .prologue
    v0 = 0x0;
    p0.a(v0);
    return;
.end method
.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Q;
    return v0
.end method
.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 1
    .prologue
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z = v0;
    return v0
.end method
.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J = p1;
    return p1
.end method
.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->R;
    return v0;
.end method
.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)V
    .locals 7
    .prologue
    v1 = "";
    v4 = "";
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v0 = Lcom/ushaqi/zhuishushenqi/db/BookReadRecord.get(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v1 = v0.getTitle();
    v4 = v0.getFullCover();
    :cond_0
    :goto_0
    v2 = "\u8fd9\u672c\u4e66\u5199\u7684\u5f88\u597d\uff0c\u4f60\u600e\u4e48\u770b\uff1f";
    v0 = new StringBuilder();
    v3 = "http://share.zhuishushenqi.com/book/";
    v0.<init>(v3);
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v0 = v0.append(v3);
    v3 = v0.toString();
    v6 = new ba();
    v6.<init>(p0);
    v0 = p0;
    v5 = p1;
    Lcom/ushaqi/zhuishushenqi/util/T.a(v0 .. v6);
    return;
    :cond_1
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0 = v0.c();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v2 = v0.getId();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v2 = v0.getId();
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v2 = v2.equals(v3);
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v1 = v0.getTitle();
    v4 = v0.getFullCover();
    goto :goto_0
.end method
.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z
    .locals 1
    .prologue
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I = v0;
    return v0
.end method
.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.H();
    return;
.end method
.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)V
    .locals 1
    .prologue
    v0 = -0x4;
    p0.b(v0);
    return;
.end method
.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->p = p1;
    return p1
.end method
.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    return v0
.end method
.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n = p1;
    return p1
.end method
.method static synthetic g(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;Z)Z
    .locals 1
    .prologue
    v0 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->E = v0;
    return v0
.end method
.method static synthetic h(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    return v0;
.end method
.method static synthetic h(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)V
    .locals 0
    .prologue
    p0.c(p1);
    return;
.end method
.method static synthetic i(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->P = p1;
    return p1
.end method
.method static synthetic i(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)[Lcom/ushaqi/zhuishushenqi/reader/o;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    return v0;
.end method
.method static synthetic j(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    return v0
.end method
.method static synthetic j(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Q = p1;
    return p1
.end method
.method static synthetic k(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->z = p1;
    return p1
.end method
.method static synthetic k(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    return v0;
.end method
.method static synthetic l(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->y = p1;
    return p1
.end method
.method static synthetic l(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/bZ;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    return v0;
.end method
.method static synthetic m(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->A = p1;
    return p1
.end method
.method static synthetic m(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/n;
    .locals 1
    .prologue
    v0 = p0.A();
    return v0;
.end method
.method static synthetic n(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;I)I
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->w = p1;
    return p1
.end method
.method private n()V
    .locals 2
    .prologue
    :try_start_0
    v0 = new Intent();
    v1 = Lcom/ushaqi/zhuishushenqi/reader/TtsSpeakingService;;
    v0.<init>(p0, v1);
    p0.stopService(v0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    goto :goto_0
.end method
.method static synthetic n(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.N();
    return;
.end method
.method private o()V
    .locals 3
    .prologue
    v2 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V;
    v0.stopSpeaking();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M = v2;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    v0.setReadMode(v1);
    p0.n();
    p0.H();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W = v2;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X = v2;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z = v2;
    return;
.end method
.method static synthetic o(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 2
    .prologue
    :try_start_0
    v0 = new Intent();
    v1 = Lcom/ushaqi/zhuishushenqi/reader/TtsSpeakingService;;
    v0.<init>(p0, v1);
    p0.startService(v0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    goto :goto_0
.end method
.method private p()V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab;
    v0 = v0.isHeld();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab;
    v0.release();
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ab = v0;
    :cond_0
    return;
.end method
.method static synthetic p(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v0 = v0[v1];
    v0 = v0.f();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    p0.o();
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y;
    v1 = v1.length;
    v1 = v1 + -0x1;
    if (v0 > v1) {
//       if-gt v0, v1, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v0 = v0[v1];
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X;
    v0.a(v1, v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Z;
    v1 = v1[v2];
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ac;
    v0.startSpeaking(v1, v2);
    goto :goto_0
    :cond_2
    v0 = "\u83b7\u53d6\u7ae0\u8282\u5185\u5bb9\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5";
    Lcom/ushaqi/zhuishushenqi/util/e.a(p0, v0);
    goto :goto_0
.end method
.method static synthetic q(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/iflytek/cloud/SpeechSynthesizer;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V;
    return v0;
.end method
.method private q()Z
    .locals 2
    .prologue
    v0 = 0x5;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_0
    }
    v0 = 0x1;
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method private r()V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = 0x1;
    p0.setRequestedOrientation(v0);
    :goto_0
    return;
    :cond_0
    v0 = 0x0;
    p0.setRequestedOrientation(v0);
    goto :goto_0
.end method
.method static synthetic r(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.n();
    return;
.end method
.method private s()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v1 = new ar();
    v1.<init>(p0);
    v0.a(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v1 = new as();
    v1.<init>(p0);
    v0.b(v1);
    p0.t();
    return;
.end method
.method static synthetic s(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.p();
    return;
.end method
.method private t()V
    .locals 5
    .prologue
    v0 = 0x0;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v2 = new at();
    v2.<init>(p0);
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I;
    if (v3 != 0) {
//       if-nez v3, :cond_0
    }
    v3 = p0.getIntent();
    v4 = "extra_force_online";
    v3 = v3.getBooleanExtra(v4, v0);
    if (v3 == 0) {
//       if-eqz v3, :cond_1
    }
    :cond_0
    v0 = 0x1;
    :cond_1
    v1.a(v2, v0);
    return;
.end method
.method static synthetic t(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->e;
    v0.setHeight(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v1 = 0x0;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v2 = v2.Lcom/ushaqi/zhuishushenqi/reader/bZ;->a;
    int-to-float v2, v2
    v0.setTextSize(v1, v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->b;
    int-to-float v1, v1
    v2 = 0x3f800000    # 1.0f;
    v0.setLineSpacing(v1, v2);
    return;
.end method
.method private u()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v1 = new ay();
    v1.<init>(p0);
    v0.setAdapter(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v1 = new az();
    v1.<init>(p0);
    v0.setOnClickListener$4b8a6d15(v1);
    return;
.end method
.method static synthetic u(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->h;
    v1 = 0x7f02023d;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v1 = 0x7f02023c;
    v0.setBackgroundResource(v1);
    :goto_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->g;
    v0.setTextColor(v1);
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->h;
    v0.setBackgroundResource(v1);
    goto :goto_0
.end method
.method private v()V
    .locals 11
    .prologue
    v10 = 0x2;
    v9 = 0x0;
    v8 = 0x1;
    v0 = p0.A();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v1 = v0.p();
    if (v1 != 0) {
//       if-nez v1, :cond_2
    }
    v1 = v0.n();
    if (v1 != v8) {
//       if-ne v1, v8, :cond_1
    }
    v0 = v0.l();
    p0.c(v0);
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = v0.l();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j;
    v2 = new aT();
    v2.<init>(p0);
    v1.a(v0, v2, v8);
    goto :goto_0
    :cond_2
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v1 = v1[v9];
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v2 = v2[v8];
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v3 = v3[v10];
    v4 = v1.j();
    v5 = v2.j();
    v6 = v3.j();
    v7 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    if (v7 != v10) {
//       if-ne v7, v10, :cond_7
    }
    if (v6 == 0) {
//       if-eqz v6, :cond_7
    }
    v4 = v6.e();
    if (v4 != 0) {
//       if-nez v4, :cond_3
    }
    v4 = p0.w();
    if (v4 == 0) {
//       if-eqz v4, :cond_6
    }
    :cond_3
    v2.a(v6, v8);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v2.setCurrentItem(v8, v9);
    v1.a(v5);
    v1 = new aK();
    v1.<init>(p0, v3);
    v6.a(v1);
    p0.x();
    p0.a(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    if (v0 != v8) {
//       if-ne v0, v8, :cond_4
    }
    p0.M();
    :cond_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    if (v0 != v10) {
//       if-ne v0, v10, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa;
    v0 = v0.size();
    if (v0 != 0) {
//       if-nez v0, :cond_5
    }
    v1 = v6.d();
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = v1[v9];
    check-cast v0, [Ljava/lang/String;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y = v0;
    v0 = v1[v8];
    check-cast v0, Ljava/util/LinkedList;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa = v0;
    p0.a(v8);
    goto :goto_0
    :cond_5
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v0 = v0[v1];
    v1 = v6.c();
    v1 = v1.length();
    v1 = v1 + 0x1;
    v0.a(v9, v1);
    goto/16 :goto_0
    :cond_6
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v0 = v0.f();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O;
    v1.a();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v1 = v1.b();
    v2 = new aH();
    v2.<init>(p0, v0);
    v1.a(v2);
    goto/16 :goto_0
    :cond_7
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    if (v6 != 0) {
//       if-nez v6, :cond_8
    }
    if (v4 == 0) {
//       if-eqz v4, :cond_8
    }
    v6 = v4.f();
    if (v6 == 0) {
//       if-eqz v6, :cond_8
    }
    v2.a(v4, v8);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v2.setCurrentItem(v8, v9);
    v3.a(v5);
    v2 = new aI();
    v2.<init>(p0, v1);
    v4.b(v2);
    p0.x();
    p0.a(v0);
    goto/16 :goto_0
    :cond_8
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    if (v0 != v8) {
//       if-ne v0, v8, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    if (v0 != v8) {
//       if-ne v0, v8, :cond_9
    }
    p0.M();
    goto/16 :goto_0
    :cond_9
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    if (v0 != v10) {
//       if-ne v0, v10, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa;
    v0 = v0.size();
    if (v0 != 0) {
//       if-nez v0, :cond_a
    }
    v1 = v5.d();
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = v1[v9];
    check-cast v0, [Ljava/lang/String;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Y = v0;
    v0 = v1[v8];
    check-cast v0, Ljava/util/LinkedList;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->aa = v0;
    p0.a(v8);
    goto/16 :goto_0
    :cond_a
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v0 = v0[v1];
    v1 = v5.c();
    v1 = v1.length();
    v1 = v1 + 0x1;
    v0.a(v9, v1);
    goto/16 :goto_0
.end method
.method static synthetic v(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 0
    .prologue
    p0.R();
    return;
.end method
.method static synthetic w(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s;
    return v0;
.end method
.method private w()Z
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v0 = v0.b();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v0.getStatus();
    v1 = Landroid/os/AsyncTask$Status;->FINISHED;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_1
    }
    :cond_0
    v0 = 0x1;
    :goto_0
    return v0
    :cond_1
    v0 = 0x0;
    goto :goto_0
.end method
.method private x()V
    .locals 3
    .prologue
    v0 = p0.A();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v2 = v0.l();
    v0 = v0.m();
    v1.a(v2, v0);
    goto :goto_0
.end method
.method static synthetic x(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    v0 = "\u76ee\u5f55\u4e0d\u53ef\u7528";
    Lcom/ushaqi/zhuishushenqi/util/e.a(p0, v0);
    :goto_0
    return;
    :cond_1
    p0.D();
    goto :goto_0
.end method
.method private y()V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    p0.H();
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = p0.A();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    p0.E();
    v0 = v0.e();
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = p0.w();
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i;
    v0 = v0.c();
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v1 = v1 + 0x1;
    v0 = v0.a(v1);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    p0.v();
    goto :goto_0
    :cond_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v1 = v1 + 0x1;
    v2 = 0x0;
    v0.setCurrentItem(v1, v2);
    p0.v();
    goto :goto_0
    :cond_4
    p0.h_();
    goto :goto_0
.end method
.method static synthetic y(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 3
    .prologue
    v0 = new h();
    v0.<init>(p0);
    v1 = "\u662f\u5426\u4f7f\u7528\u539f\u7f51\u9875\u9605\u8bfb\uff1f";
    v0.Luk/me/lewisdeane/ldialogs/h;->e = v1;
    v1 = 0x7f050138;
    v2 = new bb();
    v2.<init>(p0);
    v0 = v0.a(v1, v2);
    v1 = 0x7f050011;
    v2 = 0x0;
    v0 = v0.b(v1, v2);
    v0.b();
    return;
.end method
.method private z()V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->o;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    p0.H();
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = p0.A();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v0.f();
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i;
    v0 = v0.c();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v1 = v1 + -0x1;
    v0.a(v1);
    goto :goto_0
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v1 = v1 + -0x1;
    v2 = 0x0;
    v0.setCurrentItem(v1, v2);
    p0.v();
    goto :goto_0
    :cond_3
    v0 = 0x7f050127;
    Lcom/ushaqi/zhuishushenqi/util/e.a(p0, v0);
    goto :goto_0
.end method
.method static synthetic z(Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;)V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d;
    v0 = Lcom/ushaqi/zhuishushenqi/ui/post/BookPostTabActivity.a(p0, v0, v1);
    p0.startActivity(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->P;
    Lcom/ushaqi/zhuishushenqi/db/BookTopicEnterRecord.updateCount(v0, v1);
    return;
.end method
# virtual methods
.method public OnUpdateBalanceEvent(Lcom/ushaqi/zhuishushenqi/event/G;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v3 = 0x0;
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = new bo();
    v0.<init>(p0, v3);
    v1 = 0x1;
    new-array v1, v1, [Ljava/lang/String;
    v2 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    v2 = v2.getToken();
    v1[v3] = v2;
    v0.b(v1);
    :cond_0
    return;
.end method
.method public final a()V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t;
    v0.c();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0.c();
    return;
.end method
.method public final a(I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
    .prologue
    v1 = 0x63;
    v2 = 0x0;
    v0 = 0x7f0c024e;
    v0 = p0.findViewById(v0);
    check-cast v0, Landroid/widget/TextView;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    if (p1 <= 0) {
//       if-lez p1, :cond_2
    }
    v0.setVisibility(v2);
    if (p1 <= v1) {
//       if-le p1, v1, :cond_1
    }
    p1 = v1;
    :cond_1
    v1 = Ljava/lang/String.valueOf(p1);
    v0.setText(v1);
    goto :goto_0
    :cond_2
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->Q = v2;
    v1 = 0x8;
    v0.setVisibility(v1);
    goto :goto_0
.end method
.method public final b()V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t;
    v0.d();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0.d();
    return;
.end method
.method public final c()V
    .locals 0
    .prologue
    p0.L();
    return;
.end method
.method public final d()V
    .locals 0
    .prologue
    p0.N();
    return;
.end method
.method public final e()V
    .locals 5
    .prologue
    v4 = -0x1;
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->W = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->X = v0;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v2 = v1.length;
    :goto_0
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_0
    }
    v3 = v1[v0];
    v3.a(v4, v4);
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_0
    return;
.end method
.method public final f()Ljava/lang/String;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e;
    return v0;
.end method
.method public final g()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j;
    v1 = new aR();
    v1.<init>(p0);
    v0.a(v1);
    return;
.end method
.method public final h()Ljava/lang/String;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v0 = v0.i();
    :goto_0
    return v0;
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final i()V
    .locals 3
    .prologue
    p0.P();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v0 = v0.i();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v0 = v0.i();
    :goto_0
    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->d:Ljava/lang/String;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderMixActivity.a(p0, v1, v2, v0);
    p0.startActivity(v0);
    v0 = 0x7f04001a;
    v1 = 0x7f04001b;
    p0.overridePendingTransition(v0, v1);
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->f;
    goto :goto_0
.end method
.method public final j()Z
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v0 = v0.length;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    if (v0 <= v1) {
//       if-le v0, v1, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v0 = v0[v1];
    v0 = v0.f();
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public final k()V
    .locals 4
    .prologue
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v2 = v1.length;
    v0 = 0x0;
    :goto_0
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_0
    }
    v3 = v1[v0];
    v3.h();
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_0
    return;
.end method
.method public final l()Ljava/lang/String;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    return v0;
.end method
.method public final m()Z
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->N;
    return v0
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .prologue
    Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity.onActivityResult(p0, p1, p2, p3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i;
    v0.a();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    p0.J();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->F;
    v0.a(v1);
    p0.g();
    :cond_0
    return;
.end method
.method public onBackPressed()V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v0 = v0.m();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity.onBackPressed(p0);
    :goto_0
    v0 = p0.j();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    v0 = v0[v1];
    v0.g();
    :cond_0
    return;
    :cond_1
    v0 = new h();
    v0.<init>(p0);
    v1 = 0x7f050157;
    v0 = v0.a(v1);
    v1 = 0x7f0500af;
    v0 = v0.b(v1);
    v1 = 0x7f0500a8;
    v2 = new aX();
    v2.<init>(p0);
    v0 = v0.a(v1, v2);
    v1 = 0x7f0500a9;
    v2 = new aW();
    v2.<init>(p0);
    v0 = v0.b(v1, v2);
    v0 = v0.a();
    v0.show();
    goto :goto_0
.end method
.method public onClick(Landroid/view/View;)V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->S;
    v0.dismiss();
    :cond_0
    v0 = p1.getId();
    packed-switch v0, :pswitch_data_0
    :goto_0
    return;
    :pswitch_0
    p0.O();
    goto :goto_0
    :pswitch_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v0 = Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity.a(p0, v0);
    p0.startActivity(v0);
    goto :goto_0
    :pswitch_2
    v0 = new cb();
    v1 = new aZ();
    v1.<init>(p0);
    v0.<init>(p0, v1);
    v0 = v0.a();
    v0.show();
    goto :goto_0
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
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v0.b();
    return;
.end method
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .prologue
    v3 = 0x8;
    v2 = 0x1;
    v1 = 0x0;
    Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity.onCreate(p0, p1);
    v0 = p0.getWindow();
    v4 = 0x100;
    v0.addFlags(v4);
    v0 = p0.getWindow();
    v4 = 0x200;
    v0.addFlags(v4);
    v0 = "reader_orientation";
    v0 = Lcom/arcsoft/hpay100/a/a.l(p0, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G = v0;
    p0.r();
    v0 = 0x7f030051;
    p0.setContentView(v0);
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v0.a(p0);
    v4 = p0.getIntent();
    v0 = "BOOK_ID";
    v0 = p0.a(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c = v0;
    v0 = "BOOK_TITLE";
    v0 = p0.a(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d = v0;
    v0 = "SOURCE_HOST";
    v0 = p0.a(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->f = v0;
    v0 = "IS_SHOW_TOC";
    v0 = v4.getBooleanExtra(v0, v1);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I = v0;
    v0 = "TOC_ID";
    v0 = p0.a(v0);
    v5 = "MIX_TOC_ID";
    v5 = v5.equals(v0);
    if (v5 == 0) {
//       if-eqz v5, :cond_0
    }
    v0 = new StringBuilder();
    v5 = "MIX_TOC_ID";
    v0.<init>(v5);
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v0 = v0.append(v5);
    v0 = v0.toString();
    :cond_0
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v0 = Lcom/ushaqi/zhuishushenqi/db/BookReadRecord.get(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    v0 = v0.getReadMode();
    :goto_0
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L = v0;
    v0 = "HAS_OTHER_SOURCES";
    v0 = v4.getBooleanExtra(v0, v2);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->N = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->a:Ljava/lang/String;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d;
    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->b:Ljava/lang/String;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->f;
    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->d:Ljava/lang/String;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e;
    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/I;->c:Ljava/lang/String;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L;
    sput v0, Lcom/ushaqi/zhuishushenqi/util/I;->g:I
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    Lcom/arcsoft/hpay100/a/a.i(p0, v0);
    v0 = new Reader();
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->e;
    v6 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d;
    v7 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L;
    v0.<init>(v4, v5, v6, v7);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v4 = p0.getIntent();
    v5 = "SOURCE_ID";
    v4 = v4.getStringExtra(v5);
    v0.a(v4);
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v0 = p0.getIntent();
    v5 = "CHAPTERS_KEY";
    v0 = v0.getSerializableExtra(v5);
    check-cast v0, Ljava/util/Map;
    v4.a(v0);
    if (p1 == 0) {
//       if-eqz p1, :cond_1
    }
    v0 = "SaveSelectedPageIndex";
    v0 = p1.getInt(v0, v1);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n = v0;
    v0 = "SaveChangeOrientation";
    v0 = p1.getBoolean(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H = v0;
    v0 = "SaveTocDisable";
    v0 = p1.getBoolean(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J = v0;
    v0 = "SaveModeDisable";
    v0 = p1.getBoolean(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K = v0;
    :cond_1
    p0.Q();
    v0 = p0.getSupportFragmentManager();
    v0 = v0.beginTransaction();
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->d;
    v4 = Lcom/ushaqi/zhuishushenqi/reader/ReaderMenuFragment.a(v4, v5);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->R = v4;
    v4 = 0x7f0c03a7;
    v5 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->R;
    v0.replace(v4, v5);
    :try_start_0
    v0.commitAllowingStateLoss();
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_1
    v0 = p0.g_();
    v0.setMode(v2);
    v4 = 0x7f06010b;
    v0.setShadowWidthRes(v4);
    v4 = 0x7f02027a;
    v0.setShadowDrawable(v4);
    v4 = 0x7f06007f;
    v0.setBehindOffsetRes(v4);
    v4 = 0x3eb33333    # 0.35f;
    v0.setFadeDegree(v4);
    v4 = 0x0;
    v0.setBehindScrollScale(v4);
    v0.setTouchModeAbove(v2);
    v0.setSlidingEnabled(v1);
    v4 = new aj();
    v4.<init>(p0);
    v0.setOnOpenedListener(v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V;
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = new al();
    v0.<init>(p0);
    v0 = Lcom/iflytek/cloud/SpeechSynthesizer.createSynthesizer(p0, v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V;
    v4 = "engine_type";
    v5 = "local";
    v0.setParameter(v4, v5);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V;
    v4 = "speed";
    v5 = new StringBuilder();
    v5.<init>();
    v6 = "speech_speed";
    v7 = 0x32;
    v6 = Lcom/arcsoft/hpay100/a/a.a(p0, v6, v7);
    v5 = v5.append(v6);
    v5 = v5.toString();
    v0.setParameter(v4, v5);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V;
    v4 = "voice_name";
    v5 = "speech_voice";
    v6 = "";
    v5 = Lcom/arcsoft/hpay100/a/a.d(p0, v5, v6);
    v0.setParameter(v4, v5);
    :cond_2
    v0 = 0x7f0c0126;
    v0 = p0.findViewById(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/PagerWidget;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m = v0;
    v0 = 0x7f0c012e;
    v0 = p0.findViewById(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActionBar;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r = v0;
    v0 = 0x7f0c012d;
    v0 = p0.findViewById(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/SettingWidget;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s = v0;
    v0 = 0x7f0c012b;
    v0 = p0.findViewById(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderSetWidget;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t = v0;
    v0 = 0x7f0c012c;
    v0 = p0.findViewById(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderTtsSetWidget;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u = v0;
    v0 = 0x7f0c0127;
    v0 = p0.findViewById(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->B = v0;
    v0 = 0x7f0c0128;
    v0 = p0.findViewById(v0);
    check-cast v0, Landroid/widget/TextView;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->C = v0;
    v0 = 0x7f0c0129;
    v0 = p0.findViewById(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/AutoReaderTextView;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T = v0;
    v0 = 0x7f0c012a;
    v0 = p0.findViewById(v0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->U = v0;
    v0 = new bZ();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h = v0;
    v0 = 0x7f0c012f;
    v0 = p0.findViewById(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/ThemeLoadingView;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O;
    v0.setVisibility(v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v4 = v4.h();
    v0.a(v4);
    v0 = new bH();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v4 = new bf();
    v4.<init>(p0);
    v0.a(v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v4 = new bk();
    v4.<init>(p0);
    v0.a(v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v4 = new bl();
    v4.<init>(p0);
    v0.a(v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v4 = new bm();
    v4.<init>(p0);
    v0.a(v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v4 = new bn();
    v4.<init>(p0);
    v0.a(v4);
    p0.R();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v4 = v4.Lcom/ushaqi/zhuishushenqi/reader/bZ;->g;
    v0.setTextColor(v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v4 = v4.Lcom/ushaqi/zhuishushenqi/reader/bZ;->e;
    v0.setHeight(v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v4 = v4.Lcom/ushaqi/zhuishushenqi/reader/bZ;->a;
    int-to-float v4, v4
    v0.setTextSize(v1, v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v4 = v4.Lcom/ushaqi/zhuishushenqi/reader/bZ;->b;
    int-to-float v4, v4
    v5 = 0x3f800000    # 1.0f;
    v0.setLineSpacing(v4, v5);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v0 = v0.Lcom/ushaqi/zhuishushenqi/reader/bZ;->h;
    v4 = 0x7f02023d;
    if (v0 != v4) {
//       if-ne v0, v4, :cond_7
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v4 = 0x7f02023c;
    v0.setBackgroundResource(v4);
    :goto_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L;
    v4 = 0x5;
    if (v0 == v4) {
//       if-eq v0, v4, :cond_3
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L;
    v4 = 0xa;
    if (v0 == v4) {
//       if-eq v0, v4, :cond_3
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L;
    v0 = Lcom/arcsoft/hpay100/a/a.h(v0);
    if (v0 != 0) {
//       if-nez v0, :cond_3
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L;
    v4 = 0x9;
    if (v0 != v4) {
//       if-ne v0, v4, :cond_8
    }
    :cond_3
    v0 = v2;
    :goto_3
    v4 = 0x7f0c03e6;
    v4 = p0.findViewById(v4);
    if (v0 == 0) {
//       if-eqz v0, :cond_9
    }
    v0 = v1;
    :goto_4
    v4.setVisibility(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v0.setReaderStyle(v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->G;
    v0.b(v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r;
    v3 = new ak();
    v3.<init>(p0);
    v0.setOnBtnClickListener$7ead76dc(v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->r;
    v0.setReaderStyle(v3, v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s;
    v3 = new av();
    v3.<init>(p0);
    v0.a(v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->s;
    v3 = new aJ();
    v3.<init>(p0);
    v0.a(v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V;
    v0.a(v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u;
    v3 = new aU();
    v3.<init>(p0);
    v0.setOnPlayChangeListener(v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->t;
    v0.setOptionClickListener(p0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0.setOnPageTurning(p0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v0.setAutoReaderTextView(v3);
    v0 = new K();
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v0.<init>(v3, v4);
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->j = v0;
    p0.C();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->m;
    v3 = new au();
    v3.<init>(p0);
    v0.setAdapter(v3);
    v0 = p0.getWindow();
    v0 = v0.getDecorView();
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q = v0;
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->h()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->q;
    v3 = new aV();
    v3.<init>(p0);
    v0.setOnSystemUiVisibilityChangeListener(v3);
    :cond_4
    p0.J();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H;
    if (v0 == 0) {
//       if-eqz v0, :cond_b
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->I = v1;
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0 = v0.b();
    if (v0 == 0) {
//       if-eqz v0, :cond_a
    }
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g = v0;
    p0.B();
    :goto_5
    v0 = new bq();
    v0.<init>(p0, v1);
    new-array v3, v2, [Ljava/lang/String;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v3[v1] = v4;
    v0.b(v3);
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = new bo();
    v0.<init>(p0, v1);
    new-array v2, v2, [Ljava/lang/String;
    v3 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    v3 = v3.getToken();
    v2[v1] = v3;
    v0.b(v2);
    v0 = new bp();
    v0.<init>(p0, v1);
    new-array v1, v1, [Ljava/lang/Void;
    v0.b(v1);
    :cond_5
    v0 = new k();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v0.<init>(v1);
    v0.a();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->L;
    v0 = Lcom/arcsoft/hpay100/a/a.g(v0);
    v1 = "read_mode_33_new";
    Lcom/umeng/a/b.a(p0, v1, v0);
    return;
    :cond_6
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0 = v0.d();
    goto/16 :goto_0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto/16 :goto_1
    :cond_7
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->T;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->h;
    v4 = v4.Lcom/ushaqi/zhuishushenqi/reader/bZ;->h;
    v0.setBackgroundResource(v4);
    goto/16 :goto_2
    :cond_8
    v0 = v1;
    goto/16 :goto_3
    :cond_9
    v0 = v3;
    goto/16 :goto_4
    :cond_a
    p0.s();
    goto :goto_5
    :cond_b
    p0.s();
    goto :goto_5
.end method
.method public onDestroy()V
    .locals 5
    .prologue
    :try_start_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ag;
    p0.unregisterReceiver(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ah;
    p0.unregisterReceiver(v0);
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V;
    v0.stopSpeaking();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->V;
    v0.destroy();
    Lcom/arcsoft/hpay100/a/a.K(p0);
    p0.n();
    :cond_0
    p0.p();
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v0.b(p0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->b;
    v2 = v1.length;
    v0 = 0x0;
    :goto_1
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_1
    }
    v3 = v1[v0];
    v4 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v4.b(v3);
    v0 = v0 + 0x1;
    goto :goto_1
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
    :cond_1
    Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity.onDestroy(p0);
    return;
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .prologue
    v0 = 0x1;
    v1 = 0x0;
    packed-switch p1, :pswitch_data_0
    v0 = Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity.onKeyDown(p0, p1, p2);
    :goto_0
    return v0
    :pswitch_0
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i;
    v2 = v2.b();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    if (v2 != 0) {
//       if-nez v2, :cond_0
    }
    p0.y();
    goto :goto_0
    :cond_0
    v0 = v1;
    goto :goto_0
    :pswitch_1
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->i;
    v2 = v2.b();
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    if (v2 != 0) {
//       if-nez v2, :cond_2
    }
    v1 = p0.g_();
    v1 = v1.f();
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v1 = p0.g_();
    v1.d();
    goto :goto_0
    :cond_1
    p0.z();
    goto :goto_0
    :cond_2
    v0 = v1;
    goto :goto_0
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .prologue
    v0 = 0x1;
    v1 = 0x52;
    if (p1 != v1) {
//       if-ne p1, v1, :cond_1
    }
    p0.F();
    :cond_0
    :goto_0
    return v0
    :cond_1
    v1 = 0x19;
    if (p1 == v1) {
//       if-eq p1, v1, :cond_0
    }
    v1 = 0x18;
    if (p1 == v1) {
//       if-eq p1, v1, :cond_0
    }
    v0 = Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity.onKeyUp(p0, p1, p2);
    goto :goto_0
.end method
.method public onModeChanged(Lcom/ushaqi/zhuishushenqi/event/v;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v1 = 0x1;
    v0 = p1.a();
    if (v0 != v1) {
//       if-ne v0, v1, :cond_0
    }
    p0.finish();
    :goto_0
    return;
    :cond_0
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K = v1;
    p0.u();
    v0 = -0x5;
    p0.b(v0);
    goto :goto_0
.end method
.method public onPause()V
    .locals 2
    .prologue
    v0 = 0x1;
    Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity.onPause(p0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->g;
    v1.c();
    :cond_0
    v1 = "key_shelf_sort";
    v1 = Lcom/arcsoft/hpay100/a/a.a(p0, v1, v0);
    if (v1 != v0) {
//       if-ne v1, v0, :cond_2
    }
    :goto_0
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->c;
    v0 = Lcom/ushaqi/zhuishushenqi/db/BookReadRecord.get(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v1 = new Date();
    v1.<init>();
    v0.Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->readTime = v1;
    v0.save();
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v1 = new g();
    v1.<init>();
    v0.c(v1);
    :cond_1
    :try_start_0
    v0 = Landroid/support/v4/content/LocalBroadcastManager.getInstance(p0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ae;
    v0.unregisterReceiver(v1);
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_1
    return;
    :cond_2
    v0 = 0x0;
    goto :goto_0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_1
.end method
.method public onResume()V
    .locals 4
    .prologue
    Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity.onResume(p0);
    v0 = p0.getWindow();
    v1 = 0x80;
    v0.addFlags(v1);
    p0.K();
    v0 = Landroid/support/v4/content/LocalBroadcastManager.getInstance(p0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->ae;
    v2 = new IntentFilter();
    v3 = "com.ushaqi.zhuishushenqi.dlReceiver";
    v2.<init>(v3);
    v0.registerReceiver(v1, v2);
    p0.H();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->M;
    v1 = 0x2;
    if (v0 == v1) {
//       if-eq v0, v1, :cond_0
    }
    v0 = "";
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a;
    v0 = v0.equals(v1);
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->v;
    v0.setResetVoice(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->u;
    v0.setVoiceSourceView();
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->v = v0;
    :cond_1
    return;
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .prologue
    Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity.onSaveInstanceState(p0, p1);
    v0 = "SaveSelectedPageIndex";
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->n;
    p1.putInt(v0, v1);
    v0 = "SaveChangeOrientation";
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->H;
    p1.putBoolean(v0, v1);
    v0 = "SaveTocDisable";
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->J;
    p1.putBoolean(v0, v1);
    v0 = "SaveModeDisable";
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->K;
    p1.putBoolean(v0, v1);
    return;
.end method
.method public onThemeChanged(Lcom/ushaqi/zhuishushenqi/event/C;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->O;
    v1 = p1.a();
    v0.a(v1);
    return;
.end method
.method public onUserInteraction()V
    .locals 0
    .prologue
    Lcom/ushaqi/zhuishushenqi/ui/BaseReadSlmActivity.onUserInteraction(p0);
    p0.K();
    return;
.end method
