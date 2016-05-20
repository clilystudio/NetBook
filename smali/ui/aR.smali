.class final Lcom/ushaqi/zhuishushenqi/ui/aR;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/aR;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;B)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/aR;-><init>(Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;)V

    return-void
.end method

.method private varargs a()Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;
    .locals 3

    .prologue
    .line 114
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aR;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "book_list_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->z(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/aR;->a()Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 109
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;

    .line 1123
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1124
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aR;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;->getRanking()Lcom/ushaqi/zhuishushenqi/model/BookRankDetailList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1126
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aR;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->b(I)V

    .line 1127
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aR;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetailRoot;->getRanking()Lcom/ushaqi/zhuishushenqi/model/BookRankDetailList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/model/BookRankDetailList;->getBooks()[Lcom/ushaqi/zhuishushenqi/model/BookRankDetail;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1128
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aR;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    iget-object v0, v0, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->a:Lcom/ushaqi/zhuishushenqi/adapter/g;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/aR;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/g;->a(Ljava/util/Collection;)V

    :goto_0
    return-void

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aR;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->b(I)V

    .line 1131
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/aR;->a:Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookRankListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f050128

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0
.end method
