.class final Lcom/ushaqi/zhuishushenqi/ui/aq;
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
        "Lcom/ushaqi/zhuishushenqi/model/CategoryBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 158
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 156
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->a:Z

    .line 159
    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->a:Z

    .line 160
    return-void
.end method

.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;Z)V
    .locals 1

    .prologue
    .line 162
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->a:Z

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->a:Z

    .line 164
    return-void
.end method

.method private varargs a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/CategoryBook;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "bookcategory_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 170
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 184
    :goto_0
    return-object v0

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->f()Ljava/lang/String;

    move-result-object v3

    .line 174
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->g()Ljava/lang/String;

    move-result-object v4

    .line 175
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryListActivity;->b()Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-boolean v5, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->a:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    .line 177
    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_1
    const/16 v6, 0x32

    invoke-virtual/range {v0 .. v6}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/ushaqi/zhuishushenqi/model/BookListRoot;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookListRoot;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/CategoryBook;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 179
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/BookListRoot;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/CategoryBook;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 177
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    move-object v0, v7

    .line 184
    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/aq;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 155
    check-cast p1, Ljava/util/List;

    .line 1189
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1190
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1191
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1192
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 1195
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 1196
    if-eqz p1, :cond_3

    .line 1197
    iget-boolean v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->a:Z

    if-nez v1, :cond_0

    .line 1198
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1200
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1201
    if-lez v1, :cond_1

    .line 1202
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1203
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/ushaqi/zhuishushenqi/adapter/c;

    move-result-object v0

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/ushaqi/zhuishushenqi/adapter/c;->a(Ljava/util/Collection;)V

    .line 1204
    const/16 v0, 0x32

    if-lt v1, v0, :cond_2

    .line 1207
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1217
    :goto_0
    return-void

    .line 1210
    :cond_1
    if-eqz v0, :cond_2

    .line 1211
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1212
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u6682\u65f6\u6ca1\u6709\u4e66\u7c4d\u54e6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1214
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_0

    .line 1218
    :cond_3
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1219
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aq;->b:Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookCategoryFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
