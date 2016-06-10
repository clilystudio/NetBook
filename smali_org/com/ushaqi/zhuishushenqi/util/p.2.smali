.class public final Lcom/ushaqi/zhuishushenqi/util/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/p;->a:Landroid/app/Activity;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/p;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/p;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/p;Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;)V
    .locals 3

    .prologue
    .line 26
    .line 1086
    if-eqz p1, :cond_0

    .line 1090
    const-string v0, "weixinpay"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->getChargeType()Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/p;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/pay/weixin/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1091
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/p;->a:Landroid/app/Activity;

    const v1, 0x7f0500bf

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/p;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->getChargeType()Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/ChargeActivity;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/ChargeType;)Landroid/content/Intent;

    move-result-object v0

    .line 1095
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/p;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1096
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/p;->a:Landroid/app/Activity;

    const-string v1, "enter_charge_channel"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->getChargeType()Lcom/ushaqi/zhuishushenqi/model/ChargeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/model/ChargeType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/util/p;[Lcom/ushaqi/zhuishushenqi/model/ChargeType;)V
    .locals 4

    .prologue
    .line 26
    .line 1068
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/p;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->getItems(Landroid/content/Context;[Lcom/ushaqi/zhuishushenqi/model/ChargeType;)Ljava/util/List;

    move-result-object v2

    .line 1069
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1070
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1071
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;

    .line 1072
    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->setId(I)V

    .line 1070
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1074
    :cond_0
    new-instance v0, Lcom/ushaqi/zhuishushenqi/widget/ak;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/p;->a:Landroid/app/Activity;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/util/q;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/util/q;-><init>(Lcom/ushaqi/zhuishushenqi/util/p;)V

    invoke-direct {v0, v1, v3, v2}, Lcom/ushaqi/zhuishushenqi/widget/ak;-><init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/widget/am;Ljava/util/List;)V

    .line 1079
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/ak;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/p;->a:Landroid/app/Activity;

    const-string v1, "\u6ca1\u6709\u652f\u4ed8\u65b9\u5f0f\uff0c\u8bf7\u8054\u7cfb\u5ba2\u670d"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/r;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/util/p;->a:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/ushaqi/zhuishushenqi/util/r;-><init>(Lcom/ushaqi/zhuishushenqi/util/p;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/r;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 38
    return-void
.end method
