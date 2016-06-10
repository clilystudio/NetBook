.class final Lcom/ushaqi/zhuishushenqi/ui/post/cw;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/PostDetail;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;B)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/cw;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostDetail;
    .locals 2

    .prologue
    .line 165
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->H(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostDetail;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 160
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/cw;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostDetail;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 160
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PostDetail;

    .line 1174
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1176
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostDetail;->getPost()Lcom/ushaqi/zhuishushenqi/model/Post;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostDetail;->getPost()Lcom/ushaqi/zhuishushenqi/model/Post;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;Lcom/ushaqi/zhuishushenqi/model/Post;)Lcom/ushaqi/zhuishushenqi/model/Post;

    .line 1178
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->f()V

    .line 1180
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Post;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;Lcom/ushaqi/zhuishushenqi/model/Post;)V

    .line 1182
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Lcom/ushaqi/zhuishushenqi/model/Post;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/Post;->getVotes()[Lcom/ushaqi/zhuishushenqi/model/Vote;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;[Lcom/ushaqi/zhuishushenqi/model/Vote;)V

    .line 1184
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)V

    :goto_0
    return-void

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cw;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->h()V

    goto :goto_0
.end method
