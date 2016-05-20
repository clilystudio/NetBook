.class public final Lcom/ushaqi/zhuishushenqi/pay/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "mgpbase"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/pay/b/a;->a:Landroid/content/Context;

    .line 45
    const-string v1, "2000048"

    .line 46
    const-string v2, "35ea1842762811e5a076be3c3fd80617"

    .line 47
    const-string v3, "test_channel"

    .line 49
    const-string v4, "\u8ffd\u4e66\u795e\u5668"

    .line 50
    const-string v5, "4006502098"

    move-object v0, p1

    .line 51
    check-cast v0, Landroid/app/Activity;

    invoke-static/range {v0 .. v5}, Lcom/arcsoft/hpay100/a;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, ""

    .line 55
    const-string v2, ""

    .line 56
    const-string v0, ""

    .line 57
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 58
    invoke-static {}, Landroid/support/design/widget/am;->e()Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Account;->getUser()Lcom/ushaqi/zhuishushenqi/model/User;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getId()Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/User;->getLv()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_0
    invoke-static {v1, v2, v0}, Lcom/arcsoft/hpay100/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/pay/b/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/b/a;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)V
    .locals 3

    .prologue
    .line 66
    new-instance v1, Lcom/ushaqi/zhuishushenqi/pay/b/c;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/b/a;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, p0, v0}, Lcom/ushaqi/zhuishushenqi/pay/b/c;-><init>(Lcom/ushaqi/zhuishushenqi/pay/b/a;Landroid/app/Activity;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/pay/b/c;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    return-void
.end method
