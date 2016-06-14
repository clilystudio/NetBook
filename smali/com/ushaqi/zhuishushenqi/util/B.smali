.class final Lcom/ushaqi/zhuishushenqi/util/B;
.super Ljava/lang/Object;
.source "SourceFile"
# interfaces
.implements Ljava/lang/Runnable;
# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/util/A;
# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/util/A;)V
    .locals 0
    .prologue
    p0.Lcom/ushaqi/zhuishushenqi/util/B;->a = p1;
    p0.<init>();
    return;
.end method
# virtual methods
.method public final run()V
    .locals 15
    .prologue
    v1 = 0x0;
    v14 = 0x44800000    # 1024.0f;
    :try_start_0
    v0 = invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    v2 = v0.getTimeInMillis();
    v0 = new StringBuilder();
    v4 = "Manhuadao_";
    v0.<init>(v4);
    v0 = v0.append(v2, v3);
    v4 = ".apk";
    v0 = v0.append(v4);
    v0 = v0.toString();
    v4 = new StringBuilder();
    v5 = "Manhuadao_";
    v4.<init>(v5);
    v2 = v4.append(v2, v3);
    v3 = ".tmp";
    v2 = v2.append(v3);
    v2 = v2.toString();
    v3 = invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    v4 = "mounted";
    v3 = v3.equals(v4);
    if (v3 == 0) {
//       if-eqz v3, :cond_1
    }
    v3 = new StringBuilder();
    v3.<init>();
    v4 = invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    v4 = v4.getAbsolutePath();
    v3 = v3.append(v4);
    v4 = "/Manhuadao";
    v3 = v3.append(v4);
    v3 = v3.toString();
    v4 = new File();
    v4.<init>(v3);
    v5 = v4.exists();
    if (v5 != 0) {
//       if-nez v5, :cond_0
    }
    v4.mkdirs();
    :cond_0
    v4 = p0.Lcom/ushaqi/zhuishushenqi/util/B;->a;
    v5 = new StringBuilder();
    v5.<init>();
    v5 = v5.append(v3);
    v0 = v5.append(v0);
    v0 = v0.toString();
    Lcom/ushaqi/zhuishushenqi/util/A.a(v4, v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/B;->a;
    v4 = new StringBuilder();
    v4.<init>();
    v3 = v4.append(v3);
    v2 = v3.append(v2);
    v2 = v2.toString();
    Lcom/ushaqi/zhuishushenqi/util/A.b(v0, v2);
    :cond_1
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/B;->a;
    v0 = Lcom/ushaqi/zhuishushenqi/util/A.a(v0);
    if (v0 == 0) {
//       if-eqz v0, :cond_2
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/B;->a;
    v0 = Lcom/ushaqi/zhuishushenqi/util/A.a(v0);
    v2 = "";
    v0 = v0.equals(v2);
    if (v0 == 0) {
//       if-eqz v0, :cond_3
    }
    :cond_2
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/B;->a;
    v0 = Lcom/ushaqi/zhuishushenqi/util/A.b(v0);
    v1 = 0x0;
    v0.sendEmptyMessage(v1);
    :goto_0
    return;
    :cond_3
    v2 = new File();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/B;->a;
    v0 = Lcom/ushaqi/zhuishushenqi/util/A.a(v0);
    v2.<init>(v0);
    v3 = new File();
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/B;->a;
    v0 = Lcom/ushaqi/zhuishushenqi/util/A.c(v0);
    v3.<init>(v0);
    v4 = new FileOutputStream();
    v4.<init>(v3);
    v0 = "http://a.manhuadao.cn/ComicsIsland_zssq002.apk";
    v5 = new URL();
    v5.<init>(v0);
    v0 = v5.openConnection();
    check-cast v0, Ljava/net/HttpURLConnection;
    v0.connect();
    v5 = v0.getContentLength();
    v6 = v0.getInputStream();
    v7 = new DecimalFormat();
    v0 = "0.00";
    v7.<init>(v0);
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/B;->a;
    v8 = new StringBuilder();
    v8.<init>();
    int-to-float v9, v5
    v9 /= v14;
    v9 /= v14;
    float-to-double v10, v9
    v9 = v7.format(v10, v11);
    v8 = v8.append(v9);
    v9 = "MB";
    v8 = v8.append(v9);
    v8 = v8.toString();
    Lcom/ushaqi/zhuishushenqi/util/A.c(v0, v8);
    v0 = 0x400;
    new-array v8, v0, [B
    v0 = v1;
    :goto_1
    v1 = v6.read(v8);
    v0 += v1;
    v9 = p0.Lcom/ushaqi/zhuishushenqi/util/B;->a;
    v10 = new StringBuilder();
    v10.<init>();
    int-to-float v11, v0
    v11 /= v14;
    v11 /= v14;
    float-to-double v12, v11
    v11 = v7.format(v12, v13);
    v10 = v10.append(v11);
    v11 = "MB";
    v10 = v10.append(v11);
    v10 = v10.toString();
    Lcom/ushaqi/zhuishushenqi/util/A.d(v9, v10);
    v9 = p0.Lcom/ushaqi/zhuishushenqi/util/B;->a;
    int-to-float v10, v0
    int-to-float v11, v5
    v10 /= v11;
    v11 = 0x42c80000    # 100.0f;
    v10 *= v11;
    float-to-int v10, v10
    Lcom/ushaqi/zhuishushenqi/util/A.a(v9, v10);
    v9 = p0.Lcom/ushaqi/zhuishushenqi/util/B;->a;
    v9 = Lcom/ushaqi/zhuishushenqi/util/A.b(v9);
    v10 = 0x1;
    v9.sendEmptyMessage(v10);
    if (v1 > 0) {
//       if-gtz v1, :cond_5
    }
    v0 = v3.renameTo(v2);
    if (v0 == 0) {
//       if-eqz v0, :cond_4
    }
    v0 = p0.Lcom/ushaqi/zhuishushenqi/util/B;->a;
    v0 = Lcom/ushaqi/zhuishushenqi/util/A.b(v0);
    v1 = 0x2;
    v0.sendEmptyMessage(v1);
    :cond_4
    v4.close();
    v6.close();
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    goto/16 :goto_0
    :catch_0
    move-exception v0
    v0.printStackTrace();
    goto/16 :goto_0
    :cond_5
    v9 = 0x0;
    :try_start_1
    v4.write(v8, v9, v1);
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    goto :goto_1
    :catch_1
    move-exception v0
    v0.printStackTrace();
    goto/16 :goto_0
.end method
