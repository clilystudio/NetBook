.class public final Lcom/ushaqi/zhuishushenqi/pay/weixin/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/e/a/a/g/a;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;->b:Landroid/content/Context;

    .line 31
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/e/a/a/g/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/e/a/a/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;->a:Lcom/e/a/a/g/a;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/pay/weixin/a;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 87
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/e/a/a/g/c;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/e/a/a/g/a;

    move-result-object v0

    .line 88
    invoke-interface {v0}, Lcom/e/a/a/g/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/e/a/a/g/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/ushaqi/zhuishushenqi/model/ChargePlan;)V
    .locals 3

    .prologue
    .line 35
    new-instance v1, Lcom/ushaqi/zhuishushenqi/pay/weixin/b;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const-string v2, "\u6b63\u5728\u53d1\u8d77\u5fae\u4fe1\u652f\u4ed8"

    invoke-direct {v1, p0, v0, v2}, Lcom/ushaqi/zhuishushenqi/pay/weixin/b;-><init>(Lcom/ushaqi/zhuishushenqi/pay/weixin/a;Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/ushaqi/zhuishushenqi/model/ChargePlan;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    invoke-virtual {v1, v0}, Lcom/ushaqi/zhuishushenqi/pay/weixin/b;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 36
    return-void
.end method
