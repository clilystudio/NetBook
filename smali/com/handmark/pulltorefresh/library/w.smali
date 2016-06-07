.class final Lcom/handmark/pulltorefresh/library/w;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/w;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/w;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->n()V

    .line 46
    :cond_0
    return-void
.end method
