.class final Lcom/ushaqi/zhuishushenqi/ui/bs;
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
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

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
    const/16 v1, 0x8

    .line 113
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/bt;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/bt;-><init>(Lcom/ushaqi/zhuishushenqi/ui/bs;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    return-void
.end method
