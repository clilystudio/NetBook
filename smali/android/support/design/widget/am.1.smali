.class public Landroid/support/design/widget/am;
.super Ljava/lang/Object;
.source "SourceFile"
# instance fields
.field private a:Ljava/lang/CharSequence;
.field private b:I
.field private final c:Landroid/support/design/widget/TabLayout;
# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 1
    .prologue
    p0.<init>();
    v0 = -0x1;
    p0.Landroid/support/design/widget/am;->b = v0;
    p0.Landroid/support/design/widget/am;->c = p1;
    return;
.end method
.method private static A(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .prologue
    v0 = "vkeyid_profiles_v3";
    v1 = "deviceid";
    v2 = "";
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0, v1, v2);
    v1 = Landroid/support/design/widget/am.a(v0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = 0x0;
    :goto_0
    return v0;
    :cond_0
    v1 = invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;
    v0 = Lcom/alipay/security/mobile/module/a/a/b.b(v1, v0);
    goto :goto_0
.end method
.method private static B(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .prologue
    :try_start_0
    v0 = p0.getPackageManager();
    v1 = p0.getPackageName();
    v2 = 0x10;
    v0 = v0.getPackageInfo(v1, v2);
    v0 = v0.Landroid/content/pm/PackageInfo;->versionName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = "0.0.0";
    goto :goto_0
.end method
.method private static C(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4
    .prologue
    v0 = 0x0;
    :try_start_0
    v1 = p0.getPackageManager();
    v2 = p0.getPackageName();
    v3 = 0x0;
    v1.getPackageInfo(v2, v3);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_0
    return v0;
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;I)I
    .locals 3
    .prologue
    v2 = 0x0;
    v0 = p0.getTheme();
    v1 = 0x1;
    new-array v1, v1, [I
    v1[v2] = p1;
    v0 = v0.obtainStyledAttributes(v1);
    v1 = v0.getColor(v2, v2);
    v0.recycle();
    return v1
.end method
.method public static a(Ljava/lang/String;I)I
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
.method public static a(Ljava/lang/String;ILjava/lang/String;)I
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
.method public static a(IIILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 6
    .prologue
    v5 = 0x0;
    v0 = p3.getResources();
    v0 = Landroid/graphics/BitmapFactory.decodeResource(v0, p0);
    v1 = v0.getNinePatchChunk();
    v2 = new NinePatchDrawable();
    v3 = new Rect();
    v3.<init>();
    v4 = 0x0;
    v2.<init>(v0, v1, v3, v4);
    v2.setBounds(v5, v5, p1, p2);
    v0 = Landroid/graphics/Bitmap$Config;->ARGB_8888;
    v0 = Landroid/graphics/Bitmap.createBitmap(p1, p2, v0);
    v1 = new Canvas();
    v1.<init>(v0);
    v2.draw(v1);
    return v0;
.end method
.method static synthetic a(Landroid/support/design/widget/am;)Landroid/support/design/widget/TabLayout;
    .locals 1
    .prologue
    v0 = p0.Landroid/support/design/widget/am;->c;
    return v0;
.end method
.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/b/a/d;
    .locals 8
    .prologue
    v0 = 0x0;
    v2 = Landroid/support/design/widget/am;;
    monitor-enter v2
    :try_start_0
    v1 = Landroid/support/design/widget/am.A(p0);
    v3 = Landroid/support/design/widget/am.a(v1);
    if (v3 == 0) {
//       if-eqz v3, :cond_0
    }
    v1 = invoke-static {}, Landroid/support/design/widget/am;->i()Ljava/lang/String;
    :cond_0
    Landroid/support/design/widget/am.a(v1);
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result v3
    if (v3 == 0) {
//       if-eqz v3, :cond_1
    }
    :goto_0
    monitor-exit v2
    return v0;
    :cond_1
    :try_start_1
    v3 = new JSONObject();
    v3.<init>(v1);
    v1 = new d();
    v4 = "apdid";
    v4 = v3.optString(v4);
    v5 = "deviceInfoHash";
    v5 = v3.optString(v5);
    v6 = "token";
    v6 = v3.optString(v6);
    v7 = "timestamp";
    v3 = v3.optString(v7);
    v1.<init>(v4, v5, v6, v3);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    v0 = v1;
    goto :goto_0
    :catch_0
    move-exception v1
    :try_start_2
    Lcom/alipay/security/mobile/module/a/a.a(v1);
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    goto :goto_0
    :catchall_0
    move-exception v0
    monitor-exit v2
    throw v0
.end method
.method public static a(Landroid/app/Activity;)Lcom/ushaqi/zhuishushenqi/model/Account;
    .locals 2
    .prologue
    v0 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return v0;
    :cond_0
    v1 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v0 = v1;
    goto :goto_0
    :cond_1
    v1 = "\u8bf7\u767b\u5f55\u540e\u518d\u64cd\u4f5c";
    Lcom/ushaqi/zhuishushenqi/util/e.a(p0, v1);
    v1 = Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity.a(p0);
    p0.startActivity(v1);
    goto :goto_0
.end method
.method public static a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_1
    }
    :cond_0
    :goto_0
    return p2;
    :cond_1
    v0 = p0.get(p1);
    check-cast v0, Ljava/lang/String;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    p2 = v0;
    goto :goto_0
.end method
.method public static a([B)Ljava/lang/String;
    .locals 9
    .prologue
    v0 = 0x0;
    v1 = 0x10;
    new-array v2, v1, [C
    fill-array-data v2, :array_0
    :try_start_0
    v1 = "MD5";
    v1 = Ljava/security/MessageDigest.getInstance(v1);
    v1.update(p0);
    v3 = v1.digest();
    v4 = v3.length;
    v1 = v4 << 0x1;
    new-array v5, v1, [C
    v1 = v0;
    :goto_0
    if (v0 >= v4) {
//       if-ge v0, v4, :cond_0
    }
    v6 = v3[v0];
    v7 = v1 + 0x1;
    uv8 = v6 >> 0x4;
    v8 = v8 & 0xf;
    v8 = v2[v8];
    v5[v1] = v8;
    v1 = v7 + 0x1;
    v6 = v6 & 0xf;
    v6 = v2[v6];
    v5[v7] = v6;
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_0
    v0 = new String();
    v0.<init>(v5);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_1
    return v0;
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_1
    nop
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method
.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .prologue
    v0 = Landroid/net/Uri.parse(p1);
    v1 = new Intent();
    v2 = "android.intent.action.VIEW";
    v1.<init>(v2, v0);
    :try_start_0
    p0.startActivity(v1);
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    :cond_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    if (p2 == 0) {
//       if-eqz p2, :cond_0
    }
    Lcom/ushaqi/zhuishushenqi/util/e.a(p0, p2);
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;J)V
    .locals 3
    .prologue
    v0 = Ljava/lang/String.valueOf(p1, p2);
    v1 = "pref_new_imp_notif_time";
    Lcom/arcsoft/hpay100/a/a.e(p0, v1, v0);
    return;
.end method
.method public static a(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .prologue
    v0 = "input_method";
    v0 = p0.getSystemService(v0);
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;
    v1 = p1.getWindowToken();
    v2 = 0x0;
    v0.hideSoftInputFromWindow(v1, v2);
    return;
.end method
.method public static declared-synchronized a(Landroid/content/Context;Lcom/alipay/b/a/d;)V
    .locals 5
    .prologue
    v1 = Landroid/support/design/widget/am;;
    monitor-enter v1
    :try_start_0
    v0 = new JSONObject();
    v0.<init>();
    v2 = "apdid";
    v3 = p1.a();
    v0.put(v2, v3);
    v2 = "deviceInfoHash";
    v3 = p1.b();
    v0.put(v2, v3);
    v2 = "token";
    v3 = p1.c();
    v0.put(v2, v3);
    v2 = "timestamp";
    v3 = p1.d();
    v0.put(v2, v3);
    v0 = v0.toString();
    v2 = invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;
    v2 = Lcom/alipay/security/mobile/module/a/a/b.a(v2, v0);
    v3 = Landroid/support/design/widget/am.a(v2);
    if (v3 != 0) {
//       if-nez v3, :cond_0
    }
    v3 = new HashMap();
    v3.<init>();
    v4 = "deviceid";
    v3.put(v4, v2);
    v2 = "vkeyid_profiles_v3";
    Lcom/arcsoft/hpay100/a/a.a(p0, v2, v3);
    :cond_0
    Landroid/support/design/widget/am.a(v0);
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result v2
    if (v2 != 0) {
//       if-nez v2, :cond_1
    }
    :try_start_1
    v2 = invoke-static {}, Lcom/alipay/security/mobile/module/a/a/b;->a()Ljava/lang/String;
    v0 = Lcom/alipay/security/mobile/module/a/a/b.a(v2, v0);
    v2 = new JSONObject();
    v2.<init>();
    v3 = "wxcasxx";
    v2.put(v3, v0);
    v0 = "wxcasxx_v3";
    v2 = v2.toString();
    Landroid/support/design/widget/am.c(v0, v2);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    :cond_1
    :goto_0
    monitor-exit v1
    return;
    :catch_0
    move-exception v0
    :try_start_2
    Lcom/alipay/security/mobile/module/a/a.a(v0);
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    goto :goto_0
    :catchall_0
    move-exception v0
    monitor-exit v1
    throw v0
    :catch_1
    move-exception v0
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 6
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/c;->h;
    v1 = "played_game.txt";
    v0 = Lcom/arcsoft/hpay100/a/a.k(v0, v1);
    check-cast v0, Ljava/util/List;
    if (v0 != 0) {
//       if-nez v0, :cond_3
    }
    v0 = new ArrayList();
    v0.<init>();
    v1 = v0;
    :goto_0
    v2 = 0x0;
    v3 = v1.iterator();
    :cond_0
    v0 = v3.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = v3.next();
    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Game;
    v4 = v0.get_id();
    v5 = p1.get_id();
    v4 = v4.equals(v5);
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    :goto_1
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v1.remove(v0);
    :cond_1
    v0 = 0x0;
    v1.add(v0, p1);
    v0 = Lcom/ushaqi/zhuishushenqi/c;->h;
    v2 = "played_game.txt";
    Lcom/arcsoft/hpay100/a/a.a(v1, v0, v2);
    Landroid/support/design/widget/am.b(p0, p1);
    return;
    :cond_2
    v0 = v2;
    goto :goto_1
    :cond_3
    v1 = v0;
    goto :goto_0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .prologue
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    if (p1 == 0) {
//       if-eqz p1, :cond_0
    }
    v0 = "clipboard";
    v0 = p0.getSystemService(v0);
    check-cast v0, Landroid/text/ClipboardManager;
    v0.setText(p1);
    :cond_0
    return;
.end method
.method public static a(Landroid/widget/EditText;Ljava/lang/String;)V
    .locals 2
    .prologue
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0 = v0.a(p1);
    v1 = Lcom/arcsoft/hpay100/a/a.Q(v0);
    if (v1 != 0) {
//       if-nez v1, :cond_0
    }
    p0.setText(v0);
    p0.requestFocus();
    v0 = v0.length();
    p0.setSelection(v0);
    :cond_0
    return;
.end method
.method public static a(Landroid/os/AsyncTask;)Z
    .locals 2
    .prologue
    if (p0 == 0) {
//       if-eqz p0, :cond_0
    }
    v0 = p0.getStatus();
    v1 = Landroid/os/AsyncTask$Status;->FINISHED;
    if (v0 == v1) {
//       if-eq v0, v1, :cond_0
    }
    v0 = p0.isCancelled();
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
.method public static a(Ljava/lang/String;)Z
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
.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_1
    }
    if (p1 != 0) {
//       if-nez p1, :cond_0
    }
    v0 = 0x1;
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
    :cond_1
    v0 = p0.equals(p1);
    goto :goto_0
.end method
.method public static b(Landroid/content/Context;I)I
    .locals 3
    .prologue
    v2 = 0x0;
    v0 = p0.getTheme();
    v1 = 0x1;
    new-array v1, v1, [I
    v1[v2] = p1;
    v0 = v0.obtainStyledAttributes(v1);
    v1 = v0.getResourceId(v2, v2);
    v0.recycle();
    return v1
.end method
.method public static b(Ljava/lang/String;I)I
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
    p1 = 0x7fffffff;
    :goto_0
    return p1
    :cond_0
    v2 = 0x0;
    cmp-long v2, v0, v2
    if (v2 >= 0) {
//       if-gez v2, :cond_1
    }
    p1 = 0x0;
    goto :goto_0
    :cond_1
    long-to-int p1, v0
    goto :goto_0
    :catch_0
    move-exception v0
    goto :goto_0
.end method
.method public static b(Landroid/app/Activity;)Landroid/util/DisplayMetrics;
    .locals 2
    .prologue
    v0 = new DisplayMetrics();
    v0.<init>();
    v1 = p0.getWindowManager();
    v1 = v1.getDefaultDisplay();
    v1.getMetrics(v0);
    return v0;
.end method
.method public static declared-synchronized b(Landroid/content/Context;)Lcom/alipay/b/a/d;
    .locals 8
    .prologue
    v0 = 0x0;
    v2 = Landroid/support/design/widget/am;;
    monitor-enter v2
    :try_start_0
    v1 = Landroid/support/design/widget/am.A(p0);
    Landroid/support/design/widget/am.a(v1);
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result v3
    if (v3 == 0) {
//       if-eqz v3, :cond_0
    }
    :goto_0
    monitor-exit v2
    return v0;
    :cond_0
    :try_start_1
    v3 = new JSONObject();
    v3.<init>(v1);
    v1 = new d();
    v4 = "apdid";
    v4 = v3.optString(v4);
    v5 = "deviceInfoHash";
    v5 = v3.optString(v5);
    v6 = "token";
    v6 = v3.optString(v6);
    v7 = "timestamp";
    v3 = v3.optString(v7);
    v1.<init>(v4, v5, v6, v3);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    v0 = v1;
    goto :goto_0
    :catch_0
    move-exception v1
    :try_start_2
    Lcom/alipay/security/mobile/module/a/a.a(v1);
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    goto :goto_0
    :catchall_0
    move-exception v0
    monitor-exit v2
    throw v0
.end method
.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .prologue
    if (p1 != 0) {
//       if-nez p1, :cond_0
    }
    p1 = 0x0;
    :goto_0
    return p1;
    :cond_0
    :try_start_0
    v1 = Lcom/ushaqi/zhuishushenqi/util/H.a(p0);
    v0 = p1.length();
    new-array v2, v0, [C
    v0 = 0x0;
    :goto_1
    v3 = p1.length();
    if (v0 >= v3) {
//       if-ge v0, v3, :cond_1
    }
    v3 = p1.charAt(v0);
    v3 = v1.a(v3);
    v3 = v3.charValue();
    v2[v0] = v3;
    v0 = v0 + 0x1;
    goto :goto_1
    :cond_1
    v0 = new String();
    v0.<init>(v2);
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    p1 = v0;
    goto :goto_0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
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
.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .prologue
    v1 = 0x0;
    :try_start_0
    v3 = new File();
    v3.<init>(p0, p1);
    v3.exists();
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result v0
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = 0x0;
    :try_start_1
    v0.close();
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    :goto_0
    v0 = v1;
    :goto_1
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
    :cond_0
    :try_start_2
    v4 = v3.length();
    long-to-int v0, v4
    new-array v0, v0, [C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    :try_start_3
    v2 = new FileReader();
    v2.<init>(v3);
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    :try_start_4
    v2.read(v0);
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    :try_start_5
    v2.close();
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    :goto_2
    v0 = Ljava/lang/String.valueOf(v0);
    goto :goto_1
    :catch_1
    move-exception v1
    v1.printStackTrace();
    goto :goto_2
    :catch_2
    move-exception v0
    v2 = v1;
    v6 = v1;
    v1 = v0;
    v0 = v6;
    :goto_3
    :try_start_6
    v1.getMessage();
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    :try_start_7
    v2.close();
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    goto :goto_2
    :catch_3
    move-exception v1
    v1.printStackTrace();
    goto :goto_2
    :catchall_0
    move-exception v0
    :goto_4
    :try_start_8
    v1.close();
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    :goto_5
    throw v0
    :catch_4
    move-exception v1
    v1.printStackTrace();
    goto :goto_5
    :catchall_1
    move-exception v0
    v1 = v2;
    goto :goto_4
    :catch_5
    move-exception v2
    v6 = v2;
    v2 = v1;
    v1 = v6;
    goto :goto_3
    :catch_6
    move-exception v1
    goto :goto_3
.end method
.method public static b(Landroid/content/Context;J)V
    .locals 3
    .prologue
    v0 = Ljava/lang/String.valueOf(p1, p2);
    v1 = "pref_new_unimp_notif_time";
    Lcom/arcsoft/hpay100/a/a.e(p0, v1, v0);
    return;
.end method
.method public static b(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Game;)V
    .locals 4
    .prologue
    :try_start_0
    v0 = p1.getName();
    v1 = p1.getAndroidLink();
    v0 = Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity.a(p0, v0, v1);
    p0.startActivity(v0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    v1 = v0;
    instance-of v0, p0, Landroid/app/Activity;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = p0;
    check-cast v0, Landroid/app/Activity;
    v2 = "\u6e38\u620f\u8f7d\u5165\u51fa\u9519\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5";
    Lcom/ushaqi/zhuishushenqi/util/e.a(v0, v2);
    :cond_0
    v0 = "zhuishu_catch_exception";
    v2 = new StringBuilder();
    v3 = "AppHelper_launchMicroGame:";
    v2.<init>(v3);
    v1 = v1.getMessage();
    v1 = v2.append(v1);
    v1 = v1.toString();
    Lcom/umeng/a/b.a(p0, v0, v1);
    goto :goto_0
.end method
.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
    .prologue
    :try_start_0
    v0 = p0.getPackageManager();
    v1 = p0.getPackageName();
    v2 = 0x80;
    v0 = v0.getApplicationInfo(v1, v2);
    v1 = v0.Landroid/content/pm/ApplicationInfo;->metaData;
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = v0.Landroid/content/pm/ApplicationInfo;->metaData;
    v0.get(p1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .prologue
    v0 = 0x4;
    :try_start_0
    v0 = Ljava/nio/ByteBuffer.allocate(v0);
    v1 = Ljava/nio/ByteOrder;->LITTLE_ENDIAN;
    v0 = v0.order(v1);
    v1 = p0.length();
    v0 = v0.putInt(v1);
    v0 = v0.array();
    v1 = new ByteArrayOutputStream();
    v2 = p0.length();
    v1.<init>(v2);
    v2 = new GZIPOutputStream();
    v2.<init>(v1);
    v3 = "UTF-8";
    v3 = p0.getBytes(v3);
    v2.write(v3);
    v2.close();
    v1.close();
    v2 = v1.toByteArray();
    v2 = v2.length;
    v2 = v2 + 0x4;
    new-array v2, v2, [B
    v3 = 0x0;
    v4 = 0x0;
    v5 = 0x4;
    Ljava/lang/System.arraycopy(v0, v3, v2, v4, v5);
    v0 = v1.toByteArray();
    v3 = 0x0;
    v4 = 0x4;
    v1 = v1.toByteArray();
    v1 = v1.length;
    Ljava/lang/System.arraycopy(v0, v3, v2, v4, v1);
    v0 = 0x8;
    Landroid/util/Base64.encodeToString(v2, v0);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_0
    return v0;
    :catch_0
    move-exception v0
    v0 = "";
    goto :goto_0
.end method
.method public static declared-synchronized c(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
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
    v1 = Landroid/support/design/widget/am;;
    monitor-enter v1
    :try_start_0
    v0 = new HashMap();
    v0.<init>();
    v2 = "AA1";
    v3 = p0.getPackageName();
    v0.put(v2, v3);
    v2 = "AA2";
    v3 = Landroid/support/design/widget/am.B(p0);
    v0.put(v2, v3);
    v2 = "AA3";
    v3 = "security-sdk-token";
    v0.put(v2, v3);
    v2 = "AA4";
    v3 = "3.0.2.20150525";
    v0.put(v2, v3);
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    monitor-exit v1
    return v0;
    :catchall_0
    move-exception v0
    monitor-exit v1
    throw v0
.end method
.method public static c(Ljava/lang/String;I)V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/db/BookReadRecord.get(p0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0.setReadMode(p1);
    v0.save();
    :goto_0
    return;
    :cond_0
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0.a(p1);
    goto :goto_0
.end method
.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .prologue
    :try_start_0
    v0 = Lcom/arcsoft/hpay100/a/a.c(p1);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    Ljava/lang/System.setProperty(p0, p1);
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_6
    :cond_0
    :goto_0
    invoke-static {}, Landroid/support/v7/app/f;->c()Z
    move-result v0
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = new StringBuilder();
    v1 = ".SystemConfig";
    v0.<init>(v1);
    v1 = Ljava/io/File;->separator;
    v0 = v0.append(v1);
    v0 = v0.append(p0);
    v0 = v0.toString();
    :try_start_1
    invoke-static {}, Landroid/support/v7/app/f;->c()Z
    move-result v1
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v1 = new File();
    v2 = invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    v1.<init>(v2, v0);
    v0 = v1.exists();
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = v1.getParentFile();
    v0.mkdirs();
    :cond_1
    v0 = v1.getAbsolutePath();
    v2 = new File();
    v2.<init>(v0);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    v1 = 0x0;
    :try_start_2
    v0 = new FileWriter();
    v3 = 0x0;
    v0.<init>(v2, v3);
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    :try_start_3
    v0.write(p1);
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    :try_start_4
    v0.close();
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    :cond_2
    :goto_1
    return;
    :catch_0
    move-exception v0
    v0 = v1;
    :goto_2
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    :try_start_5
    v0.close();
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    goto :goto_1
    :catch_1
    move-exception v0
    goto :goto_1
    :catchall_0
    move-exception v0
    :goto_3
    if (v1 == 0) {
//       if-eqz v1, :cond_3
    }
    :try_start_6
    v1.close();
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    :cond_3
    :goto_4
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    :catch_2
    move-exception v0
    goto :goto_1
    :catch_3
    move-exception v0
    goto :goto_1
    :catch_4
    move-exception v1
    goto :goto_4
    :catchall_1
    move-exception v1
    v4 = v1;
    v1 = v0;
    v0 = v4;
    goto :goto_3
    :catch_5
    move-exception v1
    goto :goto_2
    :catch_6
    move-exception v0
    goto :goto_0
.end method
.method public static declared-synchronized d()Lcom/alipay/b/a/d;
    .locals 8
    .prologue
    v0 = 0x0;
    v2 = Landroid/support/design/widget/am;;
    monitor-enter v2
    :try_start_0
    v1 = invoke-static {}, Landroid/support/design/widget/am;->i()Ljava/lang/String;
    Landroid/support/design/widget/am.a(v1);
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result v3
    if (v3 == 0) {
//       if-eqz v3, :cond_0
    }
    :goto_0
    monitor-exit v2
    return v0;
    :cond_0
    :try_start_1
    v3 = new JSONObject();
    v3.<init>(v1);
    v1 = new d();
    v4 = "apdid";
    v4 = v3.optString(v4);
    v5 = "deviceInfoHash";
    v5 = v3.optString(v5);
    v6 = "token";
    v6 = v3.optString(v6);
    v7 = "timestamp";
    v3 = v3.optString(v7);
    v1.<init>(v4, v5, v6, v3);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    v0 = v1;
    goto :goto_0
    :catch_0
    move-exception v1
    :try_start_2
    Lcom/alipay/security/mobile/module/a/a.a(v1);
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    goto :goto_0
    :catchall_0
    move-exception v0
    monitor-exit v2
    throw v0
.end method
.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .prologue
    v0 = "alipay_vkey_random";
    v1 = "random";
    v2 = "";
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0, v1, v2);
    v1 = Landroid/support/design/widget/am.a(v0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
    v0 = v0.toString();
    v0 = Lcom/arcsoft/hpay100/a/a.b(v0);
    v1 = "alipay_vkey_random";
    v2 = "random";
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v3 = 0x0;
    v1 = p0.getSharedPreferences(v1, v3);
    v1 = v1.edit();
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v1.clear();
    v1.putString(v2, v0);
    v1.commit();
    :cond_0
    return v0;
.end method
.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = "";
    :try_start_0
    Ljava/lang/System.getProperty(p0);
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    :goto_0
    v1 = Lcom/arcsoft/hpay100/a/a.c(v0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = new StringBuilder();
    v1 = ".SystemConfig";
    v0.<init>(v1);
    v1 = Ljava/io/File;->separator;
    v0 = v0.append(v1);
    v0 = v0.append(p0);
    v0 = v0.toString();
    v0 = Landroid/support/v7/app/f.b(v0);
    :cond_0
    return v0;
    :catch_0
    move-exception v1
    goto :goto_0
.end method
.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = p0.getPackageManager();
    v0 = v0.getLaunchIntentForPackage(p1);
    :try_start_0
    p0.startActivity(v0);
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    goto :goto_0
.end method
.method public static e()Lcom/ushaqi/zhuishushenqi/model/Account;
    .locals 7
    .prologue
    v1 = 0x0;
    v2 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0 = "user.id";
    v3 = v2.a(v0);
    v0 = "account.token";
    v4 = v2.a(v0);
    if (v3 == 0) {
//       if-eqz v3, :cond_0
    }
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    v0 = new Account();
    v0.<init>();
    v5 = new User();
    v5.<init>();
    v5.setId(v3);
    v3 = "user.name";
    v3 = v2.a(v3);
    v5.setNickname(v3);
    v3 = "user.avatar";
    v3 = v2.a(v3);
    v5.setAvatar(v3);
    v3 = "user.lv";
    v3 = v2.a(v3);
    v6 = 0x0;
    v3 = Lcom/arcsoft/hpay100/a/a.b(v3, v6);
    v5.setLv(v3);
    v3 = "user.gender";
    v2 = v2.a(v3);
    v5.setGender(v2);
    v2 = 0x1;
    v0.setOk(v2);
    v0.setToken(v4);
    v0.setUser(v5);
    :goto_0
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v2 = v0.getToken();
    if (v2 == 0) {
//       if-eqz v2, :cond_1
    }
    :goto_1
    return v0;
    :cond_0
    v0 = v1;
    goto :goto_0
    :cond_1
    v0 = v1;
    goto :goto_1
.end method
.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return v0;
    :cond_0
    :try_start_0
    v1 = "UTF-8";
    Ljava/net/URLEncoder.encode(p0, v1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    goto :goto_0
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
.method public static e(Landroid/content/Context;)Z
    .locals 6
    .prologue
    v2 = 0x0;
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I
    move-result v3
    v0 = "activity";
    v0 = p0.getSystemService(v0);
    check-cast v0, Landroid/app/ActivityManager;
    v0 = v0.getRunningAppProcesses();
    v4 = v0.iterator();
    v1 = v2;
    :cond_0
    :goto_0
    v4.hasNext();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result v0
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = v1;
    :goto_1
    v1 = Landroid/text/TextUtils.isEmpty(v0);
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    v1 = p0.getPackageName();
    v0 = v1.equals(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    :cond_1
    v0 = 0x1;
    :goto_2
    return v0
    :cond_2
    :try_start_1
    v0 = v4.next();
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;
    v5 = v0.Landroid/app/ActivityManager$RunningAppProcessInfo;->pid;
    if (v5 != v3) {
//       if-ne v5, v3, :cond_0
    }
    v0 = v0.Landroid/app/ActivityManager$RunningAppProcessInfo;->processName;
    v0.trim();
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    move-result-object v1
    goto :goto_0
    :catch_0
    move-exception v0
    v0 = v2;
    goto :goto_1
    :cond_3
    v0 = 0x0;
    goto :goto_2
.end method
.method public static f(Landroid/content/Context;)I
    .locals 2
    .prologue
    v0 = 0x0;
    v1 = Landroid/support/design/widget/am.C(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = v1.Landroid/content/pm/PackageInfo;->versionCode;
    :cond_0
    return v0
.end method
.method public static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return v0;
    :cond_0
    :try_start_0
    v1 = "UTF-8";
    Ljava/net/URLDecoder.decode(p0, v1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-object v0
    goto :goto_0
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
.method public static f()Z
    .locals 2
    .prologue
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getAll()Ljava/util/List;
    v0 = v0.size();
    v1 = 0x12c;
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
.method public static g(Ljava/lang/String;)I
    .locals 2
    .prologue
    v0 = 0x0;
    v1 = Landroid/support/design/widget/am.h(p0);
    if (v1 != 0) {
//       if-nez v1, :cond_1
    }
    :cond_0
    :goto_0
    return v0
    :cond_1
    v1 = Lcom/ushaqi/zhuishushenqi/db/BookDlRecord.get(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = v1.getStatus();
    goto :goto_0
.end method
.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = "";
    v1 = Landroid/support/design/widget/am.C(p0);
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    v0 = v1.Landroid/content/pm/PackageInfo;->versionName;
    :cond_0
    return v0;
.end method
.method public static g()Z
    .locals 1
    .prologue
    v0 = invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;
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
.method public static h()Ljava/lang/String;
    .locals 2
    .prologue
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0 = v0.getContentResolver();
    v1 = "android_id";
    v0 = Landroid/provider/Settings$Secure.getString(v0, v1);
    return v0;
.end method
.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = "pref_new_imp_notif_time";
    v1 = 0x0;
    v0 = Lcom/arcsoft/hpay100/a/a.d(p0, v0, v1);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = "0";
    v1 = "pref_new_imp_notif_time";
    Lcom/arcsoft/hpay100/a/a.e(p0, v1, v0);
    :cond_0
    return v0;
.end method
.method public static h(Ljava/lang/String;)Z
    .locals 1
    .prologue
    v0 = invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0 = v0.f();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v0.contains(p0);
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
.method private static i()Ljava/lang/String;
    .locals 2
    .prologue
    v0 = "wxcasxx_v3";
    v0 = Landroid/support/design/widget/am.d(v0);
    :try_start_0
    v1 = new JSONObject();
    v1.<init>(v0);
    v0 = "wxcasxx";
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
.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .prologue
    v0 = "pref_new_unimp_notif_time";
    v1 = 0x0;
    v0 = Lcom/arcsoft/hpay100/a/a.d(p0, v0, v1);
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = "0";
    v1 = "pref_new_unimp_notif_time";
    Lcom/arcsoft/hpay100/a/a.e(p0, v1, v0);
    :cond_0
    return v0;
.end method
.method public static i(Ljava/lang/String;)Z
    .locals 1
    .prologue
    :try_start_0
    Ljava/lang/Class.forName(p0);
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    v0 = 0x1;
    :goto_0
    return v0
    :catch_0
    move-exception v0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static j(Landroid/content/Context;)V
    .locals 2
    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v0
    Landroid/support/design/widget/am.a(p0, v0, v1);
    return;
.end method
.method public static k(Landroid/content/Context;)I
    .locals 4
    .prologue
    v0 = 0x0;
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    :goto_0
    return v0
    :cond_0
    :try_start_0
    v1 = "com.android.internal.R$dimen";
    v1 = Ljava/lang/Class.forName(v1);
    v2 = v1.newInstance();
    v3 = "status_bar_height";
    v1 = v1.getField(v3);
    v1 = v1.get(v2);
    v1 = v1.toString();
    v1 = Ljava/lang/Integer.parseInt(v1);
    v2 = p0.getResources();
    v2.getDimensionPixelSize(v1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result v0
    goto :goto_0
    :catch_0
    move-exception v1
    v1.printStackTrace();
    goto :goto_0
.end method
.method public static l(Landroid/content/Context;)I
    .locals 5
    .prologue
    v0 = 0x0;
    v1 = new TypedValue();
    v1.<init>();
    v2 = p0.getTheme();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v2 = p0.getTheme();
    v3 = 0x7f010117;
    v4 = 0x1;
    v2 = v2.resolveAttribute(v3, v1, v4);
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v0 = v1.Landroid/util/TypedValue;->data;
    v1 = p0.getResources();
    v1 = v1.getDisplayMetrics();
    v0 = Landroid/util/TypedValue.complexToDimensionPixelSize(v0, v1);
    :cond_0
    return v0
.end method
.method public static m(Landroid/content/Context;)Z
    .locals 2
    .prologue
    v0 = "save_bandwidth";
    v1 = 0x0;
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0, v1);
    return v0
.end method
.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .prologue
    v0 = "UMENG_CHANNEL";
    v0 = Landroid/support/design/widget/am.c(p0, v0);
    check-cast v0, Ljava/lang/String;
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    :goto_0
    return v0;
    :cond_0
    v0 = "";
    goto :goto_0
.end method
.method public static o(Landroid/content/Context;)Z
    .locals 4
    .prologue
    v0 = "PREF_FIRST_LAUNCH_TIME";
    v2 = 0x0;
    v0 = Lcom/arcsoft/hpay100/a/a.c(p0, v0, v2, v3);
    v2 = invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    v2 = v2.getTimeInMillis();
    v0 = v2 - v0;
    v2 = 0xf731400;
    cmp-long v0, v0, v2
    if (v0 < 0) {
//       if-ltz v0, :cond_0
    }
    v0 = 0x1;
    :goto_0
    return v0
    :cond_0
    v0 = 0x0;
    goto :goto_0
.end method
.method public static p(Landroid/content/Context;)Z
    .locals 3
    .prologue
    v0 = "is_first_launch_app";
    v1 = 0x1;
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0, v1);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v1 = "is_first_launch_app";
    v2 = 0x0;
    Lcom/arcsoft/hpay100/a/a.b(p0, v1, v2);
    :cond_0
    return v0
.end method
.method public static q(Landroid/content/Context;)Z
    .locals 1
    .prologue
    v0 = Landroid/support/design/widget/am.o(p0);
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = Landroid/support/design/widget/am.r(p0);
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
.method public static r(Landroid/content/Context;)Z
    .locals 7
    .prologue
    v4 = 0x0;
    v0 = 0x1;
    v1 = 0x0;
    v2 = "remove_ad_duration";
    v2 = Lcom/arcsoft/hpay100/a/a.a(p0, v2, v4, v5);
    cmp-long v2, v2, v4
    if (v2 > 0) {
//       if-gtz v2, :cond_2
    }
    v3 = Landroid/support/design/widget/am.n(p0);
    v2 = "hide_all_ads_channel";
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
    v2 = v0;
    :goto_1
    if (v2 != 0) {
//       if-nez v2, :cond_2
    }
    :goto_2
    return v0
    :cond_0
    v2 = v2 + 0x1;
    goto :goto_0
    :cond_1
    v2 = v1;
    goto :goto_1
    :cond_2
    v0 = v1;
    goto :goto_2
.end method
.method public static s(Landroid/content/Context;)V
    .locals 6
    .prologue
    v5 = 0x0;
    v0 = Landroid/support/design/widget/am.C(p0);
    v1 = v0.Landroid/content/pm/PackageInfo;->packageName;
    invoke-static {}, Landroid/os/Process;->myPid()I
    move-result v2
    v0 = "activity";
    v0 = p0.getSystemService(v0);
    check-cast v0, Landroid/app/ActivityManager;
    v0 = v0.getRunningAppProcesses();
    v3 = v0.iterator();
    :cond_0
    v0 = v3.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = v3.next();
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;
    v4 = v0.Landroid/app/ActivityManager$RunningAppProcessInfo;->pid;
    if (v4 != v2) {
//       if-ne v4, v2, :cond_0
    }
    v0 = v0.Landroid/app/ActivityManager$RunningAppProcessInfo;->processName;
    :goto_0
    v0 = v1.equals(v0);
    if (v0 != 0) {
//       if-nez v0, :cond_3
    }
    :cond_1
    :goto_1
    return;
    :cond_2
    v0 = 0x0;
    goto :goto_0
    :cond_3
    v0 = "key_short_cut";
    v0 = Lcom/arcsoft/hpay100/a/a.a(p0, v0, v5);
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = new Intent();
    v1 = "com.android.launcher.action.INSTALL_SHORTCUT";
    v0.<init>(v1);
    v1 = "duplicate";
    v0.putExtra(v1, v5);
    v1 = "android.intent.extra.shortcut.NAME";
    v2 = 0x7f050063;
    v2 = p0.getString(v2);
    v0.putExtra(v1, v2);
    v1 = 0x7f020185;
    v1 = Landroid/content/Intent$ShortcutIconResource.fromContext(p0, v1);
    v2 = "android.intent.extra.shortcut.ICON_RESOURCE";
    v0.putExtra(v2, v1);
    v1 = "android.intent.extra.shortcut.INTENT";
    v2 = new Intent();
    v3 = Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;;
    v2.<init>(p0, v3);
    v0.putExtra(v1, v2);
    p0.sendBroadcast(v0);
    v0 = "key_short_cut";
    v1 = 0x1;
    Lcom/arcsoft/hpay100/a/a.b(p0, v0, v1);
    goto :goto_1
.end method
.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .prologue
    v0 = "phone";
    v0 = p0.getSystemService(v0);
    check-cast v0, Landroid/telephony/TelephonyManager;
    v0 = v0.getDeviceId();
    return v0;
.end method
.method public static u(Landroid/content/Context;)I
    .locals 2
    .prologue
    v0 = Lu/a/c.a(p0);
    v1 = "umeng_common_progress_text";
    v0 = v0.a(v1);
    return v0
.end method
.method public static v(Landroid/content/Context;)I
    .locals 2
    .prologue
    v0 = Lu/a/c.a(p0);
    v1 = "umeng_common_icon_view";
    v0 = v0.a(v1);
    return v0
.end method
.method public static w(Landroid/content/Context;)I
    .locals 2
    .prologue
    v0 = Lu/a/c.a(p0);
    v1 = "umeng_common_progress_bar";
    v0 = v0.a(v1);
    return v0
.end method
.method public static x(Landroid/content/Context;)I
    .locals 2
    .prologue
    v0 = Lu/a/c.a(p0);
    v1 = "umeng_common_title";
    v0 = v0.a(v1);
    return v0
.end method
.method public static y(Landroid/content/Context;)I
    .locals 2
    .prologue
    v0 = Lu/a/c.a(p0);
    v1 = "umeng_common_rich_notification_continue";
    v0 = v0.a(v1);
    return v0
.end method
.method public static z(Landroid/content/Context;)I
    .locals 2
    .prologue
    v0 = Lu/a/c.a(p0);
    v1 = "umeng_common_rich_notification_cancel";
    v0 = v0.a(v1);
    return v0
.end method
# virtual methods
.method public final a()I
    .locals 1
    .prologue
    v0 = p0.Landroid/support/design/widget/am;->b;
    return v0
.end method
.method public final a(Ljava/lang/CharSequence;)Landroid/support/design/widget/am;
    .locals 2
    .prologue
    p0.Landroid/support/design/widget/am;->a = p1;
    v0 = p0.Landroid/support/design/widget/am;->b;
    if (v0 < 0) {
//       if-ltz v0, :cond_0
    }
    v0 = p0.Landroid/support/design/widget/am;->c;
    v1 = p0.Landroid/support/design/widget/am;->b;
    Landroid/support/design/widget/TabLayout.a(v0, v1);
    :cond_0
    return p0;
.end method
.method final a(I)V
    .locals 0
    .prologue
    p0.Landroid/support/design/widget/am;->b = p1;
    return;
.end method
.method public final b()Ljava/lang/CharSequence;
    .locals 1
    .prologue
    v0 = p0.Landroid/support/design/widget/am;->a;
    return v0;
.end method
.method public final c()V
    .locals 1
    .prologue
    v0 = p0.Landroid/support/design/widget/am;->c;
    v0.a(p0);
    return;
.end method
