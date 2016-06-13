.class public Lcom/arcsoft/hpay100/a/a;
.super Ljava/lang/Object;
# static fields
.field public static a:I
.field private static c:F
.field private static d:Ljava/lang/String;
.field private static e:Ljava/lang/String;
.field private static f:Ljava/lang/String;
# instance fields
.field private final b:Landroid/support/v4/view/ViewPager;
# direct methods
.method public constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .prologue
    p0.<init>();
    p0.Lcom/arcsoft/hpay100/a/a;->b = p1;
    return;
.end method
.method public static A(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .prologue
    v1 = 0x0;
    v6 = 0x1c20;
    v0 = Lcom/arcsoft/hpay100/a/a;->d;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = Lcom/arcsoft/hpay100/a/a;->e;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = Lcom/arcsoft/hpay100/a/a;->f;
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    :cond_0
    v0 = 0x1;
    :goto_0
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = 0x0;
    :goto_1
    return v0;
    :cond_1
    v0 = v1;
    goto :goto_0
    :cond_2
    v0 = Lcom/arcsoft/hpay100/a/a;->e;
    v2 = Lcom/arcsoft/hpay100/a/a;->d;
    v3 = Lcom/arcsoft/hpay100/a/a;->f;
    v2 = Lcom/ushaqi/zhuishushenqi/util/CipherUtil.b(v2, v3);
    v0 = Lcom/ushaqi/zhuishushenqi/util/CipherUtil.b(v0, v2);
    v2 = 0x14;
    v2 = v0.substring(v1, v2);
    v0 = Lcom/ushaqi/zhuishushenqi/util/I;->h;
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    sput-boolean v1, Lcom/ushaqi/zhuishushenqi/util/I;->h:Z
    v0 = "http://www.taobao.com";
    v0 = Lcom/arcsoft/hpay100/a/a.Y(v0);
    cmp-long v3, v0, v6
    if (v3 > 0) {
//       if-gtz v3, :cond_3
    }
    v0 = "http://www.163.com";
    v0 = Lcom/arcsoft/hpay100/a/a.Y(v0);
    :cond_3
    cmp-long v3, v0, v6
    if (v3 > 0) {
//       if-gtz v3, :cond_4
    }
    v0 = "http://www.baidu.com/";
    v0 = Lcom/arcsoft/hpay100/a/a.Y(v0);
    :cond_4
    cmp-long v3, v0, v6
    if (v3 > 0) {
//       if-gtz v3, :cond_5
    }
    v0 = new Date();
    v0.<init>();
    v0 = v0.getTime();
    v4 = 0x3e8;
    v0 /= v4;
    v0 += v6;
    :cond_5
    v3 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0 = Lcom/ushaqi/zhuishushenqi/util/CipherUtil.getNewAdvertWork(v2, v0, v1, p0, v3);
    goto :goto_1
    :cond_6
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0 = Lcom/ushaqi/zhuishushenqi/util/CipherUtil.getNewAdvert(v2, p0, v0);
    goto :goto_1
.end method
.method public static A(Landroid/content/Context;)Z
    .locals 2
    .prologue
    v0 = "shelf_ad_third_enable";
    v0 = Lcom/umeng/a/b.b(p0, v0);
    v1 = "1";
    v0 = v1.equals(v0);
    return v0
.end method
.method public static B(Landroid/content/Context;)V
    .locals 3
    .prologue
    v0 = new Date();
    v0.<init>();
    v0 = v0.getTime();
    v2 = "start_night_theme";
    Lcom/arcsoft/hpay100/a/a.b(p0, v2, v0, v1);
    return;
.end method
.method public static B(Ljava/lang/String;)Z
    .locals 4
    .prologue
    v0 = "/";
    v1 = "";
    v0 = p0.replaceAll(v0, v1);
    v1 = Lcom/ushaqi/zhuishushenqi/reader/ReaderActivity;->a;
    v2 = "/";
    v3 = "";
    v1 = v1.replaceAll(v2, v3);
    v0 = v0.equals(v1);
    return v0
.end method
.method public static C(Landroid/content/Context;)V
    .locals 8
    .prologue
    v6 = 0x0;
    v0 = "start_night_theme";
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0, v6, v7);
    v2 = new Date();
    v2.<init>();
    v2 = v2.getTime();
    cmp-long v4, v0, v6
    if (v4 <= 0) {
//       if-lez v4, :cond_0
    }
    cmp-long v4, v2, v0
    if (v4 <= 0) {
//       if-lez v4, :cond_0
    }
    v0 = v2 - v0;
    v2 = 0x3e8;
    v0 /= v2;
    v2 = 0x3c;
    v0 /= v2;
    long-to-int v0, v0
    v1 = "night_theme_period";
    v2 = 0x0;
    Lcom/umeng/a/b.a(p0, v1, v2, v0);
    :cond_0
    v0 = "start_night_theme";
    Lcom/arcsoft/hpay100/a/a.b(p0, v0, v6, v7);
    return;
.end method
.method public static C(Ljava/lang/String;)[B
    .locals 7
    .prologue
    :try_start_0
    v0 = "MD5";
    v0 = Ljava/security/MessageDigest.getInstance(v0);
    v1 = "UTF-8";
    v1 = p0.getBytes(v1);
    v0.digest(v1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v1
    :try_start_1
    v2 = new StringBuilder();
    v0 = v1.length;
    v0 = v0 << 0x1;
    v2.<init>(v0);
    v3 = v1.length;
    v0 = 0x0;
    :goto_0
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_1
    }
    v4 = v1[v0];
    v5 = v4 & 0xff;
    v6 = 0x10;
    if (v5 >= v6) {
//       if-ge v5, v6, :cond_0
    }
    v5 = "0";
    v2.append(v5);
    :cond_0
    v4 = v4 & 0xff;
    v4 = Ljava/lang/Integer.toHexString(v4);
    v2.append(v4);
    v0 = v0 + 0x1;
    goto :goto_0
    :catch_0
    move-exception v0
    v1 = new RuntimeException();
    v2 = "Huh, MD5 should be supported?";
    v1.<init>(v2, v0);
    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    :catch_1
    move-exception v0
    v0 = Ljava/lang/System;->out;
    v1 = "Md5 parse failded";
    v0.println(v1);
    v0 = p0.getBytes();
    :goto_1
    return v0;
    :cond_1
    :try_start_2
    v0 = v2.toString();
    v0.getBytes();
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    move-result-object v0
    goto :goto_1
.end method
.method public static D(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = new StringBuilder();
    v1 = "/ZhuiShuShenQi/Chapter";
    v0.<init>(v1);
    v1 = Ljava/io/File;->separator;
    v0 = v0.append(v1);
    v0 = v0.append(p0);
    v0 = v0.toString();
    v1 = new File();
    v2 = Lcom/ushaqi/zhuishushenqi/c;->a;
    v1.<init>(v2, v0);
    v0 = Lcom/arcsoft/hpay100/a/a.c(v1);
    return v0;
.end method
.method public static D(Landroid/content/Context;)V
    .locals 3
    .prologue
    v0 = new Date();
    v0.<init>();
    v0 = v0.getTime();
    v2 = "start_auto_read_time";
    Lcom/arcsoft/hpay100/a/a.b(p0, v2, v0, v1);
    return;
.end method
.method public static E(Landroid/content/Context;)V
    .locals 8
    .prologue
    v6 = 0x0;
    v0 = "start_auto_read_time";
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0, v6, v7);
    v2 = new Date();
    v2.<init>();
    v2 = v2.getTime();
    cmp-long v4, v0, v6
    if (v4 <= 0) {
//       if-lez v4, :cond_0
    }
    cmp-long v4, v2, v0
    if (v4 <= 0) {
//       if-lez v4, :cond_0
    }
    v0 = v2 - v0;
    v2 = 0x3e8;
    v0 /= v2;
    v2 = 0x3c;
    v0 /= v2;
    long-to-int v0, v0
    v1 = "auto_read_period";
    v2 = 0x0;
    Lcom/umeng/a/b.a(p0, v1, v2, v0);
    :cond_0
    v0 = "start_auto_read_time";
    Lcom/arcsoft/hpay100/a/a.b(p0, v0, v6, v7);
    return;
.end method
.method public static E(Ljava/lang/String;)Z
    .locals 7
    .prologue
    v1 = 0x0;
    v0 = Ljava/io/File;->separator;
    v0 = p0.endsWith(v0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new StringBuilder();
    v0.<init>();
    v0 = v0.append(p0);
    v2 = Ljava/io/File;->separator;
    v0 = v0.append(v2);
    p0 = v0.toString();
    :cond_0
    v3 = new File();
    v3.<init>(p0);
    v0 = v3.exists();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = v3.isDirectory();
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    :cond_1
    v0 = v1;
    :goto_0
    return v0
    :cond_2
    v0 = 0x1;
    v4 = v3.listFiles();
    if (v4 != 0) {
//       if-nez v4, :cond_3
    }
    v0 = v1;
    goto :goto_0
    :cond_3
    v5 = v4.length;
    v2 = v1;
    :goto_1
    if (v2 >= v5) {
//       if-ge v2, v5, :cond_4
    }
    v0 = v4[v2];
    v6 = v0.isFile();
    if (v6 == 0) {
//       if-eqz v6, :cond_5
    }
    v0 = v0.getAbsolutePath();
    v0 = Lcom/arcsoft/hpay100/a/a.F(v0);
    if (v0 != 0) {
//       if-nez v0, :cond_6
    }
    :cond_4
    if (v0 != 0) {
//       if-nez v0, :cond_7
    }
    v0 = v1;
    goto :goto_0
    :cond_5
    v0 = v0.getAbsolutePath();
    v0 = Lcom/arcsoft/hpay100/a/a.E(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    :cond_6
    v2 = v2 + 0x1;
    goto :goto_1
    :cond_7
    v0 = v3.delete();
    goto :goto_0
.end method
.method public static F(Landroid/content/Context;)Z
    .locals 7
    .prologue
    v0 = 0x1;
    v1 = 0x0;
    v2 = "show_new_ads";
    v2 = Lcom/arcsoft/hpay100/a/a.r(p0, v2);
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v3 = Landroid/support/design/widget/am.n(p0);
    v2 = "show_new_ads_disabled_channel";
    v2 = Lcom/umeng/a/b.b(p0, v2);
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v4 = v2.length();
    if (v4 <= 0) {
//       if-lez v4, :cond_1
    }
    v4 = ",";
    v4 = v2.split(v4);
    v5 = v4.length;
    v2 = v1;
    :goto_0
    if (v2 >= v5) {
//       if-ge v2, v5, :cond_1
    }
    v6 = v4[v2];
    v6 = v6.equals(v3);
    if (v6 == 0) {
//       if-eqz v6, :cond_0
    }
    v2 = v1;
    :goto_1
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    :goto_2
    return v0
    :cond_0
    v2 = v2 + 0x1;
    goto :goto_0
    :cond_1
    v2 = v0;
    goto :goto_1
    :cond_2
    v0 = v1;
    goto :goto_2
.end method
.method public static F(Ljava/lang/String;)Z
    .locals 3
    .prologue
    v0 = 0x0;
    v1 = new File();
    v1.<init>(p0);
    v2 = v1.isFile();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v2 = v1.exists();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v0 = v1.delete();
    :cond_0
    return v0
.end method
.method public static G(Ljava/lang/String;)Ljava/io/BufferedReader;
    .locals 4
    .prologue
    v0 = new File();
    v0.<init>(p0);
    v1 = new BufferedReader();
    v2 = new InputStreamReader();
    v3 = new FileInputStream();
    v3.<init>(v0);
    v0 = Lcom/arcsoft/hpay100/a/a.H(p0);
    v2.<init>(v3, v0);
    v1.<init>(v2);
    return v1;
.end method
.method public static G(Landroid/content/Context;)V
    .locals 2
    .prologue
    v0 = "HOT_KEY_WORD_CHANGE_CLICK";
    v1 = "CHANGE";
    Lcom/umeng/a/b.a(p0, v0, v1);
    return;
.end method
.method public static H(Landroid/content/Context;)F
    .locals 1
    .prologue
    v0 = "rate_bfd_recommend";
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
.method public static H(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .prologue
    v0 = 0x1000;
    new-array v0, v0, [B
    v1 = new FileInputStream();
    v1.<init>(p0);
    v2 = new UniversalDetector();
    v3 = 0x0;
    v2.<init>(v3);
    :goto_0
    v3 = v1.read(v0);
    if (v3 <= 0) {
//       if-lez v3, :cond_0
    }
    v4 = v2.a();
    if (v4 != 0) {
//       if-nez v4, :cond_0
    }
    v4 = 0x0;
    v2.a(v0, v4, v3);
    goto :goto_0
    :cond_0
    v2.c();
    v0 = v2.b();
    v2.d();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = "utf-8";
    :cond_1
    return v0;
.end method
.method public static I(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/download/a;
    .locals 6
    .prologue
    v0 = "app_name";
    v2 = Lcom/umeng/a/b.b(p0, v0);
    v0 = "app_apk_url";
    v3 = Lcom/umeng/a/b.b(p0, v0);
    v0 = "app_icon_url";
    v4 = Lcom/umeng/a/b.b(p0, v0);
    v0 = "app_package_name";
    v5 = Lcom/umeng/a/b.b(p0, v0);
    v0 = Lcom/arcsoft/hpay100/a/a.Z(v2);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = Lcom/arcsoft/hpay100/a/a.Z(v3);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = Lcom/arcsoft/hpay100/a/a.Z(v4);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = Lcom/arcsoft/hpay100/a/a.Z(v5);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new a();
    v1 = p0;
    v0.<init>(..v5);
    :goto_0
    return v0;
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static I(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/c;->g;
    v1 = Lcom/arcsoft/hpay100/a/a.J(v0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v0 = 0x0;
    :goto_0
    return v0;
    :cond_0
    v0 = new File();
    v0.<init>(v1, p0);
    goto :goto_0
.end method
.method public static J(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .prologue
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z
    move-result v0
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = 0x0;
    :cond_0
    :goto_0
    return v0;
    :cond_1
    v0 = new File();
    v0.<init>(p0);
    v1 = v0.exists();
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v0.mkdirs();
    goto :goto_0
.end method
.method public static J(Landroid/content/Context;)V
    .locals 3
    .prologue
    v0 = new Date();
    v0.<init>();
    v0 = v0.getTime();
    v2 = "tts_start_time";
    Lcom/arcsoft/hpay100/a/a.b(p0, v2, v0, v1);
    return;
.end method
.method public static K(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .prologue
    v0 = Lcom/arcsoft/hpay100/a/a.Q(p0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = "";
    :goto_0
    return v0;
    :cond_0
    v0 = Ljava/io/File;->separator;
    v0 = p0.lastIndexOf(v0);
    v0 = v0 + 0x1;
    v0 = p0.substring(v0);
    goto :goto_0
.end method
.method public static K(Landroid/content/Context;)V
    .locals 8
    .prologue
    v6 = 0x0;
    v0 = "tts_start_time";
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0, v6, v7);
    v2 = new Date();
    v2.<init>();
    v2 = v2.getTime();
    cmp-long v4, v0, v6
    if (v4 <= 0) {
//       if-lez v4, :cond_0
    }
    cmp-long v4, v2, v0
    if (v4 <= 0) {
//       if-lez v4, :cond_0
    }
    v0 = v2 - v0;
    v2 = 0x3e8;
    v0 /= v2;
    v2 = 0x3c;
    v0 /= v2;
    long-to-int v0, v0
    v1 = "tts_speaking_period";
    v2 = 0x0;
    Lcom/umeng/a/b.a(p0, v1, v2, v0);
    :cond_0
    v0 = "tts_start_time";
    Lcom/arcsoft/hpay100/a/a.b(p0, v0, v6, v7);
    return;
.end method
.method public static L(Landroid/content/Context;)I
    .locals 2
    .prologue
    v1 = new DisplayMetrics();
    v1.<init>();
    v0 = "window";
    v0 = p0.getSystemService(v0);
    check-cast v0, Landroid/view/WindowManager;
    v0 = v0.getDefaultDisplay();
    v0.getMetrics(v1);
    v0 = v1.Landroid/util/DisplayMetrics;->heightPixels;
    return v0
.end method
.method public static L(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .prologue
    :try_start_0
    v0 = new URL();
    v0.<init>(p0);
    v0 = v0.openConnection();
    check-cast v0, Ljava/net/HttpURLConnection;
    v1 = 0x1;
    v0.setDoInput(v1);
    v0.connect();
    v0 = v0.getInputStream();
    Landroid/graphics/BitmapFactory.decodeStream(v0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
.end method
.method public static M(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .prologue
    v0 = "umeng_general_config";
    v1 = 0x0;
    v0 = p0.getSharedPreferences(v0, v1);
    return v0;
.end method
.method public static M(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/c;->c;
    v0 = Lcom/arcsoft/hpay100/a/a.k(v0, p0);
    check-cast v0, Ljava/util/HashMap;
    return v0;
.end method
.method public static N(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    v0 = "";
    :goto_0
    return v0;
    :cond_0
    v0 = new StringBuilder();
    v0.<init>();
    v1 = Lcom/arcsoft/hpay100/a/a.C(p0);
    v1 = Lcom/integralblue/httpresponsecache/compat/libcore/a/a.b(v1);
    v0 = v0.append(v1);
    v1 = ".apk";
    v0 = v0.append(v1);
    v0 = v0.toString();
    goto :goto_0
.end method
.method public static N(Landroid/content/Context;)Lu/aly/be;
    .locals 14
    .prologue
    v12 = 0x0;
    v2 = 0x0;
    :try_start_0
    v1 = new be();
    v1.<init>();
    v0 = "android.net.TrafficStats";
    v0 = Ljava/lang/Class.forName(v0);
    v3 = "getUidRxBytes";
    v4 = 0x1;
    new-array v4, v4, [Ljava/lang/Class;
    v5 = 0x0;
    v6 = Ljava/lang/Integer;->TYPE;
    v4[v5] = v6;
    v4 = v0.getMethod(v3, v4);
    v3 = "getUidTxBytes";
    v5 = 0x1;
    new-array v5, v5, [Ljava/lang/Class;
    v6 = 0x0;
    v7 = Ljava/lang/Integer;->TYPE;
    v5[v6] = v7;
    v5 = v0.getMethod(v3, v5);
    v0 = p0.getApplicationInfo();
    v6 = v0.Landroid/content/pm/ApplicationInfo;->uid;
    v0 = -0x1;
    if (v6 != v0) {
//       if-ne v6, v0, :cond_1
    }
    v0 = v2;
    :goto_0
    v3 = 0x0;
    v4 = v0[v3];
    cmp-long v3, v4, v12
    if (v3 <= 0) {
//       if-lez v3, :cond_0
    }
    v3 = 0x1;
    v4 = v0[v3];
    cmp-long v3, v4, v12
    if (v3 > 0) {
//       if-gtz v3, :cond_2
    }
    :cond_0
    v0 = v2;
    :goto_1
    return v0;
    :cond_1
    v0 = 0x2;
    new-array v3, v0, [J
    v7 = 0x0;
    v0 = 0x0;
    v8 = 0x1;
    new-array v8, v8, [Ljava/lang/Object;
    v9 = 0x0;
    v10 = Ljava/lang/Integer.valueOf(v6);
    v8[v9] = v10;
    v0 = v4.invoke(v0, v8);
    check-cast v0, Ljava/lang/Long;
    v8 = v0.longValue();
    v3[v7] = v8;
    v4 = 0x1;
    v0 = 0x0;
    v7 = 0x1;
    new-array v7, v7, [Ljava/lang/Object;
    v8 = 0x0;
    v6 = Ljava/lang/Integer.valueOf(v6);
    v7[v8] = v6;
    v0 = v5.invoke(v0, v7);
    check-cast v0, Ljava/lang/Long;
    v6 = v0.longValue();
    v3[v4] = v6;
    v0 = v3;
    goto :goto_0
    :cond_2
    v3 = Lcom/arcsoft/hpay100/a/a.M(p0);
    v4 = "uptr";
    v6 = -0x1;
    v4 = v3.getLong(v4, v6, v7);
    v6 = "dntr";
    v8 = -0x1;
    v6 = v3.getLong(v6, v8, v9);
    v3 = v3.edit();
    v8 = "uptr";
    v9 = 0x1;
    v10 = v0[v9];
    v3 = v3.putLong(v8, v10, v11);
    v8 = "dntr";
    v9 = 0x0;
    v10 = v0[v9];
    v3 = v3.putLong(v8, v10, v11);
    v3.commit();
    cmp-long v3, v4, v12
    if (v3 <= 0) {
//       if-lez v3, :cond_3
    }
    cmp-long v3, v6, v12
    if (v3 > 0) {
//       if-gtz v3, :cond_4
    }
    :cond_3
    v0 = v2;
    goto :goto_1
    :cond_4
    v3 = 0x0;
    v8 = v0[v3];
    v6 = v8 - v6;
    v0[v3] = v6;
    v3 = 0x1;
    v6 = v0[v3];
    v4 = v6 - v4;
    v0[v3] = v4;
    v3 = 0x0;
    v4 = v0[v3];
    cmp-long v3, v4, v12
    if (v3 <= 0) {
//       if-lez v3, :cond_5
    }
    v3 = 0x1;
    v4 = v0[v3];
    cmp-long v3, v4, v12
    if (v3 > 0) {
//       if-gtz v3, :cond_6
    }
    :cond_5
    v0 = v2;
    goto/16 :goto_1
    :cond_6
    v3 = 0x0;
    v4 = v0[v3];
    long-to-int v3, v4
    v1.c(v3);
    v3 = 0x1;
    v4 = v0[v3];
    long-to-int v0, v4
    v1.a(v0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    v0 = v1;
    goto/16 :goto_1
    :catch_0
    move-exception v0
    v0 = "MobclickAgent";
    v1 = "sdk less than 2.2 has get no traffic";
    Lu/aly/bt.d(v0, v1);
    v0 = v2;
    goto/16 :goto_1
.end method
.method private static O(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .prologue
    v4 = 0x0;
    v1 = new File();
    v0 = new File();
    v2 = invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    v3 = "Android";
    v0.<init>(v2, v3);
    v2 = "data";
    v1.<init>(v0, v2);
    v0 = new File();
    v2 = new File();
    v3 = p0.getPackageName();
    v2.<init>(v1, v3);
    v1 = "cache";
    v0.<init>(v2, v1);
    v1 = v0.exists();
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = v0.mkdirs();
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    v0 = "Unable to create external cache directory";
    new-array v1, v4, [Ljava/lang/Object;
    Lcom/nostra13/universalimageloader/b/d.c(v0, v1);
    v0 = 0x0;
    :cond_0
    :goto_0
    return v0;
    :cond_1
    :try_start_0
    v1 = new File();
    v2 = ".nomedia";
    v1.<init>(v0, v2);
    v1.createNewFile();
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_0
    :catch_0
    move-exception v1
    v1 = "Can\'t create \".nomedia\" file in application external cache directory";
    new-array v2, v4, [Ljava/lang/Object;
    Lcom/nostra13/universalimageloader/b/d.b(v1, v2);
    goto :goto_0
.end method
.method public static O(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .prologue
    v0 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_1
    }
    :cond_0
    :goto_0
    return v0;
    :cond_1
    v1 = ":";
    v1 = p0.split(v1);
    v2 = v1.length;
    v3 = 0x2;
    if (v2 < v3) {
//       if-lt v2, v3, :cond_0
    }
    v0 = v1;
    goto :goto_0
.end method
.method private static P(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .prologue
    v0 = Landroid/preference/PreferenceManager.getDefaultSharedPreferences(p0);
    v0 = v0.edit();
    return v0;
.end method
.method public static P(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = 0x0;
    v1 = "soso";
    v1 = v1.equals(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v0 = "http://book.soso.com/ajax?m=show_bookdetail&resourceid=...";
    :cond_0
    :goto_0
    return v0;
    :cond_1
    v1 = "sogou";
    v1 = v1.equals(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v0 = "http://novel.mse.sogou.com/content.php/&page=1&md=...";
    goto :goto_0
    :cond_2
    v1 = "leidian";
    v1 = v1.equals(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v0 = "http://m.leidian.com/index.php?c=ebook&a=chapterData&bid=...";
    goto :goto_0
    :cond_3
    v1 = "easou";
    v1 = v1.equals(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = "http://book.easou.com/ta/show.m?&gst=0&gid=11955147&nid=...";
    goto :goto_0
.end method
.method public static Q(Ljava/lang/String;)Z
    .locals 5
    .prologue
    v2 = 0x1;
    v1 = 0x0;
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    v0 = p0.length();
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    :cond_0
    v1 = v2;
    :cond_1
    :goto_0
    return v1
    :cond_2
    v0 = v1;
    :goto_1
    v3 = p0.length();
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_4
    }
    v3 = p0.charAt(v0);
    v4 = 0x20;
    if (v3 == v4) {
//       if-eq v3, v4, :cond_3
    }
    v4 = 0x9;
    if (v3 == v4) {
//       if-eq v3, v4, :cond_3
    }
    v4 = 0xd;
    if (v3 == v4) {
//       if-eq v3, v4, :cond_3
    }
    v4 = 0xa;
    if (v3 != v4) {
//       if-ne v3, v4, :cond_1
    }
    :cond_3
    v0 = v0 + 0x1;
    goto :goto_1
    :cond_4
    v1 = v2;
    goto :goto_0
.end method
.method public static R(Ljava/lang/String;)J
    .locals 2
    .prologue
    :try_start_0
    Ljava/lang/Long.parseLong(p0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-wide v0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
.end method
.method public static S(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    if (p0 == 0) {
//       if-eqz p0, :cond_2
    }
    v0 = invoke-static {}, Lorg/litepal/c/a;->a()Lorg/litepal/c/a;
    v0 = v0.e();
    v1 = "keep";
    v1 = v1.equals(v0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    :goto_0
    return p0;
    :cond_0
    v1 = "upper";
    v0 = v1.equals(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = Ljava/util/Locale;->US;
    p0 = p0.toUpperCase(v0);
    goto :goto_0
    :cond_1
    v0 = Ljava/util/Locale;->US;
    p0 = p0.toLowerCase(v0);
    goto :goto_0
    :cond_2
    p0 = 0x0;
    goto :goto_0
.end method
.method public static T(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .prologue
    v3 = 0x1;
    v0 = Landroid/text/TextUtils.isEmpty(p0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new StringBuilder();
    v1 = 0x0;
    v1 = p0.substring(v1, v3);
    v2 = Ljava/util/Locale;->US;
    v1 = v1.toUpperCase(v2);
    v1 = Ljava/lang/String.valueOf(v1);
    v0.<init>(v1);
    v1 = p0.substring(v3);
    v0 = v0.append(v1);
    v0 = v0.toString();
    :goto_0
    return v0;
    :cond_0
    if (p0 != 0) {
//       if-nez p0, :cond_1
    }
    v0 = 0x0;
    goto :goto_0
    :cond_1
    v0 = "";
    goto :goto_0
.end method
.method public static U(Ljava/lang/String;)Z
    .locals 2
    .prologue
    v0 = 0x1;
    v1 = "boolean";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "java.lang.Boolean";
    v1 = v1.equals(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    :cond_0
    :goto_0
    return v0
    :cond_1
    v1 = "float";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "java.lang.Float";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "double";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "java.lang.Double";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "int";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "java.lang.Integer";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "long";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "java.lang.Long";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "short";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "java.lang.Short";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "char";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "java.lang.Character";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "java.lang.String";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "java.util.Date";
    v1 = v1.equals(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v0 = 0x0;
    goto :goto_0
.end method
.method public static V(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .prologue
    v1 = 0x0;
    v0 = Landroid/text/TextUtils.isEmpty(p0);
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = 0x2e;
    v2 = p0.length();
    v2 = v2 + -0x1;
    v2 = p0.charAt(v2);
    if (v0 != v2) {
//       if-ne v0, v2, :cond_0
    }
    v0 = v1;
    :goto_0
    return v0;
    :cond_0
    :try_start_0
    v0 = Ljava/lang/Class.forName(p0);
    v2 = Lorg/litepal/a/a;;
    v0 = v0.getAnnotation(v2);
    check-cast v0, Lorg/litepal/a/a;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = v0.a();
    v2 = Landroid/text/TextUtils.isEmpty(v0);
    if (v2 != 0) {
//       if-nez v2, :cond_1
    }
    v0 = Lcom/arcsoft/hpay100/a/a.S(v0);
    goto :goto_0
    :cond_1
    v0 = ".";
    v0 = p0.lastIndexOf(v0);
    v0 = v0 + 0x1;
    p0.substring(v0);
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    goto :goto_0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v1;
    goto :goto_0
    :cond_2
    v0 = v1;
    goto :goto_0
.end method
.method private static W(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    :try_start_0
    v0 = new FileInputStream();
    v0.<init>(p0);
    v1 = 0x8;
    new-array v1, v1, [B
    v0.read(v1);
    v0.close();
    Lcom/arcsoft/hpay100/a/a.g(v1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v1 = invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;
    v1.w(v0);
    v0 = 0x0;
    goto :goto_0
.end method
.method private static X(Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 3
    .prologue
    v0 = new Throwable();
    v1 = new StringBuilder();
    v2 = "Invalid int: \"";
    v1.<init>(v2);
    v1 = v1.append(p0);
    v2 = "\"";
    v1 = v1.append(v2);
    v1 = v1.toString();
    v0.<init>(v1);
    throw v0
.end method
.method private static Y(Ljava/lang/String;)J
    .locals 4
    .prologue
    v0 = 0x0;
    :try_start_0
    v2 = new URL();
    v2.<init>(p0);
    v2 = v2.openConnection();
    v2.connect();
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    v0 = v2.getDate();
    v2 = 0x3e8;
    v0 /= v2;
    v2 = 0x1c20;
    v0 += v2;
    :goto_0
    return v0;
    :catch_0
    move-exception v2
    goto :goto_0
    :catch_1
    move-exception v2
    goto :goto_0
.end method
.method private static Z(Ljava/lang/String;)Z
    .locals 1
    .prologue
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    v0 = "";
    v0 = v0.equals(p0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    v0 = 0x1;
    :goto_0
    return v0
    :cond_1
    v0 = 0x0;
    goto :goto_0
.end method
.method public static a(BIZ)B
    .locals 1
    .prologue
    v0 = 0x1;
    if (p2 == 0) {
//       if-eqz p2, :cond_0
    }
    v0 = v0 << p1;
    v0 |= p0;
    :goto_0
    int-to-byte v0, v0
    return v0
    :cond_0
    v0 = v0 << p1;
    xv0 = v0 | -0x1;
    v0 &= p0;
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;F)F
    .locals 2
    .prologue
    v0 = 0x40000000    # 2.0f;
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return v0
    :cond_0
    v1 = Landroid/preference/PreferenceManager.getDefaultSharedPreferences(p0);
    v0 = v1.getFloat(p1, v0);
    goto :goto_0
.end method
.method private static a(II)I
    .locals 2
    .prologue
    v1 = -0x1;
    v0 = 0x2;
    if (p1 < v0) {
//       if-lt p1, v0, :cond_0
    }
    v0 = 0x24;
    if (p1 <= v0) {
//       if-le p1, v0, :cond_2
    }
    :cond_0
    v0 = v1;
    :cond_1
    :goto_0
    return v0
    :cond_2
    v0 = 0x30;
    if (v0 > p0) {
//       if-gt v0, p0, :cond_3
    }
    v0 = 0x39;
    if (p0 > v0) {
//       if-gt p0, v0, :cond_3
    }
    v0 = p0 + -0x30;
    :goto_1
    if (v0 < p1) {
//       if-lt v0, p1, :cond_1
    }
    v0 = v1;
    goto :goto_0
    :cond_3
    v0 = 0x61;
    if (v0 > p0) {
//       if-gt v0, p0, :cond_4
    }
    v0 = 0x7a;
    if (p0 > v0) {
//       if-gt p0, v0, :cond_4
    }
    v0 = p0 + -0x61;
    v0 = v0 + 0xa;
    goto :goto_1
    :cond_4
    v0 = 0x41;
    if (v0 > p0) {
//       if-gt v0, p0, :cond_5
    }
    v0 = 0x5a;
    if (p0 > v0) {
//       if-gt p0, v0, :cond_5
    }
    v0 = p0 + -0x41;
    v0 = v0 + 0xa;
    goto :goto_1
    :cond_5
    v0 = v1;
    goto :goto_1
.end method
.method public static a(Landroid/content/Context;F)I
    .locals 2
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    v0 = 0x0;
    :goto_0
    return v0
    :cond_0
    v0 = p0.getResources();
    v0 = v0.getDisplayMetrics();
    v0 = v0.Landroid/util/DisplayMetrics;->density;
    v0 *= p1;
    v1 = 0x3f000000    # 0.5f;
    v0 += v1;
    float-to-int v0, v0
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;I)I
    .locals 2
    .prologue
    v0 = Lcom/arcsoft/hpay100/a/a;->c;
    v1 = 0x0;
    cmpg-float v0, v0, v1
    if (v0 > 0) {
//       if-gtz v0, :cond_0
    }
    v0 = p0.getResources();
    v0 = v0.getDisplayMetrics();
    v0 = v0.Landroid/util/DisplayMetrics;->density;
    sput v0, Lcom/arcsoft/hpay100/a/a;->c:F
    :cond_0
    int-to-float v0, p1
    v1 = Lcom/arcsoft/hpay100/a/a;->c;
    v0 *= v1;
    v1 = 0x3f000000    # 0.5f;
    v0 += v1;
    float-to-int v0, v0
    return v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return p2
    :cond_0
    v0 = Landroid/preference/PreferenceManager.getDefaultSharedPreferences(p0);
    p2 = v0.getInt(p1, p2);
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .prologue
    v0 = p0.getApplicationContext();
    v0 = v0.getResources();
    v1 = p0.getApplicationContext();
    v1 = v1.getPackageName();
    v0 = v0.getIdentifier(p2, p1, v1);
    return v0
.end method
.method public static a(Ljava/lang/String;I)I
    .locals 2
    .prologue
    v0 = -0x1;
    if (p1 == v0) {
//       if-eq p1, v0, :cond_0
    }
    :goto_0
    return p1
    :cond_0
    v1 = "http";
    v1 = v1.equalsIgnoreCase(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    p1 = 0x50;
    goto :goto_0
    :cond_1
    v1 = "https";
    v1 = v1.equalsIgnoreCase(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    p1 = 0x1bb;
    goto :goto_0
    :cond_2
    p1 = v0;
    goto :goto_0
.end method
.method public static a(Ljava/net/URI;)I
    .locals 2
    .prologue
    v0 = p0.getScheme();
    v1 = p0.getPort();
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v1);
    return v0
.end method
.method public static a(Ljava/net/URL;)I
    .locals 2
    .prologue
    v0 = p0.getProtocol();
    v1 = p0.getPort();
    v0 = Lcom/arcsoft/hpay100/a/a.a(v0, v1);
    return v0
.end method
.method public static declared-synchronized a(Landroid/content/Context;JLjava/lang/String;ILjava/lang/String;)J
    .locals 5
    .prologue
    v2 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v2
    :try_start_0
    Landroid/text/TextUtils.isEmpty(p3);
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = -0x1;
    :goto_0
    monitor-exit v2
    return v0;
    :cond_0
    :try_start_1
    v0 = Lcom/mob/a/a/c.a(p0);
    v1 = new ContentValues();
    v1.<init>();
    v3 = "exception_time";
    v4 = Ljava/lang/Long.valueOf(p1, p2);
    v1.put(v3, v4);
    v3 = "exception_msg";
    v4 = p3.toString();
    v1.put(v3, v4);
    v3 = "exception_level";
    v4 = Ljava/lang/Integer.valueOf(p4);
    v1.put(v3, v4);
    v3 = "exception_md5";
    v1.put(v3, p5);
    v3 = "table_exception";
    v0.a(v3, v1);
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    move-result-wide v0
    goto :goto_0
    :catchall_0
    move-exception v0
    monitor-exit v2
    throw v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 3
    .prologue
    v0 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return v0;
    :cond_0
    v2 = Landroid/preference/PreferenceManager.getDefaultSharedPreferences(p0);
    v0 = v2.getLong(p1, v0, v1);
    goto :goto_0
.end method
.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/ArrayList;)J
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation
    .prologue
    v0 = 0x0;
    v2 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v2
    if (p1 != 0) {
//       if-nez p1, :cond_0
    }
    v0 = 0x0;
    :goto_0
    monitor-exit v2
    return v0;
    :cond_0
    :try_start_0
    v3 = new StringBuilder();
    v3.<init>();
    v1 = v0;
    :goto_1
    v0 = p1.size();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_1
    }
    v0 = "\'";
    v3.append(v0);
    v0 = p1.get(v1);
    check-cast v0, Ljava/lang/String;
    v3.append(v0);
    v0 = "\'";
    v3.append(v0);
    v0 = ",";
    v3.append(v0);
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_1
    :cond_1
    v0 = v3.toString();
    v1 = 0x0;
    v3 = v3.length();
    v3 = v3 + -0x1;
    v0 = v0.substring(v1, v3);
    v1 = Lcom/mob/a/a/c.a(p0);
    v3 = "table_exception";
    v4 = new StringBuilder();
    v5 = "exception_md5 in ( ";
    v4.<init>(v5);
    v0 = v4.append(v0);
    v4 = " )";
    v0 = v0.append(v4);
    v0 = v0.toString();
    v4 = 0x0;
    v0 = v1.a(v3, v0, v4);
    v1 = invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;
    v3 = "delete COUNT == %s";
    v4 = 0x1;
    new-array v4, v4, [Ljava/lang/Object;
    v5 = 0x0;
    v6 = Ljava/lang/Integer.valueOf(v0);
    v4[v5] = v6;
    v1.i(v3, v4);
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    int-to-long v0, v0
    goto :goto_0
    :catchall_0
    move-exception v0
    monitor-exit v2
    throw v0
.end method
.method private static a(Ljava/lang/String;IIZ)J
    .locals 12
    .prologue
    v0 = -0x8000000000000000L;
    int-to-long v2, p2
    v6 = v0 / v2;
    v0 = 0x0;
    v2 = p0.length();
    int-to-long v8, v2
    :goto_0
    int-to-long v2, p1
    cmp-long v2, v2, v8
    if (v2 >= 0) {
//       if-gez v2, :cond_3
    }
    v4 = p1 + 0x1;
    v2 = p0.charAt(p1);
    v2 = Lcom/arcsoft/hpay100/a/a.a(v2, p2);
    v3 = -0x1;
    if (v2 != v3) {
//       if-ne v2, v3, :cond_0
    }
    v0 = new Throwable();
    v1 = new StringBuilder();
    v2 = "Invalid long: \"";
    v1.<init>(v2);
    v1 = v1.append(p0);
    v2 = "\"";
    v1 = v1.append(v2);
    v1 = v1.toString();
    v0.<init>(v1);
    throw v0
    :cond_0
    cmp-long v3, v6, v0
    if (v3 <= 0) {
//       if-lez v3, :cond_1
    }
    v0 = new Throwable();
    v1 = new StringBuilder();
    v2 = "Invalid long: \"";
    v1.<init>(v2);
    v1 = v1.append(p0);
    v2 = "\"";
    v1 = v1.append(v2);
    v1 = v1.toString();
    v0.<init>(v1);
    throw v0
    :cond_1
    int-to-long v10, p2
    v10 *= v0;
    int-to-long v2, v2
    v2 = v10 - v2;
    cmp-long v0, v2, v0
    if (v0 <= 0) {
//       if-lez v0, :cond_2
    }
    v0 = new Throwable();
    v1 = new StringBuilder();
    v2 = "Invalid long: \"";
    v1.<init>(v2);
    v1 = v1.append(p0);
    v2 = "\"";
    v1 = v1.append(v2);
    v1 = v1.toString();
    v0.<init>(v1);
    throw v0
    :cond_2
    v0 = v2;
    p1 = v4;
    goto :goto_0
    :cond_3
    if (p3 != 0) {
//       if-nez p3, :cond_4
    }
    neg-long v0, v0
    v2 = 0x0;
    cmp-long v2, v0, v2
    if (v2 >= 0) {
//       if-gez v2, :cond_4
    }
    v0 = new Throwable();
    v1 = new StringBuilder();
    v2 = "Invalid long: \"";
    v1.<init>(v2);
    v1 = v1.append(p0);
    v2 = "\"";
    v1 = v1.append(v2);
    v1 = v1.toString();
    v0.<init>(v1);
    throw v0
    :cond_4
    return v0;
.end method
.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .prologue
    v6 = 0x0;
    v0 = p0.getWidth();
    v1 = p0.getHeight();
    v2 = Landroid/graphics/Bitmap$Config;->ARGB_8888;
    v0 = Landroid/graphics/Bitmap.createBitmap(v0, v1, v2);
    v1 = new Canvas();
    v1.<init>(v0);
    v2 = new Paint();
    v2.<init>();
    v3 = new Rect();
    v4 = p0.getWidth();
    v5 = p0.getHeight();
    v3.<init>(v6, v6, v4, v5);
    v4 = 0x1;
    v2.setAntiAlias(v4);
    v1.drawARGB(v6, v6, v6, v6);
    v4 = -0xbdbdbe;
    v2.setColor(v4);
    v4 = p0.getWidth();
    v4 = v4 / 0x2;
    int-to-float v4, v4
    v5 = p0.getHeight();
    v5 = v5 / 0x2;
    int-to-float v5, v5
    v6 = p0.getWidth();
    v6 = v6 / 0x2;
    int-to-float v6, v6
    v1.drawCircle(v4, v5, v6, v2);
    v4 = new PorterDuffXfermode();
    v5 = Landroid/graphics/PorterDuff$Mode;->SRC_IN;
    v4.<init>(v5);
    v2.setXfermode(v4);
    v1.drawBitmap(p0, v3, v3, v2);
    return v0;
.end method
.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .prologue
    v5 = 0x41000000    # 8.0f;
    v2 = 0x3f000000    # 0.5f;
    v3 = 0x3e000000    # 0.125f;
    v4 = 0x0;
    v0 = p0.getWidth();
    v1 = p0.getHeight();
    int-to-float v0, v0
    v0 /= v5;
    v0 += v2;
    float-to-int v0, v0
    int-to-float v1, v1
    v1 /= v5;
    v1 += v2;
    float-to-int v1, v1
    v2 = Landroid/graphics/Bitmap$Config;->ARGB_8888;
    v0 = Landroid/graphics/Bitmap.createBitmap(v0, v1, v2);
    v1 = new Canvas();
    v1.<init>(v0);
    v1.scale(v3, v3);
    v2 = new Paint();
    v2.<init>();
    v3 = 0x2;
    v2.setFlags(v3);
    v1.drawBitmap(p0, v4, v4, v2);
    v1 = 0x3;
    v2 = 0x1;
    Lcom/arcsoft/hpay100/a/a.a(v0, v1, v2);
    return v0;
.end method
.method private static a(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 33
    .prologue
    if (p1 > 0) {
//       if-gtz p1, :cond_0
    }
    p0 = 0x0;
    :goto_0
    return p0;
    :cond_0
    v5 = p0.getWidth();
    v9 = p0.getHeight();
    v2 = v5 * v9;
    new-array v3, v2, [I
    v4 = 0x0;
    v6 = 0x0;
    v7 = 0x0;
    v2 = p0;
    v8 = v5;
    v2.getPixels(..v9);
    v20 = v5 + -0x1;
    v21 = v9 + -0x1;
    v2 = v5 * v9;
    v4 = p1 + p1;
    v22 = v4 + 0x1;
    new-array v0, v2, [I
    v23 = v0;
    new-array v0, v2, [I
    v24 = v0;
    new-array v0, v2, [I
    v25 = v0;
    v2 = Ljava/lang/Math.max(v5, v9);
    new-array v0, v2, [I
    v26 = v0;
    v2 = v22 + 0x1;
    v2 = v2 >> 0x1;
    v4 = v2 * v2;
    v2 = v4 * 0x100;
    new-array v0, v2, [I
    v27 = v0;
    v2 = 0x0;
    :goto_1
    v6 = v4 * 0x100;
    if (v2 >= v6) {
//       if-ge v2, v6, :cond_1
    }
    v6 = v2 / v4;
    v27[v2] = v6;
    v2 = v2 + 0x1;
    goto :goto_1
    :cond_1
    v4 = 0x0;
    v2 = 0x3;
    v0 = v22;
    filled-new-array {v0, v2}, [I
    move-result-object v2
    v6 = Ljava/lang/Integer;->TYPE;
    v2 = Ljava/lang/reflect/Array.newInstance(v6, v2);
    check-cast v2, [[I
    v28 = p1 + 0x1;
    v6 = 0x0;
    v18 = v4;
    v12 = v4;
    v19 = v6;
    :goto_2
    v0 = v19;
    if (v0 >= v9) {
//       if-ge v0, v9, :cond_6
    }
    v4 = 0x0;
    v0 = p1;
    neg-int v6, v0
    v7 = v4;
    v8 = v4;
    v10 = v4;
    v11 = v4;
    v13 = v6;
    v14 = v4;
    v15 = v4;
    v16 = v4;
    v6 = v4;
    :goto_3
    v0 = p1;
    if (v13 > v0) {
//       if-gt v13, v0, :cond_3
    }
    v17 = 0x0;
    v0 = v17;
    v17 = Ljava/lang/Math.max(v13, v0);
    v0 = v20;
    v1 = v17;
    v17 = Ljava/lang/Math.min(v0, v1);
    v17 = v17 + v12;
    v17 = v3[v17];
    v29 = v13 + p1;
    v29 = v2[v29];
    v30 = 0x0;
    v31 = v17 >> 0x10;
    v0 = v31;
    v0 = v0 & 0xff;
    v31 = v0;
    v29[v30] = v31;
    v30 = 0x1;
    v31 = v17 >> 0x8;
    v0 = v31;
    v0 = v0 & 0xff;
    v31 = v0;
    v29[v30] = v31;
    v30 = 0x2;
    v0 = v17;
    v0 = v0 & 0xff;
    v17 = v0;
    v29[v30] = v17;
    v17 = Ljava/lang/Math.abs(v13);
    v17 = v28 - v17;
    v30 = 0x0;
    v30 = v29[v30];
    v30 = v30 * v17;
    v16 = v16 + v30;
    v30 = 0x1;
    v30 = v29[v30];
    v30 = v30 * v17;
    v15 = v15 + v30;
    v30 = 0x2;
    v30 = v29[v30];
    v17 = v17 * v30;
    v14 = v14 + v17;
    if (v13 <= 0) {
//       if-lez v13, :cond_2
    }
    v17 = 0x0;
    v17 = v29[v17];
    v7 = v7 + v17;
    v17 = 0x1;
    v17 = v29[v17];
    v6 = v6 + v17;
    v17 = 0x2;
    v17 = v29[v17];
    v4 = v4 + v17;
    :goto_4
    v13 = v13 + 0x1;
    goto :goto_3
    :cond_2
    v17 = 0x0;
    v17 = v29[v17];
    v11 = v11 + v17;
    v17 = 0x1;
    v17 = v29[v17];
    v10 = v10 + v17;
    v17 = 0x2;
    v17 = v29[v17];
    v8 = v8 + v17;
    goto :goto_4
    :cond_3
    v13 = 0x0;
    v17 = v16;
    v16 = v15;
    v15 = v14;
    v14 = v13;
    v13 = p1;
    :goto_5
    if (v14 >= v5) {
//       if-ge v14, v5, :cond_5
    }
    v29 = v27[v17];
    v23[v12] = v29;
    v29 = v27[v16];
    v24[v12] = v29;
    v29 = v27[v15];
    v25[v12] = v29;
    v17 = v17 - v11;
    v16 = v16 - v10;
    v15 -= v8;
    v29 = v13 - p1;
    v29 = v29 + v22;
    v29 = v29 % v22;
    v29 = v2[v29];
    v30 = 0x0;
    v30 = v29[v30];
    v11 = v11 - v30;
    v30 = 0x1;
    v30 = v29[v30];
    v10 = v10 - v30;
    v30 = 0x2;
    v30 = v29[v30];
    v8 = v8 - v30;
    if (v19 != 0) {
//       if-nez v19, :cond_4
    }
    v30 = v14 + p1;
    v30 = v30 + 0x1;
    v0 = v30;
    v1 = v20;
    v30 = Ljava/lang/Math.min(v0, v1);
    v26[v14] = v30;
    :cond_4
    v30 = v26[v14];
    v30 = v30 + v18;
    v30 = v3[v30];
    v31 = 0x0;
    v32 = v30 >> 0x10;
    v0 = v32;
    v0 = v0 & 0xff;
    v32 = v0;
    v29[v31] = v32;
    v31 = 0x1;
    v32 = v30 >> 0x8;
    v0 = v32;
    v0 = v0 & 0xff;
    v32 = v0;
    v29[v31] = v32;
    v31 = 0x2;
    v0 = v30;
    v0 = v0 & 0xff;
    v30 = v0;
    v29[v31] = v30;
    v30 = 0x0;
    v30 = v29[v30];
    v7 = v7 + v30;
    v30 = 0x1;
    v30 = v29[v30];
    v6 = v6 + v30;
    v30 = 0x2;
    v29 = v29[v30];
    v4 = v4 + v29;
    v17 = v17 + v7;
    v16 = v16 + v6;
    v15 += v4;
    v13 = v13 + 0x1;
    v13 = v13 % v22;
    v29 = v13 % v22;
    v29 = v2[v29];
    v30 = 0x0;
    v30 = v29[v30];
    v11 = v11 + v30;
    v30 = 0x1;
    v30 = v29[v30];
    v10 = v10 + v30;
    v30 = 0x2;
    v30 = v29[v30];
    v8 = v8 + v30;
    v30 = 0x0;
    v30 = v29[v30];
    v7 = v7 - v30;
    v30 = 0x1;
    v30 = v29[v30];
    v6 = v6 - v30;
    v30 = 0x2;
    v29 = v29[v30];
    v4 = v4 - v29;
    v12 = v12 + 0x1;
    v14 = v14 + 0x1;
    goto/16 :goto_5
    :cond_5
    v4 = v18 + v5;
    v6 = v19 + 0x1;
    v18 = v4;
    v19 = v6;
    goto/16 :goto_2
    :cond_6
    v13 = 0x0;
    :goto_6
    if (v13 >= v5) {
//       if-ge v13, v5, :cond_c
    }
    v6 = 0x0;
    v0 = p1;
    neg-int v4, v0
    v7 = v4 * v5;
    v0 = p1;
    neg-int v4, v0
    v8 = v6;
    v10 = v6;
    v11 = v6;
    v12 = v6;
    v17 = v4;
    v14 = v6;
    v15 = v6;
    v16 = v6;
    v4 = v7;
    v7 = v6;
    :goto_7
    v0 = v17;
    v1 = p1;
    if (v0 > v1) {
//       if-gt v0, v1, :cond_9
    }
    v18 = 0x0;
    v0 = v18;
    v18 = Ljava/lang/Math.max(v0, v4);
    v19 = v18 + v13;
    v18 = v17 + p1;
    v20 = v2[v18];
    v18 = 0x0;
    v29 = v23[v19];
    v20[v18] = v29;
    v18 = 0x1;
    v29 = v24[v19];
    v20[v18] = v29;
    v18 = 0x2;
    v29 = v25[v19];
    v20[v18] = v29;
    v18 = Ljava/lang/Math.abs(v17 .. v17);
    v29 = v28 - v18;
    v18 = v23[v19];
    v18 = v18 * v29;
    v18 = v18 + v16;
    v16 = v24[v19];
    v16 = v16 * v29;
    v16 = v16 + v15;
    v15 = v25[v19];
    v15 = v15 * v29;
    v15 += v14;
    if (v17 <= 0) {
//       if-lez v17, :cond_8
    }
    v14 = 0x0;
    v14 = v20[v14];
    v8 += v14;
    v14 = 0x1;
    v14 = v20[v14];
    v7 += v14;
    v14 = 0x2;
    v14 = v20[v14];
    v6 += v14;
    :goto_8
    v0 = v17;
    v1 = v21;
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_7
    }
    v4 += v5;
    :cond_7
    v14 = v17 + 0x1;
    v17 = v14;
    v14 = v15;
    v15 = v16;
    v16 = v18;
    goto :goto_7
    :cond_8
    v14 = 0x0;
    v14 = v20[v14];
    v12 += v14;
    v14 = 0x1;
    v14 = v20[v14];
    v11 += v14;
    v14 = 0x2;
    v14 = v20[v14];
    v10 += v14;
    goto :goto_8
    :cond_9
    v4 = 0x0;
    v17 = v15;
    v18 = v16;
    v15 = v4;
    v16 = v14;
    v14 = p1;
    v4 = v6;
    v6 = v7;
    v7 = v8;
    v8 = v10;
    v10 = v11;
    v11 = v12;
    v12 = v13;
    :goto_9
    if (v15 >= v9) {
//       if-ge v15, v9, :cond_b
    }
    v19 = -0x1000000;
    v20 = v3[v12];
    v19 = v19 & v20;
    v20 = v27[v18];
    v20 = v20 << 0x10;
    v19 = v19 | v20;
    v20 = v27[v17];
    v20 = v20 << 0x8;
    v19 = v19 | v20;
    v20 = v27[v16];
    v19 = v19 | v20;
    v3[v12] = v19;
    v18 = v18 - v11;
    v17 = v17 - v10;
    v16 = v16 - v8;
    v19 = v14 - p1;
    v19 = v19 + v22;
    v19 = v19 % v22;
    v19 = v2[v19];
    v20 = 0x0;
    v20 = v19[v20];
    v11 = v11 - v20;
    v20 = 0x1;
    v20 = v19[v20];
    v10 = v10 - v20;
    v20 = 0x2;
    v20 = v19[v20];
    v8 = v8 - v20;
    if (v13 != 0) {
//       if-nez v13, :cond_a
    }
    v20 = v15 + v28;
    v20 = Ljava/lang/Math.min(v20 .. v21);
    v20 = v20 * v5;
    v26[v15] = v20;
    :cond_a
    v20 = v26[v15];
    v20 = v20 + v13;
    v29 = 0x0;
    v30 = v23[v20];
    v19[v29] = v30;
    v29 = 0x1;
    v30 = v24[v20];
    v19[v29] = v30;
    v29 = 0x2;
    v20 = v25[v20];
    v19[v29] = v20;
    v20 = 0x0;
    v20 = v19[v20];
    v7 = v7 + v20;
    v20 = 0x1;
    v20 = v19[v20];
    v6 = v6 + v20;
    v20 = 0x2;
    v19 = v19[v20];
    v4 = v4 + v19;
    v18 = v18 + v7;
    v17 = v17 + v6;
    v16 = v16 + v4;
    v14 = v14 + 0x1;
    v14 = v14 % v22;
    v19 = v2[v14];
    v20 = 0x0;
    v20 = v19[v20];
    v11 = v11 + v20;
    v20 = 0x1;
    v20 = v19[v20];
    v10 = v10 + v20;
    v20 = 0x2;
    v20 = v19[v20];
    v8 = v8 + v20;
    v20 = 0x0;
    v20 = v19[v20];
    v7 = v7 - v20;
    v20 = 0x1;
    v20 = v19[v20];
    v6 = v6 - v20;
    v20 = 0x2;
    v19 = v19[v20];
    v4 = v4 - v19;
    v12 += v5;
    v15 = v15 + 0x1;
    goto/16 :goto_9
    :cond_b
    v13 = v13 + 0x1;
    goto/16 :goto_6
    :cond_c
    v4 = 0x0;
    v6 = 0x0;
    v7 = 0x0;
    v2 = p0;
    v8 = v5;
    v2.setPixels(..v9);
    goto/16 :goto_0
.end method
.method public static a(Landroid/view/View;II)Landroid/graphics/Bitmap;
    .locals 2
    .prologue
    v0 = Landroid/graphics/Bitmap$Config;->ARGB_8888;
    v0 = Landroid/graphics/Bitmap.createBitmap(p1, p2, v0);
    v1 = new Canvas();
    v1.<init>(v0);
    p0.draw(v1);
    return v0;
.end method
.method public static a(Ljava/io/InputStream;I)Landroid/graphics/Bitmap;
    .locals 3
    .prologue
    v2 = 0x1;
    v0 = new BitmapFactory$Options();
    v0.<init>();
    v1 = Landroid/graphics/Bitmap$Config;->RGB_565;
    v0.Landroid/graphics/BitmapFactory$Options;->inPreferredConfig = v1;
    v0.Landroid/graphics/BitmapFactory$Options;->inPurgeable = v2;
    v0.Landroid/graphics/BitmapFactory$Options;->inInputShareable = v2;
    v0.Landroid/graphics/BitmapFactory$Options;->inSampleSize = p1;
    v1 = 0x0;
    v0 = Landroid/graphics/BitmapFactory.decodeStream(p0, v1, v0);
    return v0;
.end method
.method public static a(Lcom/e/a/a/e/g;)Landroid/os/Bundle;
    .locals 5
    .prologue
    v1 = new Bundle();
    v1.<init>();
    v0 = "_wxobject_sdkVer";
    v2 = p0.Lcom/e/a/a/e/g;->a;
    v1.putInt(v0, v2);
    v0 = "_wxobject_title";
    v2 = p0.Lcom/e/a/a/e/g;->b;
    v1.putString(v0, v2);
    v0 = "_wxobject_description";
    v2 = p0.Lcom/e/a/a/e/g;->c;
    v1.putString(v0, v2);
    v0 = "_wxobject_thumbdata";
    v2 = p0.Lcom/e/a/a/e/g;->d;
    v1.putByteArray(v0, v2);
    v0 = p0.Lcom/e/a/a/e/g;->e;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v2 = "_wxobject_identifier_";
    v0 = p0.Lcom/e/a/a/e/g;->e;
    v0 = v0.getClass();
    v0 = v0.getName();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v3 = v0.length();
    if (v3 != 0) {
//       if-nez v3, :cond_2
    }
    :cond_0
    v3 = "MicroMsg.SDK.WXMediaMessage";
    v4 = "pathNewToOld fail, newPath is null";
    Lcom/e/a/a/b/a.a(v3, v4);
    :goto_0
    v1.putString(v2, v0);
    :cond_1
    v0 = "_wxobject_mediatagname";
    v2 = p0.Lcom/e/a/a/e/g;->f;
    v1.putString(v0, v2);
    return v1;
    :cond_2
    v3 = "com.tencent.mm.sdk.modelmsg";
    v4 = "com.tencent.mm.sdk.openapi";
    v0 = v0.replace(v3, v4);
    goto :goto_0
.end method
.method private static a(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;
    .locals 4
    .prologue
    v0 = p1.getActionIntent();
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = 0x1;
    :goto_0
    v1 = new RemoteViews();
    v2 = p0.getPackageName();
    v3 = Landroid/support/v7/appcompat/R$layout;->notification_media_action;
    v1.<init>(v2, v3);
    v2 = Landroid/support/v7/appcompat/R$id;->action0;
    v3 = p1.getIcon();
    v1.setImageViewResource(v2, v3);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = Landroid/support/v7/appcompat/R$id;->action0;
    v2 = p1.getActionIntent();
    v1.setOnClickPendingIntent(v0, v2);
    :cond_0
    v0 = Landroid/os/Build$VERSION;->SDK_INT;
    v2 = 0xf;
    if (v0 < v2) {
//       if-lt v0, v2, :cond_1
    }
    v0 = Landroid/support/v7/appcompat/R$id;->action0;
    v2 = p1.getTitle();
    v1.setContentDescription(v0, v2);
    :cond_1
    return v1;
    :cond_2
    v0 = 0x0;
    goto :goto_0
.end method
.method private static a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIZ)Landroid/widget/RemoteViews;
    .locals 12
    .prologue
    v2 = new RemoteViews();
    v3 = p0.getPackageName();
    v0 = p10;
    v2.<init>(v3, v0);
    v4 = 0x0;
    v3 = 0x0;
    if (p5 == 0) {
//       if-eqz p5, :cond_6
    }
    v5 = Landroid/os/Build$VERSION;->SDK_INT;
    v6 = 0x10;
    if (v5 < v6) {
//       if-lt v5, v6, :cond_6
    }
    v5 = Landroid/support/v7/appcompat/R$id;->icon;
    v0 = p5;
    v2.setImageViewBitmap(v5, v0);
    :goto_0
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v5 = Landroid/support/v7/appcompat/R$id;->title;
    v2.setTextViewText(v5, p1);
    :cond_0
    if (p2 == 0) {
//       if-eqz p2, :cond_1
    }
    v4 = Landroid/support/v7/appcompat/R$id;->text;
    v2.setTextViewText(v4, p2);
    v4 = 0x1;
    :cond_1
    if (p3 == 0) {
//       if-eqz p3, :cond_7
    }
    v4 = Landroid/support/v7/appcompat/R$id;->info;
    v2.setTextViewText(v4, p3);
    v4 = Landroid/support/v7/appcompat/R$id;->info;
    v5 = 0x0;
    v2.setViewVisibility(v4, v5);
    v4 = 0x1;
    v8 = v4;
    :goto_1
    if (p6 == 0) {
//       if-eqz p6, :cond_2
    }
    v4 = Landroid/os/Build$VERSION;->SDK_INT;
    v5 = 0x10;
    if (v4 < v5) {
//       if-lt v4, v5, :cond_2
    }
    v4 = Landroid/support/v7/appcompat/R$id;->text;
    v0 = p6;
    v2.setTextViewText(v4, v0);
    if (p2 == 0) {
//       if-eqz p2, :cond_a
    }
    v3 = Landroid/support/v7/appcompat/R$id;->text2;
    v2.setTextViewText(v3, p2);
    v3 = Landroid/support/v7/appcompat/R$id;->text2;
    v4 = 0x0;
    v2.setViewVisibility(v3, v4);
    v3 = 0x1;
    :cond_2
    :goto_2
    if (v3 == 0) {
//       if-eqz v3, :cond_4
    }
    v3 = Landroid/os/Build$VERSION;->SDK_INT;
    v4 = 0x10;
    if (v3 < v4) {
//       if-lt v3, v4, :cond_4
    }
    if (p11 == 0) {
//       if-eqz p11, :cond_3
    }
    v3 = p0.getResources();
    v4 = Landroid/support/v7/appcompat/R$dimen;->notification_subtext_size;
    v3 = v3.getDimensionPixelSize(v4);
    int-to-float v3, v3
    v4 = Landroid/support/v7/appcompat/R$id;->text;
    v5 = 0x0;
    v2.setTextViewTextSize(v4, v5, v3);
    :cond_3
    v3 = Landroid/support/v7/appcompat/R$id;->line1;
    v4 = 0x0;
    v5 = 0x0;
    v6 = 0x0;
    v7 = 0x0;
    v2.setViewPadding(..v7);
    :cond_4
    v4 = 0x0;
    cmp-long v3, p8, v4
    if (v3 == 0) {
//       if-eqz v3, :cond_5
    }
    if (p7 == 0) {
//       if-eqz p7, :cond_b
    }
    v3 = Landroid/support/v7/appcompat/R$id;->chronometer;
    v4 = 0x0;
    v2.setViewVisibility(v3, v4);
    v3 = Landroid/support/v7/appcompat/R$id;->chronometer;
    v4 = "setBase";
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v10
    v6 -= v10;
    v6 = v6 + p8;
    v2.setLong(v3, v4, v6, v7);
    v3 = Landroid/support/v7/appcompat/R$id;->chronometer;
    v4 = "setStarted";
    v5 = 0x1;
    v2.setBoolean(v3, v4, v5);
    :cond_5
    :goto_3
    v4 = Landroid/support/v7/appcompat/R$id;->line3;
    if (v8 == 0) {
//       if-eqz v8, :cond_c
    }
    v3 = 0x0;
    :goto_4
    v2.setViewVisibility(v4, v3);
    return v2;
    :cond_6
    v5 = Landroid/support/v7/appcompat/R$id;->icon;
    v6 = 0x8;
    v2.setViewVisibility(v5, v6);
    goto/16 :goto_0
    :cond_7
    if (p4 <= 0) {
//       if-lez p4, :cond_9
    }
    v4 = p0.getResources();
    v5 = Landroid/support/v7/appcompat/R$integer;->status_bar_notification_info_maxnum;
    v4 = v4.getInteger(v5);
    v0 = p4;
    if (v0 <= v4) {
//       if-le v0, v4, :cond_8
    }
    v4 = Landroid/support/v7/appcompat/R$id;->info;
    v5 = p0.getResources();
    v6 = Landroid/support/v7/appcompat/R$string;->status_bar_notification_info_overflow;
    v5 = v5.getString(v6);
    v2.setTextViewText(v4, v5);
    :goto_5
    v4 = Landroid/support/v7/appcompat/R$id;->info;
    v5 = 0x0;
    v2.setViewVisibility(v4, v5);
    v4 = 0x1;
    v8 = v4;
    goto/16 :goto_1
    :cond_8
    v4 = invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;
    v5 = Landroid/support/v7/appcompat/R$id;->info;
    v0 = p4;
    int-to-long v6, v0
    v4 = v4.format(v6, v7);
    v2.setTextViewText(v5, v4);
    goto :goto_5
    :cond_9
    v5 = Landroid/support/v7/appcompat/R$id;->info;
    v6 = 0x8;
    v2.setViewVisibility(v5, v6);
    v8 = v4;
    goto/16 :goto_1
    :cond_a
    v4 = Landroid/support/v7/appcompat/R$id;->text2;
    v5 = 0x8;
    v2.setViewVisibility(v4, v5);
    goto/16 :goto_2
    :cond_b
    v3 = Landroid/support/v7/appcompat/R$id;->time;
    v4 = 0x0;
    v2.setViewVisibility(v3, v4);
    v3 = Landroid/support/v7/appcompat/R$id;->time;
    v4 = "setTime";
    v0 = p8;
    v2.setLong(v3, v4, v0, v1);
    goto :goto_3
    :cond_c
    v3 = 0x8;
    goto :goto_4
.end method
.method public static a(Landroid/os/Bundle;)Lcom/e/a/a/e/g;
    .locals 6
    .prologue
    v1 = new g();
    v1.<init>();
    v0 = "_wxobject_sdkVer";
    v0 = p0.getInt(v0);
    v1.Lcom/e/a/a/e/g;->a = v0;
    v0 = "_wxobject_title";
    v0 = p0.getString(v0);
    v1.Lcom/e/a/a/e/g;->b = v0;
    v0 = "_wxobject_description";
    v0 = p0.getString(v0);
    v1.Lcom/e/a/a/e/g;->c = v0;
    v0 = "_wxobject_thumbdata";
    v0 = p0.getByteArray(v0);
    v1.Lcom/e/a/a/e/g;->d = v0;
    v0 = "_wxobject_mediatagname";
    v0 = p0.getString(v0);
    v1.Lcom/e/a/a/e/g;->f = v0;
    v0 = "_wxobject_identifier_";
    v0 = p0.getString(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v2 = v0.length();
    if (v2 != 0) {
//       if-nez v2, :cond_2
    }
    :cond_0
    v2 = "MicroMsg.SDK.WXMediaMessage";
    v3 = "pathOldToNew fail, oldPath is null";
    Lcom/e/a/a/b/a.a(v2, v3);
    v2 = v0;
    :goto_0
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v0 = v2.length();
    if (v0 > 0) {
//       if-gtz v0, :cond_3
    }
    :cond_1
    v0 = v1;
    :goto_1
    return v0;
    :cond_2
    v2 = "com.tencent.mm.sdk.openapi";
    v3 = "com.tencent.mm.sdk.modelmsg";
    v0 = v0.replace(v2, v3);
    v2 = v0;
    goto :goto_0
    :cond_3
    :try_start_0
    v0 = Ljava/lang/Class.forName(v2);
    v0 = v0.newInstance();
    check-cast v0, Landroid/support/design/widget/K;
    v1.Lcom/e/a/a/e/g;->e = v0;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    v0 = v1;
    goto :goto_1
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v3 = "MicroMsg.SDK.WXMediaMessage";
    v4 = new StringBuilder();
    v5 = "get media object from bundle failed: unknown ident ";
    v4.<init>(v5);
    v2 = v4.append(v2);
    v4 = ", ex = ";
    v2 = v2.append(v4);
    v0 = v0.getMessage();
    v0 = v2.append(v0);
    v0 = v0.toString();
    Lcom/e/a/a/b/a.a(v3, v0);
    v0 = v1;
    goto :goto_1
.end method
.method public static a(Ljava/lang/String;[Lcom/ushaqi/zhuishushenqi/model/ChapterLink;I)Lcom/ushaqi/zhuishushenqi/model/ChapterRoot;
    .locals 8
    .prologue
    v1 = 0x0;
    v5 = p1[p2];
    v0 = new ChapterRoot();
    v0.<init>();
    v6 = new Chapter();
    v6.<init>();
    :try_start_0
    Lcom/arcsoft/hpay100/a/a.G(p0);
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v2
    v3 = 0x0;
    :goto_0
    :try_start_1
    v4 = v5.getTxtLineOffset();
    if (v3 >= v4) {
//       if-ge v3, v4, :cond_0
    }
    v2.readLine();
    v3 = v3 + 0x1;
    goto :goto_0
    :cond_0
    v4 = "";
    v3 = -0x1;
    v7 = p1.length;
    v7 = v7 + -0x1;
    if (p2 >= v7) {
//       if-ge p2, v7, :cond_1
    }
    v3 = p2 + 0x1;
    v3 = p1[v3];
    v3 = v3.getTxtLineOffset();
    v5 = v5.getTxtLineOffset();
    v3 -= v5;
    :cond_1
    :goto_1
    v5 = v2.readLine();
    if (v5 == 0) {
//       if-eqz v5, :cond_2
    }
    if (v3 == 0) {
//       if-eqz v3, :cond_2
    }
    v7 = new StringBuilder();
    v7.<init>();
    v4 = v7.append(v4);
    v7 = "\n";
    v4 = v4.append(v7);
    v4 = v4.append(v5);
    v4 = v4.toString();
    v3 = v3 + -0x1;
    goto :goto_1
    :cond_2
    v3 = Lcom/arcsoft/hpay100/a/a.z(v4);
    v6.setBody(v3);
    v0.setChapter(v6);
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    :try_start_2
    v2.close();
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    :goto_2
    return v0;
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_2
    :catch_1
    move-exception v0
    v2 = v1;
    :goto_3
    :try_start_3
    v0.printStackTrace();
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    if (v2 == 0) {
//       if-eqz v2, :cond_3
    }
    :try_start_4
    v2.close();
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    :cond_3
    :goto_4
    v0 = v1;
    goto :goto_2
    :catch_2
    move-exception v0
    v0.printStackTrace();
    goto :goto_4
    :catch_3
    move-exception v0
    v2 = v1;
    :goto_5
    :try_start_5
    v0.printStackTrace();
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    if (v2 == 0) {
//       if-eqz v2, :cond_3
    }
    :try_start_6
    v2.close();
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    goto :goto_4
    :catch_4
    move-exception v0
    v0.printStackTrace();
    goto :goto_4
    :catchall_0
    move-exception v0
    v2 = v1;
    :goto_6
    if (v2 == 0) {
//       if-eqz v2, :cond_4
    }
    :try_start_7
    v2.close();
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    :cond_4
    :goto_7
    throw v0
    :catch_5
    move-exception v1
    v1.printStackTrace();
    goto :goto_7
    :catchall_1
    move-exception v0
    goto :goto_6
    :catch_6
    move-exception v0
    goto :goto_5
    :catch_7
    move-exception v0
    goto :goto_3
.end method
.method public static a(Landroid/content/Context;Z)Ljava/io/File;
    .locals 5
    .prologue
    v2 = 0x1;
    v3 = 0x0;
    v0 = 0x0;
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v1 = "mounted";
    v4 = invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    v1 = v1.equals(v4);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1 = "android.permission.WRITE_EXTERNAL_STORAGE";
    v1 = p0.checkCallingOrSelfPermission(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_3
    }
    v1 = v2;
    :goto_0
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = Lcom/arcsoft/hpay100/a/a.O(p0);
    :cond_0
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p0.getCacheDir();
    :cond_1
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = new StringBuilder();
    v1 = "/data/data/";
    v0.<init>(v1);
    v1 = p0.getPackageName();
    v0 = v0.append(v1);
    v1 = "/cache/";
    v0 = v0.append(v1);
    v1 = v0.toString();
    v0 = "Can\'t define system cache directory! \'%s\' will be used.";
    new-array v2, v2, [Ljava/lang/Object;
    v2[v3] = v1;
    Lcom/nostra13/universalimageloader/b/d.c(v0, v2);
    v0 = new File();
    v0.<init>(v1);
    :cond_2
    return v0;
    :cond_3
    v1 = v3;
    goto :goto_0
.end method
.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
    .prologue
    v0 = p0;
    :goto_0
    instance-of v1, v0, Ljava/lang/Class;
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    check-cast v0, Ljava/lang/Class;
    return v0;
    :cond_0
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    check-cast v0, Ljava/lang/reflect/ParameterizedType;
    v0 = v0.getRawType();
    goto :goto_0
    :cond_1
    v0 = new IllegalArgumentException();
    v1 = "TODO";
    v0.<init>(v1);
    throw v0
.end method
.method public static a(ILjava/lang/String;)Ljava/lang/Object;
    .locals 2
    .prologue
    packed-switch p0, :pswitch_data_0
    :try_start_0
    v0 = "MicroMsg.SDK.PluginProvider.Resolver";
    v1 = "unknown type";
    Lcom/e/a/a/b/a.a(v0, v1);
    :goto_0
    p1 = 0x0;
    :goto_1
    :pswitch_0
    return p1;
    :pswitch_1
    p1 = Ljava/lang/Integer.valueOf(p1);
    goto :goto_1
    :pswitch_2
    p1 = Ljava/lang/Long.valueOf(p1);
    goto :goto_1
    :pswitch_3
    p1 = Ljava/lang/Boolean.valueOf(p1);
    goto :goto_1
    :pswitch_4
    p1 = Ljava/lang/Float.valueOf(p1);
    goto :goto_1
    :pswitch_5
    Ljava/lang/Double.valueOf(p1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object p1
    goto :goto_1
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
.method public static declared-synchronized a()Ljava/lang/String;
    .locals 5
    .prologue
    v0 = 0x0;
    v1 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v1
    :try_start_0
    v2 = invoke-static {}, Lcom/arcsoft/hpay100/a/a;->m()Ljava/lang/String;
    Landroid/support/design/widget/am.a(v2);
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result v3
    if (v3 == 0) {
//       if-eqz v3, :cond_1
    }
    :cond_0
    :goto_0
    monitor-exit v1
    return v0;
    :cond_1
    :try_start_1
    v3 = "`";
    v2 = v2.split(v3);
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v3 = v2.length;
    v4 = 0x2;
    if (v3 < v4) {
//       if-lt v3, v4, :cond_0
    }
    v0 = 0x0;
    v0 = v2[v0];
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    goto :goto_0
    :catchall_0
    move-exception v0
    monitor-exit v1
    throw v0
.end method
.method public static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .prologue
    v3 = 0x2;
    :try_start_0
    v0 = new SecretKeySpec();
    v1 = p2.getBytes();
    v2 = "DES";
    v0.<init>(v1, v2);
    v1 = "DES";
    v1 = Ljavax/crypto/Cipher.getInstance(v1);
    v1.init(p0, v0);
    if (p0 != v3) {
//       if-ne p0, v3, :cond_0
    }
    v0 = Lcom/alipay/sdk/c/a.a(p1);
    :goto_0
    v1 = v1.doFinal(v0);
    if (p0 != v3) {
//       if-ne p0, v3, :cond_1
    }
    v0 = new String();
    v0.<init>(v1);
    :goto_1
    return v0;
    :cond_0
    v0 = "UTF-8";
    v0 = p1.getBytes(v0);
    goto :goto_0
    :cond_1
    Lcom/alipay/sdk/c/a.a(v1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    goto :goto_1
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_1
.end method
.method public static a(JZ)Ljava/lang/String;
    .locals 12
    .prologue
    v10 = 0x408f400000000000L    # 1000.0;
    v0 = 0x3e8;
    cmp-long v0, p0, v0
    if (v0 >= 0) {
//       if-gez v0, :cond_0
    }
    v0 = new StringBuilder();
    v0.<init>();
    v0 = v0.append(p0, p1);
    v1 = " B";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :goto_0
    return v0;
    :cond_0
    long-to-double v0, p0
    v0 = Ljava/lang/Math.log(v0, v1);
    v2 = Ljava/lang/Math.log(v10, v11);
    v0 /= v2;
    double-to-int v0, v0
    v1 = new StringBuilder();
    v1.<init>();
    v2 = "kMGTPE";
    v3 = v0 + -0x1;
    v2 = v2.charAt(v3);
    v1 = v1.append(v2);
    v1 = v1.toString();
    v2 = "%.1f %sB";
    v3 = 0x2;
    new-array v3, v3, [Ljava/lang/Object;
    v4 = 0x0;
    long-to-double v6, p0
    int-to-double v8, v0
    v8 = Ljava/lang/Math.pow(v10, v11, v8, v9);
    v6 /= v8;
    v0 = Ljava/lang/Double.valueOf(v6, v7);
    v3[v4] = v0;
    v0 = 0x1;
    v3[v0] = v1;
    v0 = Ljava/lang/String.format(v2, v3);
    goto :goto_0
.end method
.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .prologue
    v1 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v1
    :try_start_0
    v0 = invoke-static {}, Lcom/arcsoft/hpay100/a/a;->a()Ljava/lang/String;
    v2 = Landroid/support/design/widget/am.a(v0);
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    Lcom/arcsoft/hpay100/a/a.b(p0);
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v0
    :cond_0
    monitor-exit v1
    return v0;
    :catchall_0
    move-exception v0
    monitor-exit v1
    throw v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .prologue
    v0 = 0x0;
    v0 = p0.getSharedPreferences(p1, v0);
    v0 = v0.getString(p2, p3);
    return v0;
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;ZIIZ)Ljava/lang/String;
    .locals 9
    .prologue
    v7 = 0x0;
    v0 = "dalongTest";
    v1 = new StringBuilder();
    v2 = "http get request url:";
    v1.<init>(v2);
    v1 = v1.append(p1);
    v1 = v1.toString();
    Lcom/arcsoft/hpay100/a/a.b(v0, v1);
    v0 = Lcom/arcsoft/hpay100/a/a.j(p0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = "dalongTest";
    v1 = "net error";
    Lcom/arcsoft/hpay100/a/a.b(v0, v1);
    v0 = v7;
    :goto_0
    return v0;
    :cond_0
    v0 = 0x7530;
    v1 = 0x9c40;
    v2 = 0x1;
    :try_start_0
    Lcom/arcsoft/hpay100/b/c.a(p0, v0, v1, v2);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v0
    v3 = 0x0;
    v4 = 0x0;
    :try_start_1
    v5 = "utf-8";
    v6 = 0x0;
    v1 = p0;
    v2 = p1;
    v1 = v0.a(..v6);
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v2 = "UTF-8";
    v1 = v1.a(v2);
    :goto_1
    v2 = "dalongTest";
    v3 = new StringBuilder();
    v4 = "http request result:";
    v3.<init>(v4);
    v3 = v3.append(v1);
    v3 = v3.toString();
    Lcom/arcsoft/hpay100/a/a.b(v2, v3);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    v0.a();
    v0 = v1;
    goto :goto_0
    :catch_0
    move-exception v0
    v1 = v7;
    :goto_2
    :try_start_2
    v0.printStackTrace();
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v1.a();
    :cond_1
    v0 = v7;
    goto :goto_0
    :catchall_0
    move-exception v0
    v1 = v7;
    :goto_3
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v1.a();
    :cond_2
    throw v0
    :catchall_1
    move-exception v1
    v8 = v1;
    v1 = v0;
    v0 = v8;
    goto :goto_3
    :catchall_2
    move-exception v0
    goto :goto_3
    :catch_1
    move-exception v1
    v8 = v1;
    v1 = v0;
    v0 = v8;
    goto :goto_2
    :cond_3
    v1 = v7;
    goto :goto_1
.end method
.method private static a(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)Ljava/lang/String;
    .locals 6
    .prologue
    v2 = new JSONObject();
    v2.<init>();
    :try_start_0
    v0 = "bk_name";
    v1 = p0.getTitle();
    v2.put(v0, v1);
    v3 = p0.getTags();
    if (v3 == 0) {
//       if-eqz v3, :cond_2
    }
    v1 = "";
    v0 = 0x0;
    v5 = v0;
    v0 = v1;
    v1 = v5;
    :goto_0
    v4 = v3.length;
    if (v1 >= v4) {
//       if-ge v1, v4, :cond_1
    }
    v4 = new StringBuilder();
    v4.<init>();
    v0 = v4.append(v0);
    v4 = v3[v1];
    v0 = v0.append(v4);
    v0 = v0.toString();
    v4 = v3.length;
    v4 = v4 + -0x1;
    if (v1 == v4) {
//       if-eq v1, v4, :cond_0
    }
    v4 = new StringBuilder();
    v4.<init>();
    v0 = v4.append(v0);
    v4 = "|";
    v0 = v0.append(v4);
    v0 = v0.toString();
    :cond_0
    v1 = v1 + 0x1;
    goto :goto_0
    :cond_1
    v1 = "bk_tag";
    v2.put(v1, v0);
    :cond_2
    v0 = "bk_author";
    v1 = p0.getAuthor();
    v2.put(v0, v1);
    v0 = "bk_updateTime";
    v1 = p0.getUpdated();
    v2.put(v0, v1);
    v1 = "bk_process";
    v0 = p0.getIsSerial();
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = "serialize";
    :goto_1
    v2.put(v1, v0);
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_2
    v0 = v2.toString();
    return v0;
    :cond_3
    :try_start_1
    v0 = "end";
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    goto :goto_1
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_2
.end method
.method public static a(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
    .prologue
    v0 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_1
    }
    :cond_0
    :goto_0
    return v0;
    :cond_1
    v1 = p0.iterator();
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = v1.hasNext();
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = "";
    goto :goto_0
    :cond_2
    v0 = v1.next();
    v2 = v1.hasNext();
    if (v2 != 0) {
//       if-nez v2, :cond_4
    }
    if (v0 != 0) {
//       if-nez v0, :cond_3
    }
    v0 = "";
    goto :goto_0
    :cond_3
    v0 = v0.toString();
    goto :goto_0
    :cond_4
    v2 = new StringBuilder();
    v3 = 0x100;
    v2.<init>(v3);
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v2.append(v0);
    :cond_5
    :goto_1
    v0 = v1.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_7
    }
    if (p1 == 0) {
//       if-eqz p1, :cond_6
    }
    v2.append(p1);
    :cond_6
    v0 = v1.next();
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v2.append(v0);
    goto :goto_1
    :cond_7
    v0 = v2.toString();
    goto :goto_0
.end method
.method public static a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = 0x0;
    v1 = 0x5;
    if (p1 != v1) {
//       if-ne p1, v1, :cond_1
    }
    v0 = new StringBuilder();
    v1 = "MIX_TOC_ID";
    v0.<init>(v1);
    v0 = v0.append(p0);
    p3 = v0.toString();
    :cond_0
    :goto_0
    return p3;
    :cond_1
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v1 = Lcom/arcsoft/hpay100/a/a.h(p1);
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v0 = 0x3;
    if (p1 != v0) {
//       if-ne p1, v0, :cond_2
    }
    v0 = Lcom/arcsoft/hpay100/a/a.O(p2);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v1 = 0x0;
    p2 = v0[v1];
    :cond_2
    v0 = new StringBuilder();
    v0.<init>();
    v0 = v0.append(p2);
    v1 = "_";
    v0 = v0.append(v1);
    v0 = v0.append(p0);
    p3 = v0.toString();
    goto :goto_0
    :cond_3
    p3 = v0;
    goto :goto_0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .prologue
    v1 = 0x0;
    :try_start_0
    v0 = "RSA";
    v2 = Lcom/alipay/sdk/c/a.a(p1);
    v3 = new X509EncodedKeySpec();
    v3.<init>(v2);
    v0 = Ljava/security/KeyFactory.getInstance(v0);
    v0 = v0.generatePublic(v3);
    v2 = "RSA/ECB/PKCS1Padding";
    v5 = Ljavax/crypto/Cipher.getInstance(v2);
    v2 = 0x1;
    v5.init(v2, v0);
    v0 = "UTF-8";
    v6 = p0.getBytes(v0);
    v3 = v5.getBlockSize();
    v2 = new ByteArrayOutputStream();
    v2.<init>();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    v0 = 0x0;
    v4 = v0;
    :goto_0
    :try_start_1
    v0 = v6.length;
    if (v4 >= v0) {
//       if-ge v4, v0, :cond_1
    }
    v0 = v6.length;
    v0 -= v4;
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_0
    }
    v0 = v6.length;
    v0 -= v4;
    :goto_1
    v0 = v5.doFinal(v6, v4, v0);
    v2.write(v0);
    v0 = v4 + v3;
    v4 = v0;
    goto :goto_0
    :cond_0
    v0 = v3;
    goto :goto_1
    :cond_1
    v0 = new String();
    v3 = v2.toByteArray();
    v3 = Lcom/alipay/sdk/c/a.a(v3);
    v0.<init>(v3);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    :try_start_2
    v2.close();
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    :goto_2
    return v0;
    :catch_0
    move-exception v0
    v0 = v1;
    :goto_3
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    :try_start_3
    v0.close();
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    v0 = v1;
    goto :goto_2
    :catch_1
    move-exception v0
    v0 = v1;
    goto :goto_2
    :catchall_0
    move-exception v0
    :goto_4
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    :try_start_4
    v1.close();
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    :cond_2
    :goto_5
    throw v0
    :catch_2
    move-exception v1
    goto :goto_2
    :catch_3
    move-exception v1
    goto :goto_5
    :catchall_1
    move-exception v0
    v1 = v2;
    goto :goto_4
    :catch_4
    move-exception v0
    v0 = v2;
    goto :goto_3
    :cond_3
    v0 = v1;
    goto :goto_2
.end method
.method public static a(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/tools/a/i",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation
    .prologue
    v2 = new StringBuilder();
    v2.<init>();
    v0 = 0x0;
    v3 = p0.iterator();
    v1 = v0;
    :cond_0
    :goto_0
    v0 = v3.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = v3.next();
    check-cast v0, Lcom/mob/tools/a/i;
    if (v1 <= 0) {
//       if-lez v1, :cond_1
    }
    v4 = 0x26;
    v2.append(v4);
    :cond_1
    v4 = v0.Lcom/mob/tools/a/i;->a;
    v0 = v0.Lcom/mob/tools/a/i;->b;
    check-cast v0, Ljava/lang/String;
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = "";
    :cond_2
    v5 = new StringBuilder();
    v5.<init>();
    v4 = Lcom/arcsoft/hpay100/a/a.j(v4);
    v4 = v5.append(v4);
    v5 = "=";
    v4 = v4.append(v5);
    v0 = Lcom/arcsoft/hpay100/a/a.j(v0);
    v0 = v4.append(v0);
    v0 = v0.toString();
    v2.append(v0);
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_0
    :cond_3
    v0 = v2.toString();
    return v0;
.end method
.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
    .prologue
    v0 = 0x0;
    if (p2 == 0) {
//       if-eqz p2, :cond_0
    }
    v1 = p2.length();
    if (v1 > 0) {
//       if-gtz v1, :cond_1
    }
    :cond_0
    v0 = "";
    :goto_0
    return v0;
    :cond_1
    v3 = new StringBuilder();
    v3.<init>();
    v1 = new StringBuilder();
    v1.<init>();
    v1 = v1.append(p2);
    v2 = ":";
    v1 = v1.append(v2);
    v1 = v1.toString();
    v3.append(v1);
    if (p1 == 0) {
//       if-eqz p1, :cond_2
    }
    v1 = p1.length();
    if (v1 > 0) {
//       if-gtz v1, :cond_3
    }
    :cond_2
    v0 = v3.toString();
    goto :goto_0
    :cond_3
    v1 = ",";
    v4 = p1.split(v1);
    if (v4 == 0) {
//       if-eqz v4, :cond_4
    }
    v1 = v4.length;
    if (v1 > 0) {
//       if-gtz v1, :cond_5
    }
    :cond_4
    v0 = v3.toString();
    goto :goto_0
    :cond_5
    if (p0 == 0) {
//       if-eqz p0, :cond_6
    }
    v1 = p0.size();
    if (v1 > 0) {
//       if-gtz v1, :cond_7
    }
    :cond_6
    v0 = v3.toString();
    goto :goto_0
    :cond_7
    v5 = p0.keySet();
    if (v5 == 0) {
//       if-eqz v5, :cond_8
    }
    v1 = v5.size();
    if (v1 > 0) {
//       if-gtz v1, :cond_9
    }
    :cond_8
    v0 = v3.toString();
    goto :goto_0
    :cond_9
    :try_start_0
    v1 = v4.length;
    v1 = v1 / 0x8;
    v1 = v1 + 0x1;
    new-array v6, v1, [B
    v1 = v0;
    :goto_1
    v2 = v6.length;
    if (v1 >= v2) {
//       if-ge v1, v2, :cond_a
    }
    v2 = 0x0;
    v6[v1] = v2;
    v1 = v1 + 0x1;
    goto :goto_1
    :cond_a
    v7 = v4.length;
    v1 = v0;
    v2 = v0;
    :goto_2
    if (v1 >= v7) {
//       if-ge v1, v7, :cond_c
    }
    v8 = v4[v1];
    v0 = v2 / 0x8;
    v0 = v6[v0];
    v8 = v5.contains(v8);
    if (v8 == 0) {
//       if-eqz v8, :cond_b
    }
    v8 = 0x80;
    v9 = v2 % 0x8;
    v8 = v8 >> v9;
    v0 |= v8;
    v8 = Ljava/lang/System;->out;
    v8.println(v2);
    :cond_b
    v8 = v2 / 0x8;
    int-to-byte v0, v0
    v6[v8] = v0;
    v2 = v2 + 0x1;
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_2
    :cond_c
    v0 = Lcom/alipay/security/mobile/module/a/a/a.a(v6);
    v3.append(v0);
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    :goto_3
    v0 = v3.toString();
    goto/16 :goto_0
    :catch_0
    move-exception v0
    goto :goto_3
.end method
.method public static a([B)Ljava/lang/String;
    .locals 5
    .prologue
    :try_start_0
    v0 = "MD5";
    v0 = Ljava/security/MessageDigest.getInstance(v0);
    v0.update(p0);
    v1 = v0.digest();
    v2 = new StringBuffer();
    v0 = v1.length;
    v0 = v0 << 0x1;
    v2.<init>(v0);
    v0 = 0x0;
    :goto_0
    v3 = v1.length;
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_0
    }
    v3 = v1[v0];
    v3 = v3 & 0xf0;
    v3 = v3 >> 0x4;
    v4 = 0x10;
    v3 = Ljava/lang/Character.forDigit(v3, v4);
    v2.append(v3);
    v3 = v1[v0];
    v3 = v3 & 0xf;
    v4 = 0x10;
    v3 = Ljava/lang/Character.forDigit(v3, v4);
    v2.append(v3);
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_0
    v2.toString();
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_1
    return v0;
    :catch_0
    move-exception v0
    v0 = "";
    goto :goto_1
.end method
.method private static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/a/a/f;",
            ">;"
        }
    .end annotation
    .prologue
    v2 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v2
    :try_start_0
    v3 = new ArrayList();
    v3.<init>();
    v0 = new f();
    v0.<init>();
    v4 = Lcom/mob/a/a/c.a(p0);
    v1 = " select exception_md5, exception_level, exception_time, exception_msg, sum(exception_counts) from table_exception group by exception_md5 having max(_id)";
    v5 = Landroid/text/TextUtils.isEmpty(p1);
    if (v5 != 0) {
//       if-nez v5, :cond_0
    }
    if (p2 == 0) {
//       if-eqz p2, :cond_0
    }
    v5 = p2.length;
    if (v5 <= 0) {
//       if-lez v5, :cond_0
    }
    v1 = new StringBuilder();
    v5 = " select exception_md5, exception_level, exception_time, exception_msg, sum(exception_counts) from table_exception where ";
    v1.<init>(v5);
    v1 = v1.append(p1);
    v5 = " group by exception_md5 having max(_id)";
    v1 = v1.append(v5);
    v1 = v1.toString();
    :cond_0
    v1 = v4.a(v1, p2);
    :cond_1
    :goto_0
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v4 = v1.moveToNext();
    if (v4 == 0) {
//       if-eqz v4, :cond_2
    }
    v4 = v0.Lcom/mob/a/a/f;->b;
    v5 = 0x0;
    v5 = v1.getString(v5);
    v4.add(v5);
    v4 = new HashMap();
    v4.<init>();
    v5 = "type";
    v6 = 0x1;
    v6 = v1.getInt(v6);
    v6 = Ljava/lang/Integer.valueOf(v6);
    v4.put(v5, v6);
    v5 = "errat";
    v6 = 0x2;
    v6 = v1.getLong(v6);
    v6 = Ljava/lang/Long.valueOf(v6, v7);
    v4.put(v5, v6);
    v5 = "msg";
    v6 = 0x3;
    v6 = v1.getString(v6);
    v6 = v6.getBytes();
    v7 = 0x2;
    v6 = Landroid/util/Base64.encodeToString(v6, v7);
    v4.put(v5, v6);
    v5 = "times";
    v6 = 0x4;
    v6 = v1.getInt(v6);
    v6 = Ljava/lang/Integer.valueOf(v6);
    v4.put(v5, v6);
    v5 = v0.Lcom/mob/a/a/f;->a;
    v5.add(v4);
    v4 = v0.Lcom/mob/a/a/f;->b;
    v4 = v4.size();
    v5 = 0x32;
    if (v4 != v5) {
//       if-ne v4, v5, :cond_1
    }
    v3.add(v0);
    v0 = new f();
    v0.<init>();
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    goto :goto_0
    :catchall_0
    move-exception v0
    monitor-exit v2
    throw v0
    :cond_2
    :try_start_1
    v1.close();
    v1 = v0.Lcom/mob/a/a/f;->b;
    v1 = v1.size();
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v3.add(v0);
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    :cond_3
    monitor-exit v2
    return v3;
.end method
.method public static declared-synchronized a(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mob/a/a/f;",
            ">;"
        }
    .end annotation
    .prologue
    v1 = 0x0;
    v2 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v2
    :try_start_0
    v0 = "exception_level = ?";
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v3 = p1.length;
    if (v3 > 0) {
//       if-gtz v3, :cond_1
    }
    :cond_0
    v0 = v1;
    p1 = v1;
    :cond_1
    v1 = Lcom/mob/a/a/c.a(p0);
    v3 = "table_exception";
    v1 = v1.a(v3);
    if (v1 <= 0) {
//       if-lez v1, :cond_2
    }
    Lcom/arcsoft/hpay100/a/a.a(p0, v0, p1);
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v0
    :goto_0
    monitor-exit v2
    return v0;
    :cond_2
    :try_start_1
    v0 = new ArrayList();
    v0.<init>();
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    goto :goto_0
    :catchall_0
    move-exception v0
    monitor-exit v2
    throw v0
.end method
.method public static a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = new ArrayList();
    v0.<init>();
    v1 = 0x0;
    :try_start_0
    v2 = "select * from sqlite_master where type = ?";
    v3 = 0x1;
    new-array v3, v3, [Ljava/lang/String;
    v4 = 0x0;
    v5 = "table";
    v3[v4] = v5;
    v1 = p0.rawQuery(v2, v3);
    v2 = v1.moveToFirst();
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    :cond_0
    v2 = "tbl_name";
    v2 = v1.getColumnIndexOrThrow(v2);
    v2 = v1.getString(v2);
    v3 = v0.contains(v2);
    if (v3 != 0) {
//       if-nez v3, :cond_1
    }
    v0.add(v2);
    :cond_1
    v1.moveToNext();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result v2
    if (v2 != 0) {
//       if-nez v2, :cond_0
    }
    :cond_2
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v1.close();
    :cond_3
    return v0;
    :catch_0
    move-exception v0
    :try_start_1
    v0.printStackTrace();
    v2 = new DatabaseGenerateException();
    v0 = v0.getMessage();
    v2.<init>(v0);
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    :catchall_0
    move-exception v0
    if (v1 == 0) {
//       if-eqz v1, :cond_4
    }
    v1.close();
    :cond_4
    throw v0
.end method
.method public static a(Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/integralblue/httpresponsecache/compat/libcore/net/http/C;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/integralblue/httpresponsecache/compat/libcore/net/http/c;",
            ">;"
        }
    .end annotation
    .prologue
    v1 = 0x0;
    v3 = new ArrayList();
    v3.<init>();
    v0 = v1;
    :goto_0
    v2 = p0.e();
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_2
    }
    v2 = p0.a(v0);
    v2 = p1.equalsIgnoreCase(v2);
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v4 = p0.b(v0);
    v2 = v1;
    :cond_0
    :goto_1
    v5 = v4.length();
    if (v2 >= v5) {
//       if-ge v2, v5, :cond_1
    }
    v5 = " ";
    v5 = Lcom/arcsoft/hpay100/a/a.b(v4, v2, v5);
    v2 = v4.substring(v2, v5);
    v6 = v2.trim();
    v2 = Lcom/arcsoft/hpay100/a/a.c(v4, v5);
    v5 = "realm=\"";
    v7 = 0x7;
    v5 = v4.regionMatches(v2, v5, v1, v7);
    if (v5 == 0) {
//       if-eqz v5, :cond_0
    }
    v2 = v2 + 0x7;
    v5 = "\"";
    v5 = Lcom/arcsoft/hpay100/a/a.b(v4, v2, v5);
    v7 = v4.substring(v2, v5);
    v2 = v5 + 0x1;
    v5 = ",";
    v2 = Lcom/arcsoft/hpay100/a/a.b(v4, v2, v5);
    v2 = v2 + 0x1;
    v2 = Lcom/arcsoft/hpay100/a/a.c(v4, v2);
    v5 = new c();
    v5.<init>(v6, v7);
    v3.add(v5);
    goto :goto_1
    :cond_1
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_2
    return v3;
.end method
.method public static a(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = new HashMap();
    v0.<init>();
    v1 = "uid";
    v2 = Lcom/ushaqi/zhuishushenqi/util/e.c(p0);
    v0.put(v1, v2);
    v1 = "iid";
    v0.put(v1, p2);
    v1 = "iids";
    v2 = invoke-static {}, Lcom/arcsoft/hpay100/a/a;->n()Ljava/lang/String;
    v0.put(v1, v2);
    v1 = "num";
    v2 = new StringBuilder();
    v3 = "20";
    v2.<init>(v3);
    v2 = v2.toString();
    v0.put(v1, v2);
    return v0;
.end method
.method public static declared-synchronized a(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .prologue
    v1 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v1
    :try_start_0
    v0 = new HashMap();
    v0.<init>();
    v2 = "tid";
    v3 = "";
    v2 = Landroid/support/design/widget/am.a(p1, v2, v3);
    v3 = "utdid";
    v4 = "";
    v3 = Landroid/support/design/widget/am.a(p1, v3, v4);
    v4 = Landroid/support/design/widget/am.d(p0);
    v5 = "userId";
    v6 = "";
    v5 = Landroid/support/design/widget/am.a(p1, v5, v6);
    v6 = "AC1";
    v0.put(v6, v2);
    v2 = "AC2";
    v0.put(v2, v3);
    v2 = "AC3";
    v3 = "";
    v0.put(v2, v3);
    v2 = "AC4";
    v0.put(v2, v4);
    v2 = "AC5";
    v0.put(v2, v5);
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    monitor-exit v1
    return v0;
    :catchall_0
    move-exception v0
    monitor-exit v1
    throw v0
.end method
.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8
    .prologue
    v7 = 0x2;
    v0 = 0x0;
    v2 = new JSONObject();
    v2.<init>();
    v1 = 0x2;
    :try_start_0
    new-array v3, v1, [Lorg/json/JSONObject;
    v1 = 0x0;
    v3[v1] = p0;
    v1 = 0x1;
    v3[v1] = p1;
    v1 = v0;
    :goto_0
    if (v1 >= v7) {
//       if-ge v1, v7, :cond_0
    }
    v4 = v3[v1];
    if (v4 == 0) {
//       if-eqz v4, :cond_1
    }
    v5 = v4.keys();
    :goto_1
    v0 = v5.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = v5.next();
    check-cast v0, Ljava/lang/String;
    v6 = v4.get(v0);
    v2.put(v0, v6);
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    goto :goto_1
    :catch_0
    move-exception v0
    :cond_0
    return v2;
    :cond_1
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_0
.end method
.method public static a([BILjava/nio/ByteOrder;)S
    .locals 3
    .prologue
    v2 = 0x1;
    v1 = 0x0;
    v0 = Ljava/nio/ByteOrder;->BIG_ENDIAN;
    if (p2 != v0) {
//       if-ne p2, v0, :cond_0
    }
    v0 = p0[v1];
    v0 = v0 << 0x8;
    v1 = p0[v2];
    v1 = v1 & 0xff;
    v0 |= v1;
    int-to-short v0, v0
    :goto_0
    return v0
    :cond_0
    v0 = p0[v2];
    v0 = v0 << 0x8;
    v1 = p0[v1];
    v1 = v1 & 0xff;
    v0 |= v1;
    int-to-short v0, v0
    goto :goto_0
.end method
.method public static a(III)V
    .locals 1
    .prologue
    v0 = p1 | p2;
    if (v0 < 0) {
//       if-ltz v0, :cond_0
    }
    if (p1 > p0) {
//       if-gt p1, p0, :cond_0
    }
    v0 = p0 - p1;
    if (v0 >= p2) {
//       if-ge v0, p2, :cond_1
    }
    :cond_0
    v0 = new ArrayIndexOutOfBoundsException();
    v0.<init>(p0, p1, p2);
    throw v0
    :cond_1
    return;
.end method
.method public static a(Landroid/app/Activity;)V
    .locals 7
    .prologue
    v6 = 0x5;
    v1 = 0x0;
    v0 = Lcom/xiaomi/mipush/sdk/d.b(p0);
    new-array v2, v1, [Ljava/lang/String;
    v0 = v0.toArray(v2);
    check-cast v0, [Ljava/lang/String;
    v3 = new ArrayList();
    v3.<init>();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v4 = v0.length;
    v2 = v1;
    :goto_0
    if (v2 >= v4) {
//       if-ge v2, v4, :cond_1
    }
    v1 = v0[v2];
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v5 = v1.length();
    if (v5 <= v6) {
//       if-le v5, v6, :cond_0
    }
    v1 = v1.substring(v6);
    :goto_1
    v3.add(v1);
    v1 = v2 + 0x1;
    v2 = v1;
    goto :goto_0
    :cond_0
    v1 = "";
    goto :goto_1
    :cond_1
    v1 = new ArrayList();
    v1.<init>();
    v2 = new HashSet();
    v2.<init>();
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAll()Ljava/util/List;
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    v4 = v0.iterator();
    :goto_2
    v0 = v4.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = v4.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    v0 = v0.getBookId();
    v1.add(v0);
    goto :goto_2
    :cond_2
    v2.addAll(v3);
    v2.retainAll(v1);
    v3 = v3.iterator();
    :cond_3
    :goto_3
    v0 = v3.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v0 = v3.next();
    check-cast v0, Ljava/lang/String;
    v4 = v2.contains(v0);
    if (v4 != 0) {
//       if-nez v4, :cond_3
    }
    Lcom/arcsoft/hpay100/a/a.t(v0);
    goto :goto_3
    :cond_4
    v1 = v1.iterator();
    :cond_5
    :goto_4
    v0 = v1.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    v0 = v1.next();
    check-cast v0, Ljava/lang/String;
    v3 = v2.contains(v0);
    if (v3 != 0) {
//       if-nez v3, :cond_5
    }
    Lcom/arcsoft/hpay100/a/a.r(v0);
    goto :goto_4
    :cond_6
    return;
.end method
.method public static a(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/y;)V
    .locals 6
    v0 = "dalongTest";
    v1 = "startMgdmPay";
    Lcom/arcsoft/hpay100/a/a.b(v0, v1);
    v4 = p1.Lcom/arcsoft/hpay100/config/HPaySMS;->mOrderidHR;
    v1 = p1.Lcom/arcsoft/hpay100/config/HPaySMS;->mCorpFeeCode;
    v0 = "dalongTest";
    v2 = new StringBuilder();
    v3 = "oderid:";
    v2.<init>(v3);
    v2 = v2.append(v4);
    v2 = v2.toString();
    Lcom/arcsoft/hpay100/a/a.b(v0, v2);
    v0 = "dalongTest";
    v2 = new StringBuilder();
    v3 = "itemId:";
    v2.<init>(v3);
    v2 = v2.append(v1);
    v2 = v2.toString();
    Lcom/arcsoft/hpay100/a/a.b(v0, v2);
    v5 = new b();
    v5.<init>(p1, p2, p0, v1);
    v2 = "assets/billing.xml";
    v3 = "";
    v0 = p0;
    Lcom/migu/sdk/api/MiguSdk.pay(v0 .. v5);
    return;
.end method
.method public static a(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;ZLandroid/app/PendingIntent;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/app/Notification;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJ",
            "Ljava/util/List",
            "<TT;>;Z",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation
    .prologue
    v2 = p11.size();
    v3 = 0x5;
    v14 = Ljava/lang/Math.min(v2, v3);
    v2 = 0x3;
    if (v14 > v2) {
//       if-gt v14, v2, :cond_0
    }
    v12 = Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_narrow;
    :goto_0
    v13 = 0x0;
    v2 = p1;
    v3 = p2;
    v4 = p3;
    v5 = p4;
    v6 = p5;
    v7 = p6;
    v8 = p7;
    v9 = p8;
    v10 = p9;
    v4 = Lcom/arcsoft/hpay100/a/a.a(v2 .. v13);
    v2 = Landroid/support/v7/appcompat/R$id;->media_actions;
    v4.removeAllViews(v2);
    if (v14 <= 0) {
//       if-lez v14, :cond_1
    }
    v2 = 0x0;
    v3 = v2;
    :goto_1
    if (v3 >= v14) {
//       if-ge v3, v14, :cond_1
    }
    v0 = p11;
    v2 = v0.get(v3);
    check-cast v2, Landroid/support/v4/app/NotificationCompatBase$Action;
    v0 = p1;
    v2 = Lcom/arcsoft/hpay100/a/a.a(v0, v2);
    v5 = Landroid/support/v7/appcompat/R$id;->media_actions;
    v4.addView(v5, v2);
    v2 = v3 + 0x1;
    v3 = v2;
    goto :goto_1
    :cond_0
    v12 = Landroid/support/v7/appcompat/R$layout;->notification_template_big_media;
    goto :goto_0
    :cond_1
    if (p12 == 0) {
//       if-eqz p12, :cond_3
    }
    v2 = Landroid/support/v7/appcompat/R$id;->cancel_action;
    v3 = 0x0;
    v4.setViewVisibility(v2, v3);
    v2 = Landroid/support/v7/appcompat/R$id;->cancel_action;
    v3 = "setAlpha";
    v5 = p1.getResources();
    v6 = Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha;
    v5 = v5.getInteger(v6);
    v4.setInt(v2, v3, v5);
    v2 = Landroid/support/v7/appcompat/R$id;->cancel_action;
    v0 = p13;
    v4.setOnClickPendingIntent(v2, v0);
    :goto_2
    p0.Landroid/app/Notification;->bigContentView = v4;
    if (p12 == 0) {
//       if-eqz p12, :cond_2
    }
    v2 = p0.Landroid/app/Notification;->flags;
    v2 = v2 | 0x2;
    p0.Landroid/app/Notification;->flags = v2;
    :cond_2
    return;
    :cond_3
    v2 = Landroid/support/v7/appcompat/R$id;->cancel_action;
    v3 = 0x8;
    v4.setViewVisibility(v2, v3);
    goto :goto_2
.end method
.method public static a(Landroid/content/Context;II)V
    .locals 2
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/util/T.a(p1);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = 0x1;
    if (p2 != v1) {
//       if-ne p2, v1, :cond_1
    }
    v1 = "share_book_info_platform";
    Lcom/umeng/a/b.a(p0, v1, v0);
    :cond_0
    :goto_0
    return;
    :cond_1
    v1 = 0x2;
    if (p2 != v1) {
//       if-ne p2, v1, :cond_2
    }
    v1 = "share_post_detail_platform";
    Lcom/umeng/a/b.a(p0, v1, v0);
    goto :goto_0
    :cond_2
    v1 = 0x3;
    if (p2 != v1) {
//       if-ne p2, v1, :cond_0
    }
    v1 = "share_book_list_platform";
    Lcom/umeng/a/b.a(p0, v1, v0);
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 5
    .prologue
    v4 = 0x0;
    v0 = p0.getResources();
    v1 = 0x7f060116;
    v0 = v0.getDimensionPixelSize(v1);
    v1 = new View();
    v1.<init>(p0);
    v2 = new AbsListView$LayoutParams();
    v3 = -0x2;
    v2.<init>(v3, v0);
    v1.setLayoutParams(v2);
    v0 = "customer_night_theme";
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0, v4);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = 0x7f020086;
    v1.setBackgroundResource(v0);
    :goto_0
    v1.setEnabled(v4);
    p1.addHeaderView(v1);
    return;
    :cond_0
    v0 = 0x7f0200a9;
    v1.setBackgroundResource(v0);
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 4
    .prologue
    v2 = 0x0;
    if (p1 != 0) {
//       if-nez p1, :cond_1
    }
    v0 = "ad_shelf_show";
    Lcom/arcsoft/hpay100/a/a.e(p0, v0, v2);
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = p1.get_id();
    v1 = "ad_shelf_show";
    v1 = Lcom/arcsoft/hpay100/a/a.d(p0, v1, v2);
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v2 = v1.contains(v0);
    if (v2 != 0) {
//       if-nez v2, :cond_0
    }
    :cond_2
    v2 = new StringBuilder();
    v3 = "zssq_ad_show_";
    v2.<init>(v3);
    v3 = p1.getPosition();
    v2 = v2.append(v3);
    v2 = v2.toString();
    v3 = p1.getTitle();
    Lcom/umeng/a/b.a(p0, v2, v3);
    v2 = new StringBuilder();
    v2.<init>();
    v1 = v2.append(v1);
    v0 = v1.append(v0);
    v0 = v0.toString();
    v1 = "ad_shelf_show";
    Lcom/arcsoft/hpay100/a/a.e(p0, v1, v0);
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/BookInfo;)V
    .locals 3
    .prologue
    v1 = new HashMap();
    v1.<init>();
    v0 = "iid";
    v2 = p1.getId();
    v1.put(v0, v2);
    v0 = "title";
    v2 = p1.getTitle();
    v1.put(v0, v2);
    v0 = "cat";
    v2 = p1.getCat();
    v1.put(v0, v2);
    v0 = "author";
    v2 = p1.getAuthor();
    v1.put(v0, v2);
    v2 = "tag";
    v0 = p1.getIsSerial();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = "serialize";
    :goto_0
    v1.put(v2, v0);
    v0 = "attr";
    v2 = Lcom/arcsoft/hpay100/a/a.a(p1);
    v1.put(v0, v2);
    v0 = p1.getId();
    Lcom/a/a/a.d(p0, v0, v1);
    return;
    :cond_0
    v0 = "end";
    goto :goto_0
.end method
.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .prologue
    v1 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v1
    :try_start_0
    v0 = "vkeyid_settings";
    v2 = 0x0;
    v0 = p0.getSharedPreferences(v0, v2);
    v0 = v0.edit();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v2 = invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;
    v2 = Lcom/alipay/security/mobile/module/a/a/b.a(v2, p1);
    v3 = "vkey_applist";
    v0.putString(v3, v2);
    v0.commit();
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :cond_0
    :goto_0
    monitor-exit v1
    return;
    :catchall_0
    move-exception v0
    monitor-exit v1
    throw v0
    :catch_0
    move-exception v0
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
    .prologue
    v0 = 0x0;
    v0 = p0.getSharedPreferences(p1, v0);
    v2 = v0.edit();
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v2.clear();
    v0 = p2.keySet();
    v3 = v0.iterator();
    :goto_0
    v0 = v3.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v3.next();
    check-cast v0, Ljava/lang/String;
    v1 = p2.get(v0);
    check-cast v1, Ljava/lang/String;
    v2.putString(v0, v1);
    goto :goto_0
    :cond_0
    v2.commit();
    :cond_1
    return;
.end method
.method public static a(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v0 = p0.getSupportFragmentManager();
    v1 = v0.beginTransaction();
    v2 = "dialog_gender_intro";
    v0 = v0.findFragmentByTag(v2);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v1.remove(v0);
    :cond_1
    v0 = new DialogUtil$GenderIntroDialog();
    v0.<init>();
    v2 = 0x0;
    v0.setCancelable(v2);
    v2 = "dialog_gender_intro";
    v0.show(v1, v2);
    goto :goto_0
.end method
.method public static a(Landroid/support/v4/app/FragmentActivity;Lcom/ushaqi/zhuishushenqi/reader/ReaderTocDialog;)V
    .locals 3
    .prologue
    v0 = p0.getSupportFragmentManager();
    v1 = v0.beginTransaction();
    v2 = "ReaderTocDialog";
    v0 = v0.findFragmentByTag(v2);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1.remove(v0);
    :cond_0
    :try_start_0
    v0 = "ReaderTocDialog";
    v1.add(p1, v0);
    v1.commitAllowingStateLoss();
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
.end method
.method public static a(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;[IZLandroid/app/PendingIntent;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJ",
            "Ljava/util/List",
            "<TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            ")V"
        }
    .end annotation
    .prologue
    v12 = Landroid/support/v7/appcompat/R$layout;->notification_template_media;
    v13 = 0x1;
    v2 = p1;
    v3 = p2;
    v4 = p3;
    v5 = p4;
    v6 = p5;
    v7 = p6;
    v8 = p7;
    v9 = p8;
    v10 = p9;
    v5 = Lcom/arcsoft/hpay100/a/a.a(v2 .. v13);
    v6 = p11.size();
    if (p12 != 0) {
//       if-nez p12, :cond_0
    }
    v2 = 0x0;
    v3 = v2;
    :goto_0
    v2 = Landroid/support/v7/appcompat/R$id;->media_actions;
    v5.removeAllViews(v2);
    if (v3 <= 0) {
//       if-lez v3, :cond_2
    }
    v2 = 0x0;
    v4 = v2;
    :goto_1
    if (v4 >= v3) {
//       if-ge v4, v3, :cond_2
    }
    if (v4 < v6) {
//       if-lt v4, v6, :cond_1
    }
    v2 = new IllegalArgumentException();
    v3 = "setShowActionsInCompactView: action %d out of bounds (max %d)";
    v5 = 0x2;
    new-array v5, v5, [Ljava/lang/Object;
    v7 = 0x0;
    v4 = Ljava/lang/Integer.valueOf(v4);
    v5[v7] = v4;
    v4 = 0x1;
    v6 = v6 + -0x1;
    v6 = Ljava/lang/Integer.valueOf(v6);
    v5[v4] = v6;
    v3 = Ljava/lang/String.format(v3, v5);
    v2.<init>(v3);
    throw v2
    :cond_0
    v0 = p12;
    v2 = v0.length;
    v3 = 0x3;
    v2 = Ljava/lang/Math.min(v2, v3);
    v3 = v2;
    goto :goto_0
    :cond_1
    v2 = p12[v4];
    v0 = p11;
    v2 = v0.get(v2);
    check-cast v2, Landroid/support/v4/app/NotificationCompatBase$Action;
    v0 = p1;
    v2 = Lcom/arcsoft/hpay100/a/a.a(v0, v2);
    v7 = Landroid/support/v7/appcompat/R$id;->media_actions;
    v5.addView(v7, v2);
    v2 = v4 + 0x1;
    v4 = v2;
    goto :goto_1
    :cond_2
    if (p13 == 0) {
//       if-eqz p13, :cond_4
    }
    v2 = Landroid/support/v7/appcompat/R$id;->end_padder;
    v3 = 0x8;
    v5.setViewVisibility(v2, v3);
    v2 = Landroid/support/v7/appcompat/R$id;->cancel_action;
    v3 = 0x0;
    v5.setViewVisibility(v2, v3);
    v2 = Landroid/support/v7/appcompat/R$id;->cancel_action;
    v0 = p14;
    v5.setOnClickPendingIntent(v2, v0);
    v2 = Landroid/support/v7/appcompat/R$id;->cancel_action;
    v3 = "setAlpha";
    v4 = p1.getResources();
    v6 = Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha;
    v4 = v4.getInteger(v6);
    v5.setInt(v2, v3, v4);
    :goto_2
    v2 = p0.getBuilder();
    v2.setContent(v5);
    if (p13 == 0) {
//       if-eqz p13, :cond_3
    }
    v2 = p0.getBuilder();
    v3 = 0x1;
    v2.setOngoing(v3);
    :cond_3
    return;
    :cond_4
    v2 = Landroid/support/v7/appcompat/R$id;->end_padder;
    v3 = 0x0;
    v5.setViewVisibility(v2, v3);
    v2 = Landroid/support/v7/appcompat/R$id;->cancel_action;
    v3 = 0x8;
    v5.setViewVisibility(v2, v3);
    goto :goto_2
.end method
.method public static a(Landroid/view/View;)V
    .locals 5
    .prologue
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->k()Z
    move-result v0
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = 0x1;
    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;
    v1 = 0x0;
    v2 = Ljava/lang/Integer;->TYPE;
    v0[v1] = v2;
    v1 = Landroid/view/View;;
    v2 = "setSystemUiVisibility";
    v0 = v1.getMethod(v2, v0);
    v1 = Landroid/view/View;;
    v2 = "SYSTEM_UI_FLAG_HIDE_NAVIGATION";
    v1 = v1.getField(v2);
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    v3 = 0x0;
    v4 = 0x0;
    :try_start_1
    v1 = v1.get(v4);
    v2[v3] = v1;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    :goto_1
    :try_start_2
    v0.invoke(p0, v2);
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    goto :goto_0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
    :catch_1
    move-exception v1
    goto :goto_1
.end method
.method public static a(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .prologue
    v0 = Landroid/os/Build$VERSION;->SDK_INT;
    v1 = 0x10;
    if (v0 < v1) {
//       if-lt v0, v1, :cond_0
    }
    p0.postOnAnimation(p1);
    :goto_0
    return;
    :cond_0
    v0 = 0x10;
    p0.postDelayed(p1, v0, v1);
    goto :goto_0
.end method
.method public static declared-synchronized a(Lcom/alipay/b/a/d;)V
    .locals 4
    .prologue
    v1 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v1
    :try_start_0
    v0 = p0.a();
    Landroid/support/design/widget/am.a(v0);
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    :goto_0
    monitor-exit v1
    return;
    :cond_1
    :try_start_1
    v0 = p0.a();
    v2 = invoke-static {}, Lcom/arcsoft/hpay100/a/a;->a()Ljava/lang/String;
    v0 = v0.equals(v2);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new StringBuilder();
    v0.<init>();
    v2 = p0.a();
    v0 = v0.append(v2);
    v2 = "`";
    v0 = v0.append(v2);
    v2 = p0.d();
    v0 = v0.append(v2);
    v0.toString();
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    move-result-object v0
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    :try_start_2
    v2 = invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;
    v0 = Lcom/alipay/security/mobile/module/a/a/b.a(v2, v0);
    v2 = new JSONObject();
    v2.<init>();
    v3 = "device";
    v2.put(v3, v0);
    v0 = "deviceid_v2";
    v2 = v2.toString();
    Landroid/support/design/widget/am.c(v0, v2);
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    goto :goto_0
    :catch_0
    move-exception v0
    goto :goto_0
    :catchall_0
    move-exception v0
    monitor-exit v1
    throw v0
.end method
.method public static a(Lcom/ushaqi/zhuishushenqi/model/TocSource;Ljava/lang/String;)V
    .locals 3
    .prologue
    v0 = p0.getSource();
    v1 = p0.getSourceId();
    v2 = Lcom/ushaqi/zhuishushenqi/db/SourceRecord.get(p1, v0);
    if (v2 != 0) {
//       if-nez v2, :cond_1
    }
    Lcom/ushaqi/zhuishushenqi/db/SourceRecord.create(p1, v0, v1);
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = v2.getSourceId();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v2.setSourceId(v1);
    v2.save();
    goto :goto_0
.end method
.method public static a(Ljava/io/Closeable;)V
    .locals 1
    .prologue
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    :try_start_0
    p0.close();
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    :cond_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    goto :goto_0
.end method
.method public static a(Ljava/io/File;)V
    .locals 5
    .prologue
    v0 = p0.exists();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v0 = p0.isFile();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    p0.delete();
    goto :goto_0
    :cond_1
    v1 = p0.list();
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v0 = v1.length;
    if (v0 > 0) {
//       if-gtz v0, :cond_3
    }
    :cond_2
    p0.delete();
    goto :goto_0
    :cond_3
    v2 = v1.length;
    v0 = 0x0;
    :goto_1
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_5
    }
    v3 = v1[v0];
    v4 = new File();
    v4.<init>(p0, v3);
    v3 = v4.isDirectory();
    if (v3 == 0) {
//       if-eqz v3, :cond_4
    }
    Lcom/arcsoft/hpay100/a/a.a(v4);
    :goto_2
    v0 = v0 + 0x1;
    goto :goto_1
    :cond_4
    v4.delete();
    goto :goto_2
    :cond_5
    p0.delete();
    goto :goto_0
.end method
.method public static a(Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)V
    .locals 3
    .prologue
    v0 = 0x10000;
    new-array v1, v0, [B
    v0 = p0.read(v1);
    :goto_0
    if (v0 <= 0) {
//       if-lez v0, :cond_0
    }
    v2 = 0x0;
    p1.write(v1, v2, v0);
    v0 = p0.read(v1);
    goto :goto_0
    :cond_0
    p0.close();
    p1.close();
    return;
.end method
.method public static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
    .prologue
    :try_start_0
    v0 = new File();
    v1 = Lcom/arcsoft/hpay100/a/a.J(p1);
    v0.<init>(v1, p2);
    v1 = v0.exists();
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v0.createNewFile();
    :cond_0
    v1 = new ObjectOutputStream();
    v2 = new FileOutputStream();
    v2.<init>(v0);
    v1.<init>(v2);
    v1.writeObject(p0);
    v1.flush();
    v1.close();
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
.end method
.method public static a(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .prologue
    v1 = new DownloadManager$Query();
    v1.<init>();
    v0 = "download";
    v0 = p1.getSystemService(v0);
    check-cast v0, Landroid/app/DownloadManager;
    v3 = v0.query(v1);
    v2 = 0x0;
    v1 = 0x0;
    if (v3 == 0) {
//       if-eqz v3, :cond_4
    }
    :cond_0
    :goto_0
    v4 = v3.moveToNext();
    if (v4 == 0) {
//       if-eqz v4, :cond_3
    }
    v4 = "uri";
    v4 = v3.getColumnIndex(v4);
    v4 = v3.getString(v4);
    v4 = Lcom/arcsoft/hpay100/a/a.B(v4);
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    v1 = "status";
    v1 = v3.getColumnIndex(v1);
    v1 = v3.getInt(v1);
    v2 = 0x8;
    if (v1 != v2) {
//       if-ne v1, v2, :cond_1
    }
    v2 = 0x1;
    v1 = "local_uri";
    v1 = v3.getColumnIndex(v1);
    v1 = v3.getString(v1);
    goto :goto_0
    :cond_1
    v0 = "\u6b63\u5728\u4e0b\u8f7d,\u8bf7\u7a0d\u540e";
    Lcom/ushaqi/zhuishushenqi/util/e.a(p1, v0);
    :cond_2
    :goto_1
    return;
    :cond_3
    v3.close();
    :cond_4
    if (v2 == 0) {
//       if-eqz v2, :cond_5
    }
    if (v1 == 0) {
//       if-eqz v1, :cond_5
    }
    v2 = new File();
    v1 = Landroid/net/Uri.parse(v1);
    v1 = v1.getPath();
    v2.<init>(v1);
    v1 = Lcom/arcsoft/hpay100/a/a.a(p1, v2);
    if (v1 != 0) {
//       if-nez v1, :cond_2
    }
    Lcom/arcsoft/hpay100/a/a.a(p0, p2, v0);
    goto :goto_1
    :cond_5
    Lcom/arcsoft/hpay100/a/a.a(p0, p2, v0);
    goto :goto_1
.end method
.method public static a(Ljava/lang/String;Lcom/koushikdutta/async/http/b/b;)V
    .locals 5
    .prologue
    v0 = 0x0;
    :goto_0
    v1 = p0.length();
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_3
    }
    v1 = "=,";
    v1 = Lcom/arcsoft/hpay100/a/a.b(p0, v0, v1);
    v0 = p0.substring(v0, v1);
    v2 = v0.trim();
    v0 = p0.length();
    if (v1 == v0) {
//       if-eq v1, v0, :cond_0
    }
    v0 = p0.charAt(v1);
    v3 = 0x2c;
    if (v0 != v3) {
//       if-ne v0, v3, :cond_1
    }
    :cond_0
    v0 = v1 + 0x1;
    v1 = 0x0;
    p1.a(v2, v1);
    goto :goto_0
    :cond_1
    v0 = v1 + 0x1;
    v0 = Lcom/arcsoft/hpay100/a/a.c(p0, v0);
    v1 = p0.length();
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_2
    }
    v1 = p0.charAt(v0);
    v3 = 0x22;
    if (v1 != v3) {
//       if-ne v1, v3, :cond_2
    }
    v0 = v0 + 0x1;
    v1 = "\"";
    v1 = Lcom/arcsoft/hpay100/a/a.b(p0, v0, v1);
    v0 = p0.substring(v0, v1);
    v1 = v1 + 0x1;
    v4 = v0;
    v0 = v1;
    v1 = v4;
    :goto_1
    p1.a(v2, v1);
    goto :goto_0
    :cond_2
    v1 = ",";
    v1 = Lcom/arcsoft/hpay100/a/a.b(p0, v0, v1);
    v0 = p0.substring(v0, v1);
    v0 = v0.trim();
    v4 = v0;
    v0 = v1;
    v1 = v4;
    goto :goto_1
    :cond_3
    return;
.end method
.method private static a(Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)V
    .locals 7
    .prologue
    v2 = 0x0;
    v0 = invoke-static {}, Lcom/arcsoft/hpay100/a/a;->o()Ljava/lang/String;
    v1 = Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord.getTypeId(p1);
    Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord.updateOrCreate(v0, p0, v1);
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    v0 = v0.getUser();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    v3 = v0.getToken();
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    v0 = v0.getUser();
    v4 = v0.getId();
    v0 = Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord.getTypeId(p1);
    v5 = Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord.find(v4, v0);
    if (v5 == 0) {
//       if-eqz v5, :cond_0
    }
    v0 = v5.size();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v5.size();
    new-array v6, v0, [Ljava/lang/String;
    v1 = v2;
    :goto_1
    v0 = v5.size();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_2
    }
    v0 = v5.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;
    v0 = v0.getBookId();
    v6[v1] = v0;
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_1
    :cond_2
    v0 = new X();
    v0.<init>(v4, v3, p1, v6);
    new-array v1, v2, [Ljava/lang/Void;
    v0.b(v1);
    goto :goto_0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/app/DownloadManager;)V
    .locals 3
    .prologue
    v0 = Landroid/net/Uri.parse(p0);
    v1 = new DownloadManager$Request();
    v1.<init>(v0);
    v1.setTitle(p1);
    v0 = Lcom/arcsoft/hpay100/a/a.N(p0);
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->g()Z
    move-result v2
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v1.allowScanningByMediaScanner();
    v2 = 0x1;
    v1.setNotificationVisibility(v2);
    :cond_0
    v2 = Landroid/os/Environment;->DIRECTORY_DOWNLOADS;
    v1.setDestinationInExternalPublicDir(v2, v0);
    :try_start_0
    p2.enqueue(v1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
.end method
.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/c;->c;
    Lcom/arcsoft/hpay100/a/a.a(p1, v0, p0);
    return;
.end method
.method public static a(Ljava/net/Socket;)V
    .locals 1
    .prologue
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    :try_start_0
    p0.close();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :cond_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    goto :goto_0
.end method
.method public static a(Lorg/apache/thrift/b;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/b",
            "<TT;*>;>(TT;[B)V"
        }
    .end annotation
    .prologue
    if (p1 != 0) {
//       if-nez p1, :cond_0
    }
    v0 = new e();
    v1 = "the message byte is empty.";
    v0.<init>(v1);
    throw v0
    :cond_0
    v0 = new d();
    v0.<init>();
    v0.a(p0, p1);
    return;
.end method
.method public static varargs a([Ljava/io/Closeable;)V
    .locals 3
    .prologue
    v1 = p0.length;
    v0 = 0x0;
    :goto_0
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_1
    }
    v2 = p0[v0];
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    :try_start_0
    v2.close();
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    :cond_0
    :goto_1
    v0 = v0 + 0x1;
    goto :goto_0
    :catch_0
    move-exception v2
    goto :goto_1
    :cond_1
    return;
.end method
.method public static a([Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SHELF_ADD;
    Lcom/arcsoft/hpay100/a/a.a(p0, v0);
    return;
.end method
.method private static a([Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;)V
    .locals 7
    .prologue
    v2 = 0x0;
    v1 = p0.length;
    v0 = v2;
    :goto_0
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_0
    }
    v3 = p0[v0];
    v4 = invoke-static {}, Lcom/arcsoft/hpay100/a/a;->o()Ljava/lang/String;
    v5 = Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord.getTypeId(p1);
    Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord.updateOrCreate(v4, v3, v5);
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_0
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    v0 = v0.getUser();
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    :cond_1
    :goto_1
    return;
    :cond_2
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    v3 = v0.getToken();
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    v0 = v0.getUser();
    v4 = v0.getId();
    v0 = Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord.getTypeId(p1);
    v5 = Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord.find(v4, v0);
    if (v5 == 0) {
//       if-eqz v5, :cond_1
    }
    v0 = v5.size();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = v5.size();
    new-array v6, v0, [Ljava/lang/String;
    v1 = v2;
    :goto_2
    v0 = v5.size();
    if (v1 >= v0) {
//       if-ge v1, v0, :cond_3
    }
    v0 = v5.get(v1);
    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord;
    v0 = v0.getBookId();
    v6[v1] = v0;
    v0 = v1 + 0x1;
    v1 = v0;
    goto :goto_2
    :cond_3
    v0 = new X();
    v0.<init>(v4, v3, p1, v6);
    new-array v1, v2, [Ljava/lang/Void;
    v0.b(v1);
    goto :goto_1
.end method
.method public static a(BI)Z
    .locals 2
    .prologue
    v0 = 0x1;
    v1 = v0 << p1;
    v1 &= p0;
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;Lcom/e/a/a/a/a/a;)Z
    .locals 6
    .prologue
    v5 = 0x22000001;
    v0 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    v1 = "MicroMsg.SDK.MMessage";
    v2 = "send fail, invalid argument";
    Lcom/e/a/a/b/a.a(v1, v2);
    :goto_0
    return v0
    :cond_0
    v1 = p1.Lcom/e/a/a/a/a/a;->b;
    v1 = Lcom/e/a/a/b/c.a(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v1 = "MicroMsg.SDK.MMessage";
    v2 = "send fail, action is null";
    Lcom/e/a/a/b/a.a(v1, v2);
    goto :goto_0
    :cond_1
    v0 = 0x0;
    v1 = p1.Lcom/e/a/a/a/a/a;->a;
    v1 = Lcom/e/a/a/b/c.a(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_2
    }
    v0 = new StringBuilder();
    v0.<init>();
    v1 = p1.Lcom/e/a/a/a/a/a;->a;
    v0 = v0.append(v1);
    v1 = ".permission.MM_MESSAGE";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :cond_2
    v1 = new Intent();
    v2 = p1.Lcom/e/a/a/a/a/a;->b;
    v1.<init>(v2);
    v2 = p0.getPackageName();
    v3 = "_mmessage_sdkVersion";
    v1.putExtra(v3, v5);
    v3 = "_mmessage_appPackage";
    v1.putExtra(v3, v2);
    v3 = "_mmessage_content";
    v4 = p1.Lcom/e/a/a/a/a/a;->c;
    v1.putExtra(v3, v4);
    v3 = "_mmessage_checksum";
    v4 = p1.Lcom/e/a/a/a/a/a;->c;
    v2 = Lcom/arcsoft/hpay100/a/a.a(v4, v5, v2);
    v1.putExtra(v3, v2);
    p0.sendBroadcast(v1, v0);
    v2 = "MicroMsg.SDK.MMessage";
    v3 = new StringBuilder();
    v4 = "send mm message, intent=";
    v3.<init>(v4);
    v1 = v3.append(v1);
    v3 = ", perm=";
    v1 = v1.append(v3);
    v0 = v1.append(v0);
    v0 = v0.toString();
    Lcom/e/a/a/b/a.c(v2, v0);
    v0 = 0x1;
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;Lcom/e/a/a/a/a;)Z
    .locals 7
    .prologue
    v6 = 0x22000001;
    v1 = 0x1;
    v0 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    v1 = "MicroMsg.SDK.MMessageAct";
    v2 = "send fail, invalid argument";
    Lcom/e/a/a/b/a.a(v1, v2);
    :goto_0
    return v0
    :cond_0
    v2 = p1.Lcom/e/a/a/a/a;->a;
    v2 = Lcom/e/a/a/b/c.a(v2);
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v1 = "MicroMsg.SDK.MMessageAct";
    v2 = new StringBuilder();
    v3 = "send fail, invalid targetPkgName, targetPkgName = ";
    v2.<init>(v3);
    v3 = p1.Lcom/e/a/a/a/a;->a;
    v2 = v2.append(v3);
    v2 = v2.toString();
    Lcom/e/a/a/b/a.a(v1, v2);
    goto :goto_0
    :cond_1
    v2 = p1.Lcom/e/a/a/a/a;->b;
    v2 = Lcom/e/a/a/b/c.a(v2);
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v2 = new StringBuilder();
    v2.<init>();
    v3 = p1.Lcom/e/a/a/a/a;->a;
    v2 = v2.append(v3);
    v3 = ".wxapi.WXEntryActivity";
    v2 = v2.append(v3);
    v2 = v2.toString();
    p1.Lcom/e/a/a/a/a;->b = v2;
    :cond_2
    v2 = "MicroMsg.SDK.MMessageAct";
    v3 = new StringBuilder();
    v4 = "send, targetPkgName = ";
    v3.<init>(v4);
    v4 = p1.Lcom/e/a/a/a/a;->a;
    v3 = v3.append(v4);
    v4 = ", targetClassName = ";
    v3 = v3.append(v4);
    v4 = p1.Lcom/e/a/a/a/a;->b;
    v3 = v3.append(v4);
    v3 = v3.toString();
    Lcom/e/a/a/b/a.c(v2, v3);
    v2 = new Intent();
    v2.<init>();
    v3 = p1.Lcom/e/a/a/a/a;->a;
    v4 = p1.Lcom/e/a/a/a/a;->b;
    v2.setClassName(v3, v4);
    v3 = p1.Lcom/e/a/a/a/a;->e;
    if (v3 == 0) {
//       if-eqz v3, :cond_3
    }
    v3 = p1.Lcom/e/a/a/a/a;->e;
    v2.putExtras(v3);
    :cond_3
    v3 = p0.getPackageName();
    v4 = "_mmessage_sdkVersion";
    v2.putExtra(v4, v6);
    v4 = "_mmessage_appPackage";
    v2.putExtra(v4, v3);
    v4 = "_mmessage_content";
    v5 = p1.Lcom/e/a/a/a/a;->c;
    v2.putExtra(v4, v5);
    v4 = "_mmessage_checksum";
    v5 = p1.Lcom/e/a/a/a/a;->c;
    v3 = Lcom/arcsoft/hpay100/a/a.a(v5, v6, v3);
    v2.putExtra(v4, v3);
    v3 = p1.Lcom/e/a/a/a/a;->d;
    v4 = -0x1;
    if (v3 != v4) {
//       if-ne v3, v4, :cond_4
    }
    v3 = 0x10000000;
    v3 = v2.addFlags(v3);
    v4 = 0x8000000;
    v3.addFlags(v4);
    :goto_1
    :try_start_0
    p0.startActivity(v2);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    v0 = "MicroMsg.SDK.MMessageAct";
    v3 = new StringBuilder();
    v4 = "send mm message, intent=";
    v3.<init>(v4);
    v2 = v3.append(v2);
    v2 = v2.toString();
    Lcom/e/a/a/b/a.c(v0, v2);
    v0 = v1;
    goto/16 :goto_0
    :cond_4
    v3 = p1.Lcom/e/a/a/a/a;->d;
    v2.setFlags(v3);
    goto :goto_1
    :catch_0
    move-exception v2
    v3 = "MicroMsg.SDK.MMessageAct";
    v4 = "send fail, ex = %s";
    new-array v1, v1, [Ljava/lang/Object;
    v2 = v2.getMessage();
    v1[v0] = v2;
    Lcom/e/a/a/b/a.a(v3, v4, v1);
    goto/16 :goto_0
.end method
.method public static a(Landroid/content/Context;Ljava/io/File;)Z
    .locals 4
    .prologue
    v0 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_1
    }
    :cond_0
    :goto_0
    return v0
    :cond_1
    v1 = p1.exists();
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1 = new Intent();
    v2 = "android.intent.action.VIEW";
    v1.<init>(v2);
    v2 = new StringBuilder();
    v3 = "file://";
    v2.<init>(v3);
    v3 = p1.toString();
    v2 = v2.append(v3);
    v2 = v2.toString();
    v2 = Landroid/net/Uri.parse(v2);
    v3 = "application/vnd.android.package-archive";
    v1.setDataAndType(v2, v3);
    v2 = 0x10000000;
    v1.setFlags(v2);
    :try_start_0
    p0.startActivity(v1);
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    v0 = 0x1;
    goto :goto_0
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return p2
    :cond_0
    v0 = Landroid/preference/PreferenceManager.getDefaultSharedPreferences(p0);
    p2 = v0.getBoolean(p1, p2);
    goto :goto_0
.end method
.method public static a(Landroid/content/Intent;)Z
    .locals 1
    .prologue
    v0 = p0.getData();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = 0x1;
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method private static a(Lcom/nostra13/universalimageloader/b/c;II)Z
    .locals 2
    .prologue
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    v0 = p0.a(p1, p2);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p1 * 0x64;
    v0 /= p2;
    v1 = 0x4b;
    if (v0 >= v1) {
//       if-ge v0, v1, :cond_0
    }
    v0 = 0x1;
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/nostra13/universalimageloader/b/c;I)Z
    .locals 6
    .prologue
    v1 = 0x0;
    v2 = p0.available();
    new-array v3, p3, [B
    v0 = Lcom/arcsoft/hpay100/a/a.a(p2, v1, v2);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    :goto_0
    return v1
    :cond_0
    v0 = v1;
    :cond_1
    v4 = p0.read(v3, v1, p3);
    v5 = -0x1;
    if (v4 == v5) {
//       if-eq v4, v5, :cond_2
    }
    p1.write(v3, v1, v4);
    v0 += v4;
    v4 = Lcom/arcsoft/hpay100/a/a.a(p2, v0, v2);
    if (v4 == 0) {
//       if-eqz v4, :cond_1
    }
    goto :goto_0
    :cond_2
    p1.flush();
    v1 = 0x1;
    goto :goto_0
.end method
.method public static a(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation
    .prologue
    v0 = 0x1;
    v1 = p0.isPrimitive();
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    :cond_0
    :goto_0
    return v0
    :cond_1
    v1 = Ljava/lang/String;;
    v1 = p0.equals(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = Ljava/lang/Integer;;
    v1 = p0.equals(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = Ljava/lang/Long;;
    v1 = p0.equals(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = Ljava/lang/Double;;
    v1 = p0.equals(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = Ljava/lang/Float;;
    v1 = p0.equals(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = Ljava/lang/Boolean;;
    v1 = p0.equals(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = Ljava/lang/Short;;
    v1 = p0.equals(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = Ljava/lang/Character;;
    v1 = p0.equals(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = Ljava/lang/Byte;;
    v1 = p0.equals(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = Ljava/lang/Void;;
    v1 = p0.equals(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v0 = 0x0;
    goto :goto_0
.end method
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .prologue
    if (p0 == p1) {
//       if-eq p0, p1, :cond_0
    }
    if (p0 == 0) {
//       if-eqz p0, :cond_1
    }
    v0 = p0.equals(p1);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    v0 = 0x1;
    :goto_0
    return v0
    :cond_1
    v0 = 0x0;
    goto :goto_0
.end method
.method public static a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 10
    .prologue
    v8 = 0x1;
    v9 = 0x0;
    v0 = Landroid/text/TextUtils.isEmpty(p0);
    if (v0 != 0) {
//       if-nez v0, :cond_4
    }
    v0 = "[0-9a-zA-Z]+_[0-9a-zA-Z]+";
    v0 = p0.matches(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    :try_start_0
    v1 = "table_schema";
    v2 = 0x0;
    v3 = 0x0;
    v4 = 0x0;
    v5 = 0x0;
    v6 = 0x0;
    v7 = 0x0;
    v0 = p1;
    v0.query(..v7);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v1
    :try_start_1
    v0 = v1.moveToFirst();
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    :cond_0
    v0 = "name";
    v0 = v1.getColumnIndexOrThrow(v0);
    v0 = v1.getString(v0);
    v0 = p0.equalsIgnoreCase(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = "type";
    v0 = v1.getColumnIndexOrThrow(v0);
    v1.getInt(v0);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    move-result v0
    if (v0 != v8) {
//       if-ne v0, v8, :cond_3
    }
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v1.close();
    :cond_1
    v0 = v8;
    :goto_0
    return v0
    :cond_2
    :try_start_2
    v1.moveToNext();
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    move-result v0
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    :cond_3
    if (v1 == 0) {
//       if-eqz v1, :cond_4
    }
    v1.close();
    :cond_4
    :goto_1
    v0 = 0x0;
    goto :goto_0
    :catch_0
    move-exception v0
    v1 = v9;
    :goto_2
    :try_start_3
    v0.printStackTrace();
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    if (v1 == 0) {
//       if-eqz v1, :cond_4
    }
    v1.close();
    goto :goto_1
    :catchall_0
    move-exception v0
    v1 = v9;
    :goto_3
    if (v1 == 0) {
//       if-eqz v1, :cond_5
    }
    v1.close();
    :cond_5
    throw v0
    :catchall_1
    move-exception v0
    goto :goto_3
    :catch_1
    move-exception v0
    goto :goto_2
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2
    .prologue
    v0 = 0x0;
    v1 = Landroid/text/TextUtils.isEmpty(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = Landroid/text/TextUtils.isEmpty(p1);
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    :cond_0
    :goto_0
    return v0
    :cond_1
    :try_start_0
    v1 = Lcom/arcsoft/hpay100/a/a.c(p1, p2);
    v1 = v1.b();
    Lcom/arcsoft/hpay100/a/a.a(v1, p0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result v0
    goto :goto_0
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .prologue
    :try_start_0
    v0 = "RSA";
    v0 = Ljava/security/KeyFactory.getInstance(v0);
    v1 = Lcom/ushaqi/zhuishushenqi/pay/a/f.a(p2);
    v2 = new X509EncodedKeySpec();
    v2.<init>(v1);
    v0 = v0.generatePublic(v2);
    v1 = "SHA1WithRSA";
    v1 = Ljava/security/Signature.getInstance(v1);
    v1.initVerify(v0);
    v0 = "utf-8";
    v0 = p0.getBytes(v0);
    v1.update(v0);
    v0 = Lcom/ushaqi/zhuishushenqi/pay/a/f.a(p1);
    v1.verify(v0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result v0
    :goto_0
    return v0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/model/Chapter;)Z
    .locals 4
    .prologue
    v0 = 0x0;
    if (p2 != 0) {
//       if-nez p2, :cond_0
    }
    :goto_0
    return v0
    :cond_0
    v1 = new StringBuilder();
    v2 = "/ZhuiShuShenQi/Chapter";
    v1.<init>(v2);
    v2 = Ljava/io/File;->separator;
    v1 = v1.append(v2);
    v1 = v1.append(p0);
    v2 = Ljava/io/File;->separator;
    v1 = v1.append(v2);
    v1 = v1.append(p1);
    v1 = v1.toString();
    v2 = new File();
    v3 = Lcom/ushaqi/zhuishushenqi/c;->a;
    v2.<init>(v3, v1);
    :try_start_0
    v1 = v2.exists();
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    v2.mkdirs();
    :cond_1
    v1 = new File();
    v1.<init>(v2, p2);
    v2 = new FileOutputStream();
    v2.<init>(v1);
    v1 = new ObjectOutputStream();
    v1.<init>(v2);
    v1.writeObject(p3);
    v1.close();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    v0 = 0x1;
    goto :goto_0
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ushaqi/zhuishushenqi/model/Toc;)Z
    .locals 4
    .prologue
    v0 = 0x0;
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z
    move-result v1
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    :goto_0
    return v0
    :cond_0
    v1 = new StringBuilder();
    v2 = "/ZhuiShuShenQi/Chapter";
    v1.<init>(v2);
    v2 = Ljava/io/File;->separator;
    v1 = v1.append(v2);
    v1 = v1.append(p0);
    v2 = Ljava/io/File;->separator;
    v1 = v1.append(v2);
    v1 = v1.append(p1);
    v1 = v1.toString();
    v2 = new File();
    v3 = Lcom/ushaqi/zhuishushenqi/c;->a;
    v2.<init>(v3, v1);
    :try_start_0
    v1 = v2.exists();
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    v2.mkdirs();
    :cond_1
    v1 = new File();
    v1.<init>(v2, p2);
    v2 = new FileOutputStream();
    v2.<init>(v1);
    v1 = new ObjectOutputStream();
    v1.<init>(v2);
    v1.writeObject(p3);
    v1.close();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    v0 = 0x1;
    goto :goto_0
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
.method public static a(Ljava/util/Collection;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
    .prologue
    v1 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return v1
    :cond_0
    if (p1 != 0) {
//       if-nez p1, :cond_1
    }
    v0 = 0x0;
    v1 = p0.contains(v0);
    goto :goto_0
    :cond_1
    v2 = p0.iterator();
    :cond_2
    v0 = v2.hasNext();
    if (v0 != 0) {
//       if-nez v0, :cond_3
    }
    v0 = v1;
    :goto_1
    v1 = v0;
    goto :goto_0
    :cond_3
    v0 = v2.next();
    check-cast v0, Ljava/lang/String;
    v0 = p1.equalsIgnoreCase(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = 0x1;
    goto :goto_1
.end method
.method private static a([B[B)Z
    .locals 5
    .prologue
    v2 = 0x1;
    v1 = 0x0;
    if (p0 != p1) {
//       if-ne p0, p1, :cond_1
    }
    v1 = v2;
    :cond_0
    :goto_0
    return v1
    :cond_1
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v0 = p0.length;
    v3 = p1.length;
    if (v0 < v3) {
//       if-lt v0, v3, :cond_0
    }
    v0 = v1;
    :goto_1
    v3 = p1.length;
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_2
    }
    v3 = p0[v0];
    v4 = p1[v0];
    if (v3 != v4) {
//       if-ne v3, v4, :cond_0
    }
    v0 = v0 + 0x1;
    goto :goto_1
    :cond_2
    v1 = v2;
    goto :goto_0
.end method
.method public static a(I)[B
    .locals 4
    .prologue
    v0 = 0x4;
    new-array v0, v0, [B
    v1 = 0x3;
    v2 = p0 % 0x100;
    int-to-byte v2, v2
    v0[v1] = v2;
    v1 = p0 >> 0x8;
    v2 = 0x2;
    v3 = v1 % 0x100;
    int-to-byte v3, v3
    v0[v2] = v3;
    v1 = v1 >> 0x8;
    v2 = 0x1;
    v3 = v1 % 0x100;
    int-to-byte v3, v3
    v0[v2] = v3;
    v1 = v1 >> 0x8;
    v2 = 0x0;
    v1 = v1 % 0x100;
    int-to-byte v1, v1
    v0[v2] = v1;
    return v0;
.end method
.method public static a(Ljava/io/InputStream;)[B
    .locals 4
    .prologue
    v0 = 0x400;
    :try_start_0
    new-array v1, v0, [B
    v0 = "MD5";
    v2 = Ljava/security/MessageDigest.getInstance(v0);
    v0 = p0.read(v1);
    :goto_0
    v3 = -0x1;
    if (v0 == v3) {
//       if-eq v0, v3, :cond_0
    }
    v3 = 0x0;
    v2.update(v1, v3, v0);
    v0 = p0.read(v1);
    goto :goto_0
    :cond_0
    v2.digest();
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_1
    return v0;
    :catch_0
    move-exception v0
    v1 = invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;
    v1.w(v0);
    v0 = 0x0;
    goto :goto_1
.end method
.method public static a(Ljava/lang/String;ILjava/lang/String;)[B
    .locals 3
    .prologue
    v0 = new StringBuffer();
    v0.<init>();
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    v0.append(p0);
    :cond_0
    v0.append(p1);
    v0.append(p2);
    v1 = "mMcShCsTr";
    v0.append(v1);
    v0 = v0.toString();
    v1 = 0x1;
    v2 = 0x9;
    v0 = v0.substring(v1, v2);
    v0 = v0.getBytes();
    v0 = Landroid/support/design/widget/am.a(v0);
    v0 = v0.getBytes();
    return v0;
.end method
.method public static a(Lorg/apache/thrift/b;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/thrift/b",
            "<TT;*>;>(TT;)[B"
        }
    .end annotation
    .prologue
    v0 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return v0;
    :cond_0
    :try_start_0
    v1 = new g();
    v2 = new a$a();
    v2.<init>();
    v1.<init>(v2);
    v1.a(p0);
    :try_end_0
    .catch Lorg/apache/thrift/e; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    goto :goto_0
    :catch_0
    move-exception v1
    v2 = "convertThriftObjectToBytes catch TException.";
    Lcom/xiaomi/a/a/a/b.a(v2, v1);
    goto :goto_0
.end method
.method public static a([BII)[B
    .locals 3
    .prologue
    v0 = p0.length;
    v1 = p2 - p1;
    v0 -= p1;
    v0 = Ljava/lang/Math.min(v1, v0);
    new-array v1, v1, [B
    v2 = 0x0;
    Ljava/lang/System.arraycopy(p0, p1, v1, v2, v0);
    return v1;
.end method
.method public static a(Ljava/util/List;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation
    .prologue
    v0 = p0.size();
    v0 = Ljava/lang/reflect/Array.newInstance(p1, v0);
    check-cast v0, [Ljava/lang/Object;
    v1 = 0x0;
    :goto_0
    v2 = p0.size();
    if (v1 >= v2) {
//       if-ge v1, v2, :cond_0
    }
    v2 = p0.get(v1);
    v0[v1] = v2;
    v1 = v1 + 0x1;
    goto :goto_0
    :cond_0
    return v0;
.end method
.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .prologue
    v0 = 0x28;
    v0 = p0.indexOf(v0);
    v0 = v0 + 0x1;
    v1 = 0x29;
    v1 = p0.lastIndexOf(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v2 = -0x1;
    if (v1 != v2) {
//       if-ne v1, v2, :cond_1
    }
    :cond_0
    v0 = 0x0;
    :goto_0
    return v0;
    :cond_1
    v0 = p0.substring(v0, v1);
    v1 = ",";
    v1 = v0.split(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v0 = 0x0;
    :goto_1
    v2 = v1.length;
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_3
    }
    v2 = v1[v0];
    v2 = Landroid/text/TextUtils.isEmpty(v2);
    if (v2 != 0) {
//       if-nez v2, :cond_2
    }
    v2 = v1[v0];
    v2 = v2.trim();
    v1[v0] = v2;
    v2 = v1[v0];
    v3 = "\'";
    v4 = "";
    v2 = v2.replaceAll(v3, v4);
    v3 = "\"";
    v4 = "";
    v2 = v2.replaceAll(v3, v4);
    v1[v0] = v2;
    :cond_2
    v0 = v0 + 0x1;
    goto :goto_1
    :cond_3
    v0 = v1;
    goto :goto_0
.end method
.method public static b(BI)B
    .locals 1
    .prologue
    v0 = 0x1;
    v0 = v0 << p1;
    xv0 = v0 | -0x1;
    v0 &= p0;
    int-to-byte v0, v0
    return v0
.end method
.method public static b(Landroid/content/Context;II)I
    .locals 2
    .prologue
    v1 = 0x0;
    v0 = 0x1;
    new-array v0, v0, [I
    v0[v1] = p1;
    v0 = p0.obtainStyledAttributes(p2, v0);
    v1 = v0.getColor(v1, v1);
    v0.recycle();
    return v1
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .prologue
    v0 = 0x0;
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    v1 = Landroid/text/TextUtils.isEmpty(p1);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = Landroid/text/TextUtils.isEmpty(p2);
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    :cond_0
    :goto_0
    return v0
    :cond_1
    v1 = p0.getPackageName();
    v2 = Landroid/text/TextUtils.isEmpty(v1);
    if (v2 != 0) {
//       if-nez v2, :cond_0
    }
    v0 = p0.getResources();
    v0 = v0.getIdentifier(p2, p1, v1);
    if (v0 > 0) {
//       if-gtz v0, :cond_2
    }
    v0 = p0.getResources();
    v2 = p2.toLowerCase();
    v0 = v0.getIdentifier(v2, p1, v1);
    :cond_2
    if (v0 > 0) {
//       if-gtz v0, :cond_0
    }
    v1 = Ljava/lang/System;->err;
    v2 = new StringBuilder();
    v3 = "failed to parse ";
    v2.<init>(v3);
    v2 = v2.append(p1);
    v3 = " resource \"";
    v2 = v2.append(v3);
    v2 = v2.append(p2);
    v3 = "\"";
    v2 = v2.append(v3);
    v2 = v2.toString();
    v1.println(v2);
    goto :goto_0
.end method
.method public static b(Ljava/io/File;)I
    .locals 7
    .prologue
    v0 = 0x0;
    v2 = p0.listFiles();
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v1 = v2.length;
    v3 = v2.length;
    v6 = v0;
    v0 = v1;
    v1 = v6;
    :goto_0
    if (v1 >= v3) {
//       if-ge v1, v3, :cond_1
    }
    v4 = v2[v1];
    v5 = v4.isDirectory();
    if (v5 == 0) {
//       if-eqz v5, :cond_0
    }
    v4 = Lcom/arcsoft/hpay100/a/a.b(v4);
    v0 += v4;
    v0 = v0 + -0x1;
    :cond_0
    v1 = v1 + 0x1;
    goto :goto_0
    :cond_1
    return v0
.end method
.method public static b(Ljava/lang/String;I)I
    .locals 1
    .prologue
    :try_start_0
    Ljava/lang/Integer.parseInt(p0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result v0
    :goto_0
    return v0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
.end method
.method private static b(Ljava/lang/String;ILjava/lang/String;)I
    .locals 2
    .prologue
    :goto_0
    v0 = p0.length();
    if (p1 >= v0) {
//       if-ge p1, v0, :cond_0
    }
    v0 = p0.charAt(p1);
    v0 = p2.indexOf(v0);
    v1 = -0x1;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_0
    }
    p1 = p1 + 0x1;
    goto :goto_0
    :cond_0
    return p1
.end method
.method public static b([B)Landroid/graphics/Bitmap$CompressFormat;
    .locals 3
    .prologue
    v1 = Lcom/arcsoft/hpay100/a/a.g(p0);
    v0 = Landroid/graphics/Bitmap$CompressFormat;->JPEG;
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v2 = "png";
    v2 = v1.endsWith(v2);
    if (v2 != 0) {
//       if-nez v2, :cond_0
    }
    v2 = "gif";
    v1 = v1.endsWith(v2);
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    :cond_0
    v0 = Landroid/graphics/Bitmap$CompressFormat;->PNG;
    :cond_1
    return v0;
.end method
.method public static b(I)Lcom/ushaqi/zhuishushenqi/ui/game/N;
    .locals 3
    .prologue
    v0 = new N();
    v1 = p0 % 0x10;
    v2 = p0 / 0x10;
    v0.<init>(v1, v2);
    return v0;
.end method
.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .prologue
    v1 = 0x0;
    if (p2 == 0) {
//       if-eqz p2, :cond_0
    }
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z
    move-result v0
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    :cond_0
    v0 = v1;
    :goto_0
    return v0;
    :cond_1
    v0 = new StringBuilder();
    v2 = "/ZhuiShuShenQi/Chapter";
    v0.<init>(v2);
    v2 = Ljava/io/File;->separator;
    v0 = v0.append(v2);
    v0 = v0.append(p0);
    v2 = Ljava/io/File;->separator;
    v0 = v0.append(v2);
    v0 = v0.append(p1);
    v0 = v0.toString();
    v2 = new File();
    v3 = Lcom/ushaqi/zhuishushenqi/c;->a;
    v2.<init>(v3, v0);
    :try_start_0
    v0 = v2.exists();
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = v1;
    goto :goto_0
    :cond_2
    v0 = new File();
    v0.<init>(v2, p2);
    v2 = v0.exists();
    if (v2 != 0) {
//       if-nez v2, :cond_3
    }
    v0 = v1;
    goto :goto_0
    :cond_3
    v3 = new FileInputStream();
    v3.<init>(v0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :try_start_1
    v2 = new ObjectInputStream();
    v2.<init>(v3);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    :try_start_2
    v0 = v2.readObject();
    check-cast v0, Ljava/io/Serializable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    :try_start_3
    v2.close();
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    :goto_1
    :try_start_4
    v3.close();
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    goto :goto_0
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
    :catch_1
    move-exception v1
    v1.printStackTrace();
    goto :goto_1
    :catch_2
    move-exception v0
    v2 = v1;
    v3 = v1;
    :goto_2
    :try_start_5
    v0.printStackTrace();
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    if (v2 == 0) {
//       if-eqz v2, :cond_4
    }
    :try_start_6
    v2.close();
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    :cond_4
    :goto_3
    if (v3 == 0) {
//       if-eqz v3, :cond_5
    }
    :try_start_7
    v3.close();
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    :cond_5
    :goto_4
    v0 = v1;
    goto :goto_0
    :catch_3
    move-exception v0
    v0.printStackTrace();
    goto :goto_3
    :catch_4
    move-exception v0
    v0.printStackTrace();
    goto :goto_4
    :catchall_0
    move-exception v0
    v3 = v1;
    :goto_5
    if (v1 == 0) {
//       if-eqz v1, :cond_6
    }
    :try_start_8
    v1.close();
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    :cond_6
    :goto_6
    if (v3 == 0) {
//       if-eqz v3, :cond_7
    }
    :try_start_9
    v3.close();
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    :cond_7
    :goto_7
    throw v0
    :catch_5
    move-exception v1
    v1.printStackTrace();
    goto :goto_6
    :catch_6
    move-exception v1
    v1.printStackTrace();
    goto :goto_7
    :catchall_1
    move-exception v0
    goto :goto_5
    :catchall_2
    move-exception v0
    v1 = v2;
    goto :goto_5
    :catch_7
    move-exception v0
    v2 = v1;
    goto :goto_2
    :catch_8
    move-exception v0
    goto :goto_2
.end method
.method public static b()Ljava/lang/String;
    .locals 4
    .prologue
    v0 = Lcom/arcsoft/hpay100/config/l;->d;
    v1 = "dalongTest";
    v2 = new StringBuilder();
    v3 = "kfPhone:";
    v2.<init>(v3);
    v2 = v2.append(v0);
    v2 = v2.toString();
    Lcom/arcsoft/hpay100/a/a.b(v1, v2);
    return v0;
.end method
.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .prologue
    v0 = 0x0;
    v3 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v3
    :try_start_0
    v1 = "";
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :try_start_1
    v2 = "profiles";
    v4 = "deviceid";
    v5 = "";
    v2 = Lcom/arcsoft/hpay100/a/a.a(p0, v2, v4, v5);
    v4 = Landroid/support/design/widget/am.a(v2);
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    v2 = v0;
    :goto_0
    Landroid/support/design/widget/am.a(v2);
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    move-result v4
    if (v4 == 0) {
//       if-eqz v4, :cond_1
    }
    :goto_1
    monitor-exit v3
    return v0;
    :cond_0
    :try_start_2
    v4 = invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;
    v2 = Lcom/alipay/security/mobile/module/a/a/b.b(v4, v2);
    goto :goto_0
    :cond_1
    v0 = new a();
    v0.<init>();
    v0 = Lcom/alipay/b/a/a/a.a(v2);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v2 = "deviceId";
    v0 = v0.get(v2);
    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    goto :goto_1
    :catch_0
    move-exception v0
    :cond_2
    v0 = v1;
    goto :goto_1
    :catchall_0
    move-exception v0
    monitor-exit v3
    throw v0
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .prologue
    v0 = 0x0;
    v1 = "dalongTest";
    v2 = new StringBuilder();
    v3 = "http post2 request url:";
    v2.<init>(v3);
    v2 = v2.append(p1);
    v2 = v2.toString();
    Lcom/arcsoft/hpay100/a/a.b(v1, v2);
    v1 = Lcom/arcsoft/hpay100/a/a.j(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    v1 = "dalongTest";
    v2 = "net error";
    Lcom/arcsoft/hpay100/a/a.b(v1, v2);
    :cond_0
    :goto_0
    return v0;
    :cond_1
    :try_start_0
    Lcom/arcsoft/hpay100/b/c.a(p0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v2
    v1 = 0x0;
    :try_start_1
    v1 = Lcom/arcsoft/hpay100/b/c.a(p1, v1, p2);
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v3 = "UTF-8";
    v1 = v1.a(v3);
    :goto_1
    v3 = "dalongTest";
    v4 = new StringBuilder();
    v5 = "http request2 result:";
    v4.<init>(v5);
    v4 = v4.append(v1);
    v4 = v4.toString();
    Lcom/arcsoft/hpay100/a/a.b(v3, v4);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    v2.a();
    v0 = v1;
    goto :goto_0
    :catch_0
    move-exception v1
    v2 = v0;
    :goto_2
    :try_start_2
    v1.printStackTrace();
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v2.a();
    goto :goto_0
    :catchall_0
    move-exception v1
    v2 = v0;
    v0 = v1;
    :goto_3
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    v2.a();
    :cond_2
    throw v0
    :catchall_1
    move-exception v0
    goto :goto_3
    :catch_1
    move-exception v1
    goto :goto_2
    :cond_3
    v1 = v0;
    goto :goto_1
.end method
.method public static declared-synchronized b(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
    .prologue
    v1 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v1
    :try_start_0
    v0 = new a();
    v0.<init>(p0);
    v0.a(p1);
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v0
    monitor-exit v1
    return v0;
    :catchall_0
    move-exception v0
    monitor-exit v1
    throw v0
.end method
.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .prologue
    v0 = 0x0;
    v1 = 0x0;
    :try_start_0
    v2 = Landroid/support/design/widget/am.a(p0);
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    :goto_0
    return v0;
    :cond_0
    v2 = "SHA-1";
    v2 = Ljava/security/MessageDigest.getInstance(v2);
    v3 = "UTF-8";
    v3 = p0.getBytes(v3);
    v2.update(v3);
    v2 = v2.digest();
    v3 = new StringBuilder();
    v3.<init>();
    :goto_1
    v4 = v2.length;
    if (v1 >= v4) {
//       if-ge v1, v4, :cond_1
    }
    v4 = "%02x";
    v5 = 0x1;
    new-array v5, v5, [Ljava/lang/Object;
    v6 = 0x0;
    v7 = v2[v1];
    v7 = Ljava/lang/Byte.valueOf(v7);
    v5[v6] = v7;
    v4 = Ljava/lang/String.format(v4, v5);
    v3.append(v4);
    v1 = v1 + 0x1;
    goto :goto_1
    :cond_1
    v3.toString();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    goto :goto_0
    :catch_0
    move-exception v1
    goto :goto_0
.end method
.method public static b(Ljava/net/URL;)Ljava/net/URI;
    .locals 1
    .prologue
    v0 = p0.toURI();
    return v0;
.end method
.method public static b(Landroid/app/Activity;)V
    .locals 2
    .prologue
    v0 = new Intent();
    v1 = "android.intent.action.GET_CONTENT";
    v0.<init>(v1);
    v1 = "image/*";
    v0 = v0.setType(v1);
    v1 = 0x23ca;
    :try_start_0
    p0.startActivityForResult(v0, v1);
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    v0 = "crop pick error";
    Lcom/ushaqi/zhuishushenqi/util/e.a(p0, v0);
    goto :goto_0
.end method
.method public static b(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Advert;)V
    .locals 2
    .prologue
    if (p1 != 0) {
//       if-nez p1, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v0 = new StringBuilder();
    v1 = "zssq_ad_click_";
    v0.<init>(v1);
    v1 = p1.getPosition();
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = p1.getTitle();
    Lcom/umeng/a/b.a(p0, v0, v1);
    goto :goto_0
.end method
.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .prologue
    v1 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v1
    :try_start_0
    v0 = "vkeyid_settings";
    v2 = 0x0;
    v0 = p0.getSharedPreferences(v0, v2);
    v0 = v0.edit();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v2 = invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;
    v2 = Lcom/alipay/security/mobile/module/a/a/b.a(v2, p1);
    v3 = "vkey_applist_version";
    v0.putString(v3, v2);
    v0.commit();
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :cond_0
    :goto_0
    monitor-exit v1
    return;
    :catchall_0
    move-exception v0
    monitor-exit v1
    throw v0
    :catch_0
    move-exception v0
    goto :goto_0
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;F)V
    .locals 1
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v0 = Lcom/arcsoft/hpay100/a/a.P(p0);
    v0.putFloat(p1, p2);
    v0.apply();
    goto :goto_0
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v0 = Lcom/arcsoft/hpay100/a/a.P(p0);
    v0.putInt(p1, p2);
    v0.apply();
    goto :goto_0
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v0 = Lcom/arcsoft/hpay100/a/a.P(p0);
    v0.putLong(p1, p2, p3);
    v0.apply();
    goto :goto_0
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .prologue
    sput-object p1, Lcom/arcsoft/hpay100/a/a;->d:Ljava/lang/String;
    sput-object p2, Lcom/arcsoft/hpay100/a/a;->e:Ljava/lang/String;
    sput-object p3, Lcom/arcsoft/hpay100/a/a;->f:Ljava/lang/String;
    v0 = "CIPHER_BOOK_ID";
    Lcom/arcsoft/hpay100/a/a.e(p0, v0, p1);
    v0 = "CIPHER_TOC_ID";
    Lcom/arcsoft/hpay100/a/a.e(p0, v0, p2);
    v0 = "CIPHER_CHECKSUM";
    Lcom/arcsoft/hpay100/a/a.e(p0, v0, p3);
    return;
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v0 = Lcom/arcsoft/hpay100/a/a.P(p0);
    v0.putBoolean(p1, p2);
    v0.apply();
    goto :goto_0
.end method
.method public static b(Ljava/io/Closeable;)V
    .locals 1
    .prologue
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    :try_start_0
    p0.close();
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    :cond_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    throw v0
    :catch_1
    move-exception v0
    goto :goto_0
.end method
.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = Lcom/arcsoft/hpay100/config/w;->b;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    Landroid/util/Log.e(p0, p1);
    :cond_0
    return;
.end method
.method public static b([Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->FEED_ADD;
    Lcom/arcsoft/hpay100/a/a.a(p0, v0);
    return;
.end method
.method public static b(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1
    .prologue
    :try_start_0
    v0 = Lcom/arcsoft/hpay100/a/a.a(p1);
    Lcom/arcsoft/hpay100/a/a.a(v0, p0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result v0
    :goto_0
    return v0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = 0x0;
    goto :goto_0
.end method
.method public static c(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .prologue
    v0 = "mistat";
    v1 = 0x0;
    v0 = p0.getSharedPreferences(v0, v1);
    v0 = v0.getInt(p1, p2);
    return v0
.end method
.method private static c(Ljava/lang/String;I)I
    .locals 2
    .prologue
    :goto_0
    v0 = p0.length();
    if (p1 >= v0) {
//       if-ge p1, v0, :cond_1
    }
    v0 = p0.charAt(p1);
    v1 = 0x20;
    if (v0 == v1) {
//       if-eq v0, v1, :cond_0
    }
    v1 = 0x9;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_1
    }
    :cond_0
    p1 = p1 + 0x1;
    goto :goto_0
    :cond_1
    return p1
.end method
.method public static c(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return p2;
    :cond_0
    v0 = Landroid/preference/PreferenceManager.getDefaultSharedPreferences(p0);
    p2 = v0.getLong(p1, p2, p3);
    goto :goto_0
.end method
.method public static c()Ljava/lang/String;
    .locals 4
    .prologue
    v0 = Lcom/arcsoft/hpay100/config/l;->e;
    v1 = "dalongTest";
    v2 = new StringBuilder();
    v3 = "appname:";
    v2.<init>(v3);
    v2 = v2.append(v0);
    v2 = v2.toString();
    Lcom/arcsoft/hpay100/a/a.b(v1, v2);
    return v0;
.end method
.method public static c(I)Ljava/lang/String;
    .locals 6
    .prologue
    int-to-double v0, p0
    v2 = 0x4090000000000000L    # 1024.0;
    v4 = 0x4000000000000000L    # 2.0;
    v2 = Ljava/lang/Math.pow(v2, v3, v4, v5);
    v0 /= v2;
    v0 = Ljava/lang/Math.floor(v0, v1);
    v2 = new DecimalFormat();
    v3 = "0.0";
    v2.<init>(v3);
    v3 = new StringBuilder();
    v3.<init>();
    v0 = v2.format(v0, v1);
    v0 = v3.append(v0);
    v1 = "MB";
    v0 = v0.append(v1);
    v0 = v0.toString();
    return v0;
.end method
.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .prologue
    v0 = new l();
    v0.<init>();
    v3 = "images";
    v4 = 0x1;
    v5 = 0x0;
    v1 = p0;
    v2 = p1;
    v0 = v0.downloadCache(..v5);
    return v0;
.end method
.method public static declared-synchronized c(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
    .prologue
    v1 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v1
    :try_start_0
    v0 = invoke-static {}, Lcom/alipay/b/a/g;->a()Ljava/lang/String;
    Landroid/support/design/widget/am.a(v0);
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result v2
    if (v2 != 0) {
//       if-nez v2, :cond_1
    }
    :cond_0
    :goto_0
    monitor-exit v1
    return v0;
    :cond_1
    :try_start_1
    v0 = Landroid/support/design/widget/am.a(p0);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v2 = v0.a();
    v2 = Landroid/support/design/widget/am.a(v2);
    if (v2 != 0) {
//       if-nez v2, :cond_2
    }
    v0 = v0.a();
    goto :goto_0
    :cond_2
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0);
    v2 = Landroid/support/design/widget/am.a(v0);
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v0 = new HashMap();
    v0.<init>();
    v2 = "utdid";
    v3 = "utdid";
    v4 = "";
    v3 = Landroid/support/design/widget/am.a(p1, v3, v4);
    v0.put(v2, v3);
    v2 = "tid";
    v3 = "tid";
    v4 = "";
    v3 = Landroid/support/design/widget/am.a(p1, v3, v4);
    v0.put(v2, v3);
    v2 = "userId";
    v3 = "userId";
    v4 = "";
    v3 = Landroid/support/design/widget/am.a(p1, v3, v4);
    v0.put(v2, v3);
    v2 = Lcom/alipay/b/e/a.a(p0);
    v3 = 0x0;
    v4 = 0x0;
    v2.a(v3, v0, v4);
    Landroid/support/design/widget/am.d(p0);
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    move-result-object v0
    goto :goto_0
    :catchall_0
    move-exception v0
    monitor-exit v1
    throw v0
.end method
.method public static c([B)Ljava/lang/String;
    .locals 7
    .prologue
    v1 = 0x0;
    v2 = p0.length;
    v3 = new StringBuffer();
    v3.<init>();
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    v0 = v1;
    :goto_0
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_0
    }
    v4 = "%02x";
    v5 = 0x1;
    new-array v5, v5, [Ljava/lang/Object;
    v6 = p0[v0];
    v6 = Ljava/lang/Byte.valueOf(v6);
    v5[v1] = v6;
    v4 = Ljava/lang/String.format(v4, v5);
    v3.append(v4);
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_0
    v0 = v3.toString();
    return v0;
.end method
.method public static c(Ljava/io/File;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .prologue
    v1 = new ArrayList();
    v1.<init>();
    v2 = p0.listFiles();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v3 = v2.length;
    v0 = 0x0;
    :goto_0
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_0
    }
    v4 = v2[v0];
    v4 = v4.getName();
    v1.add(v4);
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_0
    return v1;
.end method
.method public static c(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Lorg/litepal/d/a/b;
    .locals 4
    .prologue
    v1 = 0x0;
    v0 = Lcom/arcsoft/hpay100/a/a.b(p0, p1);
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v0 = new b();
    v0.<init>();
    v0.a(p0);
    v2 = new StringBuilder();
    v3 = "pragma table_info(";
    v2.<init>(v3);
    v2 = v2.append(p0);
    v3 = ")";
    v2 = v2.append(v3);
    v2 = v2.toString();
    v3 = 0x0;
    :try_start_0
    v1 = p1.rawQuery(v2, v3);
    v2 = v1.moveToFirst();
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    :cond_0
    v2 = "name";
    v2 = v1.getColumnIndexOrThrow(v2);
    v2 = v1.getString(v2);
    v3 = "type";
    v3 = v1.getColumnIndexOrThrow(v3);
    v3 = v1.getString(v3);
    v0.a(v2, v3);
    v1.moveToNext();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result v2
    if (v2 != 0) {
//       if-nez v2, :cond_0
    }
    :cond_1
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v1.close();
    :cond_2
    return v0;
    :catch_0
    move-exception v0
    :try_start_1
    v0.printStackTrace();
    v2 = new DatabaseGenerateException();
    v0 = v0.getMessage();
    v2.<init>(v0);
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    :catchall_0
    move-exception v0
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v1.close();
    :cond_3
    throw v0
    :cond_4
    v0 = new DatabaseGenerateException();
    v1 = new StringBuilder();
    v2 = "Table doesn\'t exist when executing ";
    v1.<init>(v2);
    v1 = v1.append(p0);
    v1 = v1.toString();
    v0.<init>(v1);
    throw v0
.end method
.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .prologue
    v0 = new HashMap();
    v0.<init>();
    v1 = "uid";
    v2 = Lcom/ushaqi/zhuishushenqi/util/e.c(p0);
    v0.put(v1, v2);
    Lcom/a/a/a.a(p0, p2, p1, v0);
    return;
.end method
.method public static c(Ljava/io/Closeable;)V
    .locals 1
    .prologue
    :try_start_0
    p0.close();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    goto :goto_0
.end method
.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .prologue
    v0 = "PullToRefresh";
    v1 = new StringBuilder();
    v2 = "You\'re using the deprecated ";
    v1.<init>(v2);
    v1 = v1.append(p0);
    v2 = " attr, please switch over to ";
    v1 = v1.append(v2);
    v1 = v1.append(p1);
    v1 = v1.toString();
    Landroid/util/Log.w(v0, v1);
    return;
.end method
.method public static varargs c([Ljava/lang/String;)V
    .locals 6
    .prologue
    v0 = 0x0;
    if (p0 == 0) {
//       if-eqz p0, :cond_2
    }
    v4 = p0.length;
    if (v4 <= 0) {
//       if-lez v4, :cond_2
    }
    v2 = p0[v0];
    v5 = "?";
    v1 = Landroid/text/TextUtils.isEmpty(v2);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = Landroid/text/TextUtils.isEmpty(v5);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = v2.indexOf(v5);
    v3 = v2;
    :goto_0
    v2 = -0x1;
    if (v1 != v2) {
//       if-ne v1, v2, :cond_1
    }
    :cond_0
    v0 = v0 + 0x1;
    if (v4 == v0) {
//       if-eq v4, v0, :cond_2
    }
    v0 = new DataSupportException();
    v1 = "The parameters in conditions are incorrect.";
    v0.<init>(v1);
    throw v0
    :cond_1
    v2 = v0 + 0x1;
    v0 = v5.length();
    v0 += v1;
    v1 = v3.substring(v0);
    v0 = v1.indexOf(v5);
    v3 = v1;
    v1 = v0;
    v0 = v2;
    goto :goto_0
    :cond_2
    return;
.end method
.method public static c(Landroid/content/Context;)Z
    .locals 4
    .prologue
    v0 = 0x1;
    :try_start_0
    v1 = "vkeyid_settings";
    v2 = "log_switch";
    v3 = "";
    v1 = Lcom/arcsoft/hpay100/a/a.a(p0, v1, v2, v3);
    v2 = Landroid/support/design/widget/am.a(v1);
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    :cond_0
    :goto_0
    return v0
    :cond_1
    v2 = invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;
    v1 = Lcom/alipay/security/mobile/module/a/a/b.b(v2, v1);
    v2 = Landroid/support/design/widget/am.a(v1);
    if (v2 != 0) {
//       if-nez v2, :cond_0
    }
    v2 = "1";
    v1.equals(v2);
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    move-result v0
    goto :goto_0
    :catch_0
    move-exception v1
    goto :goto_0
.end method
.method public static c(Ljava/lang/String;)Z
    .locals 5
    .prologue
    v1 = 0x1;
    v0 = 0x0;
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    v3 = p0.length();
    if (v3 != 0) {
//       if-nez v3, :cond_2
    }
    :cond_0
    v0 = v1;
    :cond_1
    :goto_0
    return v0
    :cond_2
    v2 = v0;
    :goto_1
    if (v2 >= v3) {
//       if-ge v2, v3, :cond_3
    }
    v4 = p0.charAt(v2);
    v4 = Ljava/lang/Character.isWhitespace(v4);
    if (v4 == 0) {
//       if-eqz v4, :cond_1
    }
    v2 = v2 + 0x1;
    goto :goto_1
    :cond_3
    v0 = v1;
    goto :goto_0
.end method
.method public static d(I)I
    .locals 1
    .prologue
    v0 = 0x2;
    sparse-switch p0, :sswitch_data_0
    :goto_0
    :sswitch_0
    return v0
    :sswitch_1
    v0 = 0x0;
    goto :goto_0
    :sswitch_2
    v0 = 0x1;
    goto :goto_0
    :sswitch_3
    v0 = 0x3;
    goto :goto_0
    :sswitch_4
    v0 = 0x4;
    goto :goto_0
    nop
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x32 -> :sswitch_0
        0x64 -> :sswitch_3
        0xc8 -> :sswitch_4
    .end sparse-switch
.end method
.method public static d(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .prologue
    v0 = "drawable";
    v0 = Lcom/arcsoft/hpay100/a/a.b(p0, v0, p1);
    return v0
.end method
.method public static d(Landroid/content/Context;)J
    .locals 5
    .prologue
    v0 = 0x0;
    :try_start_0
    v2 = "vkeyid_settings";
    v3 = 0x0;
    v2 = p0.getSharedPreferences(v2, v3);
    v3 = "vkey_valid";
    v4 = "";
    v2 = v2.getString(v3, v4);
    v3 = Landroid/support/design/widget/am.a(v2);
    if (v3 == 0) {
//       if-eqz v3, :cond_1
    }
    :cond_0
    :goto_0
    return v0;
    :cond_1
    v3 = invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;
    v2 = Lcom/alipay/security/mobile/module/a/a/b.b(v3, v2);
    v3 = Landroid/support/design/widget/am.a(v2);
    if (v3 != 0) {
//       if-nez v3, :cond_0
    }
    Ljava/lang/Long.parseLong(v2);
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    move-result-wide v0
    goto :goto_0
    :catch_0
    move-exception v2
    goto :goto_0
.end method
.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return p2;
    :cond_0
    v0 = Landroid/preference/PreferenceManager.getDefaultSharedPreferences(p0);
    p2 = v0.getString(p1, p2);
    goto :goto_0
.end method
.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .prologue
    v0 = 0x0;
    v2 = new StringBuilder();
    v2.<init>();
    :try_start_0
    v1 = new File();
    v1.<init>(p0);
    v1 = v1.exists();
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    :goto_0
    return v0;
    :cond_0
    v1 = new BufferedReader();
    v3 = new InputStreamReader();
    v4 = new FileInputStream();
    v4.<init>(p0);
    v5 = "UTF-8";
    v3.<init>(v4, v5);
    v1.<init>(v3);
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :goto_1
    :try_start_1
    v0 = v1.readLine();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v2.append(v0);
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    goto :goto_1
    :catch_0
    move-exception v0
    v0 = v1;
    :goto_2
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :try_start_2
    v0.close();
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    :cond_1
    :goto_3
    v0 = v2.toString();
    goto :goto_0
    :cond_2
    :try_start_3
    v1.close();
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    goto :goto_3
    :catch_1
    move-exception v0
    goto :goto_3
    :catchall_0
    move-exception v1
    v6 = v1;
    v1 = v0;
    v0 = v6;
    :goto_4
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    :try_start_4
    v1.close();
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    :cond_3
    :goto_5
    throw v0
    :catch_2
    move-exception v0
    goto :goto_3
    :catch_3
    move-exception v1
    goto :goto_5
    :catchall_1
    move-exception v0
    goto :goto_4
    :catch_4
    move-exception v1
    goto :goto_2
.end method
.method public static d([B)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_1
    }
    :cond_0
    :goto_0
    return v0;
    :cond_1
    v1 = Lcom/arcsoft/hpay100/a/a.e(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = Lcom/mob/tools/b/d.a(v1);
    goto :goto_0
.end method
.method public static d(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .prologue
    v0 = "mistat";
    v1 = 0x0;
    v0 = p0.getSharedPreferences(v0, v1);
    v0 = v0.edit();
    v0.putInt(p1, p2);
    v0.commit();
    return;
.end method
.method public static d(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v0 = Lcom/arcsoft/hpay100/a/a.P(p0);
    v0.putLong(p1, p2, p3);
    v0.apply();
    goto :goto_0
.end method
.method public static d()Z
    .locals 2
    .prologue
    v0 = "mounted";
    v1 = invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    v0 = v0.equals(v1);
    return v0
.end method
.method public static d(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .prologue
    v4 = 0x10;
    v2 = 0x0;
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    if (p1 != 0) {
//       if-nez p1, :cond_1
    }
    :cond_0
    v4 = 0x0;
    :goto_0
    return v4;
    :cond_1
    v0 = "UTF-8";
    v0 = p0.getBytes(v0);
    new-array v3, v4, [B
    v1 = v0.length;
    v1 = Ljava/lang/Math.min(v1, v4);
    Ljava/lang/System.arraycopy(v0, v2, v3, v2, v1);
    v0 = "UTF-8";
    v1 = p1.getBytes(v0);
    v4 = new SecretKeySpec();
    v0 = "AES";
    v4.<init>(v3, v0);
    v0 = "AES/ECB/PKCS7Padding";
    v3 = "BC";
    v0 = Ljavax/crypto/Cipher.getInstance(v0, v3);
    v3 = 0x1;
    v0.init(v3, v4);
    v3 = v1.length;
    v3 = v0.getOutputSize(v3);
    new-array v4, v3, [B
    v3 = v1.length;
    v5 = v2;
    v1 = v0.update(..v5);
    v0.doFinal(v4, v1);
    goto :goto_0
.end method
.method public static e(I)I
    .locals 1
    .prologue
    v0 = 0x32;
    packed-switch p0, :pswitch_data_0
    :goto_0
    :pswitch_0
    return v0
    :pswitch_1
    v0 = 0xa;
    goto :goto_0
    :pswitch_2
    v0 = 0x14;
    goto :goto_0
    :pswitch_3
    v0 = 0x64;
    goto :goto_0
    :pswitch_4
    v0 = 0xc8;
    goto :goto_0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
.method public static e(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .prologue
    v0 = "string";
    v0 = Lcom/arcsoft/hpay100/a/a.b(p0, v0, p1);
    return v0
.end method
.method public static e(Ljava/lang/String;)I
    .locals 4
    .prologue
    :try_start_0
    Ljava/lang/Long.parseLong(p0);
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-wide v0
    v2 = 0x7fffffff;
    cmp-long v2, v0, v2
    if (v2 <= 0) {
//       if-lez v2, :cond_0
    }
    v0 = 0x7fffffff;
    :goto_0
    return v0
    :cond_0
    v2 = 0x0;
    cmp-long v2, v0, v2
    if (v2 >= 0) {
//       if-gez v2, :cond_1
    }
    v0 = 0x0;
    goto :goto_0
    :cond_1
    long-to-int v0, v0
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = -0x1;
    goto :goto_0
.end method
.method public static e()J
    .locals 6
    .prologue
    invoke-static {}, Lcom/arcsoft/hpay100/a/a;->d()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = 0x0;
    :try_start_0
    v2 = invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    v3 = new StatFs();
    v2 = v2.getPath();
    v3.<init>(v2);
    v2 = v3.getBlockSize();
    int-to-long v4, v2
    v2 = v3.getAvailableBlocks();
    int-to-long v2, v2
    v2 *= v4;
    v4 = 0x400;
    v0 = v2 / v4;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v2
    v2.printStackTrace();
    goto :goto_0
    :cond_0
    v0 = -0x1;
    goto :goto_0
.end method
.method public static e(Landroid/content/Context;Ljava/lang/String;J)J
    .locals 2
    .prologue
    v0 = "mistat";
    v1 = 0x0;
    v0 = p0.getSharedPreferences(v0, v1);
    v0 = v0.getLong(p1, p2, p3);
    return v0;
.end method
.method public static declared-synchronized e(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .prologue
    v1 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v1
    :try_start_0
    v0 = "vkeyid_settings";
    v2 = 0x0;
    v0 = p0.getSharedPreferences(v0, v2);
    v2 = "vkey_applist";
    v3 = "";
    v0 = v0.getString(v2, v3);
    v2 = Landroid/support/design/widget/am.a(v0);
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v0 = "";
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :cond_0
    :goto_0
    monitor-exit v1
    return v0;
    :cond_1
    :try_start_1
    v2 = invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;
    v0 = Lcom/alipay/security/mobile/module/a/a/b.b(v2, v0);
    v2 = Landroid/support/design/widget/am.a(v0);
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v0 = "";
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    goto :goto_0
    :catch_0
    move-exception v0
    :try_start_2
    v0 = "";
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    goto :goto_0
    :catchall_0
    move-exception v0
    monitor-exit v1
    throw v0
.end method
.method public static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .prologue
    v0 = 0x0;
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    if (p1 != 0) {
//       if-nez p1, :cond_1
    }
    :cond_0
    :goto_0
    return v0;
    :cond_1
    :try_start_0
    v1 = Lcom/arcsoft/hpay100/a/a.d(p1, p0);
    v2 = 0x0;
    v0 = Landroid/util/Base64.encodeToString(v1, v2);
    v1 = Landroid/text/TextUtils.isEmpty(v0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "\n";
    v1 = v0.contains(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1 = "\n";
    v2 = "";
    v0.replace(v1, v2);
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    goto :goto_0
    :catch_0
    move-exception v1
    v2 = invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;
    v2.w(v1);
    goto :goto_0
.end method
.method public static e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return;
    :cond_0
    v0 = Lcom/arcsoft/hpay100/a/a.P(p0);
    v0.putString(p1, p2);
    v0.apply();
    goto :goto_0
.end method
.method public static e([B)[B
    .locals 3
    .prologue
    v1 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return v1;
    :cond_0
    :try_start_0
    v2 = new ByteArrayInputStream();
    v2.<init>(p0);
    v0 = Lcom/arcsoft/hpay100/a/a.a(v2);
    v2.close();
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    :goto_1
    v1 = v0;
    goto :goto_0
    :catch_0
    move-exception v0
    v2 = invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;
    v2.w(v0);
    v0 = v1;
    goto :goto_1
.end method
.method public static f(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .prologue
    v0 = "layout";
    v0 = Lcom/arcsoft/hpay100/a/a.b(p0, v0, p1);
    return v0
.end method
.method public static f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .prologue
    v0 = 0x0;
    v1 = Landroid/text/TextUtils.isEmpty(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    :cond_0
    :goto_0
    return v0;
    :cond_1
    v1 = new File();
    v1.<init>(p0);
    v2 = 0x1;
    v3 = v1.exists();
    if (v3 == 0) {
//       if-eqz v3, :cond_0
    }
    v3 = new FileInputStream();
    v3.<init>(v1);
    v0 = Lcom/arcsoft/hpay100/a/a.a(v3, v2);
    v3.close();
    goto :goto_0
.end method
.method public static declared-synchronized f(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .prologue
    v1 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v1
    :try_start_0
    v0 = "vkeyid_settings";
    v2 = 0x0;
    v0 = p0.getSharedPreferences(v0, v2);
    v2 = "vkey_applist_version";
    v3 = "";
    v0 = v0.getString(v2, v3);
    v2 = Landroid/support/design/widget/am.a(v0);
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    v0 = "";
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :cond_0
    :goto_0
    monitor-exit v1
    return v0;
    :cond_1
    :try_start_1
    v2 = invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;
    v0 = Lcom/alipay/security/mobile/module/a/a/b.b(v2, v0);
    v2 = Landroid/support/design/widget/am.a(v0);
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v0 = "";
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    goto :goto_0
    :catch_0
    move-exception v0
    :try_start_2
    v0 = "";
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    goto :goto_0
    :catchall_0
    move-exception v0
    monitor-exit v1
    throw v0
.end method
.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = "mistat";
    v1 = 0x0;
    v0 = p0.getSharedPreferences(v0, v1);
    v0 = v0.getString(p1, p2);
    return v0;
.end method
.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .prologue
    v0 = Ljava/net/URLEncoder.encode(p0, p1);
    v1 = Landroid/text/TextUtils.isEmpty(v0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    :goto_0
    return v0;
    :cond_0
    v1 = "+";
    v2 = "%20";
    v0 = v0.replace(v1, v2);
    goto :goto_0
.end method
.method public static f()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/db/BookFile;",
            ">;"
        }
    .end annotation
    .prologue
    v1 = new ArrayList();
    v1.<init>();
    v0 = Lcom/ushaqi/zhuishushenqi/c;->g;
    v0 = Lcom/arcsoft/hpay100/a/a.J(v0);
    v2 = v0.listFiles();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v3 = v2.length;
    v0 = 0x0;
    :goto_0
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_0
    }
    v4 = v2[v0];
    v5 = new BookFile();
    v5.<init>();
    v6 = v4.length();
    v8 = 0x1;
    v6 = Lcom/arcsoft/hpay100/a/a.a(v6, v7, v8);
    v5.setSize(v6);
    v4 = v4.getName();
    v5.setName(v4);
    v1.add(v5);
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_0
    return v1;
.end method
.method public static f(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2
    .prologue
    v0 = "mistat";
    v1 = 0x0;
    v0 = p0.getSharedPreferences(v0, v1);
    v0 = v0.edit();
    v0.putLong(p1, p2, p3);
    v0.commit();
    return;
.end method
.method public static f(I)Z
    .locals 2
    .prologue
    v0 = 0x1;
    v1 = 0x4;
    if (p0 == v1) {
//       if-eq p0, v1, :cond_0
    }
    if (p0 == v0) {
//       if-eq p0, v0, :cond_0
    }
    v1 = 0x2;
    if (p0 != v1) {
//       if-ne p0, v1, :cond_1
    }
    :cond_0
    :goto_0
    return v0
    :cond_1
    v0 = 0x0;
    goto :goto_0
.end method
.method public static f([B)[B
    .locals 6
    .prologue
    v0 = 0x0;
    v4 = 0x0;
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    v1 = p0.length;
    if (v1 > 0) {
//       if-gtz v1, :cond_1
    }
    :cond_0
    :goto_0
    return v0;
    :cond_1
    v2 = new Deflater();
    v2.<init>();
    v2.setInput(p0);
    v2.finish();
    v1 = 0x2000;
    new-array v3, v1, [B
    sput v4, Lcom/arcsoft/hpay100/a/a;->a:I
    :try_start_0
    v1 = new ByteArrayOutputStream();
    v1.<init>();
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    :goto_1
    :try_start_1
    v0 = v2.finished();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v2.end();
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    v1.close();
    v0 = v1.toByteArray();
    goto :goto_0
    :cond_2
    :try_start_2
    v0 = v2.deflate(v3);
    v4 = Lcom/arcsoft/hpay100/a/a;->a;
    v4 += v0;
    sput v4, Lcom/arcsoft/hpay100/a/a;->a:I
    v4 = 0x0;
    v1.write(v3, v4, v0);
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    goto :goto_1
    :catchall_0
    move-exception v0
    :goto_2
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v1.close();
    :cond_3
    throw v0
    :catchall_1
    move-exception v1
    v5 = v1;
    v1 = v0;
    v0 = v5;
    goto :goto_2
.end method
.method public static g(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .prologue
    v0 = "id";
    v0 = Lcom/arcsoft/hpay100/a/a.b(p0, v0, p1);
    return v0
.end method
.method public static g(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;
    .locals 2
    .prologue
    v0 = p0.toLowerCase();
    v1 = "png";
    v1 = v0.endsWith(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = "gif";
    v1 = v0.endsWith(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    :cond_0
    v0 = Landroid/graphics/Bitmap$CompressFormat;->PNG;
    :goto_0
    return v0;
    :cond_1
    v1 = "jpg";
    v1 = v0.endsWith(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_2
    }
    v1 = "jpeg";
    v1 = v0.endsWith(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_2
    }
    v1 = "bmp";
    v1 = v0.endsWith(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_2
    }
    v1 = "tif";
    v0 = v0.endsWith(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    :cond_2
    v0 = Landroid/graphics/Bitmap$CompressFormat;->JPEG;
    goto :goto_0
    :cond_3
    v0 = Lcom/arcsoft/hpay100/a/a.W(p0);
    v1 = "png";
    v1 = v0.endsWith(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_4
    }
    v1 = "gif";
    v0 = v0.endsWith(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    :cond_4
    v0 = Landroid/graphics/Bitmap$CompressFormat;->PNG;
    goto :goto_0
    :cond_5
    v0 = Landroid/graphics/Bitmap$CompressFormat;->JPEG;
    goto :goto_0
.end method
.method public static g(I)Ljava/lang/String;
    .locals 1
    .prologue
    packed-switch p0, :pswitch_data_0
    v0 = "mix";
    :goto_0
    return v0;
    :pswitch_0
    v0 = "mix";
    goto :goto_0
    :pswitch_1
    v0 = "zhineng";
    goto :goto_0
    :pswitch_2
    v0 = "shenma";
    goto :goto_0
    :pswitch_3
    v0 = "baidu";
    goto :goto_0
    :pswitch_4
    v0 = "tieba";
    goto :goto_0
    :pswitch_5
    v0 = "soso";
    goto :goto_0
    :pswitch_6
    v0 = "sogou";
    goto :goto_0
    :pswitch_7
    v0 = "leidian";
    goto :goto_0
    :pswitch_8
    v0 = "easou";
    goto :goto_0
    :pswitch_9
    v0 = "zhuishuvip";
    goto :goto_0
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method
.method private static g([B)Ljava/lang/String;
    .locals 4
    .prologue
    v3 = 0x3;
    v2 = 0x4;
    new-array v0, v2, [B
    fill-array-data v0, :array_0
    new-array v1, v2, [B
    fill-array-data v1, :array_1
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    v0 = "jpg";
    :goto_0
    return v0;
    :cond_1
    new-array v0, v2, [B
    fill-array-data v0, :array_2
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = "png";
    goto :goto_0
    :cond_2
    v0 = "GIF";
    v0 = v0.getBytes();
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = "gif";
    goto :goto_0
    :cond_3
    v0 = "BM";
    v0 = v0.getBytes();
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v0 = "bmp";
    goto :goto_0
    :cond_4
    new-array v0, v3, [B
    fill-array-data v0, :array_3
    new-array v1, v3, [B
    fill-array-data v1, :array_4
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0);
    if (v0 != 0) {
//       if-nez v0, :cond_5
    }
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    :cond_5
    v0 = "tif";
    goto :goto_0
    :cond_6
    v0 = 0x0;
    goto :goto_0
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x20t
    .end array-data
    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x1ft
    .end array-data
    :array_2
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
    .end array-data
    :array_3
    .array-data 1
        0x49t
        0x49t
        0x2at
    .end array-data
    :array_4
    .array-data 1
        0x4dt
        0x4dt
        0x2at
    .end array-data
.end method
.method public static declared-synchronized g(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .prologue
    v1 = Lcom/arcsoft/hpay100/a/a;;
    monitor-enter v1
    :try_start_0
    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->a()Lcom/alipay/security/mobile/module/b/d;
    v2 = new HashMap();
    v2.<init>();
    v0 = "AE1";
    v3 = invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->b()Ljava/lang/String;
    v2.put(v0, v3);
    v3 = "AE2";
    v4 = new StringBuilder();
    v4.<init>();
    invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->c()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = "1";
    :goto_0
    v0 = v4.append(v0);
    v0 = v0.toString();
    v2.put(v3, v0);
    v3 = "AE3";
    v4 = new StringBuilder();
    v4.<init>();
    v0 = Lcom/alipay/security/mobile/module/b/d.a(p0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = "1";
    :goto_1
    v0 = v4.append(v0);
    v0 = v0.toString();
    v2.put(v3, v0);
    v0 = "AE4";
    v3 = invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->d()Ljava/lang/String;
    v2.put(v0, v3);
    v0 = "AE5";
    v3 = invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->e()Ljava/lang/String;
    v2.put(v0, v3);
    v0 = "AE6";
    v3 = invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->f()Ljava/lang/String;
    v2.put(v0, v3);
    v0 = "AE7";
    v3 = invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->g()Ljava/lang/String;
    v2.put(v0, v3);
    v0 = "AE8";
    v3 = invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->h()Ljava/lang/String;
    v2.put(v0, v3);
    v0 = "AE9";
    v3 = invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->i()Ljava/lang/String;
    v2.put(v0, v3);
    v0 = "AE10";
    v3 = invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->j()Ljava/lang/String;
    v2.put(v0, v3);
    v0 = "AE11";
    v3 = invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->k()Ljava/lang/String;
    v2.put(v0, v3);
    v0 = "AE12";
    v3 = invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->l()Ljava/lang/String;
    v2.put(v0, v3);
    v0 = "AE13";
    v3 = invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->m()Ljava/lang/String;
    v2.put(v0, v3);
    v0 = "AE14";
    v3 = invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->n()Ljava/lang/String;
    v2.put(v0, v3);
    v0 = "AE15";
    v3 = invoke-static {}, Lcom/alipay/security/mobile/module/b/d;->o()Ljava/lang/String;
    v2.put(v0, v3);
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    monitor-exit v1
    return v2;
    :cond_0
    :try_start_1
    v0 = "0";
    goto/16 :goto_0
    :cond_1
    v0 = "0";
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    goto :goto_1
    :catchall_0
    move-exception v0
    monitor-exit v1
    throw v0
.end method
.method public static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .prologue
    v0 = "mistat";
    v1 = 0x0;
    v0 = p0.getSharedPreferences(v0, v1);
    v0 = v0.edit();
    v0.putString(p1, p2);
    v0.commit();
    return;
.end method
.method public static g()Z
    .locals 2
    .prologue
    v0 = Landroid/os/Build$VERSION;->SDK_INT;
    v1 = 0xb;
    if (v0 < v1) {
//       if-lt v0, v1, :cond_0
    }
    v0 = 0x1;
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static g(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .prologue
    v0 = 0x0;
    v1 = Landroid/text/TextUtils.isEmpty(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    v1 = Landroid/text/TextUtils.isEmpty(p1);
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    :cond_0
    :goto_0
    return v0
    :cond_1
    v1 = new File();
    v1.<init>(p0);
    v1 = v1.exists();
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    :try_start_0
    v1 = new FileInputStream();
    v1.<init>(p0);
    v2 = new FileOutputStream();
    v2.<init>(p1);
    Lcom/arcsoft/hpay100/a/a.a(v1, v2);
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    v0 = 0x1;
    goto :goto_0
    :catch_0
    move-exception v1
    goto :goto_0
.end method
.method public static h(Landroid/content/Context;)Lcom/alipay/security/mobile/module/http/a;
    .locals 1
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    v0 = 0x0;
    :goto_0
    return v0;
    :cond_0
    v0 = Lcom/alipay/security/mobile/module/http/b.a(p0);
    goto :goto_0
.end method
.method public static h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .prologue
    v0 = new StringBuilder();
    v0.<init>();
    v1 = p0.getFilesDir();
    v1 = v1.getAbsolutePath();
    v0 = v0.append(v1);
    v1 = "/Mob/cache/";
    v0 = v0.append(v1);
    v0 = v0.toString();
    v1 = Lcom/mob/tools/b/a.a(p0);
    invoke-static {}, Lcom/mob/tools/b/a;->p()Z
    move-result v2
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v0 = new StringBuilder();
    v0.<init>();
    v2 = invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    v2 = v2.getAbsolutePath();
    v0 = v0.append(v2);
    v2 = "/Mob/";
    v0 = v0.append(v2);
    v1 = v1.k();
    v0 = v0.append(v1);
    v1 = "/cache/";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :cond_0
    v1 = Landroid/text/TextUtils.isEmpty(p1);
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    v1 = new StringBuilder();
    v1.<init>();
    v0 = v1.append(v0);
    v0 = v0.append(p1);
    v1 = "/";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :cond_1
    v1 = new File();
    v1.<init>(v0);
    v2 = v1.exists();
    if (v2 != 0) {
//       if-nez v2, :cond_2
    }
    v1.mkdirs();
    :cond_2
    return v0;
.end method
.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_1
    }
    :cond_0
    :goto_0
    return v0;
    :cond_1
    v1 = Lcom/arcsoft/hpay100/a/a.i(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = Lcom/mob/tools/b/d.a(v1);
    goto :goto_0
.end method
.method public static h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .prologue
    :try_start_0
    v0 = new StringBuilder();
    v0.<init>();
    v0 = v0.append(p0);
    v1 = ":";
    v0 = v0.append(v1);
    v0 = v0.append(p1);
    v0 = v0.toString();
    v1 = "ISO-8859-1";
    v0 = v0.getBytes(v1);
    v0 = Lokio/ByteString.of(v0);
    v0 = v0.base64();
    v1 = new StringBuilder();
    v2 = "Basic ";
    v1.<init>(v2);
    v0 = v1.append(v0);
    v0.toString();
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    return v0;
    :catch_0
    move-exception v0
    v0 = new AssertionError();
    v0.<init>();
    throw v0
.end method
.method public static h()Z
    .locals 2
    .prologue
    v0 = Landroid/os/Build$VERSION;->SDK_INT;
    v1 = 0xe;
    if (v0 < v1) {
//       if-lt v0, v1, :cond_0
    }
    v0 = 0x1;
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static h(I)Z
    .locals 1
    .prologue
    v0 = 0x6;
    if (p0 == v0) {
//       if-eq p0, v0, :cond_0
    }
    v0 = 0x7;
    if (p0 == v0) {
//       if-eq p0, v0, :cond_0
    }
    v0 = 0x8;
    if (p0 == v0) {
//       if-eq p0, v0, :cond_0
    }
    v0 = 0x3;
    if (p0 != v0) {
//       if-ne p0, v0, :cond_1
    }
    :cond_0
    v0 = 0x1;
    :goto_0
    return v0
    :cond_1
    v0 = 0x0;
    goto :goto_0
.end method
.method public static i(Landroid/content/Context;)I
    .locals 11
    .prologue
    v5 = 0x3;
    v4 = 0x2;
    v3 = 0x0;
    v1 = -0x1;
    v2 = 0x1;
    v0 = "connectivity";
    v0 = p0.getSystemService(v0);
    check-cast v0, Landroid/net/ConnectivityManager;
    :try_start_0
    v0.getActiveNetworkInfo();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v6
    if (v6 != 0) {
//       if-nez v6, :cond_0
    }
    v0 = v1;
    :goto_0
    return v0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    v0 = v1;
    goto :goto_0
    :cond_0
    v7 = v6.getState();
    v8 = Landroid/net/NetworkInfo$State;->CONNECTED;
    if (v7 != v8) {
//       if-ne v7, v8, :cond_d
    }
    v0 = v6.getType();
    if (v0 != v2) {
//       if-ne v0, v2, :cond_1
    }
    v0 = 0x6;
    goto :goto_0
    :cond_1
    v0 = v6.getType();
    if (v0 != 0) {
//       if-nez v0, :cond_c
    }
    v0 = v6.getExtraInfo();
    v1 = Landroid/text/TextUtils.isEmpty(v0);
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v0 = v2;
    goto :goto_0
    :cond_2
    v0 = v0.toLowerCase();
    v1 = "cmwap";
    v1 = v0.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v0 = v3;
    goto :goto_0
    :cond_3
    v1 = "cmnet";
    v1 = v0.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_4
    }
    v0 = v2;
    goto :goto_0
    :cond_4
    v1 = "3gwap";
    v1 = v0.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_5
    }
    v0 = 0x7;
    goto :goto_0
    :cond_5
    v1 = "3gnet";
    v1 = v0.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_6
    }
    v0 = 0x8;
    goto :goto_0
    :cond_6
    v1 = "uniwap";
    v1 = v0.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_7
    }
    v0 = v4;
    goto :goto_0
    :cond_7
    v1 = "uninet";
    v1 = v0.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_8
    }
    v0 = v5;
    goto :goto_0
    :cond_8
    v1 = "ctwap";
    v1 = v0.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_9
    }
    v0 = 0x4;
    goto :goto_0
    :cond_9
    v1 = "ctnet";
    v1 = v0.equals(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_a
    }
    v1 = "#777";
    v0 = v0.equals(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_b
    }
    :cond_a
    v0 = 0x5;
    goto/16 :goto_0
    :cond_b
    v0 = v2;
    goto/16 :goto_0
    :cond_c
    v0 = v2;
    goto/16 :goto_0
    :cond_d
    v7 = v0.getAllNetworkInfo();
    if (v7 != 0) {
//       if-nez v7, :cond_e
    }
    v0 = v1;
    goto/16 :goto_0
    :cond_e
    v8 = v7.length;
    v0 = v3;
    :goto_1
    if (v0 < v8) {
//       if-lt v0, v8, :cond_f
    }
    v0 = v1;
    goto/16 :goto_0
    :cond_f
    v9 = v7[v0];
    v9 = v9.getState();
    v10 = Landroid/net/NetworkInfo$State;->CONNECTED;
    if (v9 != v10) {
//       if-ne v9, v10, :cond_1a
    }
    v9 = v7[v0];
    v9 = v9.getType();
    if (v9 != 0) {
//       if-nez v9, :cond_1a
    }
    v0 = v6.getExtraInfo();
    v1 = Landroid/text/TextUtils.isEmpty(v0);
    if (v1 == 0) {
//       if-eqz v1, :cond_10
    }
    v0 = v2;
    goto/16 :goto_0
    :cond_10
    v0 = v0.toLowerCase();
    v1 = "cmwap";
    v1 = v0.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_11
    }
    v0 = v3;
    goto/16 :goto_0
    :cond_11
    v1 = "cmnet";
    v1 = v0.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_12
    }
    v0 = v2;
    goto/16 :goto_0
    :cond_12
    v1 = "3gwap";
    v1 = v0.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_13
    }
    v0 = 0x7;
    goto/16 :goto_0
    :cond_13
    v1 = "3gnet";
    v1 = v0.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_14
    }
    v0 = 0x8;
    goto/16 :goto_0
    :cond_14
    v1 = "uniwap";
    v1 = v0.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_15
    }
    v0 = v4;
    goto/16 :goto_0
    :cond_15
    v1 = "uninet";
    v1 = v0.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_16
    }
    v0 = v5;
    goto/16 :goto_0
    :cond_16
    v1 = "ctwap";
    v1 = v0.equals(v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_17
    }
    v0 = 0x4;
    goto/16 :goto_0
    :cond_17
    v1 = "ctnet";
    v1 = v0.equals(v1);
    if (v1 != 0) {
//       if-nez v1, :cond_18
    }
    v1 = "#777";
    v0 = v0.equals(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_19
    }
    :cond_18
    v0 = 0x5;
    goto/16 :goto_0
    :cond_19
    v0 = v2;
    goto/16 :goto_0
    :cond_1a
    v0 = v0 + 0x1;
    goto/16 :goto_1
.end method
.method public static i(I)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = p0 / 0x2710;
    if (v0 <= 0) {
//       if-lez v0, :cond_0
    }
    v0 = new StringBuilder();
    v0.<init>();
    v1 = p0 / 0x2710;
    v0 = v0.append(v1);
    v1 = "\u4e07";
    v0 = v0.append(v1);
    v0 = v0.toString();
    :goto_0
    return v0;
    :cond_0
    v0 = p0 / 0x3e8;
    if (v0 <= 0) {
//       if-lez v0, :cond_1
    }
    v0 = new StringBuilder();
    v0.<init>();
    v1 = p0 / 0x3e8;
    v0 = v0.append(v1);
    v1 = "\u5343";
    v0 = v0.append(v1);
    v0 = v0.toString();
    goto :goto_0
    :cond_1
    v0 = p0 / 0x64;
    if (v0 <= 0) {
//       if-lez v0, :cond_2
    }
    v0 = new StringBuilder();
    v0.<init>();
    v1 = p0 / 0x64;
    v0 = v0.append(v1);
    v1 = "\u767e";
    v0 = v0.append(v1);
    v0 = v0.toString();
    goto :goto_0
    :cond_2
    v0 = Ljava/lang/String.valueOf(p0);
    goto :goto_0
.end method
.method public static i(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .prologue
    v0 = 0x0;
    v1 = new JSONObject();
    v1.<init>();
    :try_start_0
    v2 = p0.split(p1);
    :goto_0
    v3 = v2.length;
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_0
    }
    v3 = v2[v0];
    v4 = "=";
    v3 = v3.split(v4);
    v4 = 0x0;
    v4 = v3[v4];
    v5 = v2[v0];
    v6 = 0x0;
    v3 = v3[v6];
    v3 = v3.length();
    v3 = v3 + 0x1;
    v3 = v5.substring(v3);
    v1.put(v4, v3);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    v0 = v0 + 0x1;
    goto :goto_0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    :cond_0
    return v1;
.end method
.method public static i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .prologue
    v0 = new HashMap();
    v0.<init>();
    v1 = "uid";
    v2 = Lcom/ushaqi/zhuishushenqi/util/e.c(p0);
    v0.put(v1, v2);
    Lcom/a/a/a.a(p0, p1, v0);
    return;
.end method
.method public static i()Z
    .locals 2
    .prologue
    v0 = Landroid/os/Build$VERSION;->SDK_INT;
    v1 = 0x13;
    if (v0 < v1) {
//       if-lt v0, v1, :cond_0
    }
    v0 = 0x1;
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static i(Ljava/lang/String;)[B
    .locals 3
    .prologue
    v0 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return v0;
    :cond_0
    :try_start_0
    v1 = "utf-8";
    v1 = p0.getBytes(v1);
    Lcom/arcsoft/hpay100/a/a.e(v1);
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    goto :goto_0
    :catch_0
    move-exception v1
    v2 = invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;
    v2.w(v1);
    goto :goto_0
.end method
.method public static j(I)I
    .locals 2
    .prologue
    v0 = Landroid/os/Build$VERSION;->SDK_INT;
    v1 = 0xb;
    if (v0 < v1) {
//       if-lt v0, v1, :cond_0
    }
    v0 = p0 >> 0x8;
    v0 = v0 & 0xff;
    :goto_0
    return v0
    :cond_0
    v0 = p0 >> 0x8;
    v0 = v0 & 0xff;
    goto :goto_0
.end method
.method public static j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    :try_start_0
    v0 = "utf-8";
    Lcom/arcsoft/hpay100/a/a.f(p0, v0);
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v1 = invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;
    v1.w(v0);
    v0 = 0x0;
    goto :goto_0
.end method
.method public static j(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = new StringBuilder();
    v1 = "/ZhuiShuShenQi/Chapter";
    v0.<init>(v1);
    v1 = Ljava/io/File;->separator;
    v0 = v0.append(v1);
    v0 = v0.append(p0);
    v1 = Ljava/io/File;->separator;
    v0 = v0.append(v1);
    v0 = v0.append(p1);
    v0 = v0.toString();
    v1 = new File();
    v2 = Lcom/ushaqi/zhuishushenqi/c;->a;
    v1.<init>(v2, v0);
    v0 = Lcom/arcsoft/hpay100/a/a.c(v1);
    return v0;
.end method
.method public static j()Z
    .locals 2
    .prologue
    v0 = Landroid/os/Build$VERSION;->SDK_INT;
    v1 = 0x13;
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
.method public static j(Landroid/content/Context;)Z
    .locals 2
    .prologue
    v0 = Lcom/arcsoft/hpay100/a/a.i(p0);
    v1 = -0x1;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_0
    }
    v0 = 0x0;
    :goto_0
    return v0
    :cond_0
    v0 = 0x1;
    goto :goto_0
.end method
.method public static j(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .prologue
    v0 = p0.getPackageManager();
    v1 = 0x80;
    :try_start_0
    v0.getPackageInfo(p1, v1);
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    v0 = 0x1;
    :goto_0
    return v0
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static k(Ljava/lang/String;)J
    .locals 2
    .prologue
    :try_start_0
    v0 = new Date();
    v0.<init>(p0);
    v1 = invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    v1.setTime(v0);
    v1.getTimeInMillis();
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    move-result-wide v0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v1 = invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;
    v1.w(v0);
    v0 = 0x0;
    goto :goto_0
.end method
.method public static k(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .prologue
    v0 = 0x0;
    :try_start_0
    p0.openFileInput(p1);
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v2
    :try_start_1
    Landroid/graphics/BitmapFactory.decodeStream(v2);
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    move-result-object v0
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    :try_start_2
    v2.close();
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    :cond_0
    :goto_0
    return v0;
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
    :catch_1
    move-exception v1
    v2 = v0;
    :goto_1
    :try_start_3
    v1.printStackTrace();
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    :try_start_4
    v2.close();
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    goto :goto_0
    :catch_2
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
    :catchall_0
    move-exception v1
    v2 = v0;
    v0 = v1;
    :goto_2
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    :try_start_5
    v2.close();
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    :cond_1
    :goto_3
    throw v0
    :catch_3
    move-exception v1
    v1.printStackTrace();
    goto :goto_3
    :catchall_1
    move-exception v0
    goto :goto_2
    :catch_4
    move-exception v1
    goto :goto_1
    :catch_5
    move-exception v1
    v2 = v0;
    goto :goto_1
    :catch_6
    move-exception v1
    goto :goto_1
.end method
.method public static k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
    .prologue
    v0 = 0x0;
    :try_start_0
    v1 = new File();
    v2 = Lcom/arcsoft/hpay100/a/a.J(p0);
    v1.<init>(v2, p1);
    v2 = v1.exists();
    if (v2 != 0) {
//       if-nez v2, :cond_0
    }
    :goto_0
    return v0;
    :cond_0
    v2 = new ObjectInputStream();
    v3 = new FileInputStream();
    v3.<init>(v1);
    v2.<init>(v3);
    v2.readObject();
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    move-result-object v0
    goto :goto_0
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
    :catch_1
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
.method public static k()Z
    .locals 3
    .prologue
    :try_start_0
    v0 = "android.os.Build";
    v0 = Ljava/lang/Class.forName(v0);
    v1 = "hasSmartBar";
    v2 = 0x0;
    new-array v2, v2, [Ljava/lang/Class;
    v0 = v0.getMethod(v1, v2);
    v1 = 0x0;
    v2 = 0x0;
    new-array v2, v2, [Ljava/lang/Object;
    v0 = v0.invoke(v1, v2);
    check-cast v0, Ljava/lang/Boolean;
    v0.booleanValue();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result v0
    :goto_0
    return v0
    :catch_0
    move-exception v0
    v0 = Landroid/os/Build;->DEVICE;
    v1 = "mx2";
    v0 = v0.equals(v1);
    goto :goto_0
.end method
.method public static k(Landroid/content/Context;)Z
    .locals 4
    .prologue
    v1 = 0x1;
    v2 = Lcom/arcsoft/hpay100/a/a.i(p0);
    v0 = 0x0;
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    if (v2 == v1) {
//       if-eq v2, v1, :cond_0
    }
    v3 = 0x7;
    if (v2 == v3) {
//       if-eq v2, v3, :cond_0
    }
    v3 = 0x8;
    if (v2 == v3) {
//       if-eq v2, v3, :cond_0
    }
    v3 = 0x9;
    if (v2 == v3) {
//       if-eq v2, v3, :cond_0
    }
    v3 = 0xa;
    if (v2 != v3) {
//       if-ne v2, v3, :cond_1
    }
    :cond_0
    v0 = v1;
    :cond_1
    return v0
.end method
.method public static l(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .prologue
    v0 = "://";
    v0 = p0.indexOf(v0);
    if (v0 < 0) {
//       if-ltz v0, :cond_0
    }
    v1 = new StringBuilder();
    v2 = "http://";
    v1.<init>(v2);
    v0 = v0 + 0x1;
    v0 = p0.substring(v0);
    v0 = v1.append(v0);
    v0 = v0.toString();
    :goto_0
    :try_start_0
    v1 = new URL();
    v1.<init>(v0);
    v0 = v1.getQuery();
    v0 = Lcom/arcsoft/hpay100/a/a.m(v0);
    v1 = v1.getRef();
    v1 = Lcom/arcsoft/hpay100/a/a.m(v1);
    v0.putAll(v1);
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    :goto_1
    return v0;
    :cond_0
    v0 = new StringBuilder();
    v1 = "http://";
    v0.<init>(v1);
    v0 = v0.append(p0);
    v0 = v0.toString();
    goto :goto_0
    :catch_0
    move-exception v0
    v1 = invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;
    v1.w(v0);
    v0 = new Bundle();
    v0.<init>();
    goto :goto_1
.end method
.method public static l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = Landroid/text/TextUtils.isEmpty(p0);
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = Landroid/text/TextUtils.isEmpty(p1);
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p0.toLowerCase();
    v1 = p1.toLowerCase();
    v0 = v0.compareTo(v1);
    if (v0 > 0) {
//       if-gtz v0, :cond_0
    }
    v0 = new StringBuilder();
    v1 = Ljava/lang/String.valueOf(p0);
    v0.<init>(v1);
    v1 = "_";
    v0 = v0.append(v1);
    v0 = v0.append(p1);
    v0 = v0.toString();
    :goto_0
    return v0;
    :cond_0
    v0 = new StringBuilder();
    v1 = Ljava/lang/String.valueOf(p1);
    v0.<init>(v1);
    v1 = "_";
    v0 = v0.append(v1);
    v0 = v0.append(p0);
    v0 = v0.toString();
    goto :goto_0
    :cond_1
    v0 = 0x0;
    goto :goto_0
.end method
.method public static l()Z
    .locals 2
    .prologue
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v1 = "force_encrypt_chapter";
    v0 = Lcom/umeng/a/b.b(v0, v1);
    v1 = "0";
    v0 = v1.equals(v0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = 0x1;
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static l(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .prologue
    v0 = 0x1;
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, p1, v0);
    return v0
.end method
.method public static l(Landroid/content/Context;)[I
    .locals 8
    .prologue
    v7 = 0x2;
    v4 = 0x0;
    v3 = 0x1;
    :try_start_0
    v0 = "window";
    v0 = p0.getSystemService(v0);
    check-cast v0, Landroid/view/WindowManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    new-array v0, v7, [I
    fill-array-data v0, :array_0
    :goto_1
    return v0;
    :catch_0
    move-exception v0
    v1 = invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;
    v1.w(v0);
    v0 = 0x0;
    goto :goto_0
    :cond_0
    v0 = v0.getDefaultDisplay();
    v1 = Landroid/os/Build$VERSION;->SDK_INT;
    v2 = 0xd;
    if (v1 >= v2) {
//       if-ge v1, v2, :cond_1
    }
    v1 = new DisplayMetrics();
    v1.<init>();
    v0.getMetrics(v1);
    new-array v0, v7, [I
    v2 = v1.Landroid/util/DisplayMetrics;->widthPixels;
    v0[v4] = v2;
    v1 = v1.Landroid/util/DisplayMetrics;->heightPixels;
    v0[v3] = v1;
    goto :goto_1
    :cond_1
    :try_start_1
    v1 = new Point();
    v1.<init>();
    v2 = v0.getClass();
    v3 = "getRealSize";
    v4 = 0x1;
    new-array v4, v4, [Ljava/lang/Class;
    v5 = 0x0;
    v6 = Landroid/graphics/Point;;
    v4[v5] = v6;
    v2 = v2.getMethod(v3, v4);
    v3 = 0x1;
    v2.setAccessible(v3);
    v3 = 0x1;
    new-array v3, v3, [Ljava/lang/Object;
    v4 = 0x0;
    v3[v4] = v1;
    v2.invoke(v0, v3);
    v0 = 0x2;
    new-array v0, v0, [I
    v2 = 0x0;
    v3 = v1.Landroid/graphics/Point;->x;
    v0[v2] = v3;
    v2 = 0x1;
    v1 = v1.Landroid/graphics/Point;->y;
    v0[v2] = v1;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    goto :goto_1
    :catch_1
    move-exception v0
    v1 = invoke-static {}, Lcom/mob/tools/e;->a()Lcom/mob/tools/log/d;
    v1.w(v0);
    new-array v0, v7, [I
    fill-array-data v0, :array_1
    goto :goto_1
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
.method public static m(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .prologue
    v8 = 0x1;
    v1 = 0x0;
    v2 = new Bundle();
    v2.<init>();
    if (p0 == 0) {
//       if-eqz p0, :cond_2
    }
    v0 = "&";
    v3 = p0.split(v0);
    v4 = v3.length;
    v0 = v1;
    :goto_0
    if (v0 >= v4) {
//       if-ge v0, v4, :cond_2
    }
    v5 = v3[v0];
    v6 = "=";
    v5 = v5.split(v6);
    v6 = v5.length;
    v7 = 0x2;
    if (v6 < v7) {
//       if-lt v6, v7, :cond_0
    }
    v6 = v5[v8];
    if (v6 != 0) {
//       if-nez v6, :cond_1
    }
    :cond_0
    v5 = v5[v1];
    v5 = Ljava/net/URLDecoder.decode(v5);
    v6 = "";
    v2.putString(v5, v6);
    :goto_1
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_1
    v6 = v5[v1];
    v6 = Ljava/net/URLDecoder.decode(v6);
    v5 = v5[v8];
    v5 = Ljava/net/URLDecoder.decode(v5);
    v2.putString(v6, v5);
    goto :goto_1
    :cond_2
    return v2;
.end method
.method public static m(Landroid/content/Context;)Ljava/io/File;
    .locals 1
    .prologue
    v0 = 0x1;
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0);
    return v0;
.end method
.method private static m()Ljava/lang/String;
    .locals 2
    .prologue
    v0 = "deviceid_v2";
    v0 = Landroid/support/design/widget/am.d(v0);
    :try_start_0
    v1 = new JSONObject();
    v1.<init>(v0);
    v0 = "device";
    v0 = v1.getString(v0);
    v1 = invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;
    Lcom/alipay/security/mobile/module/a/a/b.b(v1, v0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static m(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .prologue
    v1 = 0x0;
    if (p1 != 0) {
//       if-nez p1, :cond_1
    }
    v0 = "ad_splash_show";
    Lcom/arcsoft/hpay100/a/a.e(p0, v0, v1);
    :cond_0
    :goto_0
    return;
    :cond_1
    v0 = "ad_splash_show";
    v0 = Lcom/arcsoft/hpay100/a/a.d(p0, v0, v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v1 = v0.contains(p1);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    :cond_2
    v1 = "ad_splash_show";
    Lcom/umeng/a/b.a(p0, v1, p1);
    v1 = new StringBuilder();
    v1.<init>();
    v0 = v1.append(v0);
    v0 = v0.append(p1);
    v0 = v0.toString();
    v1 = "ad_splash_show";
    Lcom/arcsoft/hpay100/a/a.e(p0, v1, v0);
    goto :goto_0
.end method
.method public static n(Ljava/lang/String;)I
    .locals 9
    .prologue
    v0 = 0x1;
    v1 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    v0 = Lcom/arcsoft/hpay100/a/a.X(p0);
    throw v0
    :cond_0
    v2 = p0.length();
    if (v2 != 0) {
//       if-nez v2, :cond_1
    }
    v0 = Lcom/arcsoft/hpay100/a/a.X(p0);
    throw v0
    :cond_1
    v3 = p0.charAt(v1);
    v4 = 0x2d;
    if (v3 != v4) {
//       if-ne v3, v4, :cond_2
    }
    v3 = v0;
    :goto_0
    if (v3 == 0) {
//       if-eqz v3, :cond_3
    }
    if (v0 != v2) {
//       if-ne v0, v2, :cond_4
    }
    v0 = Lcom/arcsoft/hpay100/a/a.X(p0);
    throw v0
    :cond_2
    v3 = v1;
    goto :goto_0
    :cond_3
    v0 = v1;
    :cond_4
    v4 = 0xa;
    v5 = -0xccccccc;
    v6 = p0.length();
    v8 = v1;
    v1 = v0;
    v0 = v8;
    :goto_1
    if (v1 >= v6) {
//       if-ge v1, v6, :cond_8
    }
    v2 = v1 + 0x1;
    v1 = p0.charAt(v1);
    v1 = Lcom/arcsoft/hpay100/a/a.a(v1, v4);
    v7 = -0x1;
    if (v1 != v7) {
//       if-ne v1, v7, :cond_5
    }
    v0 = Lcom/arcsoft/hpay100/a/a.X(p0);
    throw v0
    :cond_5
    if (v5 <= v0) {
//       if-le v5, v0, :cond_6
    }
    v0 = Lcom/arcsoft/hpay100/a/a.X(p0);
    throw v0
    :cond_6
    v7 = v0 * v4;
    v1 = v7 - v1;
    if (v1 <= v0) {
//       if-le v1, v0, :cond_7
    }
    v0 = Lcom/arcsoft/hpay100/a/a.X(p0);
    throw v0
    :cond_7
    v0 = v1;
    v1 = v2;
    goto :goto_1
    :cond_8
    if (v3 != 0) {
//       if-nez v3, :cond_9
    }
    neg-int v0, v0
    if (v0 >= 0) {
//       if-gez v0, :cond_9
    }
    v0 = Lcom/arcsoft/hpay100/a/a.X(p0);
    throw v0
    :cond_9
    return v0
.end method
.method public static n(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .prologue
    v0 = 0x1;
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0);
    v1 = new File();
    v2 = "uil-images";
    v1.<init>(v0, v2);
    v2 = v1.exists();
    if (v2 != 0) {
//       if-nez v2, :cond_0
    }
    v2 = v1.mkdir();
    if (v2 != 0) {
//       if-nez v2, :cond_0
    }
    :goto_0
    return v0;
    :cond_0
    v0 = v1;
    goto :goto_0
.end method
.method private static n()Ljava/lang/String;
    .locals 3
    .prologue
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAll()Ljava/util/List;
    v1 = new StringBuilder();
    v1.<init>();
    v2 = v0.size();
    if (v2 <= 0) {
//       if-lez v2, :cond_1
    }
    v2 = v0.iterator();
    :goto_0
    v0 = v2.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v2.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;
    v0 = v0.getBookId();
    v1.append(v0);
    v0 = "|";
    v1.append(v0);
    goto :goto_0
    :cond_0
    v0 = v1.length();
    v0 = v0 + -0x1;
    v1.deleteCharAt(v0);
    :cond_1
    v0 = v1.toString();
    return v0;
.end method
.method public static n(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = "home_ab_menu_click";
    Lcom/umeng/a/b.a(p0, v0, p1);
    return;
.end method
.method public static o(Ljava/lang/String;)J
    .locals 5
    .prologue
    v0 = 0x1;
    v1 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    v0 = new Throwable();
    v1 = new StringBuilder();
    v2 = "Invalid long: \"";
    v1.<init>(v2);
    v1 = v1.append(p0);
    v2 = "\"";
    v1 = v1.append(v2);
    v1 = v1.toString();
    v0.<init>(v1);
    throw v0
    :cond_0
    v3 = p0.length();
    if (v3 != 0) {
//       if-nez v3, :cond_1
    }
    v0 = new Throwable();
    v1 = new StringBuilder();
    v2 = "Invalid long: \"";
    v1.<init>(v2);
    v1 = v1.append(p0);
    v2 = "\"";
    v1 = v1.append(v2);
    v1 = v1.toString();
    v0.<init>(v1);
    throw v0
    :cond_1
    v2 = p0.charAt(v1);
    v4 = 0x2d;
    if (v2 != v4) {
//       if-ne v2, v4, :cond_2
    }
    v2 = v0;
    :goto_0
    if (v2 == 0) {
//       if-eqz v2, :cond_3
    }
    if (v0 != v3) {
//       if-ne v0, v3, :cond_4
    }
    v0 = new Throwable();
    v1 = new StringBuilder();
    v2 = "Invalid long: \"";
    v1.<init>(v2);
    v1 = v1.append(p0);
    v2 = "\"";
    v1 = v1.append(v2);
    v1 = v1.toString();
    v0.<init>(v1);
    throw v0
    :cond_2
    v2 = v1;
    goto :goto_0
    :cond_3
    v0 = v1;
    :cond_4
    v1 = 0xa;
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0, v1, v2);
    return v0;
.end method
.method private static o()Ljava/lang/String;
    .locals 1
    .prologue
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    v0 = v0.getUser();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    v0 = v0.getUser();
    v0 = v0.getId();
    :goto_0
    return v0;
    :cond_0
    v0 = "";
    goto :goto_0
.end method
.method public static o(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = Lcom/arcsoft/hpay100/a/a.p(p0);
    v1 = "iid";
    v2 = invoke-static {}, Lcom/arcsoft/hpay100/a/a;->n()Ljava/lang/String;
    v0.put(v1, v2);
    return v0;
.end method
.method public static o(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = "splash_ad_click";
    Lcom/umeng/a/b.a(p0, v0, p1);
    return;
.end method
.method public static p(Landroid/content/Context;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = new HashMap();
    v0.<init>();
    v1 = "uid";
    v2 = Lcom/ushaqi/zhuishushenqi/util/e.c(p0);
    v0.put(v1, v2);
    return v0;
.end method
.method public static p(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = "book_category_major_click";
    Lcom/umeng/a/b.a(p0, v0, p1);
    return;
.end method
.method public static p(Ljava/lang/String;)Z
    .locals 1
    .prologue
    v0 = "POST";
    v0 = p0.equals(v0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = "PUT";
    v0 = p0.equals(v0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = "PATCH";
    v0 = p0.equals(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    v0 = 0x1;
    :goto_0
    return v0
    :cond_1
    v0 = 0x0;
    goto :goto_0
.end method
.method public static q(Landroid/content/Context;)V
    .locals 2
    .prologue
    v1 = 0x0;
    v0 = "CIPHER_BOOK_ID";
    v0 = Lcom/arcsoft/hpay100/a/a.d(p0, v0, v1);
    sput-object v0, Lcom/arcsoft/hpay100/a/a;->d:Ljava/lang/String;
    v0 = "CIPHER_TOC_ID";
    v0 = Lcom/arcsoft/hpay100/a/a.d(p0, v0, v1);
    sput-object v0, Lcom/arcsoft/hpay100/a/a;->e:Ljava/lang/String;
    v0 = "CIPHER_CHECKSUM";
    v0 = Lcom/arcsoft/hpay100/a/a.d(p0, v0, v1);
    sput-object v0, Lcom/arcsoft/hpay100/a/a;->f:Ljava/lang/String;
    return;
.end method
.method public static q(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = "reader_menu_event";
    Lcom/umeng/a/b.a(p0, v0, p1);
    return;
.end method
.method public static q(Ljava/lang/String;)Z
    .locals 1
    .prologue
    v0 = Lcom/arcsoft/hpay100/a/a.p(p0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = "DELETE";
    v0 = p0.equals(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    v0 = 0x1;
    :goto_0
    return v0
    :cond_1
    v0 = 0x0;
    goto :goto_0
.end method
.method public static r(Landroid/content/Context;)I
    .locals 4
    .prologue
    v2 = 0x1;
    v1 = 0x0;
    v0 = "connectivity";
    v0 = p0.getSystemService(v0);
    check-cast v0, Landroid/net/ConnectivityManager;
    v0 = v0.getActiveNetworkInfo();
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    :goto_0
    return v1
    :cond_0
    v3 = v0.getType();
    if (v3 != 0) {
//       if-nez v3, :cond_2
    }
    v0 = v0.getExtraInfo();
    v2 = Lcom/arcsoft/hpay100/a/a.Q(v0);
    if (v2 != 0) {
//       if-nez v2, :cond_3
    }
    v0 = v0.toLowerCase();
    v1 = "cmnet";
    v0 = v0.equals(v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = 0x3;
    :goto_1
    v1 = v0;
    goto :goto_0
    :cond_1
    v0 = 0x2;
    goto :goto_1
    :cond_2
    if (v3 != v2) {
//       if-ne v3, v2, :cond_3
    }
    v0 = v2;
    goto :goto_1
    :cond_3
    v0 = v1;
    goto :goto_1
.end method
.method public static r(Ljava/lang/String;)V
    .locals 3
    .prologue
    v0 = Lcom/arcsoft/hpay100/a/a.s(p0);
    Lcom/ushaqi/zhuishushenqi/push/BookSubRecord.create(v0);
    v1 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v2 = 0x0;
    Lcom/xiaomi/mipush/sdk/d.b(v1, v0, v2);
    return;
.end method
.method public static r(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .prologue
    v0 = Lcom/umeng/a/b.b(p0, p1);
    v1 = "1";
    v0 = v1.equals(v0);
    return v0
.end method
.method public static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v1 = "book:";
    v0.<init>(v1);
    v0 = v0.append(p0);
    v0 = v0.toString();
    return v0;
.end method
.method public static s(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = "post_official_open";
    Lcom/umeng/a/b.a(p0, v0, p1);
    return;
.end method
.method public static s(Landroid/content/Context;)Z
    .locals 2
    .prologue
    v0 = 0x1;
    v1 = Lcom/arcsoft/hpay100/a/a.r(p0);
    if (v1 != v0) {
//       if-ne v1, v0, :cond_0
    }
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static t(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = "HOT_KEY_WORD_CLICK";
    Lcom/umeng/a/b.a(p0, v0, p1);
    return;
.end method
.method public static t(Ljava/lang/String;)V
    .locals 3
    .prologue
    v0 = Lcom/arcsoft/hpay100/a/a.s(p0);
    Lcom/ushaqi/zhuishushenqi/push/BookUnSubRecord.create(v0);
    v1 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v2 = 0x0;
    Lcom/xiaomi/mipush/sdk/d.c(v1, v0, v2);
    return;
.end method
.method public static t(Landroid/content/Context;)Z
    .locals 2
    .prologue
    v1 = 0x0;
    v0 = "connectivity";
    v0 = p0.getSystemService(v0);
    check-cast v0, Landroid/net/ConnectivityManager;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = v1;
    :goto_0
    return v0
    :cond_0
    v0 = v0.getActiveNetworkInfo();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = v0.isConnectedOrConnecting();
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = 0x1;
    goto :goto_0
    :cond_1
    v0 = v1;
    goto :goto_0
.end method
.method public static u(Landroid/content/Context;Ljava/lang/String;)F
    .locals 1
    .prologue
    v0 = Lcom/umeng/a/b.b(p0, p1);
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
.method public static u(Landroid/content/Context;)V
    .locals 3
    .prologue
    v0 = "key_all_post_open_by_day";
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/t;->a()I
    move-result v1
    v2 = 0x0;
    v2 = Lcom/arcsoft/hpay100/a/a.a(p0, v0, v2);
    if (v1 == v2) {
//       if-eq v1, v2, :cond_0
    }
    v2 = "all_post_open_by_day";
    Lcom/umeng/a/b.a(p0, v2);
    Lcom/arcsoft/hpay100/a/a.b(p0, v0, v1);
    :cond_0
    return;
.end method
.method public static u(Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SHELF_ADD;
    Lcom/arcsoft/hpay100/a/a.a(p0, v0);
    return;
.end method
.method public static v(Landroid/content/Context;Ljava/lang/String;)F
    .locals 1
    .prologue
    v0 = Lcom/umeng/a/b.b(p0, p1);
    :try_start_0
    Ljava/lang/Float.parseFloat(v0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result v0
    :goto_0
    return v0
    :catch_0
    move-exception v0
    v0 = 0x3f800000    # 1.0f;
    goto :goto_0
.end method
.method public static v(Landroid/content/Context;)V
    .locals 3
    .prologue
    v0 = "key_audiobook_listen_count";
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/t;->a()I
    move-result v1
    v2 = 0x0;
    v2 = Lcom/arcsoft/hpay100/a/a.a(p0, v0, v2);
    if (v1 == v2) {
//       if-eq v1, v2, :cond_0
    }
    v2 = "audiobook_listen_count";
    Lcom/umeng/a/b.a(p0, v2);
    Lcom/arcsoft/hpay100/a/a.b(p0, v0, v1);
    :cond_0
    return;
.end method
.method public static v(Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->SHELF_REMOVE;
    Lcom/arcsoft/hpay100/a/a.a(p0, v0);
    return;
.end method
.method public static w(Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->FEED_ADD;
    Lcom/arcsoft/hpay100/a/a.a(p0, v0);
    return;
.end method
.method public static w(Landroid/content/Context;)Z
    .locals 5
    .prologue
    v1 = 0x1;
    v2 = 0x0;
    v0 = "com.ushaqi.zhuishushenqitest";
    v3 = "com.ushaqi.zhuishushenqi";
    v0 = v0.equals(v3);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    :cond_0
    :goto_0
    return v1
    :cond_1
    v3 = Landroid/support/design/widget/am.n(p0);
    v0 = "home_game_center_toggle";
    v0 = Lcom/umeng/a/b.b(p0, v0);
    v0 = Lcom/arcsoft/hpay100/a/a.b(v0, v2);
    v4 = Landroid/support/design/widget/am.f(p0);
    if (v4 >= v0) {
//       if-ge v4, v0, :cond_4
    }
    v0 = v1;
    :goto_1
    v4 = "Anzhi";
    v4 = v4.equals(v3);
    if (v4 != 0) {
//       if-nez v4, :cond_2
    }
    v4 = "Taobao";
    v4 = v4.equals(v3);
    if (v4 != 0) {
//       if-nez v4, :cond_2
    }
    v4 = "Uc";
    v4 = v4.equals(v3);
    if (v4 != 0) {
//       if-nez v4, :cond_2
    }
    v4 = "Zhihuiyun";
    v4 = v4.equals(v3);
    if (v4 != 0) {
//       if-nez v4, :cond_2
    }
    v4 = "Tencent";
    v3 = v4.equals(v3);
    if (v3 == 0) {
//       if-eqz v3, :cond_5
    }
    :cond_2
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = Landroid/support/design/widget/am.o(p0);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    :cond_3
    v1 = v2;
    goto :goto_0
    :cond_4
    v0 = v2;
    goto :goto_1
    :cond_5
    v1 = v0;
    goto :goto_0
.end method
.method public static w(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .prologue
    v0 = 0x1;
    v1 = Lcom/umeng/a/b.b(p0, p1);
    :try_start_0
    Ljava/lang/Float.parseFloat(v1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result v1
    invoke-static {}, Ljava/lang/Math;->random()D
    move-result-wide v2
    float-to-double v4, v1
    cmpg-double v1, v2, v4
    if (v1 >= 0) {
//       if-gez v1, :cond_0
    }
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
    :catch_0
    move-exception v1
    goto :goto_0
.end method
.method public static x(Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/db/BookSyncRecord$BookModifyType;->FEED_REMOVE;
    Lcom/arcsoft/hpay100/a/a.a(p0, v0);
    return;
.end method
.method public static x(Landroid/content/Context;)Z
    .locals 6
    .prologue
    v0 = 0x0;
    v2 = Landroid/support/design/widget/am.n(p0);
    v1 = "game_center_disabled_at_channel";
    v1 = Lcom/umeng/a/b.b(p0, v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v3 = v1.length();
    if (v3 <= 0) {
//       if-lez v3, :cond_1
    }
    v3 = ",";
    v3 = v1.split(v3);
    v4 = v3.length;
    v1 = v0;
    :goto_0
    if (v1 >= v4) {
//       if-ge v1, v4, :cond_1
    }
    v5 = v3[v1];
    v5 = v5.equals(v2);
    if (v5 == 0) {
//       if-eqz v5, :cond_0
    }
    :goto_1
    return v0
    :cond_0
    v1 = v1 + 0x1;
    goto :goto_0
    :cond_1
    v0 = 0x1;
    goto :goto_1
.end method
.method public static x(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .prologue
    v0 = "mistat";
    v1 = 0x0;
    v0 = p0.getSharedPreferences(v0, v1);
    v0 = v0.contains(p1);
    return v0
.end method
.method public static y(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .prologue
    v4 = 0xa;
    v0 = 0x0;
    if (p0 == 0) {
//       if-eqz p0, :cond_2
    }
    v1 = "(?m)^[ \u3000\t]+";
    v2 = "";
    v1 = p0.replaceAll(v1, v2);
    :goto_0
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    v2 = "(?m)^";
    v3 = "\u3000\u3000";
    v1 = v1.replaceAll(v2, v3);
    :goto_1
    if (v1 == 0) {
//       if-eqz v1, :cond_5
    }
    v2 = "&nbsp";
    v3 = "\u3000";
    v1 = v1.replaceAll(v2, v3);
    v2 = "&quot";
    v3 = "\"";
    v1 = v1.replaceAll(v2, v3);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = "^\u3000{3,}";
    v2 = "\u3000\u3000";
    v0 = v1.replaceAll(v0, v2);
    v1 = "\n\u3000{3,}";
    v2 = "\n\u3000\u3000";
    v0 = v0.replaceAll(v1, v2);
    :cond_0
    :goto_2
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v1 = v0.length();
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v1 = v0.length();
    v1 = v1 + -0x1;
    v1 = v0.charAt(v1);
    if (v1 != v4) {
//       if-ne v1, v4, :cond_4
    }
    :cond_1
    :goto_3
    return v0;
    :cond_2
    v1 = v0;
    goto :goto_0
    :cond_3
    v1 = v0;
    goto :goto_1
    :cond_4
    v1 = new StringBuilder();
    v1.<init>();
    v0 = v1.append(v0);
    v0 = v0.append(v4);
    v0 = v0.toString();
    goto :goto_3
    :cond_5
    v0 = v1;
    goto :goto_2
.end method
.method public static y(Landroid/content/Context;)Z
    .locals 2
    .prologue
    v0 = "show_remove_ad";
    v0 = Lcom/umeng/a/b.b(p0, v0);
    v1 = "1";
    v0 = v1.equals(v0);
    return v0
.end method
.method public static z(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    v0 = "\\n[\\s]+";
    v1 = "\n";
    v0 = p0.replaceAll(v0, v1);
    v0 = v0.trim();
    :goto_0
    return v0;
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static z(Landroid/content/Context;)Z
    .locals 6
    .prologue
    v0 = 0x0;
    v2 = Landroid/support/design/widget/am.n(p0);
    v1 = "one_yuan_disabled_channel";
    v1 = Lcom/umeng/a/b.b(p0, v1);
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v3 = v1.length();
    if (v3 <= 0) {
//       if-lez v3, :cond_1
    }
    v3 = ",";
    v3 = v1.split(v3);
    v4 = v3.length;
    v1 = v0;
    :goto_0
    if (v1 >= v4) {
//       if-ge v1, v4, :cond_1
    }
    v5 = v3[v1];
    v5 = v5.equals(v2);
    if (v5 == 0) {
//       if-eqz v5, :cond_0
    }
    :goto_1
    return v0
    :cond_0
    v1 = v1 + 0x1;
    goto :goto_0
    :cond_1
    v0 = 0x1;
    goto :goto_1
.end method
# virtual methods
.method public a(Landroid/support/design/widget/am;)V
    .locals 2
    .prologue
    v0 = p0.Lcom/arcsoft/hpay100/a/a;->b;
    v1 = p1.a();
    v0.setCurrentItem(v1);
    return;
.end method
