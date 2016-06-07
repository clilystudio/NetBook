.class public Lcom/ushaqi/zhuishushenqi/api/f;
.super Ljava/lang/Object;
.source "SourceFile"
# static fields
.field private static b:Lcom/ushaqi/zhuishushenqi/api/f;
# instance fields
.field private a:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
# direct methods
.method static constructor <clinit>()V
    .locals 1
    .prologue
    v0 = 0x0;
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/f;->b:Lcom/ushaqi/zhuishushenqi/api/f;
    return;
.end method
.method private constructor <init>()V
    .locals 1
    .prologue
    p0.<init>();
    v0 = 0x0;
    p0.Lcom/ushaqi/zhuishushenqi/api/f;->a = v0;
    v0 = "Mozilla/5.0 (Linux; U; Android 4.4.4; zh-cn; MI 3 Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30 SogouMSE,SogouMobileBrowser/3.6.2";
    p0.Lcom/ushaqi/zhuishushenqi/api/f;->c = v0;
    v0 = "Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/7.0 Mobile/11D257 Safari/9537.53";
    p0.Lcom/ushaqi/zhuishushenqi/api/f;->d = v0;
    v0 = "Mozilla/5.0 (Linux; U; Android 4.4.4; zh-CN; MI 3 Build/KTU84P) AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 UCBrowser/9.9.7.500 U3/0.8.0 Mobile Safari/534.30";
    p0.Lcom/ushaqi/zhuishushenqi/api/f;->e = v0;
    return;
.end method
.method public static a()Lcom/ushaqi/zhuishushenqi/api/f;
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/api/f;->b;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new f();
    v0.<init>();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/api/f;->b:Lcom/ushaqi/zhuishushenqi/api/f;
    :cond_0
    v0 = Lcom/ushaqi/zhuishushenqi/api/f;->b;
    return v0;
.end method
.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .prologue
    if (p0 != 0) {
//       if-nez p0, :cond_0
    }
    p0 = "not-found";
    :goto_0
    :pswitch_0
    return p0;
    :cond_0
    v0 = p0.length();
    packed-switch v0, :pswitch_data_0
    v0 = new StringBuilder();
    v0.<init>();
    v1 = 0x0;
    v1 = p0.charAt(v1);
    v1 = Ljava/lang/Character.toUpperCase(v1);
    v0 = v0.append(v1);
    v1 = 0x1;
    v1 = p0.substring(v1);
    v0 = v0.append(v1);
    p0 = v0.toString();
    goto :goto_0
    :pswitch_1
    p0 = p0.toUpperCase();
    goto :goto_0
    nop
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 1
    .prologue
    v0 = 0x0;
    packed-switch p1, :pswitch_data_0
    :goto_0
    :pswitch_0
    return v0;
    :pswitch_1
    v0 = "Mozilla/5.0 (iPad; CPU OS 7_1_2 like Mac OS X) AppleWebKit/537.51.2 (KHTML, like Gecko) Version/6.0 MQQBrowser/4.3 Mobile/11D257 Safari/7534.48.3";
    goto :goto_0
    :pswitch_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/api/f;->c;
    goto :goto_0
    :pswitch_3
    v0 = p0.Lcom/ushaqi/zhuishushenqi/api/f;->d;
    goto :goto_0
    :pswitch_4
    v0 = p0.Lcom/ushaqi/zhuishushenqi/api/f;->e;
    goto :goto_0
    nop
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
.method public final b()Ljava/lang/String;
    .locals 10
    .prologue
    v1 = 0x1;
    v2 = 0x0;
    v0 = p0.Lcom/ushaqi/zhuishushenqi/api/f;->a;
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v5 = Lcom/ushaqi/zhuishushenqi/api/f;;
    monitor-enter v5
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v6
    v0 = 0x0;
    :try_start_1
    v3 = v6.getPackageManager();
    v4 = v6.getPackageName();
    v7 = 0x0;
    v3.getPackageInfo(v4, v7);
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    move-result-object v0
    v3 = v0;
    :goto_0
    :try_start_2
    v0 = "not-found";
    if (v3 == 0) {
//       if-eqz v3, :cond_3
    }
    v0 = v3.Landroid/content/pm/PackageInfo;->versionName;
    v4 = v0;
    :goto_1
    v3 = "not-found";
    v0 = "phone";
    v0 = v6.getSystemService(v0);
    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    :try_start_3
    v0.getSimOperatorName();
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    move-result-object v0
    :goto_2
    :try_start_4
    v3 = "%s/%s (Android %s; %s %s / %s %s; %s)";
    v7 = 0x8;
    new-array v7, v7, [Ljava/lang/Object;
    v8 = 0x0;
    v9 = "ZhuiShuShenQi";
    v7[v8] = v9;
    v8 = 0x1;
    v7[v8] = v4;
    v4 = 0x2;
    v8 = Landroid/os/Build$VERSION;->RELEASE;
    v7[v4] = v8;
    v4 = 0x3;
    v8 = Landroid/os/Build;->MANUFACTURER;
    v8 = Lcom/ushaqi/zhuishushenqi/api/f.a(v8);
    v7[v4] = v8;
    v4 = 0x4;
    v8 = Landroid/os/Build;->DEVICE;
    v8 = Lcom/ushaqi/zhuishushenqi/api/f.a(v8);
    v7[v4] = v8;
    v4 = 0x5;
    v8 = Landroid/os/Build;->BRAND;
    v8 = Lcom/ushaqi/zhuishushenqi/api/f.a(v8);
    v7[v4] = v8;
    v4 = 0x6;
    v8 = Landroid/os/Build;->MODEL;
    v8 = Lcom/ushaqi/zhuishushenqi/api/f.a(v8);
    v7[v4] = v8;
    v4 = 0x7;
    v0 = Lcom/ushaqi/zhuishushenqi/api/f.a(v0);
    v7[v4] = v0;
    v0 = Ljava/lang/String.format(v3, v7);
    p0.Lcom/ushaqi/zhuishushenqi/api/f;->a = v0;
    v3 = new ArrayList();
    v3.<init>();
    v4 = new StringBuilder();
    v0 = "preload=";
    v4.<init>(v0);
    v0 = v6.getApplicationInfo();
    v0 = v0.Landroid/content/pm/ApplicationInfo;->flags;
    v0 = v0 & 0x1;
    if (v0 != v1) {
//       if-ne v0, v1, :cond_2
    }
    v0 = v1;
    :goto_3
    v0 = v4.append(v0);
    v0 = v0.toString();
    v3.add(v0);
    v0 = new StringBuilder();
    v1 = "locale=";
    v0.<init>(v1);
    v1 = invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    v0 = v0.append(v1);
    v0 = v0.toString();
    v3.add(v0);
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    :try_start_5
    v0 = v6.getClassLoader();
    v1 = "android.os.SystemProperties";
    v0 = v0.loadClass(v1);
    v1 = "get";
    v2 = 0x1;
    new-array v2, v2, [Ljava/lang/Class;
    v4 = 0x0;
    v6 = Ljava/lang/String;;
    v2[v4] = v6;
    v1 = v0.getMethod(v1, v2);
    v2 = new StringBuilder();
    v4 = "clientidbase=";
    v2.<init>(v4);
    v4 = 0x1;
    new-array v4, v4, [Ljava/lang/Object;
    v6 = 0x0;
    v7 = "ro.com.google.clientidbase";
    v4[v6] = v7;
    v0 = v1.invoke(v0, v4);
    v0 = v2.append(v0);
    v0 = v0.toString();
    v3.add(v0);
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    :goto_4
    :try_start_6
    v0 = v3.size();
    if (v0 <= 0) {
//       if-lez v0, :cond_0
    }
    v0 = new StringBuilder();
    v0.<init>();
    v1 = p0.Lcom/ushaqi/zhuishushenqi/api/f;->a;
    v0 = v0.append(v1);
    v1 = "[";
    v0 = v0.append(v1);
    v1 = ";";
    v1 = Landroid/text/TextUtils.join(v1, v3);
    v0 = v0.append(v1);
    v1 = "]";
    v0 = v0.append(v1);
    v0 = v0.toString();
    p0.Lcom/ushaqi/zhuishushenqi/api/f;->a = v0;
    :cond_0
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/api/f;->a;
    return v0;
    :catch_0
    move-exception v3
    v3 = v0;
    goto/16 :goto_0
    :catch_1
    move-exception v0
    v0 = v3;
    goto/16 :goto_2
    :cond_2
    v0 = v2;
    goto/16 :goto_3
    :catchall_0
    move-exception v0
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    throw v0
    :catch_2
    move-exception v0
    goto :goto_4
    :cond_3
    v4 = v0;
    goto/16 :goto_1
.end method
