.class final Lcom/ushaqi/zhuishushenqi/ui/game/r;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/r;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;B)V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/r;-><init>(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/r;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d(Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/GamePostRoot;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot;->getPosts()[Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/GamePostRoot;->getPosts()[Lcom/ushaqi/zhuishushenqi/model/GamePostRoot$GamePost;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 339
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 327
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/game/r;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 327
    check-cast p1, Ljava/util/List;

    .line 1344
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1345
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/r;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1346
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/r;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/r;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->j(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    .line 1348
    if-eqz p1, :cond_1

    .line 1349
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1350
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/r;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1351
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/r;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->k(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/ui/game/n;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/game/r;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/game/n;->a(Ljava/util/Collection;)V

    .line 1353
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/r;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/game/r;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->i(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->removeFooterView(Landroid/view/View;)Z

    .line 1355
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/r;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    .line 1357
    :cond_0
    :goto_0
    return-void

    .line 1360
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/r;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;->l(Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;)V

    .line 1361
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/game/r;->a:Lcom/ushaqi/zhuishushenqi/ui/game/GameDetailActivity;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
