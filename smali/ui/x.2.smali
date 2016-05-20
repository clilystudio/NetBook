.class final Lcom/ushaqi/zhuishushenqi/ui/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ximalaya/ting/android/opensdk/datatrasfer/IDataCallBack",
        "<",
        "Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;Z)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    iput-boolean p2, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->a:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->h()V

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final synthetic onSuccess(Lcom/ximalaya/ting/android/opensdk/datatrasfer/XimalayaResponse;)V
    .locals 3

    .prologue
    .line 117
    check-cast p1, Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;

    .line 1120
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;->getTotalPage()I

    move-result v0

    .line 1122
    invoke-virtual {p1}, Lcom/ximalaya/ting/android/opensdk/model/album/AlbumList;->getAlbums()Ljava/util/List;

    move-result-object v1

    .line 1123
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1124
    if-lez v2, :cond_0

    .line 1125
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->f()V

    .line 1126
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1127
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->c(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Lcom/ushaqi/zhuishushenqi/adapter/b;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/b;->a(Ljava/util/Collection;)V

    .line 1128
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->d(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 1131
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Lcom/ushaqi/zhuishushenqi/widget/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    .line 1132
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->g(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)I

    .line 1136
    :goto_0
    return-void

    .line 1135
    :cond_0
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->a:Z

    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->g()V

    goto :goto_0

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/x;->b:Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;->e(Lcom/ushaqi/zhuishushenqi/ui/AudiobookCategoryListActivity;)Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/ScrollLoadListView;->setOnLastItemListener(Lcom/ushaqi/zhuishushenqi/widget/av;)V

    goto :goto_0
.end method
