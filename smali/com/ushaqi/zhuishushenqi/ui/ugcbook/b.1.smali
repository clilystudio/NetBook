.class final Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;
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
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

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
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;->a:Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/AbsUGCListFragment;->f:Landroid/os/Handler;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/c;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/ui/ugcbook/c;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ugcbook/b;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    return-void
.end method
