.class final Lcom/ushaqi/zhuishushenqi/ui/post/bY;
.super Lcom/ushaqi/zhuishushenqi/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ushaqi/zhuishushenqi/a/e",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;


# direct methods
.method public constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bY;->b:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/a/e;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bY;->a:Ljava/lang/Runnable;

    .line 313
    return-void
.end method

.method private static varargs a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;
    .locals 2

    .prologue
    .line 318
    :try_start_0
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->a()Lcom/ushaqi/zhuishushenqi/api/b;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/api/b;->b()Lcom/ushaqi/zhuishushenqi/api/ApiService;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/api/ApiService;->m(Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 322
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 307
    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/ushaqi/zhuishushenqi/ui/post/bY;->a([Ljava/lang/String;)Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 307
    check-cast p1, Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;

    .line 1327
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/a/e;->onPostExecute(Ljava/lang/Object;)V

    .line 1328
    if-eqz p1, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bY;->b:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->n(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/User;->getFullAvatar()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SmartImageView;->setImageUrl(Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bY;->b:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;->getFollowers()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;I)I

    .line 1332
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bY;->b:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/UserInfoResult;->getFollowings()I

    move-result v1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->b(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;I)I

    .line 1334
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/User;->isDoyan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bY;->b:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->o(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1336
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bY;->b:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->o(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202d5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1343
    :goto_0
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bY;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1344
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bY;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 307
    :cond_0
    return-void

    .line 1337
    :cond_1
    invoke-virtual {p1}, Lcom/ushaqi/zhuishushenqi/model/User;->isOfficial()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1338
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bY;->b:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->o(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1339
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bY;->b:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->o(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202d7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1341
    :cond_2
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/bY;->b:Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;->o(Lcom/ushaqi/zhuishushenqi/ui/post/MyTweetFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
