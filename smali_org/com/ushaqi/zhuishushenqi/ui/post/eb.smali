.class final Lcom/ushaqi/zhuishushenqi/ui/post/eb;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/TimelineResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;


# direct methods
.method private constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;B)V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/eb;-><init>(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V

    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TimelineResult;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 182
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p0, v2

    const/4 v3, 0x1

    aget-object v3, p0, v3

    .line 2250
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TimelineResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/TimelineResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 177
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;

    .line 3191
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 3192
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3195
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->d(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V

    .line 3197
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->isOk()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3198
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->getTweets()[Lcom/ushaqi/zhuishushenqi/model/TimelineResult$Temp;

    move-result-object v0

    .line 3199
    array-length v0, v0

    .line 3200
    if-lez v0, :cond_2

    .line 3201
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v1, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)V

    .line 3202
    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    .line 3203
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    .line 3207
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;Lcom/ushaqi/zhuishushenqi/model/TimelineResult;)V

    .line 3213
    :cond_0
    :goto_1
    return-void

    .line 3205
    :cond_1
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->e(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->f(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)Lcom/handmark/pulltorefresh/library/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/j;)V

    goto :goto_0

    .line 3209
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->g(Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;)V

    goto :goto_1

    .line 3211
    :cond_3
    if-eqz p1, :cond_4

    const-string v0, "TOKEN_INVALID"

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/TimelineResult;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3212
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-virtual {v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/ui/user/AuthLoginActivity;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->startActivity(Landroid/content/Intent;)V

    .line 3213
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    const v2, 0x7f0501b3

    invoke-virtual {v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1

    .line 3217
    :cond_4
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/eb;->a:Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/TweetTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_1
.end method
