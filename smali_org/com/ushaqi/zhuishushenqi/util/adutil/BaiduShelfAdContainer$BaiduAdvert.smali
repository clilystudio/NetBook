.class public Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;
.super Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;-><init>()V

    return-void
.end method


# virtual methods
.method public baiduRecord(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 108
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "recordImpression"

    const-class v2, Landroid/view/View;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;->response:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public getDownloadTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 129
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getTitle"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;->response:Ljava/lang/Object;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->s(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const v1, 0x7f05018b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 133
    :cond_0
    const v1, 0x7f05018a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFullImg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;->getImg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isApk()Z
    .locals 5

    .prologue
    .line 123
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isDownloadApp"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;->response:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onAdClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 140
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;->a()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "handleClick"

    const-class v2, Landroid/view/View;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;->response:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public recordClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;->getPosition()Ljava/lang/String;

    move-result-object v1

    .line 2808
    const-string v2, "ad_baidu_shelf_confirm"

    invoke-static {v0, v2, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public recordDownload(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;->getPosition()Ljava/lang/String;

    move-result-object v0

    .line 1812
    const-string v1, "ad_baidu_shelf_download"

    invoke-static {p1, v1, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public recordShow(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;->getPosition()Ljava/lang/String;

    move-result-object v0

    .line 1816
    const-string v1, "ad_baidu_shelf_show"

    invoke-static {p1, v1, v0}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method
