.class final Lcom/ushaqi/zhuishushenqi/ui/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/bs;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/bs;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bt;->a:Lcom/ushaqi/zhuishushenqi/ui/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bt;->a:Lcom/ushaqi/zhuishushenqi/ui/bs;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bt;->a:Lcom/ushaqi/zhuishushenqi/ui/bs;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;Z)V

    .line 120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bt;->a:Lcom/ushaqi/zhuishushenqi/ui/bs;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bt;->a:Lcom/ushaqi/zhuishushenqi/ui/bs;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/bs;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->c()V

    goto :goto_0
.end method
