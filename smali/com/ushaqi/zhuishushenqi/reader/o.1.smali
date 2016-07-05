.class public final Lcom/ushaqi/zhuishushenqi/reader/o;
.super Ljava/lang/Object;
.source "SourceFile"
# static fields
.field private static final a:Ljava/text/SimpleDateFormat;
# instance fields
.field private final b:Landroid/app/Activity;
.field private final c:Lcom/ushaqi/zhuishushenqi/reader/bZ;
.field private d:Lcom/ushaqi/zhuishushenqi/reader/n;
.field private e:Z
.field private f:Landroid/view/View;
.field private g:Landroid/widget/TextView;
.field private h:Landroid/widget/TextView;
.field private i:Landroid/widget/TextView;
.field private j:Landroid/view/View;
.field private k:Landroid/widget/ImageView;
.field private l:Landroid/widget/TextView;
.field private m:Landroid/widget/TextView;
.field private n:Landroid/widget/TextView;
.field private o:Landroid/widget/TextView;
.field private p:Z
.field private q:Lcom/ushaqi/zhuishushenqi/reader/G;
.field private r:Lcom/ushaqi/zhuishushenqi/reader/H;
.field private s:Lcom/ushaqi/zhuishushenqi/reader/F;
.field private t:Z
.field private u:Landroid/widget/Button;
# direct methods
.method static constructor <clinit>()V
    .locals 2
    .prologue
    v0 = new SimpleDateFormat();
    v1 = "HH:mm";
    v0.<init>(v1);
    sput-object v0, Lcom/ushaqi/zhuishushenqi/reader/o;->a:Ljava/text/SimpleDateFormat;
    return;
.end method
.method public constructor <init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/reader/bZ;)V
    .locals 5
    .prologue
    p0.<init>();
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->t = v0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b = p1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c = p2;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v0 = v0.getLayoutInflater();
    v1 = 0x7f030147;
    v2 = 0x0;
    v0 = v0.inflate(v1, v2);
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c02e5;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->g = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c0419;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->h = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c041b;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->i = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c041c;
    v0 = v0.findViewById(v1);
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->j = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c041d;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/ImageView;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->k = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c041e;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->l = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c041f;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->m = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c0420;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->n = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c0421;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->o = v0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->c;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v2 = v2.Lcom/ushaqi/zhuishushenqi/reader/bZ;->d;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v3 = v3.Lcom/ushaqi/zhuishushenqi/reader/bZ;->c;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v4 = v4.Lcom/ushaqi/zhuishushenqi/reader/bZ;->d;
    v0.setPadding(v1, v2, v3, v4);
    p0.l();
    p0.m();
    p0.k();
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v0.a(p0);
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    return v0;
.end method
.method private a(Landroid/view/View;Lcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation
    .prologue
    v7 = 0x7f0b0044;
    v6 = 0x0;
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    if (p2 != 0) {
//       if-nez p2, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = "read_page";
    p2.setPosition(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    p2.recordShow(v0);
    v0 = 0x7f0c0414;
    v0 = p1.findViewById(v0);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;
    v1 = 0x7f0c0416;
    v1 = p1.findViewById(v1);
    check-cast v1, Landroid/widget/TextView;
    v2 = 0x7f0c0417;
    v2 = p1.findViewById(v2);
    check-cast v2, Landroid/widget/TextView;
    v3 = 0x7f0c0415;
    v3 = p1.findViewById(v3);
    check-cast v3, Landroid/widget/Button;
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v4 = Lcom/arcsoft/hpay100/a/a.y(v4);
    if (v4 == 0) {
//       if-eqz v4, :cond_2
    }
    v3.setVisibility(v6);
    :cond_2
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v5 = "customer_night_theme";
    v4 = Lcom/arcsoft/hpay100/a/a.a(v4, v5, v6);
    if (v4 == 0) {
//       if-eqz v4, :cond_3
    }
    v4 = 0x7f020239;
    p1.setBackgroundResource(v4);
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v4 = v4.getResources();
    v4 = v4.getColor(v7);
    v1.setTextColor(v4);
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v4 = v4.getResources();
    v5 = 0x7f0b0045;
    v4 = v4.getColor(v5);
    v2.setTextColor(v4);
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v4 = v4.getResources();
    v4 = v4.getColor(v7);
    v3.setTextColor(v4);
    v4 = 0x3e4ccccd    # 0.2f;
    v0.setAlpha(v4);
    :goto_1
    v4 = 0x0;
    v0.setImageBitmap(v4);
    v4 = p2.getFullImg();
    v0.setImageUrl(v4);
    v0 = p2.getTitle();
    v1.setText(v0);
    v0 = p2.getDesc();
    v2.setText(v0);
    v0 = new z();
    v0.<init>(p0);
    v3.setOnClickListener(v0);
    v0 = new A();
    v0.<init>(p0, p2);
    p1.setOnClickListener(v0);
    Lcom/ushaqi/zhuishushenqi/util/adutil/n.a(p2, p1);
    goto/16 :goto_0
    :cond_3
    v4 = 0x7f020238;
    p1.setBackgroundResource(v4);
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v4 = v4.getResources();
    v5 = 0x7f0b0041;
    v4 = v4.getColor(v5);
    v1.setTextColor(v4);
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v4 = v4.getResources();
    v5 = 0x7f0b0042;
    v4 = v4.getColor(v5);
    v2.setTextColor(v4);
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v4 = v4.getResources();
    v5 = 0x7f0b00dc;
    v4 = v4.getColor(v5);
    v3.setTextColor(v4);
    v4 = 0x3f800000    # 1.0f;
    v0.setAlpha(v4);
    goto :goto_1
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/o;Lcom/ushaqi/zhuishushenqi/model/PurchaseChapterResult;Z)V
    .locals 4
    .prologue
    v3 = 0x0;
    if (p1 != 0) {
//       if-nez p1, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v1 = "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5";
    Lcom/ushaqi/zhuishushenqi/util/e.a(v0, v1);
    :goto_0
    return;
    :cond_0
    v0 = p1.isOk();
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v0 = v0.q();
    v0 = v0.a();
    v0 = v0.e();
    v1 = p1.getChapterId();
    v2 = p1.getKey();
    v0.put(v1, v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
    v0 = v0.l();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v1 = v1.q();
    v1 = v1.a();
    v1 = v1.e();
    Lcom/arcsoft/hpay100/a/a.a(v0, v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v0 = v0.q();
    v0 = v0.a();
    v0 = v0.e();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v1 = v1.a();
    v1 = v1.getId();
    v0 = v0.get(v1);
    check-cast v0, Ljava/lang/String;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v1 = v1.a();
    v1.setKey(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v0.g();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v0.a(v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
    v1 = v0.l();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
    v0 = v0.f();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v2 = v2.a();
    v2 = v2.getLink();
    v2 = Landroid/support/design/widget/am.e(v2);
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v3 = v3.a();
    Lcom/arcsoft/hpay100/a/a.a(v1, v0, v2, v3);
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->e;
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
    v0.g();
    goto/16 :goto_0
    :cond_3
    p0.e();
    goto/16 :goto_0
    :cond_4
    v0 = p1.getCode();
    v1 = "ITEM_ALREADY_PURCHASED";
    v0 = v0.equals(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_7
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v0 = v0.q();
    v0 = v0.a();
    v0 = v0.e();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v1 = v1.a();
    v1 = v1.getId();
    v0 = v0.get(v1);
    check-cast v0, Ljava/lang/String;
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v1 = v1.a();
    v1.setKey(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v0.g();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v0.a(v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    instance-of v0, v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    check-cast v0, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
    v0.g();
    goto/16 :goto_0
    :cond_5
    p0.e();
    goto/16 :goto_0
    :cond_6
    v0 = new E();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v2 = 0x7f05006a;
    v0.<init>(p0, v1, v2, v3);
    v1 = 0x1;
    new-array v1, v1, [Ljava/lang/String;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v2 = v2.a();
    v2 = v2.getId();
    v1[v3] = v2;
    v0.b(v1);
    goto/16 :goto_0
    :cond_7
    v0 = p1.getCode();
    v1 = "BALANCE_NOT_ENOUGH";
    v0 = v0.equals(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_8
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v1 = "\u4f59\u989d\u4e0d\u8db3\uff0c\u8bf7\u5145\u503c";
    Lcom/ushaqi/zhuishushenqi/util/e.a(v0, v1);
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v1 = new G();
    v1.<init>();
    v0.c(v1);
    p0.e();
    goto/16 :goto_0
    :cond_8
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v1 = "\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5";
    Lcom/ushaqi/zhuishushenqi/util/e.a(v0, v1);
    goto/16 :goto_0
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/reader/o;Z)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->u;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->u;
    v0.setClickable(p1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->u;
    v0.setEnabled(p1);
    :cond_0
    return;
.end method
.method private a(Z)V
    .locals 7
    .prologue
    v6 = 0x8;
    v2 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c0418;
    v0 = v0.findViewById(v1);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v3 = 0x7f0c0422;
    v1 = v1.findViewById(v3);
    if (p1 == 0) {
//       if-eqz p1, :cond_8
    }
    v0.setVisibility(v6);
    v1.setVisibility(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v3 = 0x7f0c0424;
    v3 = v0.findViewById(v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v4 = 0x7f0c0429;
    v4 = v0.findViewById(v4);
    v0 = 0x7f0c0423;
    v0 = v1.findViewById(v0);
    check-cast v0, Landroid/widget/TextView;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v1 = v1.i();
    v0.setText(v1);
    invoke-static {}, Landroid/support/design/widget/am;->g()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_7
    }
    v3.setVisibility(v2);
    v4.setVisibility(v6);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c0425;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    v1 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v1 = v1.b();
    v4 = v1.d();
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    v1 = v4.length;
    if (v1 != 0) {
//       if-nez v1, :cond_3
    }
    :cond_0
    v1 = v2;
    :goto_0
    v4 = new StringBuilder();
    v4.<init>();
    v1 = v4.append(v1);
    v1 = v1.toString();
    v0.setText(v1);
    v0 = 0x7f0c0426;
    v0 = v3.findViewById(v0);
    check-cast v0, Landroid/widget/CheckBox;
    v1 = 0x7f0c0427;
    v1 = v3.findViewById(v1);
    check-cast v1, Landroid/widget/Button;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->u = v1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v4 = "user_account_balance";
    v1 = Lcom/arcsoft/hpay100/a/a.a(v1, v4, v2);
    v4 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v4 = v4.a();
    v4 = v4.getCurrency();
    if (v1 > v4) {
//       if-gt v1, v4, :cond_1
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->t;
    if (v1 == 0) {
//       if-eqz v1, :cond_6
    }
    :cond_1
    v0.setVisibility(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v4 = new StringBuilder();
    v5 = "auto_buy_chapter";
    v4.<init>(v5);
    v5 = Lcom/ushaqi/zhuishushenqi/util/I;->a;
    v4 = v4.append(v5);
    v4 = v4.toString();
    v1 = Lcom/arcsoft/hpay100/a/a.a(v1, v4, v2);
    v0.setChecked(v1);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->u;
    v2 = "\u8d2d\u4e70\uff0c\u7ee7\u7eed\u9605\u8bfb";
    v1.setText(v2);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->u;
    v2 = new s();
    v2.<init>(p0, v0);
    v1.setOnClickListener(v2);
    v1 = new t();
    v1.<init>(p0);
    v0.setOnClickListener(v1);
    :goto_1
    v0 = 0x7f0c0428;
    v0 = v3.findViewById(v0);
    check-cast v0, Landroid/widget/Button;
    v1 = new x();
    v1.<init>(p0);
    v0.setOnClickListener(v1);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    instance-of v1, v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    check-cast v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
    v1 = v1.m();
    if (v1 != 0) {
//       if-nez v1, :cond_2
    }
    v0.setVisibility(v6);
    :cond_2
    :goto_2
    return;
    :cond_3
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v1 = v1.l();
    if (v1 >= 0) {
//       if-gez v1, :cond_5
    }
    v1 = v2;
    :cond_4
    :goto_3
    v1 = v4[v1];
    v1 = v1.getCurrency();
    goto/16 :goto_0
    :cond_5
    v5 = v4.length;
    if (v1 < v5) {
//       if-lt v1, v5, :cond_4
    }
    v1 = v4.length;
    v1 = v1 + -0x1;
    goto :goto_3
    :cond_6
    v1 = 0x4;
    v0.setVisibility(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->u;
    v1 = "\u4f59\u989d\u4e0d\u8db3\uff0c\u8bf7\u5145\u503c";
    v0.setText(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->u;
    v1 = new v();
    v1.<init>(p0);
    v0.setOnClickListener(v1);
    goto :goto_1
    :cond_7
    v3.setVisibility(v6);
    v4.setVisibility(v2);
    v0 = 0x7f0c042a;
    v0 = v4.findViewById(v0);
    v1 = new y();
    v1.<init>(p0);
    v0.setOnClickListener(v1);
    goto :goto_2
    :cond_8
    v0.setVisibility(v2);
    v1.setVisibility(v6);
    p0.r();
    goto :goto_2
.end method
.method private a(Landroid/view/View;)Z
    .locals 2
    .prologue
    :try_start_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->h;
    v0 = v0.getLayout();
    v0 = v0.getHeight();
    v1 = p1.getLayoutParams();
    v1 = v1.Landroid/view/ViewGroup$LayoutParams;->height;
    v0 += v1;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_0
    }
    v0 = 0x1;
    :goto_0
    return v0
    :catch_0
    move-exception v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/n;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    return v0;
.end method
.method private b(I)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->k;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->k;
    v0.setImageResource(p1);
    :cond_0
    return;
.end method
.method private b(Lcom/ushaqi/zhuishushenqi/reader/n;)V
    .locals 3
    .prologue
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v0 = p1.o();
    v1 = -0x1;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_0
    }
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0 = v0.b();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v0.i();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v2 = "chapter_load_error";
    Lcom/umeng/a/b.a(v1, v2, v0);
    :cond_0
    return;
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/reader/o;Z)Z
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->t = p1;
    return p1
.end method
.method static synthetic c(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/view/View;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->j;
    return v0;
.end method
.method static synthetic d(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/G;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->q;
    return v0;
.end method
.method static synthetic e(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/H;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->r;
    return v0;
.end method
.method static synthetic f(Lcom/ushaqi/zhuishushenqi/reader/o;)Lcom/ushaqi/zhuishushenqi/reader/F;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->s;
    return v0;
.end method
.method private l()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->h;
    v0.setBackgroundResource(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->g;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->i;
    v0.setTextColor(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->h;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->g;
    v0.setTextColor(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->i;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->i;
    v0.setTextColor(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c041a;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->i;
    v0.setTextColor(v1);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->j;
    v0.setBackgroundResource(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c02e6;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->i;
    v0.setTextColor(v1);
    return;
.end method
.method private m()V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->h;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->e;
    v0.setHeight(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->h;
    v1 = 0x0;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v2 = v2.Lcom/ushaqi/zhuishushenqi/reader/bZ;->a;
    int-to-float v2, v2
    v0.setTextSize(v1, v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->h;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v1 = v1.Lcom/ushaqi/zhuishushenqi/reader/bZ;->b;
    int-to-float v1, v1
    v2 = 0x3f800000    # 1.0f;
    v0.setLineSpacing(v1, v2);
    return;
.end method
.method private n()V
    .locals 5
    .prologue
    v4 = 0x8;
    v3 = 0x7f0201b1;
    v2 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v0 = v0.o();
    packed-switch v0, :pswitch_data_0
    goto :goto_0
    :pswitch_0
    p0.p();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->n;
    v0.setVisibility(v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->l;
    v1 = "\u672c\u6765\u6e90\u6682\u65e0\u8be5\u5c0f\u8bf4";
    v0.setText(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->m;
    v1 = "\u8bf7\u5207\u6362\u5230\u5176\u4ed6\u6765\u6e90";
    v0.setText(v1);
    p0.b(v3);
    p0.u();
    p0.a(v2);
    goto :goto_0
    :pswitch_1
    p0.e();
    goto :goto_0
    :pswitch_2
    p0.p();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->n;
    v0.setVisibility(v2);
    p0.t();
    p0.a(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v0 = Lcom/arcsoft/hpay100/a/a.t(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->l;
    v1 = "\u8fde\u63a5\u8d85\u65f6\uff0c\u518d\u8bd5\u8bd5\uff1f";
    v0.setText(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->m;
    v1 = "\u8bf7\u5237\u65b0\u91cd\u8bd5\u6216\u5207\u6362\u6765\u6e90";
    v0.setText(v1);
    p0.b(v3);
    p0.u();
    goto :goto_0
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->l;
    v1 = "\u6ca1\u7f51\uff0c\u8fde\u4e0d\u4e0a\u5440";
    v0.setText(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->m;
    v1 = "\u8bf7\u68c0\u67e5\u7f51\u7edc\u540e\u91cd\u8bd5";
    v0.setText(v1);
    v0 = 0x7f0201b2;
    p0.b(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->o;
    v0.setVisibility(v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->n;
    v1 = 0x7f050167;
    v0.setText(v1);
    goto :goto_0
    :pswitch_3
    p0.p();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->n;
    v0.setVisibility(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->l;
    v1 = "\u672c\u7ae0\u6682\u65e0\u6587\u5b57";
    v0.setText(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->m;
    v1 = "\u672a\u627e\u5230\u672c\u7ae0\u7684\u6587\u5b57\u5185\u5bb9";
    v0.setText(v1);
    p0.b(v3);
    p0.t();
    p0.u();
    p0.a(v2);
    goto/16 :goto_0
    :pswitch_4
    p0.p();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->l;
    v1 = "\u6b64\u6765\u6e90\u5c1a\u672a\u66f4\u65b0\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5";
    v0.setText(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->m;
    v1 = "";
    v0.setText(v1);
    v0 = 0x7f0201b3;
    p0.b(v0);
    p0.u();
    p0.a(v2);
    goto/16 :goto_0
    :pswitch_5
    p0.p();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->n;
    v0.setVisibility(v2);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->l;
    v1 = "\u8fde\u63a5\u8d85\u65f6\uff0c\u518d\u8bd5\u8bd5\uff1f";
    v0.setText(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->m;
    v1 = "\u8bf7\u5237\u65b0\u91cd\u8bd5\u6216\u5207\u6362\u6765\u6e90";
    v0.setText(v1);
    p0.b(v3);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->n;
    v1 = new q();
    v1.<init>(p0);
    v0.setOnClickListener(v1);
    p0.u();
    p0.a(v2);
    goto/16 :goto_0
    :pswitch_6
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->j;
    v0.setVisibility(v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->g;
    v1 = "";
    v0.setText(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->h;
    v1 = "";
    v0.setText(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->i;
    v1 = "";
    v0.setText(v1);
    p0.a(v2);
    goto/16 :goto_0
    nop
    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method
.method private static o()Z
    .locals 4
    .prologue
    v0 = 0x0;
    v1 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    :cond_0
    :goto_0
    return v0
    :cond_1
    v1 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v2 = new StringBuilder();
    v3 = "auto_buy_chapter";
    v2.<init>(v3);
    v3 = Lcom/ushaqi/zhuishushenqi/util/I;->a;
    v2 = v2.append(v3);
    v2 = v2.toString();
    v1 = Lcom/arcsoft/hpay100/a/a.a(v1, v2, v0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = 0x1;
    goto :goto_0
.end method
.method private p()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->j;
    v1 = 0x0;
    v0.setVisibility(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->g;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v1 = v1.i();
    v0.setText(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->h;
    v1 = "";
    v0.setText(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->i;
    v1 = "";
    v0.setText(v1);
    return;
.end method
.method private q()Z
    .locals 4
    .prologue
    v0 = 0x1;
    v1 = 0x0;
    v2 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v2 = v2.d();
    v3 = 0x9;
    if (v2 != v3) {
//       if-ne v2, v3, :cond_0
    }
    v2 = v0;
    :goto_0
    if (v2 != 0) {
//       if-nez v2, :cond_1
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v2 = v2.l();
    v2 = v2 % 0x5;
    v3 = 0x4;
    if (v2 != v3) {
//       if-ne v2, v3, :cond_1
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v2 = v2.h();
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    :goto_1
    return v0
    :cond_0
    v2 = v1;
    goto :goto_0
    :cond_1
    v0 = v1;
    goto :goto_1
.end method
.method private r()V
    .locals 6
    .prologue
    v5 = 0x8;
    v4 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->e;
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c0413;
    v0 = v0.findViewById(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v1 = Landroid/support/design/widget/am.q(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v1 = Lcom/arcsoft/hpay100/a/a.F(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v1 = p0.q();
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v1 = p0.a(v0);
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    instance-of v1, v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v2 = "page";
    v1 = Lcom/ushaqi/zhuishushenqi/util/adutil/n.b(v1, v2);
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v3 = "rate_zssq_advert_reader_bookinfo";
    v2 = Lcom/arcsoft/hpay100/a/a.w(v2, v3);
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v0.setVisibility(v4);
    p0.a(v0, v1);
    goto :goto_0
    :cond_2
    v0.setVisibility(v5);
    goto :goto_0
    :cond_3
    v0.setVisibility(v5);
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->e;
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v2 = new StringBuilder();
    v3 = "remove_ad_toast_showed";
    v2.<init>(v3);
    v3 = Lcom/ushaqi/zhuishushenqi/util/I;->a;
    v2 = v2.append(v3);
    v2 = v2.toString();
    v1 = Lcom/arcsoft/hpay100/a/a.a(v1, v2, v4);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = p0.q();
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = p0.a(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v0 = Landroid/support/design/widget/am.r(v0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v1 = "\u5df2\u4e3a\u60a8\u81ea\u52a8\u514d\u9664\u5e7f\u544a";
    Lcom/ushaqi/zhuishushenqi/util/e.a(v0, v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v1 = new StringBuilder();
    v2 = "remove_ad_toast_showed";
    v1.<init>(v2);
    v2 = Lcom/ushaqi/zhuishushenqi/util/I;->a;
    v1 = v1.append(v2);
    v1 = v1.toString();
    v2 = 0x1;
    Lcom/arcsoft/hpay100/a/a.b(v0, v1, v2);
    goto/16 :goto_0
.end method
.method private s()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c0413;
    v0 = v0.findViewById(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = 0x8;
    v0.setVisibility(v1);
    :cond_0
    return;
.end method
.method private t()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->n;
    v1 = new B();
    v1.<init>(p0);
    v0.setOnClickListener(v1);
    return;
.end method
.method private u()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->o;
    v1 = 0x0;
    v0.setVisibility(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->o;
    v1 = "\u66f4\u6362\u6765\u6e90";
    v0.setText(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->o;
    v1 = new r();
    v1.<init>(p0);
    v0.setOnClickListener(v1);
    return;
.end method
# virtual methods
.method public final a()V
    .locals 1
    .prologue
    v0 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->p = v0;
    return;
.end method
.method public final a(I)V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c041a;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    v1 = Ljava/lang/String.valueOf(p1);
    v0.setText(v1);
    return;
.end method
.method public final a(II)V
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->h;
    instance-of v0, v0, Lme/biubiubiu/justifytext/library/JustifyTextView;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->h;
    check-cast v0, Lme/biubiubiu/justifytext/library/JustifyTextView;
    v0.setHighLight(p1, p2);
    :cond_0
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/F;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->s = p1;
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/G;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->q = p1;
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/H;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->r = p1;
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/n;)V
    .locals 1
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d = p1;
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->e = v0;
    p0.n();
    p0.b(p1);
    p0.s();
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/n;Z)V
    .locals 5
    .prologue
    v4 = 0x0;
    v3 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d = p1;
    p0.Lcom/ushaqi/zhuishushenqi/reader/o;->e = v3;
    p0.n();
    p0.b(p1);
    v0 = p1.a();
    v0 = p0.a(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v1 = "paying_page_auto_purchase";
    v2 = Lcom/ushaqi/zhuishushenqi/util/I;->b;
    Lcom/umeng/a/b.a(v0, v1, v2);
    v0 = new I();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v2 = "\u81ea\u52a8\u8d2d\u4e70\u4e2d...";
    v0.<init>(p0, v1, v2);
    v1 = 0x2;
    new-array v1, v1, [Ljava/lang/String;
    v2 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    v2 = v2.getToken();
    v1[v4] = v2;
    v2 = p1.a();
    v2 = v2.getId();
    v1[v3] = v2;
    v0.b(v1);
    :cond_0
    v0 = p1.j();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p1.l();
    v1 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v1 = v1.b();
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/reader/o;->o()Z
    move-result v2
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v0 = v0 + 0x1;
    v2 = new p();
    v2.<init>(p0);
    v1.a(v0, v2, v3, v4);
    :cond_1
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/ReaderChapter;)Z
    .locals 3
    .prologue
    v1 = 0x0;
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/reader/o;->o()Z
    move-result v0
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = v1;
    :goto_0
    return v0
    :cond_0
    if (p1 == 0) {
//       if-eqz p1, :cond_1
    }
    v0 = p1.isVip();
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    :cond_1
    v0 = v1;
    goto :goto_0
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v2 = "user_account_balance";
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v2, v1);
    v2 = p1.getCurrency();
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_3
    }
    v0 = v1;
    goto :goto_0
    :cond_3
    v0 = p1.getKey();
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v0 = v0.q();
    v0 = v0.a();
    v0 = v0.e();
    v2 = p1.getId();
    v0 = v0.get(v2);
    check-cast v0, Ljava/lang/String;
    :cond_4
    if (v0 != 0) {
//       if-nez v0, :cond_5
    }
    v0 = 0x1;
    goto :goto_0
    :cond_5
    v0 = v1;
    goto :goto_0
.end method
.method public final b()V
    .locals 0
    .prologue
    p0.l();
    return;
.end method
.method public final c()V
    .locals 0
    .prologue
    p0.l();
    return;
.end method
.method public final d()I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->h;
    v0 = v0.getHeight();
    return v0
.end method
.method public final e()V
    .locals 6
    .prologue
    v5 = 0x1;
    v4 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v0 = p0.f();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->e;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v1 = "paying_page_show";
    v2 = Lcom/ushaqi/zhuishushenqi/util/I;->b;
    Lcom/umeng/a/b.a(v0, v1, v2);
    :cond_1
    p0.a(v5);
    goto :goto_0
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->p;
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    p0.m();
    :cond_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->j;
    v1 = 0x8;
    v0.setVisibility(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->g;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v1 = v1.i();
    v0.setText(v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->c;
    v0 = v0.i();
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->h;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v1 = v1.a(v2);
    v0.setText(v1);
    :goto_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->i;
    v1 = "%s/%s";
    v2 = 0x2;
    new-array v2, v2, [Ljava/lang/Object;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v3 = v3.j();
    v3 = v3 + 0x1;
    v3 = Ljava/lang/Integer.valueOf(v3);
    v2[v4] = v3;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v3 = v3.k();
    v3 = Ljava/lang/Integer.valueOf(v3);
    v2[v5] = v3;
    v1 = Ljava/lang/String.format(v1, v2);
    v0.setText(v1);
    p0.a(v4);
    goto :goto_0
    :cond_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->h;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v1 = v1.c();
    v0.setText(v1);
    goto :goto_1
.end method
.method public final f()Z
    .locals 6
    .prologue
    v1 = 0x0;
    :try_start_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = v1;
    :goto_0
    return v0
    :cond_0
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0 = v0.b();
    v2 = v0.d();
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v0 = v2.length;
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    :cond_1
    v0 = v1;
    goto :goto_0
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v0 = v0.l();
    if (v0 >= 0) {
//       if-gez v0, :cond_4
    }
    v0 = v1;
    :cond_3
    :goto_1
    v0 = v2[v0];
    v0 = v0.isVip();
    if (v0 != 0) {
//       if-nez v0, :cond_5
    }
    v0 = v1;
    goto :goto_0
    :cond_4
    v3 = v2.length;
    if (v0 < v3) {
//       if-lt v0, v3, :cond_3
    }
    v0 = v2.length;
    v0 = v0 + -0x1;
    goto :goto_1
    :cond_5
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v0 = v0.a();
    v0 = v0.getKey();
    if (v0 != 0) {
//       if-nez v0, :cond_6
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v0 = v0.q();
    v0 = v0.a();
    v0 = v0.e();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v2 = v2.a();
    v2 = v2.getId();
    v0 = v0.get(v2);
    check-cast v0, Ljava/lang/String;
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    v2 = v2.a();
    v2.setKey(v0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :cond_6
    if (v0 != 0) {
//       if-nez v0, :cond_7
    }
    v0 = 0x1;
    goto :goto_0
    :cond_7
    v0 = v1;
    goto :goto_0
    :catch_0
    move-exception v0
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v3 = "zhuishu_catch_exception";
    v4 = new StringBuilder();
    v5 = "PageBinder_needPay:";
    v4.<init>(v5);
    v0 = v0.getMessage();
    v0 = v4.append(v0);
    v0 = v0.toString();
    Lcom/umeng/a/b.a(v2, v3, v0);
    v0 = v1;
    goto/16 :goto_0
.end method
.method public final g()V
    .locals 3
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->e;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v1 = "paying_page_cancel";
    v2 = Lcom/ushaqi/zhuishushenqi/util/I;->b;
    Lcom/umeng/a/b.a(v0, v1, v2);
    :cond_0
    return;
.end method
.method public final h()V
    .locals 2
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->e;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c0413;
    v0 = v0.findViewById(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = 0x8;
    v0.setVisibility(v1);
    goto :goto_0
.end method
.method public final i()Landroid/view/View;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    return v0;
.end method
.method public final j()Lcom/ushaqi/zhuishushenqi/reader/n;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->d;
    return v0;
.end method
.method public final k()V
    .locals 4
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c02e6;
    v0 = v0.findViewById(v1);
    check-cast v0, Landroid/widget/TextView;
    v1 = Lcom/ushaqi/zhuishushenqi/reader/o;->a;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v2
    v2 = Ljava/lang/Long.valueOf(v2, v3);
    v1 = v1.format(v2);
    v0.setText(v1);
    return;
.end method
.method public final onHideAdEvent(Lcom/ushaqi/zhuishushenqi/event/s;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    p0.s();
    return;
.end method
.method public final onLoginEvent(Lcom/ushaqi/zhuishushenqi/event/t;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->e;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p1.a();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = new D();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v3 = "\u6b63\u5728\u83b7\u53d6\u8d44\u4ea7\u4fe1\u606f...";
    v0 = v0.getToken();
    v1.<init>(p0, v2, v3, v0);
    v0 = 0x0;
    new-array v0, v0, [Ljava/lang/Void;
    v1.b(v0);
    :cond_0
    return;
.end method
.method public final onPayFinish(Lcom/ushaqi/zhuishushenqi/event/y;)V
    .locals 4
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->e;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p1.a();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = new C();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v2 = "\u6b63\u5728\u66f4\u65b0\u8d44\u4ea7\u4fe1\u606f...";
    v0.<init>(p0, v1, v2);
    v1 = 0x1;
    new-array v1, v1, [Ljava/lang/String;
    v2 = 0x0;
    v3 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    v3 = v3.getToken();
    v1[v2] = v3;
    v0.b(v1);
    :cond_0
    return;
.end method
.method public final onRemoveAdEvent$2234193(Lcom/arcsoft/hpay100/a/a;)V
    .locals 2
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->e;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c0413;
    v0 = v0.findViewById(v1);
    v1 = 0x8;
    v0.setVisibility(v1);
    :cond_0
    return;
.end method
.method public final onShowThirdAd(Lcom/ushaqi/zhuishushenqi/event/B;)V
    .locals 3
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v0 = Landroid/support/design/widget/am.q(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p1.b();
    v1 = "page";
    v0 = v0.equals(v1);
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->f;
    v1 = 0x7f0c0413;
    v0 = v0.findViewById(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    v1 = Lcom/arcsoft/hpay100/a/a.F(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1 = p0.q();
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1 = p0.a(v0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1 = p0.Lcom/ushaqi/zhuishushenqi/reader/o;->b;
    instance-of v1, v1, Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1 = p1.a();
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v2 = 0x0;
    v0.setVisibility(v2);
    p0.a(v0, v1);
    goto :goto_0
.end method
.method public final onThemeChanged(Lcom/ushaqi/zhuishushenqi/event/C;)V
    .locals 0
    .annotation runtime Lcom/squareup/a/l;
    .end annotation
    .prologue
    p0.r();
    return;
.end method
