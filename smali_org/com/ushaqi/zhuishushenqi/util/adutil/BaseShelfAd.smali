.class public Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;
.super Lcom/ushaqi/zhuishushenqi/model/Advert;
.source "SourceFile"


# instance fields
.field protected response:Ljava/lang/Object;

.field public showCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/Advert;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public isApk()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public onAdClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public processClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;->isApk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    new-instance v1, Luk/me/lewisdeane/ldialogs/h;

    invoke-direct {v1, v0}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;->getDownloadTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1046
    iput-object v2, v1, Luk/me/lewisdeane/ldialogs/h;->e:Ljava/lang/String;

    .line 29
    const/4 v2, 0x1

    .line 30
    invoke-virtual {v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Z)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v1

    const-string v2, "\u786e\u8ba4"

    new-instance v3, Lcom/ushaqi/zhuishushenqi/util/adutil/j;

    invoke-direct {v3, p0, p1, v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/j;-><init>(Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;Landroid/view/View;Landroid/content/Context;)V

    .line 31
    invoke-virtual {v1, v2, v3}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/util/adutil/i;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/util/adutil/i;-><init>(Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;)V

    .line 38
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 47
    :goto_0
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;->recordClick(Landroid/view/View;)V

    .line 49
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;->onAdClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public recordClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public recordDownload(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public recordShow(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public setResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/BaseShelfAd;->response:Ljava/lang/Object;

    .line 23
    return-void
.end method
