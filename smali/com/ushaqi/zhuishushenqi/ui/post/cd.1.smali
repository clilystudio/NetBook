.class final Lcom/ushaqi/zhuishushenqi/ui/post/cd;
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
    .line 221
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cd;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 225
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cd;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cd;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->h(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cd;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/ck;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cd;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/ck;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/ushaqi/zhuishushenqi/ui/post/ck;->cancel(Z)Z

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cd;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/ui/post/ck;

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cd;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/post/ce;

    invoke-direct {v3, p0}, Lcom/ushaqi/zhuishushenqi/ui/post/ce;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/cd;)V

    invoke-direct {v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/post/ck;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;Lcom/ushaqi/zhuishushenqi/ui/post/ck;)Lcom/ushaqi/zhuishushenqi/ui/post/ck;

    .line 235
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cd;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Lcom/ushaqi/zhuishushenqi/ui/post/ck;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cd;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/ck;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 239
    :goto_0
    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cd;->a:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    goto :goto_0
.end method
