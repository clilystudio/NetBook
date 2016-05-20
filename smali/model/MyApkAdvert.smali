.class public Lcom/ushaqi/zhuishushenqi/model/MyApkAdvert;
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


# virtual methods
.method public getDownloadTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 24
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/MyApkAdvert;->getApkSize()I

    move-result v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/arcsoft/hpay100/a/a;->r(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 26
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    const v2, 0x7f050187

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/MyApkAdvert;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    const v2, 0x7f050186

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/MyApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/MyApkAdvert;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isApk()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method

.method public onAdClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Lcom/ushaqi/zhuishushenqi/model/AppItem;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/model/AppItem;-><init>(Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    .line 35
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/y;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/util/y;-><init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/AppItem;)V

    .line 36
    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/util/y;->a()V

    .line 37
    return-void
.end method

.method public recordClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/arcsoft/hpay100/a/a;->b(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/model/Advert;)V

    .line 54
    return-void
.end method

.method public recordDownload(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    .line 1342
    if-eqz p0, :cond_0

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "zssq_ad_download_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/model/Advert;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
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
