.class final Lcom/ushaqi/zhuishushenqi/ui/user/ak;
.super Lcom/ushaqi/zhuishushenqi/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    .line 120
    invoke-direct {p0, p2, p3}, Lcom/ushaqi/zhuishushenqi/a/c;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;
    .locals 3

    .prologue
    .line 126
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->t(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/ak;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 117
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;

    .line 1135
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    const-string v1, "\u8d2d\u4e70\u6210\u529f"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1137
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    const-string v1, "remove_ad_duration"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;->getDueInMs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1138
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;->getDueInMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1139
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/event/i;->a()Lcom/squareup/a/b;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/event/s;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;->getVipExpire()Ljava/util/Date;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ushaqi/zhuishushenqi/event/s;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lcom/squareup/a/b;->c(Ljava/lang/Object;)V

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PurchaseVipResult;->getCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BALANCE_NOT_ENOUGH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1142
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    const-string v1, "\u4f59\u989d\u4e0d\u8db3\uff0c\u8bf7\u5145\u503c"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1143
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/p;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    invoke-direct {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/p;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/util/p;->a()V

    goto :goto_0

    .line 1145
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/user/RemoveAdActivity;

    const-string v1, "\u672a\u8d2d\u4e70\u6210\u529f\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
