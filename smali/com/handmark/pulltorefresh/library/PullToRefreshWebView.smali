.class public Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/handmark/pulltorefresh/library/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/handmark/pulltorefresh/library/k",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/webkit/WebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/handmark/pulltorefresh/library/v;

    invoke-direct {v0}, Lcom/handmark/pulltorefresh/library/v;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->a:Lcom/handmark/pulltorefresh/library/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/handmark/pulltorefresh/library/w;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/w;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->c:Landroid/webkit/WebChromeClient;

    .line 56
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->a:Lcom/handmark/pulltorefresh/library/k;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 57
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->c:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lcom/handmark/pulltorefresh/library/w;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/w;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->c:Landroid/webkit/WebChromeClient;

    .line 66
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->a:Lcom/handmark/pulltorefresh/library/k;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/k;)V

    .line 67
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->c:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 68
    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/os/Bundle;)V

    .line 122
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 123
    return-void
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 99
    new-instance v0, Lcom/handmark/pulltorefresh/library/x;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/x;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    :goto_0
    sget v1, Lcom/handmark/pulltorefresh/library/R$id;->webview:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 105
    return-object v0

    .line 101
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0
.end method

.method protected final b(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/os/Bundle;)V

    .line 128
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 129
    return-void
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()Z
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    .line 116
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v1, v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;

    return-object v0
.end method
