.class public final Lcom/ushaqi/zhuishushenqi/util/adutil/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;

.field private b:Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/n;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;

    .line 21
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;-><init>()V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/n;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;

    .line 22
    return-void
.end method

.method public static a(Lcom/ushaqi/zhuishushenqi/model/Advert;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 62
    :try_start_0
    instance-of v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;

    if-eqz v0, :cond_1

    .line 63
    check-cast p0, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;

    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer$BaiduAdvert;->baiduRecord(Landroid/view/View;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    instance-of v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer$GdtAdvert;

    if-eqz v0, :cond_0

    .line 65
    check-cast p0, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer$GdtAdvert;

    invoke-virtual {p0, p1}, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer$GdtAdvert;->gdtRecord(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Advert;
    .locals 2

    .prologue
    .line 44
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/c;->a()Lcom/ushaqi/zhuishushenqi/util/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ushaqi/zhuishushenqi/util/c;->a(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Advert;

    move-result-object v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/adutil/n;

    invoke-direct {v1}, Lcom/ushaqi/zhuishushenqi/util/adutil/n;-><init>()V

    .line 55
    invoke-virtual {v1, p0, p1}, Lcom/ushaqi/zhuishushenqi/util/adutil/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/n;->a:Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;

    invoke-virtual {v0, p1, p2}, Lcom/ushaqi/zhuishushenqi/util/adutil/GdtShelfAdContainer;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 27
    :cond_1
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/adutil/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/util/adutil/n;->b:Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;

    invoke-virtual {v0, p1, p2}, Lcom/ushaqi/zhuishushenqi/util/adutil/BaiduShelfAdContainer;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
