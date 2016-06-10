.class public Lcom/qq/e/ads/banner/BannerView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private a:Lcom/qq/e/comm/pi/BVI;

.field private b:Lcom/qq/e/ads/banner/BannerADListener;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/Integer;

.field private g:Lcom/qq/e/ads/cfg/BannerRollAnimation;

.field private h:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

.field private i:Ljava/lang/Boolean;

.field private volatile j:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/qq/e/ads/banner/ADSize;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/qq/e/ads/banner/BannerView;->c:Z

    iput-boolean v2, p0, Lcom/qq/e/ads/banner/BannerView;->d:Z

    iput-boolean v2, p0, Lcom/qq/e/ads/banner/BannerView;->e:Z

    iput v2, p0, Lcom/qq/e/ads/banner/BannerView;->j:I

    invoke-static {p3}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Lcom/qq/e/comm/util/StringUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v0, "Banner ADView Contructor paras error,appid=%s,posId=%s,context=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    aput-object p4, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iput-boolean v3, p0, Lcom/qq/e/ads/banner/BannerView;->c:Z

    invoke-static {p1}, Lcom/qq/e/comm/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Required Activity/Service/Permission Not Declared in AndroidManifest.xml"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/qq/e/ads/banner/BannerView;->d:Z

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/banner/BannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v6, Lcom/qq/e/comm/managers/GDTADManager;->INIT_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/qq/e/ads/banner/BannerView$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/qq/e/ads/banner/BannerView$1;-><init>(Lcom/qq/e/ads/banner/BannerView;Landroid/app/Activity;Ljava/lang/String;Lcom/qq/e/ads/banner/ADSize;Ljava/lang/String;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/comm/pi/BVI;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    return-object v0
.end method

.method static synthetic a(Lcom/qq/e/ads/banner/BannerView;Lcom/qq/e/comm/pi/BVI;)Lcom/qq/e/comm/pi/BVI;
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    return-object p1
.end method

.method static synthetic b(Lcom/qq/e/ads/banner/BannerView;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qq/e/ads/banner/BannerView;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->h:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    return-object v0
.end method

.method static synthetic d(Lcom/qq/e/ads/banner/BannerView;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic e(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/ads/cfg/BannerRollAnimation;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->g:Lcom/qq/e/ads/cfg/BannerRollAnimation;

    return-object v0
.end method

.method static synthetic f(Lcom/qq/e/ads/banner/BannerView;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->i:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic g(Lcom/qq/e/ads/banner/BannerView;)I
    .locals 2

    iget v0, p0, Lcom/qq/e/ads/banner/BannerView;->j:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/qq/e/ads/banner/BannerView;->j:I

    return v0
.end method

.method static synthetic h(Lcom/qq/e/ads/banner/BannerView;)Lcom/qq/e/ads/banner/BannerADListener;
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->b:Lcom/qq/e/ads/banner/BannerADListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/BVI;->destroy()V

    :cond_0
    return-void
.end method

.method public loadAD()V
    .locals 1

    iget-boolean v0, p0, Lcom/qq/e/ads/banner/BannerView;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qq/e/ads/banner/BannerView;->d:Z

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Banner init Paras OR Context error,See More logs while new BannerView"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/qq/e/ads/banner/BannerView;->e:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/qq/e/ads/banner/BannerView;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qq/e/ads/banner/BannerView;->j:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    invoke-interface {v0}, Lcom/qq/e/comm/pi/BVI;->fetchAd()V

    goto :goto_0

    :cond_3
    const-string v0, "Banner Init error,See More Logs"

    invoke-static {v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setADListener(Lcom/qq/e/ads/banner/BannerADListener;)V
    .locals 0

    iput-object p1, p0, Lcom/qq/e/ads/banner/BannerView;->b:Lcom/qq/e/ads/banner/BannerADListener;

    return-void
.end method

.method public setDownConfirmPilicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V
    .locals 2

    iput-object p1, p0, Lcom/qq/e/ads/banner/BannerView;->h:Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    invoke-virtual {p1}, Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;->value()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/BVI;->setDownAPPConfirmPolicy(I)V

    :cond_0
    return-void
.end method

.method public setRefresh(I)V
    .locals 3

    const/16 v1, 0x78

    const/16 v0, 0x1e

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/qq/e/ads/banner/BannerView;->f:Ljava/lang/Integer;

    if-ge p1, v0, :cond_2

    if-eqz p1, :cond_2

    move p1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/BVI;->setRefresh(I)V

    :cond_1
    return-void

    :cond_2
    if-le p1, v1, :cond_0

    move p1, v1

    goto :goto_0
.end method

.method public setRollAnimation(Lcom/qq/e/ads/cfg/BannerRollAnimation;)V
    .locals 2

    iput-object p1, p0, Lcom/qq/e/ads/banner/BannerView;->g:Lcom/qq/e/ads/cfg/BannerRollAnimation;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    invoke-virtual {p1}, Lcom/qq/e/ads/cfg/BannerRollAnimation;->value()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/qq/e/comm/pi/BVI;->setRollAnimation(I)V

    :cond_0
    return-void
.end method

.method public setShowClose(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->i:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qq/e/ads/banner/BannerView;->a:Lcom/qq/e/comm/pi/BVI;

    invoke-interface {v0, p1}, Lcom/qq/e/comm/pi/BVI;->setShowCloseButton(Z)V

    :cond_0
    return-void
.end method
