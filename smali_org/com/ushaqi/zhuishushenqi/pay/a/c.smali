.class public final Lcom/ushaqi/zhuishushenqi/pay/a/c;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/ChargePlan;",
        "Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/pay/a/a;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/pay/a/a;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/pay/a/c;->a:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    .line 53
    invoke-direct {p0, p2}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;)V

    .line 54
    return-void
.end method

.method private static varargs a([Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;
    .locals 3

    .prologue
    .line 58
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 62
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
    .line 50
    check-cast p1, [Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/pay/a/c;->a([Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 50
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;

    .line 1074
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;->getPayOrder()Lcom/ushaqi/zhuishushenqi/model/AliPayOrder$PayOrder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1075
    new-instance v0, Lcom/ushaqi/zhuishushenqi/pay/a/d;

    invoke-direct {v0, p0, p1}, Lcom/ushaqi/zhuishushenqi/pay/a/d;-><init>(Lcom/ushaqi/zhuishushenqi/pay/a/c;Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;)V

    .line 1091
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1092
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1093
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/z;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/AliPayOrder;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1094
    :goto_0
    return-void

    .line 1095
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/y;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/y;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1096
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/a/c;->a:Lcom/ushaqi/zhuishushenqi/pay/a/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/a/a;->a(Lcom/ushaqi/zhuishushenqi/pay/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d1\u8d77\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u6216\u68c0\u67e5\u7f51\u7edc\uff01"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onCancelled()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/a/c;->onCancelled()V

    .line 69
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/y;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/y;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 70
    return-void
.end method
