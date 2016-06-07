.class final Lcom/handmark/pulltorefresh/library/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/l;


# instance fields
.field private synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/g;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/g;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/g;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->c(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 850
    return-void
.end method
