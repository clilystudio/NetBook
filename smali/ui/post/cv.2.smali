.class final Lcom/ushaqi/zhuishushenqi/ui/post/cv;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;B)V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/cv;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    .locals 4

    .prologue
    .line 201
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Lcom/ushaqi/zhuishushenqi/adapter/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/adapter/z;->getCount()I

    move-result v2

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->e(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 205
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 196
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;

    .line 1210
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1211
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    .line 1213
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1215
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/PostDetailComment;->getComments()[Lcom/ushaqi/zhuishushenqi/model/PostComment;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1216
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1217
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Lcom/ushaqi/zhuishushenqi/adapter/z;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/z;->a(Ljava/util/Collection;)V

    .line 1219
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->removeFooterView(Landroid/view/View;)Z

    .line 1221
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->b:Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    .line 1224
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;)V

    .line 1228
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/cv;->a:Lcom/ushaqi/zhuishushenqi/ui/post/PostDetailActivity;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
