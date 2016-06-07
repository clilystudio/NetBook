.class final Lcom/ushaqi/zhuishushenqi/ui/post/dX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/k",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/dX;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/dY;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/dY;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/dX;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    return-void
.end method
