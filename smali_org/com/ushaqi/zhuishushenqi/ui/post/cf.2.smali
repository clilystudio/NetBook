.class final Lcom/ushaqi/zhuishushenqi/ui/post/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cf;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 246
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cf;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cf;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->m(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cf;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cf;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cj;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/cj;->cancel(Z)Z

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cf;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/cj;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cf;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/cg;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/cg;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/cf;)V

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/cj;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;Lcom/ushaqi/zhuishushenqi/ui/post/cj;)Lcom/ushaqi/zhuishushenqi/ui/post/cj;

    .line 256
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cf;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->n(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/cj;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cf;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/cj;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cf;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->o(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    goto :goto_0
.end method
