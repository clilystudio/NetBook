.class final Lcom/ushaqi/zhuishushenqi/ui/post/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 406
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;I)I

    .line 408
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/post/cx;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    const v3, 0x7f0501d8

    invoke-direct {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/cx;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;Landroid/app/Activity;I)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    .line 410
    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Post;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Post;->get_id()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Account;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ushaqi/zhuishushenqi/model/Account;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cs;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cx;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 412
    :cond_0
    return-void
.end method
