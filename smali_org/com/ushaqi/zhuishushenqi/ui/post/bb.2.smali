.class final Lcom/ushaqi/zhuishushenqi/ui/post/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/ba;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/ba;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 193
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ba;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ba;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bh;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ba;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ba;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bh;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/bh;->cancel(Z)Z

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ba;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ba;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bi;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ba;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/post/ba;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/bi;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/bi;)Lcom/ushaqi/zhuishushenqi/ui/post/bi;

    .line 197
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ba;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/ba;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bi;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ba;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/post/ba;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/ba;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/post/ba;->a:Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/CommonPostListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bi;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    return-void
.end method
