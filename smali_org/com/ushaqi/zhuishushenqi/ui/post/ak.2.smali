.class final Lcom/ushaqi/zhuishushenqi/ui/post/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 456
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/au;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/au;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->p(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/av;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/av;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/av;->cancel(Z)Z

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/au;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/au;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;Lcom/ushaqi/zhuishushenqi/ui/post/au;)Lcom/ushaqi/zhuishushenqi/ui/post/au;

    .line 464
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/au;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ak;->a:Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/post/BookHelpListActivity;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/au;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 466
    :cond_2
    return-void
.end method
