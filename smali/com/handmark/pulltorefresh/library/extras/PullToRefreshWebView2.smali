.class public Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
.source "SourceFile"


# instance fields
.field private a:Lcom/handmark/pulltorefresh/library/extras/a;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
    .locals 3

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/handmark/pulltorefresh/library/extras/a;

    invoke-direct {v1, p0}, Lcom/handmark/pulltorefresh/library/extras/a;-><init>(Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;)V

    iput-object v1, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->a:Lcom/handmark/pulltorefresh/library/extras/a;

    .line 90
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->a:Lcom/handmark/pulltorefresh/library/extras/a;

    const-string v2, "ptr"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    return-object v0
.end method

.method protected final c()Z
    .locals 2

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "javascript:isReadyForPullDown();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected final d()Z
    .locals 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->h()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    const-string v1, "javascript:isReadyForPullUp();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method
