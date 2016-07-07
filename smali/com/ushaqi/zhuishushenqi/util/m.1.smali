.class public final Lcom/ushaqi/zhuishushenqi/util/m;
.super Ljava/lang/Object;
.source "SourceFile"
# instance fields
.field private a:Landroid/app/Activity;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
.field private e:Z
.field private f:Ljava/lang/String;
# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .prologue
    p0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/util/m;->a = p1;
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;
    v0.a(p0);
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/m;)Landroid/app/Activity;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->a;
    return v0;
.end method
.method private a(I)V
    .locals 8
    .prologue
    v2 = 0x1;
    v4 = 0x0;
    v5 = 0x0;
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0.a(p1);
    v0 = 0x5;
    if (p1 != v0) {
//       if-ne p1, v0, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->b;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->c;
    v3 = "MIX_TOC_ID";
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.a(v0 .. v5);
    p0.a(v0);
    :goto_0
    return;
    :cond_0
    if (p1 == 0) {
//       if-eqz p1, :cond_1
    }
    if (p1 == v2) {
//       if-eq p1, v2, :cond_1
    }
    v0 = 0x4;
    if (p1 == v0) {
//       if-eq p1, v0, :cond_1
    }
    v0 = 0x2;
    if (p1 != v0) {
//       if-ne p1, v0, :cond_2
    }
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->b;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->c;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderResActivity.a(v0, v1, v2, p1);
    v1 = "SELECT_LAST";
    v0.putExtra(v1, v5);
    p0.a(v0);
    goto :goto_0
    :cond_2
    v0 = 0xa;
    if (p1 != v0) {
//       if-ne p1, v0, :cond_3
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->d;
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->d;
    v3 = v0.getTocId();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->b;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->c;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.a(v0 .. v5);
    p0.a(v0);
    goto :goto_0
    :cond_3
    v0 = 0x9;
    if (p1 != v0) {
//       if-ne p1, v0, :cond_7
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->d;
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->d;
    v0 = v0.getTocId();
    p0.Lcom/ushaqi/zhuishushenqi/util/m;->f = v0;
    :cond_4
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->b;
    v6 = Lcom/arcsoft/hpay100/a/a.M(v0);
    if (v6 != 0) {
//       if-nez v6, :cond_5
    }
    v6 = new HashMap();
    v6.<init>();
    :cond_5
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->b;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->c;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->f;
    v7 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->e;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.a(v0 .. v7);
    p0.a(v0);
    goto :goto_0
    :cond_6
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->b;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->c;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->f;
    v6 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->e;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.a(v0 .. v6);
    p0.a(v0);
    goto :goto_0
    :cond_7
    v6 = Lcom/arcsoft/hpay100/a/a.g(p1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->b;
    v0 = Lcom/ushaqi/zhuishushenqi/db/SourceRecord.get(v0, v6);
    if (v0 == 0) {
//       if-eqz v0, :cond_8
    }
    v1 = v0.getSourceId();
    if (v1 != 0) {
//       if-nez v1, :cond_9
    }
    :cond_8
    p0.a(v2);
    goto/16 :goto_0
    :cond_9
    v7 = v0.getSourceId();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->b;
    v3 = Lcom/arcsoft/hpay100/a/a.a(v0, p1, v7, v4);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->a;
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v6, v5);
    if (v0 == 0) {
//       if-eqz v0, :cond_a
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->b;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->c;
    v4 = v6;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity.a(v0 .. v5);
    v1 = "SOURCE_ID";
    v0.putExtra(v1, v7);
    p0.a(v0);
    goto/16 :goto_0
    :cond_a
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->a;
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->b;
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->c;
    v4 = v7;
    v5 = p1;
    v0 = Lcom/ushaqi/zhuishushenqi/reader/ReaderWebActivity.a(v0 .. v5);
    p0.a(v0);
    goto/16 :goto_0
.end method
.method private a(Landroid/content/Intent;)V
    .locals 2
    .prologue
    v0 = "extra_force_online";
    v1 = 0x0;
    p1.putExtra(v0, v1);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->a;
    v0.startActivity(p1);
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/m;I)V
    .locals 0
    .prologue
    p0.a(p1);
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/m;Ljava/util/List;)V
    .locals 7
    .prologue
    v6 = 0x9;
    v1 = 0x1;
    v2 = 0x0;
    v3 = p1.iterator();
    :cond_0
    v0 = v3.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = v3.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TocSummary;
    v4 = "zhuishuvip";
    v5 = v0.getSource();
    v4 = v4.equals(v5);
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->d;
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->d;
    v2.setHave_cp(v1);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->d;
    v3 = v0.get_id();
    v2.setTocId(v3);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->d;
    v2.setReadMode(v6);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->d;
    v2.save();
    :goto_0
    v0 = v0.get_id();
    p0.Lcom/ushaqi/zhuishushenqi/util/m;->f = v0;
    v0 = v1;
    :goto_1
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->d;
    v0 = v0.getReadMode();
    p0.a(v0);
    :cond_1
    return;
    :cond_2
    v2 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v2.a(v6);
    goto :goto_0
    :cond_3
    v0 = v2;
    goto :goto_1
.end method
.method private a(Z)V
    .locals 4
    .prologue
    v0 = new n();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->a;
    v0.<init>(p0, v1, p1);
    v1 = 0x1;
    new-array v1, v1, [Ljava/lang/String;
    v2 = 0x0;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->b;
    v1[v2] = v3;
    v0.b(v1);
    return;
.end method
.method private a(ZZ)V
    .locals 4
    .prologue
    v0 = new o();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->a;
    v0.<init>(p0, v1, p1, p2);
    v1 = 0x1;
    new-array v1, v1, [Ljava/lang/String;
    v2 = 0x0;
    v3 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->b;
    v1[v2] = v3;
    v0.b(v1);
    return;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/m;Z)Z
    .locals 1
    .prologue
    v0 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/util/m;->e = v0;
    return v0
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/util/m;)Ljava/lang/String;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->b;
    return v0;
.end method
.method static synthetic b(Lcom/ushaqi/zhuishushenqi/util/m;Ljava/util/List;)V
    .locals 5
    .prologue
    v4 = 0x9;
    v1 = p1.iterator();
    :cond_0
    v0 = v1.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = v1.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/TocSummary;
    v2 = "zhuishuvip";
    v3 = v0.getSource();
    v2 = v2.equals(v3);
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v1 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v1.a(v4);
    v0 = v0.get_id();
    p0.Lcom/ushaqi/zhuishushenqi/util/m;->f = v0;
    p0.a(v4);
    :cond_1
    return;
.end method
.method static synthetic c(Lcom/ushaqi/zhuishushenqi/util/m;)Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->d;
    return v0;
.end method
# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;)V
    .locals 9
    .prologue
    v8 = -0x1;
    v0 = 0x5;
    v2 = 0x0;
    v3 = 0x1;
    p0.Lcom/ushaqi/zhuishushenqi/util/m;->d = p1;
    v1 = p1.getBookId();
    p0.Lcom/ushaqi/zhuishushenqi/util/m;->b = v1;
    v1 = p1.getTitle();
    p0.Lcom/ushaqi/zhuishushenqi/util/m;->c = v1;
    v1 = p1.getReadMode();
    v4 = p1.Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->have_cp;
    if (v4 != v3) {
//       if-ne v4, v3, :cond_1
    }
    v0 = p1.getTocId();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    p0.a(v3, v3);
    :goto_0
    return;
    :cond_0
    p0.a(v1);
    goto :goto_0
    :cond_1
    if (v1 == v8) {
//       if-eq v1, v8, :cond_3
    }
    :cond_2
    :goto_1
    if (v2 == 0) {
//       if-eqz v2, :cond_6
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->a;
    v1 = "\u6b63\u5728\u83b7\u53d6\u6765\u6e90";
    Lcom/ushaqi/zhuishushenqi/util/e.a(v0, v1);
    p0.a(v3);
    goto :goto_0
    :cond_3
    v4 = p0.Lcom/ushaqi/zhuishushenqi/util/m;->a;
    v5 = "PREF_FIRST_LAUNCH_TIME";
    v6 = 0x0;
    v4 = Lcom/arcsoft/hpay100/a/a.c(v4, v5, v6, v7);
    v6 = invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    v6 = v6.getTimeInMillis();
    v4 = v6 - v4;
    v6 = 0x9a7ec800L;
    cmp-long v4, v4, v6
    if (v4 < 0) {
//       if-ltz v4, :cond_5
    }
    v4 = v3;
    :goto_2
    if (v4 != 0) {
//       if-nez v4, :cond_2
    }
    v4 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    if (v4 == 0) {
//       if-eqz v4, :cond_4
    }
    v4 = v4.getUser();
    v4 = v4.getLv();
    if (v4 >= v0) {
//       if-ge v4, v0, :cond_2
    }
    :cond_4
    v2 = v3;
    goto :goto_1
    :cond_5
    v4 = v2;
    goto :goto_2
    :cond_6
    if (v1 != v8) {
//       if-ne v1, v8, :cond_7
    }
    p1.setReadMode(v0);
    p1.save();
    :goto_3
    p0.a(v0);
    goto :goto_0
    :cond_7
    v0 = v1;
    goto :goto_3
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)V
    .locals 2
    .prologue
    v1 = 0x0;
    v0 = p1.getId();
    p0.Lcom/ushaqi/zhuishushenqi/util/m;->b = v0;
    v0 = p1.getTitle();
    p0.Lcom/ushaqi/zhuishushenqi/util/m;->c = v0;
    v0 = p1.isHasCp();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    p0.a(v1, v1);
    :goto_0
    return;
    :cond_0
    p0.a(v1);
    goto :goto_0
.end method
