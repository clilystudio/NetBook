.class final Lcom/ushaqi/zhuishushenqi/ui/user/z;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/Topic;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;B)V
    .locals 0

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/z;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Topic;
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/z;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/Topic;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 236
    :goto_0
    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 236
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Topic;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/16 v1, 0x8

    .line 223
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/Topic;

    .line 1241
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1242
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1243
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1244
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1245
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->n()V

    .line 1247
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/user/z;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1249
    if-eqz p1, :cond_4

    .line 1251
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Topic;->isOk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1252
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Topic;->getPosts()[Lcom/ushaqi/zhuishushenqi/model/TopicPost;

    move-result-object v0

    .line 1253
    array-length v1, v0

    .line 1254
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1256
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;I)I

    .line 1257
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1258
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->l(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/adapter/F;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(Ljava/util/Collection;)V

    .line 1260
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;I)V

    .line 1262
    if-lez v1, :cond_1

    .line 1264
    if-lt v1, v5, :cond_2

    .line 1269
    if-ne v1, v5, :cond_0

    .line 1271
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->j(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1277
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1278
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1279
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4f60\u8fd8\u6ca1\u6709\u6536\u85cf\u54e6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1282
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_0

    .line 1287
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->j(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1288
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u4e0a\u62c9\u53ef\u91cd\u65b0\u52a0\u8f7d"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 1293
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->j(Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1294
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/z;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyFavTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
