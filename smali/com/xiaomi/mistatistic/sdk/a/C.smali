.class final Lcom/xiaomi/mistatistic/sdk/a/C;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/a/j;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/xiaomi/mistatistic/sdk/a/A;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/a/A;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->c:Lcom/xiaomi/mistatistic/sdk/a/A;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    const-wide/16 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "session_begin"

    invoke-static {v0, v1, v10, v11}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "last_deactivate"

    invoke-static {v0, v1, v10, v11}, Lcom/arcsoft/hpay100/a/a;->e(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "pv_path"

    const-string v6, ""

    invoke-static {v0, v1, v6}, Lcom/arcsoft/hpay100/a/a;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    cmp-long v0, v2, v10

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "session_begin"

    invoke-static {v0, v1, v8, v9}, Lcom/arcsoft/hpay100/a/a;->f(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_0
    :goto_0
    cmp-long v0, v4, v10

    if-lez v0, :cond_1

    sub-long v0, v8, v4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/a/A;->c()J

    move-result-wide v10

    cmp-long v0, v0, v10

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->c:Lcom/xiaomi/mistatistic/sdk/a/A;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->a:Landroid/app/Activity;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/a/A;->a(Lcom/xiaomi/mistatistic/sdk/a/A;Landroid/content/Context;JJ)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->c:Lcom/xiaomi/mistatistic/sdk/a/A;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v6}, Lcom/xiaomi/mistatistic/sdk/a/A;->a(Lcom/xiaomi/mistatistic/sdk/a/A;Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, ""

    :goto_1
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "session_begin"

    invoke-static {v1, v2, v8, v9}, Lcom/arcsoft/hpay100/a/a;->f(Landroid/content/Context;Ljava/lang/String;J)V

    move-object v6, v0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->c:Lcom/xiaomi/mistatistic/sdk/a/A;

    invoke-static {v1, v6, v0}, Lcom/xiaomi/mistatistic/sdk/a/A;->a(Lcom/xiaomi/mistatistic/sdk/a/A;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "pv_path"

    invoke-static {v1, v2, v0}, Lcom/arcsoft/hpay100/a/a;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    cmp-long v0, v4, v10

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "session_begin"

    invoke-static {v0, v1, v8, v9}, Lcom/arcsoft/hpay100/a/a;->f(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->c:Lcom/xiaomi/mistatistic/sdk/a/A;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v6}, Lcom/xiaomi/mistatistic/sdk/a/A;->a(Lcom/xiaomi/mistatistic/sdk/a/A;Landroid/content/Context;Ljava/lang/String;)V

    const-string v6, ""

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/a/C;->b:Ljava/lang/String;

    goto :goto_2

    :cond_6
    move-object v0, v6

    goto :goto_1
.end method
