.class public final Lcom/arcsoft/hpay100/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/arcsoft/hpay100/a;->a:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/arcsoft/hpay100/a;->b:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic a()Landroid/app/Dialog;
    .locals 1

    sget-object v0, Lcom/arcsoft/hpay100/a;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 0
    .line 3000
    new-instance v0, Lcom/arcsoft/hpay100/c;

    invoke-direct {v0}, Lcom/arcsoft/hpay100/c;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 0
    return-void
.end method

.method public static a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/arcsoft/hpay100/y;)V
    .locals 10

    .prologue
    .line 0
    const-string v0, "dalongTest"

    const-string v1, "startHPaySdk-------"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/arcsoft/hpay100/a;->a:Z

    if-nez v0, :cond_0

    const-string v0, "\u8bf7\u521d\u59cb\u5316\u652f\u4ed8sdk"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/c/c;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, -0x1

    const-string v5, "2"

    const-string v6, "2001"

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v7}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8ba1\u8d39\u70b9\u7f16\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/c/c;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, -0x1

    const-string v5, "2"

    const-string v6, "2003"

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v7}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-gtz p4, :cond_2

    const-string v0, "\u8ba1\u8d39\u91d1\u989d\u4f20\u5165\u9519\u8bef"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/c/c;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, -0x1

    const-string v5, "2"

    const-string v6, "2004"

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v7}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u8ba1\u8d39\u70b9\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/c/c;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, -0x1

    const-string v5, "2"

    const-string v6, "2005"

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v7}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/arcsoft/hpay100/a/a;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc\u8fde\u63a5"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/arcsoft/hpay100/c/c;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const-string v0, "\u6570\u636e\u52a0\u8f7d\u4e2d\uff0c\u8bf7\u7a0d\u540e"

    .line 2000
    new-instance v1, Lcom/arcsoft/hpay100/b;

    invoke-direct {v1, p0, v0}, Lcom/arcsoft/hpay100/b;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/l;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v0, Lcom/arcsoft/hpay100/f;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/arcsoft/hpay100/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/arcsoft/hpay100/y;)V

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v8

    move v7, v9

    move-object v8, v0

    invoke-static/range {v1 .. v8}, Lcom/arcsoft/hpay100/config/l;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILcom/arcsoft/hpay100/config/k;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Landroid/app/Activity;Lcom/arcsoft/hpay100/config/HPaySMS;Lcom/arcsoft/hpay100/y;I)V
    .locals 2

    .prologue
    .line 0
    const/4 v0, 0x0

    .line 4000
    new-instance v1, Lcom/arcsoft/hpay100/d;

    invoke-direct {v1, p0, p2}, Lcom/arcsoft/hpay100/d;-><init>(Landroid/app/Activity;Lcom/arcsoft/hpay100/y;)V

    invoke-virtual {p1, p0, v0, v1}, Lcom/arcsoft/hpay100/config/HPaySMS;->requestPay$1361a8a9(Landroid/content/Context;ILcom/arcsoft/hpay100/y;)V

    .line 0
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 0
    const-string v0, "dalongTest"

    const-string v1, "initHPaySdk ----"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5546\u6237ID\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u4ea7\u54c1ID\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u6e20\u9053ID\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\u4ea7\u54c1\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_4
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u5ba2\u670d\u7535\u8bdd\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/arcsoft/hpay100/a;->a:Z

    if-nez v0, :cond_0

    const-string v0, "dalongTest"

    const-string v1, "initHPaySdk activity start-----"

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v2, Lcom/arcsoft/hpay100/a;->a:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-object p1, Lcom/arcsoft/hpay100/config/l;->a:Ljava/lang/String;

    sput-object p2, Lcom/arcsoft/hpay100/config/l;->b:Ljava/lang/String;

    sput-object p3, Lcom/arcsoft/hpay100/config/l;->c:Ljava/lang/String;

    sput-object p4, Lcom/arcsoft/hpay100/config/l;->e:Ljava/lang/String;

    sput-object p5, Lcom/arcsoft/hpay100/config/l;->d:Ljava/lang/String;

    invoke-static {}, Lcom/arcsoft/hpay100/config/l;->a()V

    invoke-static {}, Lcom/arcsoft/hpay100/config/l;->b()V

    invoke-static {}, Lcom/arcsoft/hpay100/config/l;->c()V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/config/l;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/c/h;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/arcsoft/hpay100/c/b;->d(Landroid/content/Context;)V

    .line 1000
    invoke-static {p0}, Lcom/migu/sdk/api/MiguSdk;->initializeApp(Landroid/app/Activity;)V

    const-string v2, "dalongTest"

    const-string v3, "initMgdmSdk"

    invoke-static {v2, v3}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "1"

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/arcsoft/hpay100/config/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "dalongTest"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "time2-time1:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v0, v2, v0

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Landroid/app/Dialog;)V
    .locals 0

    sput-object p0, Lcom/arcsoft/hpay100/a;->b:Landroid/app/Dialog;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p2, ""

    :cond_2
    sput-object p0, Lcom/arcsoft/hpay100/config/l;->m:Ljava/lang/String;

    sput-object p1, Lcom/arcsoft/hpay100/config/l;->n:Ljava/lang/String;

    sput-object p2, Lcom/arcsoft/hpay100/config/l;->o:Ljava/lang/String;

    return-void
.end method
