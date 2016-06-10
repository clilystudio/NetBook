.class public final Lcom/ushaqi/zhuishushenqi/ui/cw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/webkit/WebView;

.field private c:Lcn/sharesdk/framework/PlatformActionListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/cx;

    invoke-direct {v0, p0}, Lcom/ushaqi/zhuishushenqi/ui/cx;-><init>(Lcom/ushaqi/zhuishushenqi/ui/cw;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cw;->c:Lcn/sharesdk/framework/PlatformActionListener;

    .line 45
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/cw;->a:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/cw;->b:Landroid/webkit/WebView;

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/cw;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cw;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/cw;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 22
    .line 1097
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cw;->a:Landroid/app/Activity;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/cz;

    invoke-direct {v1, p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/cz;-><init>(Lcom/ushaqi/zhuishushenqi/ui/cw;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 22
    return-void
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/cw;)Lcn/sharesdk/framework/PlatformActionListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cw;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-object v0
.end method

.method static synthetic c(Lcom/ushaqi/zhuishushenqi/ui/cw;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cw;->b:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public final shareAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 82
    const-string v0, "\u8ffd\u4e66\u795e\u5668"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/cw;->shareAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public final shareAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 87
    new-instance v6, Lcom/ushaqi/zhuishushenqi/view/c;

    iget-object v7, p0, Lcom/ushaqi/zhuishushenqi/ui/cw;->a:Landroid/app/Activity;

    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/cy;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ushaqi/zhuishushenqi/ui/cy;-><init>(Lcom/ushaqi/zhuishushenqi/ui/cw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v7, v0}, Lcom/ushaqi/zhuishushenqi/view/c;-><init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/ui/cd;)V

    .line 92
    invoke-virtual {v6}, Lcom/ushaqi/zhuishushenqi/view/c;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 93
    return-void
.end method

.method public final shareQZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 72
    const-string v0, "\u8ffd\u4e66\u795e\u5668"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/cw;->shareQZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public final shareQZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cw;->a:Landroid/app/Activity;

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/cw;->c:Lcn/sharesdk/framework/PlatformActionListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/util/T;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/framework/PlatformActionListener;)V

    .line 78
    return-void
.end method

.method public final shareWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 62
    const-string v0, "\u8ffd\u4e66\u795e\u5668"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/cw;->shareWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public final shareWeibo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cw;->a:Landroid/app/Activity;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/cw;->c:Lcn/sharesdk/framework/PlatformActionListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/util/T;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/framework/PlatformActionListener;)V

    .line 68
    return-void
.end method

.method public final shareWeixin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 51
    const-string v0, "\u8ffd\u4e66\u795e\u5668"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/ushaqi/zhuishushenqi/ui/cw;->shareWeixin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public final shareWeixin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cw;->a:Landroid/app/Activity;

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/ushaqi/zhuishushenqi/ui/cw;->c:Lcn/sharesdk/framework/PlatformActionListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/util/T;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/framework/PlatformActionListener;)V

    .line 57
    return-void
.end method
