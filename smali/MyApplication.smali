.class public Lcom/ushaqi/zhuishushenqi/MyApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "SourceFile"
# static fields
.field private static b:Lcom/ushaqi/zhuishushenqi/MyApplication;
# instance fields
.field public a:Lcom/ushaqi/zhuishushenqi/model/UGCNewCollection;
.field private c:Lcom/ushaqi/zhuishushenqi/reader/Reader;
.field private d:Lcom/ushaqi/zhuishushenqi/model/BookInfo;
.field private e:I
.field private f:Ljava/lang/String;
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field
.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/ushaqi/zhuishushenqi/model/ChapterLink;",
            ">;"
        }
    .end annotation
.end field
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field
.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field
.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field
# direct methods
.method static constructor <clinit>()V
    .locals 1
    .prologue
    v0 = 0x0;
    sput-object v0, Lcom/ushaqi/zhuishushenqi/MyApplication;->b:Lcom/ushaqi/zhuishushenqi/MyApplication;
    return;
.end method
.method public constructor <init>()V
    .locals 1
    .prologue
    v0 = 0x0;
    p0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->f = v0;
    p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->i = v0;
    p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->j = v0;
    p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->k = v0;
    return;
.end method
.method public static a()Lcom/ushaqi/zhuishushenqi/MyApplication;
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/MyApplication;->b;
    return v0;
.end method
.method static synthetic a(Lcom/ushaqi/zhuishushenqi/MyApplication;)V
    .locals 4
    .prologue
    v0 = new File();
    v1 = p0.getCacheDir();
    v2 = "http2";
    v0.<init>(v1, v2);
    v2 = 0xc800000;
    :try_start_0
    Lcom/integralblue/httpresponsecache/a.a(v0, v2, v3);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
.end method
.method private a(Ljava/util/Properties;)V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/b.a(p0);
    v0.a(p1);
    return;
.end method
# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/b.a(p0);
    v0 = v0.a();
    v0 = v0.getProperty(p1);
    return v0;
.end method
.method public final a(I)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->e = p1;
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/model/Account;)V
    .locals 2
    .prologue
    v0 = new MyApplication$3();
    v0.<init>(p0, p1);
    p0.a(v0);
    v0 = p1.getUser();
    v1 = new MyApplication$4();
    v1.<init>(p0, v0);
    p0.a(v1);
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/model/BookInfo;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->d = p1;
    return;
.end method
.method public final a(Lcom/ushaqi/zhuishushenqi/reader/Reader;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->c = p1;
    return;
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/b.a(p0);
    v0.a(p1, p2);
    return;
.end method
.method public final varargs a([Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/b.a(p0);
    v0.a(p1);
    return;
.end method
.method public final a(Ljava/io/Serializable;Ljava/lang/String;)Z
    .locals 5
    .prologue
    v3 = 0x0;
    v0 = 0x0;
    v1 = 0x0;
    :try_start_0
    p0.openFileOutput(p2, v1);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v4
    :try_start_1
    v2 = new ObjectOutputStream();
    v2.<init>(v4);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    :try_start_2
    v2.writeObject(p1);
    v2.flush();
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    :try_start_3
    v2.close();
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    :goto_0
    if (v4 == 0) {
//       if-eqz v4, :cond_0
    }
    :try_start_4
    v4.close();
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    :cond_0
    :goto_1
    v0 = 0x1;
    :cond_1
    :goto_2
    return v0
    :catch_0
    move-exception v1
    v2 = v3;
    :goto_3
    :try_start_5
    v1.printStackTrace();
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    if (v2 == 0) {
//       if-eqz v2, :cond_2
    }
    :try_start_6
    v2.close();
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    :cond_2
    :goto_4
    if (v3 == 0) {
//       if-eqz v3, :cond_1
    }
    :try_start_7
    v3.close();
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    goto :goto_2
    :catch_1
    move-exception v1
    goto :goto_2
    :catchall_0
    move-exception v0
    v2 = v3;
    v4 = v3;
    :goto_5
    if (v2 == 0) {
//       if-eqz v2, :cond_3
    }
    :try_start_8
    v2.close();
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    :cond_3
    :goto_6
    if (v4 == 0) {
//       if-eqz v4, :cond_4
    }
    :try_start_9
    v4.close();
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    :cond_4
    :goto_7
    throw v0
    :catch_2
    move-exception v0
    goto :goto_0
    :catch_3
    move-exception v0
    goto :goto_1
    :catch_4
    move-exception v1
    goto :goto_4
    :catch_5
    move-exception v1
    goto :goto_6
    :catch_6
    move-exception v1
    goto :goto_7
    :catchall_1
    move-exception v0
    v2 = v3;
    goto :goto_5
    :catchall_2
    move-exception v0
    goto :goto_5
    :catchall_3
    move-exception v0
    v4 = v3;
    goto :goto_5
    :catch_7
    move-exception v1
    v2 = v3;
    v3 = v4;
    goto :goto_3
    :catch_8
    move-exception v1
    v3 = v4;
    goto :goto_3
.end method
.method public final b()Lcom/ushaqi/zhuishushenqi/reader/Reader;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->c;
    return v0;
.end method
.method public final b(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .prologue
    v1 = 0x0;
    v0 = 0x0;
    v2 = p0.getFileStreamPath(p1);
    v2 = v2.exists();
    if (v2 == 0) {
//       if-eqz v2, :cond_0
    }
    v0 = 0x1;
    :cond_0
    if (v0 != 0) {
//       if-nez v0, :cond_2
    }
    v0 = v1;
    :cond_1
    :goto_0
    return v0;
    :cond_2
    :try_start_0
    p0.openFileInput(p1);
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    move-result-object v3
    :try_start_1
    v2 = new ObjectInputStream();
    v2.<init>(v3);
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    :try_start_2
    v0 = v2.readObject();
    check-cast v0, Ljava/io/Serializable;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    :try_start_3
    v2.close();
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    :goto_1
    if (v3 == 0) {
//       if-eqz v3, :cond_1
    }
    :try_start_4
    v3.close();
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    goto :goto_0
    :catch_0
    move-exception v1
    goto :goto_0
    :catch_1
    move-exception v0
    v0 = v1;
    v2 = v1;
    :goto_2
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    :try_start_5
    v0.close();
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    :cond_3
    :goto_3
    if (v2 == 0) {
//       if-eqz v2, :cond_4
    }
    :try_start_6
    v2.close();
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    :cond_4
    :goto_4
    v0 = v1;
    goto :goto_0
    :catch_2
    move-exception v0
    v2 = v1;
    v3 = v1;
    :goto_5
    :try_start_7
    v0.printStackTrace();
    instance-of v0, v0, Ljava/io/InvalidClassException;
    if (v0 == 0) {
//       if-eqz v0, :cond_5
    }
    v0 = p0.getFileStreamPath(p1);
    v0.delete();
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    :cond_5
    if (v2 == 0) {
//       if-eqz v2, :cond_6
    }
    :try_start_8
    v2.close();
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    :cond_6
    :goto_6
    if (v3 == 0) {
//       if-eqz v3, :cond_4
    }
    :try_start_9
    v3.close();
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    goto :goto_4
    :catch_3
    move-exception v0
    goto :goto_4
    :catchall_0
    move-exception v0
    v2 = v1;
    v3 = v1;
    :goto_7
    if (v2 == 0) {
//       if-eqz v2, :cond_7
    }
    :try_start_a
    v2.close();
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    :cond_7
    :goto_8
    if (v3 == 0) {
//       if-eqz v3, :cond_8
    }
    :try_start_b
    v3.close();
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    :cond_8
    :goto_9
    throw v0
    :catch_4
    move-exception v1
    goto :goto_1
    :catch_5
    move-exception v0
    goto :goto_3
    :catch_6
    move-exception v0
    goto :goto_4
    :catch_7
    move-exception v0
    goto :goto_6
    :catch_8
    move-exception v1
    goto :goto_8
    :catch_9
    move-exception v1
    goto :goto_9
    :catchall_1
    move-exception v0
    v2 = v1;
    goto :goto_7
    :catchall_2
    move-exception v0
    goto :goto_7
    :catch_a
    move-exception v0
    v2 = v1;
    goto :goto_5
    :catch_b
    move-exception v0
    goto :goto_5
    :catch_c
    move-exception v0
    v0 = v1;
    v2 = v3;
    goto :goto_2
    :catch_d
    move-exception v0
    v0 = v2;
    v2 = v3;
    goto :goto_2
.end method
.method public final c()Lcom/ushaqi/zhuishushenqi/model/BookInfo;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->d;
    return v0;
.end method
.method public final c(Ljava/lang/String;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->f = p1;
    return;
.end method
.method public final d()I
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->e;
    return v0
.end method
.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Lcom/ushaqi/zhuishushenqi/model/ChapterLink;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->h;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new HashMap();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->h = v0;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->h;
    return v0;
.end method
.method public final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->g;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->g = v0;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->g;
    return v0;
.end method
.method public final g()Ljava/lang/String;
    .locals 1
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->f;
    return v0;
.end method
.method public final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->i;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->i = v0;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->i;
    return v0;
.end method
.method public final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->j;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->j = v0;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->j;
    return v0;
.end method
.method public final j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
    .prologue
    v0 = p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->k;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new ArrayList();
    v0.<init>();
    p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->k = v0;
    :cond_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/MyApplication;->k;
    return v0;
.end method
.method public onCreate()V
    .locals 10
    .prologue
    v3 = 0x0;
    v8 = 0x0;
    v2 = 0x1;
    Landroid/support/multidex/MultiDexApplication.onCreate(p0);
    sput-object p0, Lcom/ushaqi/zhuishushenqi/MyApplication;->b:Lcom/ushaqi/zhuishushenqi/MyApplication;
    v0 = "1";
    v1 = Lcom/ushaqi/zhuishushenqi/MyApplication;->b;
    v4 = "use_http_dns";
    v1 = Lcom/umeng/a/b.b(v1, v4);
    v0 = v0.equals(v1);
    Lcom/ushaqi/zhuishushenqi/api/e.a(v0);
    Lcom/arcsoft/hpay100/a/a.q(p0);
    Lcom/activeandroid/ActiveAndroid.initialize(p0);
    v1 = 0x0;
    invoke-static {}, Landroid/os/Process;->myPid()I
    move-result v4
    v0 = "activity";
    v0 = p0.getSystemService(v0);
    check-cast v0, Landroid/app/ActivityManager;
    v0 = v0.getRunningAppProcesses();
    v5 = v0.iterator();
    :goto_0
    v0 = v5.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    v0 = v5.next();
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;
    v6 = v0.Landroid/app/ActivityManager$RunningAppProcessInfo;->pid;
    if (v6 != v4) {
//       if-ne v6, v4, :cond_9
    }
    v0 = v0.Landroid/app/ActivityManager$RunningAppProcessInfo;->processName;
    :goto_1
    v1 = v0;
    goto :goto_0
    :cond_0
    v0 = "com.ushaqi.zhuishushenqi";
    v0 = v1.equals(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_1
    }
    v0 = new e();
    v0.<init>(p0);
    v0.start();
    :cond_1
    Lcom/umeng/a/b.c(p0);
    v0 = new f();
    v0.<init>(p0);
    Lcom/umeng/a/b.a(v0);
    v0 = "update_notice_key";
    v0 = Lcom/arcsoft/hpay100/a/a.l(p0, v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = "activity";
    v0 = p0.getSystemService(v0);
    check-cast v0, Landroid/app/ActivityManager;
    v0 = v0.getRunningAppProcesses();
    v1 = p0.getPackageName();
    invoke-static {}, Landroid/os/Process;->myPid()I
    move-result v4
    v5 = v0.iterator();
    :cond_2
    v0 = v5.hasNext();
    if (v0 == 0) {
//       if-eqz v0, :cond_6
    }
    v0 = v5.next();
    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;
    v6 = v0.Landroid/app/ActivityManager$RunningAppProcessInfo;->pid;
    if (v6 != v4) {
//       if-ne v6, v4, :cond_2
    }
    v0 = v0.Landroid/app/ActivityManager$RunningAppProcessInfo;->processName;
    v0 = v1.equals(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = v2;
    :goto_2
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    v0 = "2882303761517133731";
    v1 = "5941713373731";
    Lcom/xiaomi/mipush/sdk/d.a(p0, v0, v1);
    :cond_3
    v0 = "2882303761517133731";
    v1 = "5941713373731";
    v4 = Landroid/support/design/widget/am.n(p0);
    Lcom/xiaomi/mistatistic/sdk/b.a(p0, v0, v1, v4);
    v0 = new i();
    v0.<init>(p0);
    v0 = v0.a();
    v1 = invoke-static {}, Lcom/nostra13/universalimageloader/core/f;->a()Lcom/nostra13/universalimageloader/core/f;
    v1.a(v0);
    v0 = "PREF_FIRST_LAUNCH_TIME";
    v0 = Lcom/arcsoft/hpay100/a/a.c(p0, v0, v8, v9);
    cmp-long v0, v0, v8
    if (v0 == 0) {
	    v0 = new Select();
	    v0.<init>();
	    v1 = Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;;
	    v0 = v0.from(v1);
	    v0 = v0.execute();
	    v0 = v0.isEmpty();
	    if (v0 != 0) {
		    :cond_7
		    v0 = v3;
		    goto :goto_3
	    } else {
	    	v0 = v2;
	}
	    :goto_3
	    if (v0 == 0) {
    :cond_8
    v0 = "PREF_FIRST_LAUNCH_TIME";
    v1 = invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    v2 = v1.getTimeInMillis();
    Lcom/arcsoft/hpay100/a/a.b(p0, v0, v2, v3);
    goto :goto_4
	    }
	    v0 = invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
	    v1 = 0x7d0;
	    v0.set(v2, v1);
	    v1 = "PREF_FIRST_LAUNCH_TIME";
	    v2 = v0.getTimeInMillis();
	    Lcom/arcsoft/hpay100/a/a.b(p0, v1, v2, v3);
    }
    :cond_4
    :goto_4
    v0 = new V();
    v0.<init>(p0);
    v2 = v0.a();
    cmp-long v1, v2, v8
    if (v1 != 0) {
//       if-nez v1, :cond_5
    }
    v1 = invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    v2 = v1.getTimeInMillis();
    v0.a(v2, v3);
    :cond_5
    Landroid/support/design/widget/am.s(p0);
    v0 = "appid=56655269";
    Lcom/iflytek/cloud/SpeechUtility.createUtility(p0, v0);
    return;
    :cond_6
    v0 = v3;
    goto :goto_2
    :cond_9
    v0 = v1;
    goto/16 :goto_1
.end method
