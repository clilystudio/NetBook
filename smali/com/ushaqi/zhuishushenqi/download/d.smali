.class final Lcom/ushaqi/zhuishushenqi/download/d;
.super Ljava/lang/Thread;
.source "SourceFile"
# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/download/a;
# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/download/a;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/download/d;->a = p1;
    p0.<init>();
    return;
.end method
# virtual methods
.method public final run()V
    .locals 7
    .prologue
    v1 = 0x0;
    v3 = 0x0;
    :try_start_0
    v2 = new FileOutputStream();
    v0 = Lcom/ushaqi/zhuishushenqi/download/e;->b;
    v2.<init>(v0);
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    :try_start_1
    v0 = new URL();
    v4 = p0.Lcom/ushaqi/zhuishushenqi/download/d;->a;
    v4 = Lcom/ushaqi/zhuishushenqi/download/a.g(v4);
    v0.<init>(v4);
    v0 = v0.openConnection();
    check-cast v0, Ljava/net/HttpURLConnection;
    v0.connect();
    v4 = v0.getContentLength();
    v1 = v0.getInputStream();
    v0 = 0x400;
    new-array v5, v0, [B
    v0 = v3;
    :cond_0
    v3 = v1.read(v5);
    v6 = -0x1;
    if (v3 == v6) {
//       if-eq v3, v6, :cond_1
    }
    v0 += v3;
    v6 = 0x0;
    v2.write(v5, v6, v3);
    if (v0 != v4) {
//       if-ne v0, v4, :cond_0
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/download/d;->a;
    v0 = Lcom/ushaqi/zhuishushenqi/download/a.f(v0);
    v3 = 0x2;
    v0.sendEmptyMessage(v3);
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    :cond_1
    :try_start_2
    v2.close();
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v1.close();
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    :cond_2
    :goto_0
    return;
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
    :catch_1
    move-exception v0
    v2 = v1;
    :goto_1
    :try_start_3
    v0.printStackTrace();
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    if (v2 == 0) {
//       if-eqz v2, :cond_3
    }
    :try_start_4
    v2.close();
    :cond_3
    if (v1 == 0) {
//       if-eqz v1, :cond_2
    }
    v1.close();
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    goto :goto_0
    :catch_2
    move-exception v0
    v0.printStackTrace();
    goto :goto_0
    :catchall_0
    move-exception v0
    v2 = v1;
    :goto_2
    if (v2 == 0) {
//       if-eqz v2, :cond_4
    }
    :try_start_5
    v2.close();
    :cond_4
    if (v1 == 0) {
//       if-eqz v1, :cond_5
    }
    v1.close();
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    :cond_5
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
    move-exception v0
    goto :goto_1
.end method
