.class final Lcom/ushaqi/zhuishushenqi/ui/post/bC;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/bB;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/bB;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bC;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bC;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bB;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/bB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bI;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bC;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bB;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/bB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/bI;->cancel(Z)Z

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bC;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bB;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/bB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bC;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bB;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/post/bB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/bJ;)Lcom/ushaqi/zhuishushenqi/ui/post/bJ;

    .line 183
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bC;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bB;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/bB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bJ;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bC;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bB;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/post/bB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bC;->a:Lcom/ushaqi/zhuishushenqi/ui/post/bB;

    iget-object v2, v2, Lcom/ushaqi/zhuishushenqi/ui/post/bB;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    return-void
.end method
