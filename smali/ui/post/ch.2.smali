.class final Lcom/ushaqi/zhuishushenqi/ui/post/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 337
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/cl;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_3

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->p(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->q(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cm;

    move-result-object v0

    invoke-static {v0}, Landroid/support/design/widget/am;->a(Landroid/os/AsyncTask;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->q(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cm;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/ushaqi/zhuishushenqi/ui/post/cm;->cancel(Z)Z

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/cl;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-direct {v1, v2, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/cl;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;B)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;Lcom/ushaqi/zhuishushenqi/ui/post/cl;)Lcom/ushaqi/zhuishushenqi/ui/post/cl;

    .line 345
    const-string v0, ""

    .line 346
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 347
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->r(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/Tweet;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/Tweet;->get_id()Ljava/lang/String;

    move-result-object v0

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cl;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ch;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/cl;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 351
    :cond_3
    return-void
.end method
