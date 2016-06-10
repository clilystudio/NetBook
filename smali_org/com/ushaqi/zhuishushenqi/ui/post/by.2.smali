.class final Lcom/ushaqi/zhuishushenqi/ui/post/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)V
    .locals 0

    .prologue
    .line 457
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/by;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 460
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/by;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bI;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/by;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/bI;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/by;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->p(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/by;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bJ;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/by;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bJ;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/bJ;->cancel(Z)Z

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/by;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/bI;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/by;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/bI;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/bI;)Lcom/ushaqi/zhuishushenqi/ui/post/bI;

    .line 468
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/by;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/bI;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/by;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/by;->a:Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/post/GirlTopicListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/bI;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 470
    :cond_2
    return-void
.end method
