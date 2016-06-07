.class final Lcom/ushaqi/zhuishushenqi/ui/user/u;
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
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

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
    .line 93
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/u;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/user/v;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/user/v;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/u;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    return-void
.end method
