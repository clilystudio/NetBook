.class public final Lcom/ushaqi/zhuishushenqi/pay/b/c;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/ChargePlan;",
        "Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/pay/b/a;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/pay/b/a;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/pay/b/c;->a:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    .line 71
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;)V

    .line 72
    return-void
.end method

.method private static varargs a([Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;
    .locals 3

    .prologue
    .line 76
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 78
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    check-cast p1, [Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/pay/b/c;->a([Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 69
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;

    .line 1092
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;->getPayOrder()Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;

    move-result-object v5

    .line 1095
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/b/c;->a:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/b/a;->a(Lcom/ushaqi/zhuishushenqi/pay/b/a;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;->getSpPayCode()Ljava/lang/String;

    move-result-object v3

    .line 1096
    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;->getAmount()I

    move-result v4

    invoke-virtual {v5}, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder$PayOrder;->getPayName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/ushaqi/zhuishushenqi/pay/b/b;

    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/pay/b/c;->a:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/ushaqi/zhuishushenqi/pay/b/b;-><init>(Lcom/ushaqi/zhuishushenqi/pay/b/a;B)V

    .line 1095
    invoke-static/range {v0 .. v6}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/arcsoft/hpay100/y;)V

    .line 1097
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/z;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/YyfPayOrder;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    :goto_0
    return-void

    .line 1099
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/y;

    invoke-direct {v1, v9}, Lcom/ushaqi/zhuishushenqi/event/y;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/b/c;->a:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/b/a;->a(Lcom/ushaqi/zhuishushenqi/pay/b/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d1\u8d77\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u6216\u68c0\u67e5\u7f51\u7edc\uff01"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1103
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/y;

    invoke-direct {v1, v9}, Lcom/ushaqi/zhuishushenqi/event/y;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1104
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/b/c;->a:Lcom/ushaqi/zhuishushenqi/pay/b/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/b/a;->a(Lcom/ushaqi/zhuishushenqi/pay/b/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d1\u8d77\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u6216\u68c0\u67e5\u7f51\u7edc\uff01"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onCancelled()V
    .locals 3

    .prologue
    .line 86
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/a/c;->onCancelled()V

    .line 87
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/y;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/y;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 88
    return-void
.end method
