.class final Lcom/ushaqi/zhuishushenqi/ui/bx;
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
    .line 194
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;B)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bx;-><init>(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;
    .locals 3

    .prologue
    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a()Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    move-result-object v0

    sget-object v1, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;->IMPORTANT:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment$Type;

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->r(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 194
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/bx;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 194
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;

    .line 1212
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1213
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1217
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->h(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->i(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1220
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n()V

    .line 1221
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->j(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1223
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;->isOk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1225
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0, v6}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;I)I

    .line 1226
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1228
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;->getNotifications()[Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v0

    array-length v0, v0

    .line 1229
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;->getNotifications()[Lcom/ushaqi/zhuishushenqi/model/NotificationItem;

    move-result-object v1

    .line 1230
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1232
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v3}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->l(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;I)I

    .line 1233
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1234
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v2}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->k(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/adapter/NotificationAdapter;->a(Ljava/util/List;)V

    .line 1236
    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 1237
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 1238
    if-nez v0, :cond_0

    .line 1239
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1240
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u6ca1\u6709\u6d88\u606f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1244
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/NotificationRoot;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1245
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->startActivity(Landroid/content/Intent;)V

    .line 1246
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0501b3

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;I)V

    goto :goto_0

    .line 1250
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/bx;->a:Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;->m(Lcom/ushaqi/zhuishushenqi/ui/NotifFragment;)V

    goto :goto_0
.end method
