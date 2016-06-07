.class final Lcom/ushaqi/zhuishushenqi/ui/bw;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;B)V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bw;-><init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;
    .locals 3

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/bw;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 261
    :try_start_0
    const-string v0, ""

    .line 262
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 263
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/NotificationItem;->getCreated()Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a()Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    move-result-object v1

    sget-object v2, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;->IMPORTANT:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    if-ne v1, v2, :cond_1

    .line 266
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    .line 268
    :cond_1
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2, v0}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 270
    :catch_0
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 274
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 255
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bw;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/16 v6, 0x64

    const/16 v5, 0x8

    .line 255
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;

    .line 1279
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1280
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1285
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1286
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1287
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 1288
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/bw;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1292
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1293
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;->getNotifications()[Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    array-length v0, v0

    .line 1294
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;->getNotifications()[Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v1

    .line 1295
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1297
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->l(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;I)I

    .line 1298
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1299
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->a(Ljava/util/List;)V

    .line 1302
    if-lez v0, :cond_1

    .line 1304
    if-lt v0, v6, :cond_2

    .line 1308
    if-ne v0, v6, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->j(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1315
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->l(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1316
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1317
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u4f60\u8fd8\u6ca1\u6709\u6d88\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1318
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1321
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_0

    .line 1323
    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1324
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->startActivity(Landroid/content/Intent;)V

    .line 1325
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0501b3

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1329
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->j(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1330
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bw;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->m(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)V

    goto :goto_0
.end method
