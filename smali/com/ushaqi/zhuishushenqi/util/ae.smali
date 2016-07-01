.class public final Lcom/ushaqi/zhuishushenqi/util/ae;
.super Ljava/lang/Object;
.source "SourceFile"
# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/util/ak;
.field private b:[[Ljava/lang/String;
.field private c:[[Ljava/lang/String;
.field private d:[[Ljava/lang/String;
.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field
.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field
.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field
# direct methods
.method public constructor <init>()V
    .locals 9
    .prologue
    v8 = 0x4;
    v7 = 0x3;
    v6 = 0x2;
    v5 = 0x1;
    v4 = 0x0;
    p0.<init>();
    v0 = 0x16;
    new-array v0, v0, [[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;
    v2 = "\uff01";
    v1[v4] = v2;
    v2 = "!";
    v1[v5] = v2;
    v0[v4] = v1;
    new-array v1, v6, [Ljava/lang/String;
    v2 = "\uff1f";
    v1[v4] = v2;
    v2 = "?";
    v1[v5] = v2;
    v0[v5] = v1;
    new-array v1, v6, [Ljava/lang/String;
    v2 = "\uff08";
    v1[v4] = v2;
    v2 = "(";
    v1[v5] = v2;
    v0[v6] = v1;
    new-array v1, v6, [Ljava/lang/String;
    v2 = "\uff09";
    v1[v4] = v2;
    v2 = ")";
    v1[v5] = v2;
    v0[v7] = v1;
    new-array v1, v6, [Ljava/lang/String;
    v2 = "\u3002";
    v1[v4] = v2;
    v2 = ".";
    v1[v5] = v2;
    v0[v8] = v1;
    v1 = 0x5;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\uff0c";
    v2[v4] = v3;
    v3 = ",";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0x6;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\uff1b";
    v2[v4] = v3;
    v3 = ";";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0x7;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\uff1a";
    v2[v4] = v3;
    v3 = ":";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0x8;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\u3001";
    v2[v4] = v3;
    v3 = ",";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0x9;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\u3014";
    v2[v4] = v3;
    v3 = "(";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0xa;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\u3015";
    v2[v4] = v3;
    v3 = ")";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0xb;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\u3000";
    v2[v4] = v3;
    v3 = " ";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0xc;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\uff10";
    v2[v4] = v3;
    v3 = "0";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0xd;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\uff11";
    v2[v4] = v3;
    v3 = "1";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0xe;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\uff12";
    v2[v4] = v3;
    v3 = "2";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0xf;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\uff13";
    v2[v4] = v3;
    v3 = "3";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0x10;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\uff14";
    v2[v4] = v3;
    v3 = "4";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0x11;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\uff15";
    v2[v4] = v3;
    v3 = "5";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0x12;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\uff16";
    v2[v4] = v3;
    v3 = "6";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0x13;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\uff17";
    v2[v4] = v3;
    v3 = "7";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0x14;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\uff18";
    v2[v4] = v3;
    v3 = "8";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0x15;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\uff19";
    v2[v4] = v3;
    v3 = "9";
    v2[v5] = v3;
    v0[v1] = v2;
    p0.Lcom/ushaqi/zhuishushenqi/util/ae;->b = v0;
    v0 = 0xb;
    new-array v0, v0, [[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;
    v2 = "\u96f6";
    v1[v4] = v2;
    v2 = "0";
    v1[v5] = v2;
    v0[v4] = v1;
    new-array v1, v6, [Ljava/lang/String;
    v2 = "\u4e00";
    v1[v4] = v2;
    v2 = "1";
    v1[v5] = v2;
    v0[v5] = v1;
    new-array v1, v6, [Ljava/lang/String;
    v2 = "\u4e8c";
    v1[v4] = v2;
    v2 = "2";
    v1[v5] = v2;
    v0[v6] = v1;
    new-array v1, v6, [Ljava/lang/String;
    v2 = "\u4e24";
    v1[v4] = v2;
    v2 = "2";
    v1[v5] = v2;
    v0[v7] = v1;
    new-array v1, v6, [Ljava/lang/String;
    v2 = "\u4e09";
    v1[v4] = v2;
    v2 = "3";
    v1[v5] = v2;
    v0[v8] = v1;
    v1 = 0x5;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\u56db";
    v2[v4] = v3;
    v3 = "4";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0x6;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\u4e94";
    v2[v4] = v3;
    v3 = "5";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0x7;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\u516d";
    v2[v4] = v3;
    v3 = "6";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0x8;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\u4e03";
    v2[v4] = v3;
    v3 = "7";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0x9;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\u516b";
    v2[v4] = v3;
    v3 = "8";
    v2[v5] = v3;
    v0[v1] = v2;
    v1 = 0xa;
    new-array v2, v6, [Ljava/lang/String;
    v3 = "\u4e5d";
    v2[v4] = v3;
    v3 = "9";
    v2[v5] = v3;
    v0[v1] = v2;
    p0.Lcom/ushaqi/zhuishushenqi/util/ae;->c = v0;
    new-array v0, v8, [[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/String;
    v2 = "\u4e07";
    v1[v4] = v2;
    v2 = "10000";
    v1[v5] = v2;
    v0[v4] = v1;
    new-array v1, v6, [Ljava/lang/String;
    v2 = "\u5343";
    v1[v4] = v2;
    v2 = "1000";
    v1[v5] = v2;
    v0[v5] = v1;
    new-array v1, v6, [Ljava/lang/String;
    v2 = "\u767e";
    v1[v4] = v2;
    v2 = "100";
    v1[v5] = v2;
    v0[v6] = v1;
    new-array v1, v6, [Ljava/lang/String;
    v2 = "\u5341";
    v1[v4] = v2;
    v2 = "10";
    v1[v5] = v2;
    v0[v7] = v1;
    p0.Lcom/ushaqi/zhuishushenqi/util/ae;->d = v0;
    v0 = new HashMap();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/util/ae;->e = v0;
    v0 = new HashMap();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/util/ae;->f = v0;
    v0 = new HashMap();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/util/ae;->g = v0;
    v0 = new ak();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/util/ae;->a = v0;
    p0.a();
    return;
.end method
.method private a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/util/af;
    .locals 5
    .prologue
    v0 = 0x0;
    v1 = "[\u7ae0|\u7b2c]?(\\d+)[\u7ae0|\u8282|\u56de]([^\\(]*)(\\(.+?\\))?";
    v1 = Ljava/util/regex/Pattern.compile(v1);
    v2 = v1.matcher(p1);
    v1 = v2.find();
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v1 = 0x1;
    v3 = v2.group(v1);
    v1 = new af();
    if (v3 != 0) {
//       if-nez v3, :cond_0
    }
    :goto_0
    v3 = 0x2;
    v3 = v2.group(v3);
    v4 = 0x3;
    v2 = v2.group(v4);
    v1.<init>(p0, v0, v3, v2);
    v0 = v1;
    :goto_1
    return v0;
    :cond_0
    v0 = Ljava/lang/Integer.parseInt(v3);
    goto :goto_0
    :cond_1
    v1 = new af();
    v2 = "";
    v1.<init>(p0, v0, p1, v2);
    v0 = v1;
    goto :goto_1
.end method
.method private a()V
    .locals 8
    .prologue
    v7 = 0x1;
    v1 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->e;
    v0.clear();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->b;
    v3 = v2.length;
    v0 = v1;
    :goto_0
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_0
    }
    v4 = v2[v0];
    v5 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->e;
    v6 = v4[v1];
    v4 = v4[v7];
    v5.put(v6, v4);
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->f;
    v0.clear();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->c;
    v3 = v2.length;
    v0 = v1;
    :goto_1
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_1
    }
    v4 = v2[v0];
    v5 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->f;
    v6 = v4[v1];
    v4 = v4[v7];
    v4 = Ljava/lang/Integer.parseInt(v4);
    v4 = Ljava/lang/Integer.valueOf(v4);
    v5.put(v6, v4);
    v0 = v0 + 0x1;
    goto :goto_1
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->g;
    v0.clear();
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->d;
    v3 = v2.length;
    v0 = v1;
    :goto_2
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_2
    }
    v4 = v2[v0];
    v5 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->g;
    v6 = v4[v1];
    v4 = v4[v7];
    v4 = Ljava/lang/Integer.valueOf(v4);
    v5.put(v6, v4);
    v0 = v0 + 0x1;
    goto :goto_2
    :cond_2
    return;
.end method
.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .prologue
    v1 = "";
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->e;
    v0 = v0.keySet();
    v2 = v0.iterator();
    :goto_0
    v0 = v2.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = v2.next();
    check-cast v0, Ljava/lang/String;
    v3 = Landroid/text/TextUtils.isEmpty(v1);
    if (v3 != 0) {
//       if-nez v3, :cond_0
    }
    v3 = new StringBuilder();
    v3.<init>();
    v1 = v3.append(v1);
    v3 = "|";
    v1 = v1.append(v3);
    v1 = v1.toString();
    :cond_0
    v3 = new StringBuilder();
    v3.<init>();
    v1 = v3.append(v1);
    v0 = Ljava/lang/String.valueOf(v0);
    v0 = v1.append(v0);
    v1 = v0.toString();
    goto :goto_0
    :cond_1
    v0 = new StringBuffer();
    v0.<init>();
    v1 = Ljava/util/regex/Pattern.compile(v1);
    v1 = v1.matcher(p1);
    :goto_1
    v2 = v1.find();
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->e;
    v3 = v1.group();
    v2 = v2.get(v3);
    v2 = Ljava/lang/String.valueOf(v2);
    v1.appendReplacement(v0, v2);
    goto :goto_1
    :cond_2
    v1.appendTail(v0);
    v0 = v0.toString();
    v0 = p0.c(v0);
    v1 = "[\\(|\u3010|\\[]((?![\u4e0a\u4e2d\u4e0b1-9])[^\\(|\u3010|\\[]+?)[\\)|\u3011|\\]]$";
    v2 = "";
    v0 = v0.replaceAll(v1, v2);
    v0.trim();
    return v0;
.end method
.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .prologue
    v0 = new StringBuffer();
    v0.<init>();
    v1 = new StringBuilder();
    v2 = "[";
    v1.<init>(v2);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->f;
    v2 = v2.keySet();
    v3 = "|";
    v2 = Lcom/arcsoft/hpay100/a/a.a(v2, v3);
    v1 = v1.append(v2);
    v2 = "|";
    v1 = v1.append(v2);
    v2 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->g;
    v2 = v2.keySet();
    v3 = "|";
    v2 = Lcom/arcsoft/hpay100/a/a.a(v2, v3);
    v1 = v1.append(v2);
    v2 = "]+";
    v1 = v1.append(v2);
    v1 = v1.toString();
    v1 = Ljava/util/regex/Pattern.compile(v1);
    v1 = v1.matcher(p1);
    :goto_0
    v2 = v1.find();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v2 = v1.group();
    v2 = p0.d(v2);
    v2 = Ljava/lang/String.valueOf(v2);
    v1.appendReplacement(v0, v2);
    goto :goto_0
    :cond_0
    v1.appendTail(v0);
    v0 = v0.toString();
    return v0;
.end method
.method private d(Ljava/lang/String;)I
    .locals 9
    .prologue
    v3 = 0x1;
    v2 = 0x0;
    v0 = p1.length();
    new-array v7, v0, [I
    v1 = v2;
    :goto_0
    v0 = p1.length();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_2
    }
    v0 = p1.charAt(v1);
    v0 = Ljava/lang/String.valueOf(v0);
    v4 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->f;
    v4 = v4.containsKey(v0);
    if (v4 == 0) {
//       if-eqz v4, :cond_1
    }
    v4 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->f;
    v0 = v4.get(v0);
    check-cast v0, Ljava/lang/Integer;
    v0 = v0.intValue();
    v7[v1] = v0;
    :cond_0
    :goto_1
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_0
    :cond_1
    v4 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->g;
    v4 = v4.containsKey(v0);
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    v4 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->g;
    v0 = v4.get(v0);
    check-cast v0, Ljava/lang/Integer;
    v0 = v0.intValue();
    v7[v1] = v0;
    goto :goto_1
    :cond_2
    v8 = v7.length;
    v6 = v2;
    v0 = v2;
    v4 = v2;
    :goto_2
    if (v6 >= v8) {
//       if-ge v6, v8, :cond_6
    }
    v1 = v7[v6];
    v5 = 0xa;
    if (v1 < v5) {
//       if-lt v1, v5, :cond_4
    }
    v5 = v3;
    :goto_3
    if (v5 == 0) {
//       if-eqz v5, :cond_5
    }
    if (v0 != 0) {
//       if-nez v0, :cond_3
    }
    v0 = v3;
    :cond_3
    v0 *= v1;
    v0 += v4;
    v1 = v0;
    v0 = v2;
    :goto_4
    v4 = v6 + 0x1;
    v6 = v4;
    v4 = v1;
    goto :goto_2
    :cond_4
    v5 = v2;
    goto :goto_3
    :cond_5
    v0 = v1;
    v1 = v4;
    goto :goto_4
    :cond_6
    v0 += v4;
    return v0
.end method
# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .prologue
    v0 = 0x1;
    v1 = 0x0;
    v2 = Landroid/text/TextUtils.isEmpty(p1);
    if (v2 != 0) {
//       if-nez v2, :cond_0
    }
    v2 = Landroid/text/TextUtils.isEmpty(p2);
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    :cond_0
    v0 = v1;
    :cond_1
    :goto_0
    return v0
    :cond_2
    v2 = p1.equals(p2);
    if (v2 != 0) {
//       if-nez v2, :cond_1
    }
    v2 = p0.b(p1);
    v3 = p0.b(p2);
    v4 = v2.equals(v3);
    if (v4 != 0) {
//       if-nez v4, :cond_1
    }
    v2 = p0.a(v2);
    v3 = p0.a(v3);
    v4 = Lcom/ushaqi/zhuishushenqi/util/af.a(v2);
    v5 = Lcom/ushaqi/zhuishushenqi/util/af.a(v3);
    if (v4 != v5) {
//       if-ne v4, v5, :cond_3
    }
    v4 = v2.b();
    v5 = v3.b();
    v4 = Landroid/text/TextUtils.equals(v4, v5);
    if (v4 != 0) {
//       if-nez v4, :cond_4
    }
    :cond_3
    v0 = v1;
    goto :goto_0
    :cond_4
    v4 = p0.Lcom/ushaqi/zhuishushenqi/util/ae;->a;
    v2 = v2.a();
    v3 = v3.a();
    v2 = v4.a(v2, v3);
    v3 = 0x3f000000    # 0.5f;
    cmpl-float v2, v2, v3
    if (v2 >= 0) {
//       if-gez v2, :cond_1
    }
    v0 = v1;
    goto :goto_0
.end method
