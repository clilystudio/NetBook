.class public Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity;
.source "SourceFile"
# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;
# static fields
.field private static final a:Ljava/lang/String;
.field private static w:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;
# instance fields
.field private b:J
.field private c:Z
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field
.field private f:Landroid/widget/TabHost;
.field private g:Landroid/support/v4/view/ViewPager;
.field private h:Lcom/ushaqi/zhuishushenqi/ui/home/i;
.field private i:Landroid/widget/PopupWindow;
.field private j:Landroid/widget/PopupWindow;
.field private k:Landroid/view/View;
.field private l:Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
.field private m:Landroid/widget/TextView;
.field private n:Landroid/widget/TextView;
.field private o:Landroid/widget/ImageView;
.field private p:Lcom/ushaqi/zhuishushenqi/model/Account;
.field private q:Landroid/widget/ImageView;
.field private r:Landroid/widget/ImageView;
.field private s:Landroid/view/ViewGroup;
.field private t:Landroid/webkit/WebView;
.field private u:Z
.field private v:[Ljava/lang/String;
# direct methods
.method static constructor <clinit>()V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;;
    v0 = v0.getSimpleName();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a:Ljava/lang/String;
    return;
.end method
.method public constructor <init>()V
    .locals 2
    .prologue
    p0.<init>();
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->b = v0;
    v0 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c = v0;
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e = v0;
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Ljava/lang/String;
    .locals 4
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->v;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->v;
    v0 = v0.length;
    if (v0 <= 0) {
//       if-lez v0, :cond_0
    }
    invoke-static {}, Ljava/lang/Math;->random()D
    move-result-wide v0
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->v;
    v2 = v2.length;
    int-to-double v2, v2
    v0 *= v2;
    double-to-int v0, v0
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->v;
    v0 = v1[v0];
    :goto_0
    return v0;
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method private a(I)V
    .locals 6
    .prologue
    v5 = 0x1;
    v4 = 0x0;
    if (p1 < 0) {
//       if-ltz p1, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->h;
    v0 = v0.getCount();
    if (p1 >= v0) {
//       if-ge p1, v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g;
    v0.setCurrentItem(p1, v5);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->h;
    v0 = v0.getCount();
    v0 = v0 + -0x1;
    if (p1 != v0) {
//       if-ne p1, v0, :cond_1
    }
    v0 = "switch_17kflow";
    v0 = Lcom/arcsoft/hpay100/a/a.r(p0, v0);
    v1 = p0.j();
    invoke-static {}, Ljava/lang/Math;->random()D
    move-result-wide v2
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    float-to-double v0, v1
    cmpl-double v0, v0, v2
    if (v0 <= 0) {
//       if-lez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->u;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new g();
    v0.<init>(p0, v4);
    new-array v1, v4, [Ljava/lang/Void;
    v0.b(v1);
    :cond_0
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->u = v5;
    :cond_1
    return;
.end method
.method private a(Landroid/content/Intent;)V
    .locals 3
    .prologue
    v0 = "file_name";
    v0 = p1.getStringExtra(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = "nonsupport";
    v1 = v1.equals(v0);
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v0 = "\u5f88\u62b1\u6b49\uff0c\u6682\u4e0d\u652f\u6301\u6b64\u683c\u5f0f\u7684\u56fe\u4e66";
    Lcom/ushaqi/zhuishushenqi/util/e.a(p0, v0);
    :cond_0
    :goto_0
    return;
    :cond_1
    v1 = new Intent();
    v2 = "com.ushaqi.zhuishushenqi.ACTION_READ_TXT";
    v1.<init>(v2);
    v2 = "file_name";
    v1.putExtra(v2, v0);
    p0.startActivity(v1);
    goto :goto_0
.end method
.method private a(Lcom/ushaqi/zhuishushenqi/model/Account;)V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/util/J.a(p0);
    v0.a(p1);
    return;
.end method
.method private a(Lcom/ushaqi/zhuishushenqi/model/User;)V
    .locals 2
    .prologue
    if (p1 != 0) {
//       if-nez p1, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->l;
    v1 = p1.getFullAvatar();
    v0.setImageUrl(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->m;
    v1 = p1.getNickname();
    v0.setText(v1);
    goto :goto_0
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;Ljava/lang/String;)V
    .locals 3
    .prologue
    v2 = 0x1;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t;
    v0.destroy();
    :cond_0
    v0 = new WebView();
    v0.<init>(p0);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t;
    v0 = v0.getSettings();
    v0.setJavaScriptEnabled(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t;
    v0 = v0.getSettings();
    v1 = 0x2;
    v0.setCacheMode(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t;
    v1 = new b();
    v1.<init>(p0);
    v0.setWebViewClient(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t;
    v0.loadUrl(p1);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->u = v2;
    v0 = "take_17k_webflow";
    Lcom/umeng/a/b.a(p0, v0);
    return;
.end method
.method private static a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;",
            ">;)V"
        }
    .end annotation
    .prologue
    v1 = p0.iterator();
    :goto_0
    v0 = v1.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v1.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    v2 = new StringBuilder();
    v3 = "book:";
    v2.<init>(v3);
    v0 = v0.getBookId();
    v0 = v2.append(v0);
    v0 = v0.toString();
    Lcom/ushaqi/zhuishushenqi/push/BookSubRecord.create(v0);
    goto :goto_0
    :cond_0
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->v = p1;
    return p1;
.end method
.method public static b()Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->w;
    return v0;
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Ljava/util/List;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e;
    return v0;
.end method
.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g;
    return v0;
.end method
.method static synthetic d(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V
    .locals 0
    .prologue
    p0.m();
    return;
.end method
.method private e(I)V
    .locals 1
    .prologue
    packed-switch p1, :pswitch_data_0
    :goto_0
    return;
    :pswitch_0
    v0 = Lcom/ushaqi/zhuishushenqi/ui/game/GameTabActivity.a(p0);
    p0.startActivity(v0);
    v0 = "home_ab_game";
    Lcom/arcsoft/hpay100/a/a.n(p0, v0);
    goto :goto_0
    :pswitch_1
    v0 = Lcom/ushaqi/zhuishushenqi/ui/SearchActivity.a(p0);
    p0.startActivity(v0);
    v0 = "home_ab_search";
    Lcom/arcsoft/hpay100/a/a.n(p0, v0);
    goto :goto_0
    :pswitch_2
    p0.l();
    v0 = "home_ab_more";
    Lcom/arcsoft/hpay100/a/a.n(p0, v0);
    goto :goto_0
    nop
    :pswitch_data_0
    .packed-switch 0x7f0c026d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
.method static synthetic e(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)V
    .locals 0
    .prologue
    p0.n();
    return;
.end method
.method static synthetic f(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Lcom/ushaqi/zhuishushenqi/api/b;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->d;
    return v0;
.end method
.method static synthetic g(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Ljava/lang/String;
    .locals 1
    .prologue
    v0 = p0.o();
    return v0;
.end method
.method static synthetic h(Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;)Lcom/ushaqi/zhuishushenqi/api/b;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->d;
    return v0;
.end method
.method private h()V
    .locals 4
    .prologue
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/push/BookSubRecord;->getAll()Ljava/util/List;
    v1 = v0.iterator();
    :goto_0
    v0 = v1.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v1.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/push/BookSubRecord;
    v2 = p0.getApplicationContext();
    v0 = v0.Lcom/ushaqi/zhuishushenqi/push/BookSubRecord;->pushId;
    v3 = 0x0;
    Lcom/xiaomi/mipush/sdk/d.b(v2, v0, v3);
    goto :goto_0
    :cond_0
    return;
.end method
.method private i()V
    .locals 4
    .prologue
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;->getAll()Ljava/util/List;
    v1 = v0.iterator();
    :goto_0
    v0 = v1.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v1.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;
    v2 = p0.getApplicationContext();
    v0 = v0.Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord;->pushId;
    v3 = 0x0;
    Lcom/xiaomi/mipush/sdk/d.c(v2, v0, v3);
    goto :goto_0
    :cond_0
    return;
.end method
.method private j()F
    .locals 1
    .prologue
    v0 = "rate_17kflow";
    v0 = Lcom/umeng/a/b.b(p0, v0);
    :try_start_0
    Ljava/lang/Float.parseFloat(v0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result v0
    :goto_0
    return v0
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method private k()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->l;
    v1 = 0x7f02014b;
    v0.setImageResource(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->m;
    v1 = "\u8bf7\u767b\u5f55";
    v0.setText(v1);
    :cond_0
    return;
.end method
.method private l()V
    .locals 6
    .prologue
    :try_start_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j;
    v0 = v0.isShowing();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    :cond_0
    v0 = p0.getLayoutInflater();
    v1 = 0x7f0300bb;
    v2 = 0x0;
    v3 = 0x0;
    v0 = v0.inflate(v1, v2, v3);
    v1 = Lcom/arcsoft/hpay100/a/a.L(p0);
    v2 = new PopupWindow();
    v3 = -0x1;
    v2.<init>(v0, v3, v1);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j = v2;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j;
    v1 = 0x7f0701bd;
    v0.setAnimationStyle(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j;
    v1 = p0.a();
    v1 = v1.a();
    v2 = 0x0;
    v3 = 0x0;
    v4 = 0x0;
    v0.showAtLocation(v1, v2, v3, v4);
    :cond_1
    v0 = 0x7f0c00e8;
    v0 = p0.findViewById(v0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    if (v1 != 0) {
//       if-nez v1, :cond_2
    }
    v1 = new PopupWindow();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    v3 = p0.getResources();
    v4 = 0x7f060062;
    v3 = v3.getDimensionPixelSize(v4);
    v4 = -0x2;
    v1.<init>(v2, v3, v4);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i = v1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    v2 = 0x1;
    v1.setFocusable(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    v2 = 0x1;
    v1.setOutsideTouchable(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    v2 = new ColorDrawable();
    v3 = 0x0;
    v2.<init>(v3);
    v1.setBackgroundDrawable(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    v1 = v1.getContentView();
    v2 = 0x1;
    v1.setFocusableInTouchMode(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    v1 = v1.getContentView();
    v2 = 0x1;
    v1.setFocusable(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    v1 = v1.getContentView();
    v2 = new c();
    v2.<init>(p0);
    v1.setOnKeyListener(v2);
    :cond_2
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i = v1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    v2 = 0x7f0701bc;
    v1.setAnimationStyle(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    v2 = 0x35;
    v3 = 0x40a00000    # 5.0f;
    v3 = Lcom/arcsoft/hpay100/a/a.a(p0, v3);
    v4 = Landroid/support/design/widget/am.l(p0);
    v5 = Landroid/support/design/widget/am.k(p0);
    v4 += v5;
    v1.showAtLocation(v0, v2, v3, v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    v1 = new d();
    v1.<init>(p0);
    v0.setOnDismissListener(v1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
.end method
.method private m()V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    v0 = v0.isShowing();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    v0.dismiss();
    :cond_0
    p0.n();
    return;
.end method
.method private n()V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j;
    v0 = v0.isShowing();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j;
    v0.dismiss();
    :cond_0
    return;
.end method
.method private o()Ljava/lang/String;
    .locals 6
    .prologue
    v1 = 0x0;
    v0 = p0.getApplicationInfo();
    v0 = v0.Landroid/content/pm/ApplicationInfo;->sourceDir;
    :try_start_0
    v2 = new ZipFile();
    v2.<init>(v0);
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :try_start_1
    v3 = v2.entries();
    :cond_0
    v0 = v3.hasMoreElements();
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = v3.nextElement();
    check-cast v0, Ljava/util/zip/ZipEntry;
    v4 = v0.getName();
    v5 = "META-INF/DATA";
    v4 = v4.equals(v5);
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    v3 = new BufferedReader();
    v4 = new InputStreamReader();
    v0 = v2.getInputStream(v0);
    v4.<init>(v0);
    v3.<init>(v4);
    v0 = new StringBuilder();
    v0.<init>();
    :goto_0
    v4 = v3.readLine();
    if (v4 == 0) {
//       if-eqz v4, :cond_2
    }
    v0.append(v4);
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    goto :goto_0
    :catch_0
    move-exception v0
    :goto_1
    :try_start_2
    v0.printStackTrace();
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    :try_start_3
    v2.close();
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    :cond_1
    :goto_2
    v0 = v1;
    :goto_3
    return v0;
    :cond_2
    :try_start_4
    v3.close();
    v0.toString();
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    move-result-object v0
    :try_start_5
    v2.close();
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    goto :goto_3
    :catch_1
    move-exception v1
    v1.printStackTrace();
    goto :goto_3
    :cond_3
    :try_start_6
    v2.close();
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    goto :goto_2
    :catch_2
    move-exception v0
    v0.printStackTrace();
    goto :goto_2
    :catch_3
    move-exception v0
    v0.printStackTrace();
    goto :goto_2
    :catchall_0
    move-exception v0
    v2 = v1;
    :goto_4
    if (v2 == 0) {
//       if-eqz v2, :cond_4
    }
    :try_start_7
    v2.close();
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    :cond_4
    :goto_5
    throw v0
    :catch_4
    move-exception v1
    v1.printStackTrace();
    goto :goto_5
    :catchall_1
    move-exception v0
    goto :goto_4
    :catch_5
    move-exception v0
    v2 = v1;
    goto :goto_1
.end method
# virtual methods
.method public final a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;
    .locals 2
    .prologue
    v0 = p0.getSupportFragmentManager();
    v0 = v0.findFragmentByTag(p1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->a;
    v1 = "getHomeShelfFragment ";
    Landroid/util/Log.i(v0, v1);
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;->b()Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;
    :cond_0
    return v0;
.end method
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .prologue
    v1 = 0x0;
    v0 = new View();
    v0.<init>(p0);
    v0.setMinimumHeight(v1);
    v0.setMinimumWidth(v1);
    return v0;
.end method
.method public final f()V
    .locals 1
    .prologue
    v0 = 0x0;
    p0.a(v0);
    return;
.end method
.method public final g(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;
    .locals 3
    .prologue
    v0 = p0.getSupportFragmentManager();
    v0 = v0.findFragmentByTag(p1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new Bundle();
    v0.<init>();
    v1 = "game_center_show";
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c;
    v0.putBoolean(v1, v2);
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment.a(v0);
    :cond_0
    return v0;
.end method
.method public final g()V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g;
    v1 = 0x2;
    v2 = 0x1;
    v0.setCurrentItem(v1, v2);
    return;
.end method
.method public onAccountUpdated(Lcom/ushaqi/zhuishushenqi/event/a;)V
    .locals 3
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->l;
    v2 = v0.getUser();
    v2 = v2.getFullAvatar();
    v1.setImageUrl(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->m;
    v0 = v0.getUser();
    v0 = v0.getNickname();
    v1.setText(v0);
    :cond_0
    return;
.end method
.method public onBackPressed()V
    .locals 7
    .prologue
    v6 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e;
    v0 = v0.size();
    if (v0 <= 0) {
//       if-lez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e;
    v0 = v0.get(v6);
    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e;
    v0 = v0.get(v6);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;
    v0 = v0.c();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e;
    v0 = v0.get(v6);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeShelfFragment;
    v0.e();
    :goto_0
    return;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->c()Z
    move-result v2
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v0 = new h();
    v0.<init>(p0);
    v1 = "\u5373\u5c06\u9000\u51fa\u542c\u4e66\uff0c\u6709\u58f0\u5c0f\u8bf4\u662f\u5426\u7ee7\u7eed\u64ad\u653e\uff1f";
    v0.Luk/me/lewisdeane/ldialogs/h;->e = v1;
    v1 = "\u90fd\u5173\u4e86";
    v2 = new f();
    v2.<init>(p0);
    v0 = v0.a(v1, v2);
    v1 = "\u7ee7\u7eed\u653e";
    v2 = new e();
    v2.<init>(p0);
    v0 = v0.b(v1, v2);
    v0.b();
    goto :goto_0
    :cond_1
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->b;
    v2 = v0 - v2;
    v4 = 0x7d0;
    cmp-long v2, v2, v4
    if (v2 <= 0) {
//       if-lez v2, :cond_2
    }
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->b = v0;
    v0 = 0x7f050105;
    v0 = Landroid/widget/Toast.makeText(p0, v0, v6);
    v0.show();
    goto :goto_0
    :cond_2
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity.onBackPressed(p0);
    goto :goto_0
.end method
.method public onBookShelfRefresh(Lcom/ushaqi/zhuishushenqi/event/BookShelfRefreshEvent;)V
    .locals 1
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    p0.a(v0);
    :cond_0
    return;
.end method
.method public onClick(Landroid/view/View;)V
    .locals 6
    .prologue
    v5 = 0x64;
    v4 = 0x1;
    v3 = 0x0;
    p0.m();
    v0 = p1.getId();
    packed-switch v0, :pswitch_data_0
    :goto_0
    :pswitch_0
    return;
    :pswitch_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    p0.m();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    v0 = v0.getToken();
    v0 = Lcom/ushaqi/zhuishushenqi/ui/user/UserInfoActivity.a(p0, v0);
    p0.startActivity(v0);
    goto :goto_0
    :cond_0
    v0 = Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity.a(p0);
    v1 = "KEY_SOURCE";
    v2 = Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;->HOME;
    v0.putExtra(v1, v2);
    p0.startActivityForResult(v0, v5);
    goto :goto_0
    :pswitch_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    p0.m();
    v0 = "key_enter_msg_time";
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    Lcom/arcsoft/hpay100/a/a.b(p0, v0, v2, v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    v0 = v0.getToken();
    v0 = Lcom/ushaqi/zhuishushenqi/db/AccountInfo.getOrCreate(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/util/J.a(p0);
    v1 = v1.b();
    v0.setPrevUnimpNotif(v1);
    v0.save();
    v0 = "view_notification";
    Lcom/umeng/a/b.a(p0, v0);
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v1 = new w();
    v1.<init>();
    v0.c(v1);
    v0 = new Intent();
    v1 = Lcom/ushaqi/zhuishushenqi/ui/user/MyMessageActivity;;
    v0.<init>(p0, v1);
    p0.startActivity(v0);
    goto :goto_0
    :cond_1
    v0 = Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity.a(p0);
    p0.startActivityForResult(v0, v5);
    goto :goto_0
    :pswitch_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    p0.m();
    v0 = new Z();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    v1 = v1.getToken();
    v0.<init>(p0, v1);
    v0.a(v3);
    goto/16 :goto_0
    :cond_2
    v0 = Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity.a(p0);
    p0.startActivityForResult(v0, v5);
    goto/16 :goto_0
    :pswitch_4
    v0 = "android-feedback";
    v0 = Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity.a(p0, v0);
    p0.startActivity(v0);
    goto/16 :goto_0
    :pswitch_5
    v0 = new Intent();
    v1 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeTransparentActivity;;
    v0.<init>(p0, v1);
    v1 = "customer_night_theme";
    v1 = Lcom/arcsoft/hpay100/a/a.a(p0, v1, v3);
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->n;
    v2 = 0x7f0500fe;
    v1.setText(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->o;
    v2 = 0x7f0202a5;
    v1.setImageResource(v2);
    v1 = "customer_night_theme";
    Lcom/arcsoft/hpay100/a/a.b(p0, v1, v3);
    v1 = "night_mode";
    Lcom/arcsoft/hpay100/a/a.b(p0, v1, v3);
    Lcom/arcsoft/hpay100/a/a.C(p0);
    v1 = "onThemeChange";
    v0.putExtra(v1, v3);
    :goto_1
    p0.startActivity(v0);
    v0 = 0x7f04001e;
    v1 = 0x7f04001f;
    p0.overridePendingTransition(v0, v1);
    goto/16 :goto_0
    :cond_3
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->n;
    v2 = 0x7f0500fd;
    v1.setText(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->o;
    v2 = 0x7f0202a4;
    v1.setImageResource(v2);
    v1 = "customer_night_theme";
    Lcom/arcsoft/hpay100/a/a.b(p0, v1, v4);
    v1 = "night_mode";
    Lcom/arcsoft/hpay100/a/a.b(p0, v1, v4);
    v1 = "start_night_theme_home";
    Lcom/umeng/a/b.a(p0, v1);
    Lcom/arcsoft/hpay100/a/a.B(p0);
    v1 = "onThemeChange";
    v0.putExtra(v1, v4);
    goto :goto_1
    :pswitch_6
    v0 = new Intent();
    v1 = Lcom/ushaqi/zhuishushenqi/ui/SettingsActivity;;
    v0.<init>(p0, v1);
    p0.startActivity(v0);
    goto/16 :goto_0
    :pswitch_7
    v0 = new Intent();
    v1 = Lcom/ushaqi/zhuishushenqi/reader/txt/ScanTxtFileActivity;;
    v0.<init>(p0, v1);
    p0.startActivity(v0);
    goto/16 :goto_0
    :pswitch_8
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z
    move-result v0
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    v0 = "\u65e0\u6cd5\u4f7f\u7528\uff0c\u8bf7\u68c0\u67e5SD\u5361\u662f\u5426\u6302\u8f7d";
    Lcom/ushaqi/zhuishushenqi/util/e.a(p0, v0);
    goto/16 :goto_0
    :cond_4
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->e()J
    move-result-wide v0
    v2 = 0x4e20;
    cmp-long v0, v0, v2
    if (v0 > 0) {
//       if-gtz v0, :cond_5
    }
    v0 = "SD\u5361\u5269\u4f59\u5bb9\u91cf\u4e0d\u8db3";
    Lcom/ushaqi/zhuishushenqi/util/e.a(p0, v0);
    goto/16 :goto_0
    :cond_5
    v0 = new Intent();
    v1 = Lcom/ushaqi/zhuishushenqi/ui/WifiActivity;;
    v0.<init>(p0, v1);
    p0.startActivity(v0);
    goto/16 :goto_0
    :pswitch_9
    v0 = p1.getId();
    p0.e(v0);
    goto/16 :goto_0
    :pswitch_a
    v0 = p1.getId();
    p0.e(v0);
    goto/16 :goto_0
    :pswitch_b
    v0 = p1.getId();
    p0.e(v0);
    goto/16 :goto_0
    :pswitch_data_0
    .packed-switch 0x7f0c026d
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .prologue
    v11 = 0x7f0c026e;
    v3 = 0x8;
    v8 = 0x0;
    v10 = 0x1;
    v4 = 0x0;
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity.onCreate(p0, p1);
    v0 = 0x7f030041;
    p0.setContentView(v0);
    Lbutterknife/ButterKnife.inject(p0);
    sput-object p0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->w:Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;
    v1 = p0.a();
    v1.c(v4);
    v1.a(v4);
    v0 = 0x7f0300ba;
    v1.a(v0);
    v1.d(v10);
    v0 = v1.a();
    v2 = 0x7f0c026f;
    v0 = v0.findViewById(v2);
    check-cast v0, Landroid/widget/ImageView;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q = v0;
    v0 = v1.a();
    v0 = v0.findViewById(v11);
    check-cast v0, Landroid/widget/ImageView;
    v1 = v1.a();
    v2 = 0x7f0c026d;
    v1 = v1.findViewById(v2);
    check-cast v1, Landroid/widget/ImageView;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->r = v1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q;
    v1.setOnClickListener(p0);
    v0.setOnClickListener(p0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->r;
    v0.setOnClickListener(p0);
    v0 = Lcom/arcsoft/hpay100/a/a.w(p0);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->r;
    v0.setVisibility(v4);
    :goto_0
    v0 = Lcom/arcsoft/hpay100/a/a.x(p0);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->r;
    v0.setVisibility(v3);
    :cond_0
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v0.a(p0);
    v0 = 0x7f0c00e8;
    v0 = p0.findViewById(v0);
    check-cast v0, Landroid/widget/TabHost;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f = v0;
    v0 = 0x1020013;
    v0 = p0.findViewById(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;
    v1 = 0x7f0c00e9;
    v1 = p0.findViewById(v1);
    check-cast v1, Landroid/support/v4/view/ViewPager;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g = v1;
    v1 = new i();
    v2 = p0.getSupportFragmentManager();
    v1.<init>(p0, v2);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->h = v1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g;
    v2 = 0x3;
    v1.setOffscreenPageLimit(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->h;
    v1.setAdapter(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->g;
    v1.setOnPageChangeListener(p0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f;
    v1.setup();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f;
    v1.setOnTabChangedListener(p0);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f;
    v1 = v1.getTabWidget();
    v1 = v1.getTabCount();
    if (v1 <= 0) {
//       if-lez v1, :cond_1
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f;
    v1.setCurrentTab(v4);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f;
    v1.clearAllTabs();
    :cond_1
    v6 = p0.getLayoutInflater();
    v3 = v4;
    :goto_1
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->h;
    v1 = v1.getCount();
    if (v3 >= v1) {
//       if-ge v3, v1, :cond_4
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f;
    v2 = new StringBuilder();
    v5 = "tab";
    v2.<init>(v5);
    v2 = v2.append(v3);
    v2 = v2.toString();
    v7 = v1.newTabSpec(v2);
    v7.setContent(p0);
    if (v3 != v10) {
//       if-ne v3, v10, :cond_3
    }
    v1 = "FRIST_RUN_POST";
    v1 = Lcom/arcsoft/hpay100/a/a.a(p0, v1, v10);
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v1 = "switch_news";
    v1 = Lcom/arcsoft/hpay100/a/a.r(p0, v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v1 = 0x7f0300be;
    v2 = v6.inflate(v1, v8);
    v1 = v2;
    check-cast v1, Landroid/view/ViewGroup;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->s = v1;
    v5 = v2;
    :goto_2
    v1 = 0x7f0c0285;
    v1 = v5.findViewById(v1);
    check-cast v1, Landroid/widget/TextView;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->h;
    v2 = v2.getPageTitle(v3);
    check-cast v2, Ljava/lang/String;
    v1.setText(v2);
    v7.setIndicator(v5);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f;
    v1.addTab(v7);
    v1 = v3 + 0x1;
    v3 = v1;
    goto :goto_1
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->r;
    v0.setVisibility(v3);
    goto/16 :goto_0
    :cond_3
    v1 = 0x7f0300bd;
    v2 = v6.inflate(v1, v8);
    v5 = v2;
    goto :goto_2
    :cond_4
    v1 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p = v1;
    v1 = p0.getLayoutInflater();
    v2 = 0x7f0300bc;
    v1 = v1.inflate(v2, v8);
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k = v1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    v2 = 0x7f0c0270;
    v2 = v1.findViewById(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    v3 = 0x7f0c0273;
    v1 = v1.findViewById(v3);
    v3 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    v5 = 0x7f0c0278;
    v3 = v3.findViewById(v5);
    v5 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    v6 = 0x7f0c027e;
    v5 = v5.findViewById(v6);
    v6 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    v7 = 0x7f0c0283;
    v6 = v6.findViewById(v7);
    v7 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    v8 = 0x7f0c0280;
    v7 = v7.findViewById(v8);
    v8 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    v9 = 0x7f0c027a;
    v8 = v8.findViewById(v9);
    v8.setOnClickListener(p0);
    v8 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    v9 = 0x7f0c027c;
    v8 = v8.findViewById(v9);
    v8.setOnClickListener(p0);
    v2.setOnClickListener(p0);
    v1.setOnClickListener(p0);
    v3.setOnClickListener(p0);
    v5.setOnClickListener(p0);
    v6.setOnClickListener(p0);
    v7.setOnClickListener(p0);
    v1 = 0x7f0c0271;
    v1 = v2.findViewById(v1);
    check-cast v1, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->l = v1;
    v1 = 0x7f0c0272;
    v1 = v2.findViewById(v1);
    check-cast v1, Landroid/widget/TextView;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->m = v1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    if (v1 == 0) {
//       if-eqz v1, :cond_a
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    v1 = v1.getUser();
    p0.a(v1);
    :goto_3
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    v2 = 0x7f0c0282;
    v1 = v1.findViewById(v2);
    check-cast v1, Landroid/widget/TextView;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->n = v1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    v2 = 0x7f0c0281;
    v1 = v1.findViewById(v2);
    check-cast v1, Landroid/widget/ImageView;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->o = v1;
    v1 = "customer_night_theme";
    v1 = Lcom/arcsoft/hpay100/a/a.a(p0, v1, v4);
    if (v1 == 0) {
//       if-eqz v1, :cond_b
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->n;
    v2 = 0x7f0500fd;
    v1.setText(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->o;
    v2 = 0x7f0202a4;
    v1.setImageResource(v2);
    :goto_4
    v1 = "bookPushRecords";
    v1 = Lcom/arcsoft/hpay100/a/a.a(p0, v1, v4);
    if (v1 != 0) {
//       if-nez v1, :cond_6
    }
    v1 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAll()Ljava/util/List;
    if (v1 == 0) {
//       if-eqz v1, :cond_5
    }
    v2 = v1.isEmpty();
    if (v2 != 0) {
//       if-nez v2, :cond_5
    }
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity.a(v1);
    :cond_5
    v1 = "bookPushRecords";
    Lcom/arcsoft/hpay100/a/a.b(p0, v1, v10);
    :cond_6
    p0.h();
    p0.i();
    v1 = new Handler();
    v1.<init>();
    v2 = new l();
    v2.<init>(p0);
    v6 = 0xbb8;
    v1.postDelayed(v2, v6, v7);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    if (v1 == 0) {
//       if-eqz v1, :cond_7
    }
    v1 = "launch";
    Lcom/ushaqi/zhuishushenqi/util/e.c(v1);
    v1 = new h();
    v1.<init>(p0);
    new-array v2, v10, [Ljava/lang/String;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    v3 = v3.getToken();
    v2[v4] = v3;
    v1.b(v2);
    :cond_7
    if (p1 == 0) {
//       if-eqz p1, :cond_8
    }
    v1 = "extra_index";
    v1 = p1.getInt(v1);
    v0.setIndex(v1);
    :cond_8
    v0 = 0x7f0c026f;
    v0 = p0.findViewById(v0);
    v0.setOnClickListener(p0);
    v0 = p0.findViewById(v11);
    v0.setOnClickListener(p0);
    if (p0 == 0) {
//       if-eqz p0, :cond_9
    }
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    if (v0 == 0) {
//       if-eqz v0, :cond_9
    }
    v1 = new Z();
    v0 = v0.getToken();
    v1.<init>(p0, v0);
    v1.a(v10);
    :cond_9
    v0 = p0.getIntent();
    p0.a(v0);
    v0 = new j();
    v0.<init>(p0);
    new-array v1, v4, [Ljava/lang/String;
    v0.b(v1);
    v0 = new Handler();
    v0.<init>();
    v1 = new a();
    v1.<init>(p0);
    v2 = 0x2710;
    v0.postDelayed(v1, v2, v3);
    return;
    :cond_a
    p0.k();
    goto/16 :goto_3
    :cond_b
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->n;
    v2 = 0x7f0500fe;
    v1.setText(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->o;
    v2 = 0x7f0202a5;
    v1.setImageResource(v2);
    goto/16 :goto_4
.end method
.method protected onDestroy()V
    .locals 3
    .prologue
    v2 = 0x0;
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity.onDestroy(p0);
    Lcn/sharesdk/framework/ShareSDK.stopSDK(p0);
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v0.b(p0);
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t;
    v0.clearHistory();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t;
    v1 = 0x1;
    v0.clearCache(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t;
    v0.freeMemory();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t;
    v0.pauseTimers();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->t;
    v0.destroy();
    :cond_0
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->u = v2;
    v0 = "search_hot_words_date";
    Lcom/arcsoft/hpay100/a/a.b(p0, v0, v2);
    return;
.end method
.method public onEnterTweet(Lcom/ushaqi/zhuishushenqi/event/o;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->s;
    v1 = 0x1;
    v0 = v0.getChildAt(v1);
    v1 = 0x8;
    v0.setVisibility(v1);
    return;
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .prologue
    v0 = 0x52;
    if (p1 != v0) {
//       if-ne p1, v0, :cond_0
    }
    v0 = p2.getRepeatCount();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    p0.l();
    v0 = 0x1;
    :goto_0
    return v0
    :cond_0
    v0 = Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity.onKeyDown(p0, p1, p2);
    goto :goto_0
.end method
.method public onLoginEvent(Lcom/ushaqi/zhuishushenqi/event/t;)V
    .locals 5
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v1 = 0x1;
    v2 = 0x0;
    v0 = p1.a();
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    v0 = v0.getUser();
    p0.a(v0);
    v0 = p1.b();
    v3 = Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity$Source;->HOME;
    if (v0 == v3) {
//       if-eq v0, v3, :cond_1
    }
    v0 = v1;
    :goto_0
    v3 = new Z();
    v4 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    v4 = v4.getToken();
    v3.<init>(p0, v4);
    v3.a(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    p0.a(v0);
    v0 = new h();
    v0.<init>(p0);
    new-array v1, v1, [Ljava/lang/String;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p;
    v3 = v3.getToken();
    v1[v2] = v3;
    v0.b(v1);
    :cond_0
    return;
    :cond_1
    v0 = v2;
    goto :goto_0
.end method
.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .prologue
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity.onNewIntent(p0, p1);
    p0.a(p1);
    return;
.end method
.method public onNotifEvent(Lcom/ushaqi/zhuishushenqi/event/w;)V
    .locals 7
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v6 = 0x7f02016e;
    v5 = 0x0;
    v4 = 0x8;
    v0 = Lcom/ushaqi/zhuishushenqi/util/J.a(p0);
    v1 = v0.e();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    v2 = 0x7f0c0277;
    v2 = v0.findViewById(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->k;
    v3 = 0x7f0c0276;
    v0 = v0.findViewById(v3);
    check-cast v0, Landroid/widget/TextView;
    if (v1 <= 0) {
//       if-lez v1, :cond_1
    }
    v0.setVisibility(v5);
    v2.setVisibility(v4);
    v1 = Ljava/lang/String.valueOf(v1);
    v0.setText(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q;
    v0.setImageResource(v6);
    :cond_0
    :goto_0
    return;
    :cond_1
    v3 = -0x1;
    if (v1 != v3) {
//       if-ne v1, v3, :cond_2
    }
    v0.setVisibility(v4);
    v2.setVisibility(v5);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q;
    v0.setImageResource(v6);
    goto :goto_0
    :cond_2
    v0.setVisibility(v4);
    v2.setVisibility(v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->q;
    v1 = 0x7f02016f;
    v0.setImageResource(v1);
    goto :goto_0
.end method
.method public onPageScrollStateChanged(I)V
    .locals 0
    .prologue
    return;
.end method
.method public onPageScrolled(IFI)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f;
    v0 = v0.getTabWidget();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/widget/TabWidgetV2;
    v0.a(p1, p3);
    return;
.end method
.method public onPageSelected(I)V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f;
    v0 = v0.getTabWidget();
    v1 = v0.getDescendantFocusability();
    v2 = 0x60000;
    v0.setDescendantFocusability(v2);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f;
    v2.setCurrentTab(p1);
    v0.setDescendantFocusability(v1);
    return;
.end method
.method public onPause()V
    .locals 1
    .prologue
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity.onPause(p0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->i;
    v0 = v0.isShowing();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->j;
    v0 = v0.isShowing();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    p0.m();
    :cond_0
    return;
.end method
.method public onResume()V
    .locals 2
    .prologue
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity.onResume(p0);
    v0 = "1";
    v1 = "use_http_dns";
    v1 = Lcom/umeng/a/b.b(p0, v1);
    v0 = v0.equals(v1);
    Lcom/ushaqi/zhuishushenqi/api/e.a(v0);
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->l()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = new s();
    v0.<init>(p0);
    v1 = 0x0;
    new-array v1, v1, [Ljava/lang/Void;
    v0.b(v1);
    :cond_0
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p = v0;
    v0 = v0.getUser();
    p0.a(v0);
    :goto_0
    return;
    :cond_1
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->p = v0;
    p0.k();
    goto :goto_0
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .prologue
    Lcom/ushaqi/zhuishushenqi/ui/home/HomeParentActivity.onSaveInstanceState(p0, p1);
    v0 = "extra_index";
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f;
    v1 = v1.getCurrentTab();
    p1.putInt(v0, v1);
    return;
.end method
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->f;
    v0 = v0.getCurrentTab();
    p0.a(v0);
    return;
.end method
.method public onUpdateGameCenter(Lcom/ushaqi/zhuishushenqi/event/H;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = 0x1;
    v1 = 0x0;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c;
    v3 = p1.a();
    if (v2 != v3) {
//       if-ne v2, v3, :cond_1
    }
    v2 = v1;
    :goto_0
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v2 = p1.a();
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v2 = Lcom/arcsoft/hpay100/a/a.w(p0);
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    :goto_1
    p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c;
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->r;
    v0.setVisibility(v1);
    :goto_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->e;
    v1 = 0x2;
    v0 = v0.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/home/HomeFindFragment;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->c;
    v0.a(v1);
    :cond_0
    return;
    :cond_1
    v2 = v0;
    goto :goto_0
    :cond_2
    v0 = v1;
    goto :goto_1
    :cond_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/ui/home/HomeActivity;->r;
    v1 = 0x4;
    v0.setVisibility(v1);
    goto :goto_2
.end method
