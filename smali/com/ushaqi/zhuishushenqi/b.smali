.class public final Lcom/ushaqi/zhuishushenqi/b;
.super Ljava/lang/Object;
.source "SourceFile"
# static fields
.field private static b:Lcom/ushaqi/zhuishushenqi/b;
# instance fields
.field private a:Landroid/content/Context;
# direct methods
.method public constructor <init>()V
    .locals 0
    .prologue
    p0.<init>();
    return;
.end method
.method public static a(Landroid/content/Context;)Lcom/ushaqi/zhuishushenqi/b;
    .locals 1
    .prologue
    v0 = Lcom/ushaqi/zhuishushenqi/b;->b;
    if (v0 != 0) {
//       if-nez v0, :cond_0
    }
    v0 = new b();
    v0.<init>();
    sput-object v0, Lcom/ushaqi/zhuishushenqi/b;->b:Lcom/ushaqi/zhuishushenqi/b;
    v0.Lcom/ushaqi/zhuishushenqi/b;->a = p0;
    :cond_0
    v0 = Lcom/ushaqi/zhuishushenqi/b;->b;
    return v0;
.end method
.method private b(Ljava/util/Properties;)V
    .locals 4
    .prologue
    v2 = 0x0;
    :try_start_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/b;->a;
    v1 = "config";
    v3 = 0x0;
    v0 = v0.getDir(v1, v3);
    v3 = new File();
    v1 = "config";
    v3.<init>(v0, v1);
    v1 = new FileOutputStream();
    v1.<init>(v3);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    v0 = 0x0;
    :try_start_1
    p1.store(v1, v0);
    v1.flush();
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    :try_start_2
    v1.close();
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    :cond_0
    :goto_0
    return;
    :catch_0
    move-exception v0
    v1 = v2;
    :goto_1
    :try_start_3
    v0.printStackTrace();
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    if (v1 == 0) {
//       if-eqz v1, :cond_0
    }
    :try_start_4
    v1.close();
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    goto :goto_0
    :catch_1
    move-exception v0
    goto :goto_0
    :catchall_0
    move-exception v0
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
    :catch_2
    move-exception v0
    goto :goto_0
    :catch_3
    move-exception v1
    goto :goto_3
    :catchall_1
    move-exception v0
    v2 = v1;
    goto :goto_2
    :catch_4
    move-exception v0
    goto :goto_1
.end method
# virtual methods
.method public final a()Ljava/util/Properties;
    .locals 6
    .prologue
    v1 = 0x0;
    v2 = new Properties();
    v2.<init>();
    :try_start_0
    v0 = p0.Lcom/ushaqi/zhuishushenqi/b;->a;
    v3 = "config";
    v4 = 0x0;
    v3 = v0.getDir(v3, v4);
    v0 = new FileInputStream();
    v4 = new StringBuilder();
    v4.<init>();
    v3 = v3.getPath();
    v3 = v4.append(v3);
    v4 = Ljava/io/File;->separator;
    v3 = v3.append(v4);
    v4 = "config";
    v3 = v3.append(v4);
    v3 = v3.toString();
    v0.<init>(v3);
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :try_start_1
    v2.load(v0);
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    :try_start_2
    v0.close();
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    :cond_0
    :goto_0
    return v2;
    :catch_0
    move-exception v0
    v0 = v1;
    :goto_1
    if (v0 == 0) {
//       if-eqz v0, :cond_0
    }
    :try_start_3
    v0.close();
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    goto :goto_0
    :catch_1
    move-exception v0
    goto :goto_0
    :catchall_0
    move-exception v0
    :goto_2
    if (v1 == 0) {
//       if-eqz v1, :cond_1
    }
    :try_start_4
    v1.close();
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    :cond_1
    :goto_3
    throw v0
    :catch_2
    move-exception v0
    goto :goto_0
    :catch_3
    move-exception v1
    goto :goto_3
    :catchall_1
    move-exception v1
    v5 = v1;
    v1 = v0;
    v0 = v5;
    goto :goto_2
    :catch_4
    move-exception v1
    goto :goto_1
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .prologue
    v0 = p0.a();
    v0.setProperty(p1, p2);
    p0.b(v0);
    return;
.end method
.method public final a(Ljava/util/Properties;)V
    .locals 1
    .prologue
    v0 = p0.a();
    v0.putAll(p1);
    p0.b(v0);
    return;
.end method
.method public final varargs a([Ljava/lang/String;)V
    .locals 4
    .prologue
    v1 = p0.a();
    v2 = p1.length;
    v0 = 0x0;
    :goto_0
    if (v0 >= v2) {
//       if-ge v0, v2, :cond_0
    }
    v3 = p1[v0];
    v1.remove(v3);
    v0 = v0 + 0x1;
    goto :goto_0
    :cond_0
    p0.b(v1);
    return;
.end method
