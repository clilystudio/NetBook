.class final Lcom/ushaqi/zhuishushenqi/ui/user/G;
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
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;B)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/user/G;-><init>(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Topic;
    .locals 3

    .prologue
    .line 159
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->e(Ljava/lang/String;I)Lcom/ushaqi/zhuishushenqi/model/Topic;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_0
    return-object v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/Topic;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/16 v2, 0x8

    .line 154
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/Topic;

    .line 1168
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1169
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1170
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->c(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1172
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->n()V

    .line 1174
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Topic;->getPosts()[Lcom/ushaqi/zhuishushenqi/model/TopicPost;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1175
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1176
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/Topic;->getPosts()[Lcom/ushaqi/zhuishushenqi/model/TopicPost;

    move-result-object v1

    .line 1177
    array-length v2, v1

    .line 1178
    if-lez v2, :cond_3

    .line 1179
    array-length v3, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 1181
    invoke-virtual {v4}, Lcom/ushaqi/zhuishushenqi/model/TopicPost;->getBook()Lcom/ushaqi/zhuishushenqi/model/PostBook;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1182
    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v5}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1185
    :cond_1
    const/16 v0, 0xa

    if-ge v2, v0, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1194
    :goto_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/adapter/F;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/adapter/F;->a(Ljava/util/Collection;)V

    .line 1195
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;I)V

    .line 1196
    :goto_2
    return-void

    .line 1188
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->j(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/widget/LabelPtrListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_1

    .line 1191
    :cond_3
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1192
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4f60\u8fd8\u6ca1\u6709\u53d1\u5e03\u54e6\uff0c\u5feb\u53bb\u53d1\u5e03\u4e00\u4e2a\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1199
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/user/G;->a:Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/user/MyTopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_2
.end method
