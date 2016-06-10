.class final Lcom/ushaqi/zhuishushenqi/ui/post/ck;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 471
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ck;->b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 472
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ck;->a:Ljava/lang/Runnable;

    .line 473
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;
    .locals 2

    .prologue
    .line 478
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->h(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 482
    :goto_0
    return-object v0

    .line 479
    :catch_0
    move-exception v0

    .line 480
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 468
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/ck;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 468
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;

    .line 1487
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1489
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;->getFollowings()[Lcom/ushaqi/zhuishushenqi/model/Follower;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1490
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ck;->b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/FollowingsResult;->getFollowings()[Lcom/ushaqi/zhuishushenqi/model/Follower;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;Ljava/util/List;)Ljava/util/List;

    .line 1491
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ck;->b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;->f(Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;)V

    .line 1492
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ck;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1493
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ck;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    .line 1497
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/ck;->b:Lcom/ushaqi/zhuishushenqi/ui/post/OtherUserActivity;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
