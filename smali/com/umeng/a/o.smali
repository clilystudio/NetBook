.class public final Lcom/umeng/a/o;
.super Ljava/lang/Object;
.source "SourceFile"
# static fields
.field private static a:Lcom/umeng/a/o;
.field private static b:Landroid/content/Context;
.field private static c:Ljava/lang/String;
.field private static d:J
# direct methods
.method static constructor <clinit>()V
    .locals 2
    .prologue
    v0 = new o();
    v0.<init>();
    sput-object v0, Lcom/umeng/a/o;->a:Lcom/umeng/a/o;
    v0 = 0x200000;
    sput-wide v0, Lcom/umeng/a/o;->d:J
    return-void
.end method
.method public constructor <init>()V
    .locals 0
    .prologue
    p0.<init>();
    return;
    .prologue
    p0.<init>();
    return;
.end method
.method public static a(Landroid/content/Context;)Lcom/umeng/a/o;
    .locals 1
    .prologue
    v0 = Lcom/umeng/a/o;->b;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = p0.getApplicationContext();
    sput-object v0, Lcom/umeng/a/o;->b:Landroid/content/Context;
    :cond_0
    v0 = Lcom/umeng/a/o;->c;
    if (v0 != 0) {
//       if-nez v0, :cond_1
    }
    v0 = p0.getPackageName();
    sput-object v0, Lcom/umeng/a/o;->c:Ljava/lang/String;
    :cond_1
    v0 = Lcom/umeng/a/o;->a;
    return v0;
.end method
.method public static a(II)V
    .locals 4
    .prologue
    v0 = Lcom/umeng/a/o;->b;
    Lcom/umeng/a/o.a(v0);
    v0 = invoke-static {}, Lcom/umeng/a/o;->g()Landroid/content/SharedPreferences;
    v0 = v0.edit();
    v1 = "umeng_net_report_policy";
    v0.putInt(v1, p0);
    v1 = "umeng_net_report_interval";
    int-to-long v2, p1
    v0.putLong(v1, v2, v3);
    v0.commit();
    return;
.end method
.method public static g()Landroid/content/SharedPreferences;
    .locals 3
    .prologue
    v0 = Lcom/umeng/a/o;->b;
    v1 = new StringBuilder();
    v2 = "mobclick_agent_online_setting_";
    v1.<init>(v2);
    v2 = Lcom/umeng/a/o;->c;
    v1 = v1.append(v2);
    v1 = v1.toString();
    v2 = 0x0;
    v0 = v0.getSharedPreferences(v1, v2);
    return v0;
.end method
.method private static h()Ljava/lang/String;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v1 = "mobclick_agent_cached_";
    v0.<init>(v1);
    v1 = Lcom/umeng/a/o;->c;
    v0 = v0.append(v1);
    v1 = Lcom/umeng/a/o;->b;
    v1 = Lu/aly/bs.a(v1);
    v0 = v0.append(v1);
    v0 = v0.toString();
    return v0;
.end method
.method private static i()Ljava/lang/String;
    .locals 2
    .prologue
    v0 = new StringBuilder();
    v1 = "mobclick_agent_sealed_";
    v0.<init>(v1);
    v1 = Lcom/umeng/a/o;->c;
    v0 = v0.append(v1);
    v0 = v0.toString();
    return v0;
.end method
# virtual methods
.method public final a([B)V
    .locals 3
    .prologue
    v0 = invoke-static {}, Lcom/umeng/a/o;->h()Ljava/lang/String;
    :try_start_0
    v1 = new File();
    v2 = Lcom/umeng/a/o;->b;
    v2 = v2.getFilesDir();
    v1.<init>(v2, v0);
    Lu/aly/bx.a(v1, p1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    v1 = "MobclickAgent";
    v0 = v0.getMessage();
    Lu/aly/bt.b(v1, v0);
    goto :goto_0
.end method
.method public final a()[I
    .locals 8
    .prologue
    v6 = 0x0;
    v5 = 0x0;
    v3 = -0x1;
    v4 = 0x1;
    v0 = invoke-static {}, Lcom/umeng/a/o;->g()Landroid/content/SharedPreferences;
    v1 = 0x2;
    new-array v1, v1, [I
    v2 = "umeng_net_report_policy";
    v2 = v0.getInt(v2, v3);
    if (v2 == v3) {
//       if-eq v2, v3, :cond_0
    }
    v2 = "umeng_net_report_policy";
    v2 = v0.getInt(v2, v4);
    v1[v5] = v2;
    v2 = "umeng_net_report_interval";
    v2 = v0.getLong(v2, v6, v7);
    long-to-int v0, v2
    v1[v4] = v0;
    :goto_0
    return v1;
    :cond_0
    v2 = "umeng_local_report_policy";
    v2 = v0.getInt(v2, v4);
    v1[v5] = v2;
    v2 = "umeng_local_report_interval";
    v2 = v0.getLong(v2, v6, v7);
    long-to-int v0, v2
    v1[v4] = v0;
    goto :goto_0
.end method
.method public final b([B)V
    .locals 3
    .prologue
    :try_start_0
    v0 = new File();
    v1 = Lcom/umeng/a/o;->b;
    v1 = v1.getFilesDir();
    v2 = invoke-static {}, Lcom/umeng/a/o;->i()Ljava/lang/String;
    v0.<init>(v1, v2);
    Lu/aly/bx.a(v0, p1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
.end method
.method public final b()[B
    .locals 8
    .prologue
    v0 = 0x0;
    v2 = invoke-static {}, Lcom/umeng/a/o;->h()Ljava/lang/String;
    v3 = new File();
    v1 = Lcom/umeng/a/o;->b;
    v1 = v1.getFilesDir();
    v3.<init>(v1, v2);
    v4 = v3.length();
    v1 = v3.exists();
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    v6 = Lcom/umeng/a/o;->d;
    cmp-long v1, v4, v6
    if (v1 <= 0) {
//       if-lez v1, :cond_1
    }
    v1 = 0x1;
    :goto_0
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v3.delete();
    :cond_0
    :goto_1
    return v0;
    :cond_1
    v1 = 0x0;
    goto :goto_0
    :cond_2
    v1 = v3.exists();
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    :try_start_0
    v1 = Lcom/umeng/a/o;->b;
    v1.openFileInput(v2);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v2
    :try_start_1
    Lu/aly/bx.b(v2);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    move-result-object v0
    Lu/aly/bx.c(v2);
    goto :goto_1
    :catch_0
    move-exception v1
    v2 = v0;
    :goto_2
    :try_start_2
    v1.printStackTrace();
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    Lu/aly/bx.c(v2);
    goto :goto_1
    :catchall_0
    move-exception v1
    v2 = v0;
    v0 = v1;
    :goto_3
    Lu/aly/bx.c(v2);
    throw v0
    :catchall_1
    move-exception v0
    goto :goto_3
    :catch_1
    move-exception v1
    goto :goto_2
.end method
.method public final c()V
    .locals 3
    .prologue
    v0 = Lcom/umeng/a/o;->b;
    v1 = new StringBuilder();
    v2 = "mobclick_agent_header_";
    v1.<init>(v2);
    v2 = Lcom/umeng/a/o;->c;
    v1 = v1.append(v2);
    v1 = v1.toString();
    v0.deleteFile(v1);
    v0 = Lcom/umeng/a/o;->b;
    v1 = invoke-static {}, Lcom/umeng/a/o;->h()Ljava/lang/String;
    v0.deleteFile(v1);
    return;
.end method
.method public final d()[B
    .locals 8
    .prologue
    v1 = 0x0;
    v0 = invoke-static {}, Lcom/umeng/a/o;->i()Ljava/lang/String;
    v3 = new File();
    v2 = Lcom/umeng/a/o;->b;
    v2 = v2.getFilesDir();
    v3.<init>(v2, v0);
    :try_start_0
    v2 = v3.exists();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v3.length();
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    move-result-wide v4
    v6 = 0x0;
    cmp-long v2, v4, v6
    if (v2 > 0) {
//       if-gtz v2, :cond_1
    }
    :cond_0
    v0 = v1;
    :goto_0
    return v0;
    :cond_1
    :try_start_1
    v2 = Lcom/umeng/a/o;->b;
    v2.openFileInput(v0);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    move-result-object v2
    :try_start_2
    Lu/aly/bx.b(v2);
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    move-result-object v0
    :try_start_3
    Lu/aly/bx.c(v2);
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    goto :goto_0
    :catch_0
    move-exception v0
    v3.delete();
    v0.printStackTrace();
    :goto_1
    v0 = v1;
    goto :goto_0
    :catch_1
    move-exception v0
    v2 = v1;
    :goto_2
    :try_start_4
    v0.printStackTrace();
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    :try_start_5
    Lu/aly/bx.c(v2);
    goto :goto_1
    :catchall_0
    move-exception v0
    v2 = v1;
    :goto_3
    Lu/aly/bx.c(v2);
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    :catchall_1
    move-exception v0
    goto :goto_3
    :catch_2
    move-exception v0
    goto :goto_2
.end method
.method public final e()V
    .locals 4
    .prologue
    v0 = invoke-static {}, Lcom/umeng/a/o;->i()Ljava/lang/String;
    v1 = Lcom/umeng/a/o;->b;
    v0 = v1.deleteFile(v0);
    v1 = "--->";
    v2 = new StringBuilder();
    v3 = "delete envelope:";
    v2.<init>(v3);
    v0 = v2.append(v0);
    v0 = v0.toString();
    Lu/aly/bt.a(v1, v0);
    return;
.end method
.method public final f()Z
    .locals 4
    .prologue
    v0 = invoke-static {}, Lcom/umeng/a/o;->i()Ljava/lang/String;
    v1 = new File();
    v2 = Lcom/umeng/a/o;->b;
    v2 = v2.getFilesDir();
    v1.<init>(v2, v0);
    v0 = v1.exists();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v1.length();
    v2 = 0x0;
    cmp-long v0, v0, v2
    if (v0 > 0) {
//       if-gtz v0, :cond_1
    }
    :cond_0
    v0 = 0x0;
    :goto_0
    return v0
    :cond_1
    v0 = 0x1;
    goto :goto_0
.end method
