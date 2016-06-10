.class public final Lcom/ushaqi/zhuishushenqi/pay/weixin/b;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/ChargePlan;",
        "Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/pay/weixin/a;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/pay/weixin/a;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/pay/weixin/b;->a:Lcom/ushaqi/zhuishushenqi/pay/weixin/a;

    .line 40
    invoke-direct {p0, p2, p3}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private static varargs a([Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 47
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/ChargePlan;->get_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
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
    .line 38
    check-cast p1, [Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/pay/weixin/b;->a([Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 38
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;

    .line 1062
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    new-instance v0, Lcom/e/a/a/f/a;

    invoke-direct {v0}, Lcom/e/a/a/f/a;-><init>()V

    .line 1064
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;->getPayOrder()Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;

    move-result-object v1

    .line 1065
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;->getAppid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/e/a/a/f/a;->a:Ljava/lang/String;

    .line 1066
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;->getPartnerid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/e/a/a/f/a;->b:Ljava/lang/String;

    .line 1067
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;->getPrepayid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/e/a/a/f/a;->c:Ljava/lang/String;

    .line 1068
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;->getXpackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/e/a/a/f/a;->f:Ljava/lang/String;

    .line 1069
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;->getNoncestr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/e/a/a/f/a;->d:Ljava/lang/String;

    .line 1070
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;->getTimestamp()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/e/a/a/f/a;->e:Ljava/lang/String;

    .line 1071
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;->getSign()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/e/a/a/f/a;->g:Ljava/lang/String;

    .line 1072
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/pay/weixin/b;->a:Lcom/ushaqi/zhuishushenqi/pay/weixin/a;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder$PayOrder;->getAppid()Ljava/lang/String;

    move-result-object v1

    .line 1082
    iget-object v3, v2, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;->a:Lcom/e/a/a/g/a;

    invoke-interface {v3, v1}, Lcom/e/a/a/g/a;->a(Ljava/lang/String;)Z

    .line 1083
    iget-object v1, v2, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;->a:Lcom/e/a/a/g/a;

    invoke-interface {v1, v0}, Lcom/e/a/a/g/a;->a(Lcom/e/a/a/d/a;)Z

    .line 1073
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/z;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/WXPayOrder;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/z;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1074
    :goto_0
    return-void

    .line 1075
    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/y;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/y;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1076
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/weixin/b;->a:Lcom/ushaqi/zhuishushenqi/pay/weixin/a;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;->a(Lcom/ushaqi/zhuishushenqi/pay/weixin/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u53d1\u8d77\u652f\u4ed8\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u6216\u68c0\u67e5\u7f51\u7edc\uff01"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onCancelled()V
    .locals 3

    .prologue
    .line 56
    invoke-super {p0}, Lcom/ushaqi/zhuishushenqi/a/c;->onCancelled()V

    .line 57
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/y;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/y;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 58
    return-void
.end method
