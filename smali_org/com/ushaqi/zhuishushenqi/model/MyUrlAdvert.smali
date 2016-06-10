.class public Lcom/ushaqi/zhuishushenqi/model/MyUrlAdvert;
.super Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;-><init>()V

    return-void
.end method

.method private launchAdWebView(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/MyUrlAdvert;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/MyUrlAdvert;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/AdWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method


# virtual methods
.method public isApk()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public onAdClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/MyUrlAdvert;->getInsideLink()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/util/InsideLinkIntent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ushaqi/zhuishushenqi/model/MyUrlAdvert;->launchAdWebView(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public recordClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    .line 48
    return-void
.end method

.method public recordShow(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p1, p0}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    .line 42
    return-void
.end method
